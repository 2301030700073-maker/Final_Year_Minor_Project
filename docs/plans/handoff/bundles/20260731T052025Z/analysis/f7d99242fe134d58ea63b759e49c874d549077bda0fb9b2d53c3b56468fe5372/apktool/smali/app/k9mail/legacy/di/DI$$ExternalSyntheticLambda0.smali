.class public final synthetic Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/fsck/k9/ui/settings/SettingsListFragment;)V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    iput v0, p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/StatusText;->HIDDEN:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 8
    .line 9
    sget-object v5, Lapp/k9mail/feature/settings/import/ui/ButtonState;->GONE:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 10
    .line 11
    const-string v6, "itemAdapter"

    .line 12
    .line 13
    const/4 v7, 0x4

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x3

    .line 16
    const/16 v10, 0x8

    .line 17
    .line 18
    const/16 v11, 0xa

    .line 19
    .line 20
    const/4 v12, 0x2

    .line 21
    const/4 v13, 0x0

    .line 22
    const/4 v14, 0x1

    .line 23
    const/4 v15, 0x0

    .line 24
    sget-object v16, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 25
    .line 26
    iget-object v3, v0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v0, v0, Lapp/k9mail/legacy/di/DI$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 29
    .line 30
    packed-switch v2, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    check-cast v0, Lkotlinx/coroutines/android/HandlerContext;

    .line 34
    .line 35
    check-cast v3, Landroidx/work/impl/Processor$$ExternalSyntheticLambda2;

    .line 36
    .line 37
    check-cast v1, Ljava/lang/Throwable;

    .line 38
    .line 39
    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-object v16

    .line 45
    :pswitch_0
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :pswitch_1
    check-cast v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 65
    .line 66
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 67
    .line 68
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    iget-object v2, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->renderedItemsState:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 74
    .line 75
    new-instance v4, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;

    .line 76
    .line 77
    invoke-direct {v4, v11}, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    new-instance v6, Landroidx/compose/runtime/Latch$await$2$2;

    .line 85
    .line 86
    invoke-direct {v6, v10, v4, v2}, Landroidx/compose/runtime/Latch$await$2$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    new-instance v4, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;

    .line 90
    .line 91
    invoke-direct {v4, v14, v2}, Lnet/thunderbird/feature/changelog/internal/ChangelogScreenKt$ChangelogScreen$lambda$1$0$0$0$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 92
    .line 93
    .line 94
    new-instance v7, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;

    .line 95
    .line 96
    invoke-direct {v7, v2, v0, v3, v14}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$SettingList$lambda$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 100
    .line 101
    const v2, 0x799532c4

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v2, v7, v14}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(ILjava/lang/Object;Z)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v5, v6, v4, v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 108
    .line 109
    .line 110
    return-object v16

    .line 111
    :pswitch_2
    check-cast v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 112
    .line 113
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListState;

    .line 114
    .line 115
    check-cast v1, Ljava/lang/Float;

    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    .line 126
    .line 127
    new-instance v3, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    if-eqz v4, :cond_3

    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 147
    .line 148
    iget-object v5, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->key:Ljava/lang/Object;

    .line 149
    .line 150
    instance-of v6, v5, Ljava/lang/String;

    .line 151
    .line 152
    if-eqz v6, :cond_1

    .line 153
    .line 154
    check-cast v5, Ljava/lang/String;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_1
    move-object v5, v15

    .line 158
    :goto_1
    if-nez v5, :cond_2

    .line 159
    .line 160
    move-object v6, v15

    .line 161
    goto :goto_2

    .line 162
    :cond_2
    new-instance v6, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;

    .line 163
    .line 164
    iget v7, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->offset:I

    .line 165
    .line 166
    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->size:I

    .line 167
    .line 168
    invoke-direct {v6, v5, v7, v4}, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    :goto_2
    if-eqz v6, :cond_0

    .line 172
    .line 173
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_0

    .line 177
    :cond_3
    iget-object v2, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->renderedItemsState:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 178
    .line 179
    iget-object v4, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedOffsetY$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 180
    .line 181
    iget-object v5, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->draggedKey$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 182
    .line 183
    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Ljava/lang/String;

    .line 188
    .line 189
    if-nez v5, :cond_4

    .line 190
    .line 191
    goto/16 :goto_13

    .line 192
    .line 193
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    add-float/2addr v6, v1

    .line 198
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    :goto_3
    move-object v7, v6

    .line 206
    check-cast v7, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 207
    .line 208
    invoke-virtual {v7}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    const/4 v11, -0x1

    .line 213
    if-eqz v10, :cond_6

    .line 214
    .line 215
    invoke-virtual {v7}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    check-cast v7, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 220
    .line 221
    invoke-static {v7}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v7

    .line 229
    if-eqz v7, :cond_5

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_5
    add-int/lit8 v13, v13, 0x1

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_6
    move v13, v11

    .line 236
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 241
    .line 242
    .line 243
    move-result v7

    .line 244
    if-eqz v7, :cond_8

    .line 245
    .line 246
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    move-object v10, v7

    .line 251
    check-cast v10, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;

    .line 252
    .line 253
    iget-object v10, v10, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->key:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v10

    .line 259
    if-eqz v10, :cond_7

    .line 260
    .line 261
    goto :goto_5

    .line 262
    :cond_8
    move-object v7, v15

    .line 263
    :goto_5
    check-cast v7, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;

    .line 264
    .line 265
    if-eq v13, v11, :cond_1d

    .line 266
    .line 267
    if-nez v7, :cond_9

    .line 268
    .line 269
    goto/16 :goto_13

    .line 270
    .line 271
    :cond_9
    iget v5, v7, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->offset:I

    .line 272
    .line 273
    cmpl-float v6, v1, v8

    .line 274
    .line 275
    const/high16 v10, 0x41000000    # 8.0f

    .line 276
    .line 277
    const/high16 v11, 0x40000000    # 2.0f

    .line 278
    .line 279
    if-lez v6, :cond_e

    .line 280
    .line 281
    add-int/lit8 v1, v13, 0x1

    .line 282
    .line 283
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    check-cast v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 288
    .line 289
    if-eqz v2, :cond_c

    .line 290
    .line 291
    invoke-static {v2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-eqz v6, :cond_b

    .line 304
    .line 305
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    move-object v8, v6

    .line 310
    check-cast v8, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;

    .line 311
    .line 312
    iget-object v8, v8, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->key:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v8

    .line 318
    if-eqz v8, :cond_a

    .line 319
    .line 320
    goto :goto_6

    .line 321
    :cond_b
    move-object v6, v15

    .line 322
    :goto_6
    check-cast v6, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_c
    move-object v6, v15

    .line 326
    :goto_7
    if-eqz v6, :cond_1c

    .line 327
    .line 328
    iget v2, v7, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->size:I

    .line 329
    .line 330
    add-int/2addr v5, v2

    .line 331
    int-to-float v2, v5

    .line 332
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    add-float/2addr v3, v2

    .line 337
    iget v2, v6, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->offset:I

    .line 338
    .line 339
    int-to-float v2, v2

    .line 340
    iget v5, v6, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->size:I

    .line 341
    .line 342
    int-to-float v5, v5

    .line 343
    div-float/2addr v5, v11

    .line 344
    add-float/2addr v5, v2

    .line 345
    add-float/2addr v5, v10

    .line 346
    cmpl-float v2, v3, v5

    .line 347
    .line 348
    if-ltz v2, :cond_d

    .line 349
    .line 350
    goto :goto_8

    .line 351
    :cond_d
    move-object v6, v15

    .line 352
    :goto_8
    if-eqz v6, :cond_1c

    .line 353
    .line 354
    new-instance v15, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$SwapDecision;

    .line 355
    .line 356
    iget v2, v6, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->size:I

    .line 357
    .line 358
    int-to-float v2, v2

    .line 359
    neg-float v2, v2

    .line 360
    invoke-direct {v15, v1, v2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$SwapDecision;-><init>(IF)V

    .line 361
    .line 362
    .line 363
    goto/16 :goto_12

    .line 364
    .line 365
    :cond_e
    cmpg-float v1, v1, v8

    .line 366
    .line 367
    if-gez v1, :cond_1c

    .line 368
    .line 369
    add-int/lit8 v1, v13, -0x1

    .line 370
    .line 371
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    check-cast v6, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 376
    .line 377
    if-eqz v6, :cond_f

    .line 378
    .line 379
    invoke-static {v6}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    goto :goto_9

    .line 384
    :cond_f
    move-object v6, v15

    .line 385
    :goto_9
    if-eqz v6, :cond_12

    .line 386
    .line 387
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v8

    .line 395
    if-eqz v8, :cond_11

    .line 396
    .line 397
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v8

    .line 401
    move-object v12, v8

    .line 402
    check-cast v12, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;

    .line 403
    .line 404
    iget-object v12, v12, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->key:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v12

    .line 410
    if-eqz v12, :cond_10

    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_11
    move-object v8, v15

    .line 414
    :goto_a
    check-cast v8, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;

    .line 415
    .line 416
    goto :goto_b

    .line 417
    :cond_12
    move-object v8, v15

    .line 418
    :goto_b
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    sub-int/2addr v7, v14

    .line 423
    if-le v9, v7, :cond_13

    .line 424
    .line 425
    move v9, v7

    .line 426
    :cond_13
    if-eqz v6, :cond_19

    .line 427
    .line 428
    if-nez v8, :cond_14

    .line 429
    .line 430
    goto :goto_f

    .line 431
    :cond_14
    iget v7, v8, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->size:I

    .line 432
    .line 433
    sget-object v12, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Cutoff;->INSTANCE:Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem$Cutoff;

    .line 434
    .line 435
    invoke-static {v12}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v12

    .line 439
    invoke-virtual {v6, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v6

    .line 443
    if-eqz v6, :cond_1a

    .line 444
    .line 445
    iget-object v6, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->cutoffIndexState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 446
    .line 447
    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    if-lt v6, v9, :cond_1a

    .line 452
    .line 453
    add-int/lit8 v6, v13, -0x2

    .line 454
    .line 455
    invoke-static {v6, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    check-cast v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 460
    .line 461
    if-eqz v2, :cond_15

    .line 462
    .line 463
    invoke-static {v2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    goto :goto_c

    .line 468
    :cond_15
    move-object v2, v15

    .line 469
    :goto_c
    if-eqz v2, :cond_18

    .line 470
    .line 471
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 476
    .line 477
    .line 478
    move-result v6

    .line 479
    if-eqz v6, :cond_17

    .line 480
    .line 481
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    move-object v8, v6

    .line 486
    check-cast v8, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;

    .line 487
    .line 488
    iget-object v8, v8, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->key:Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v8

    .line 494
    if-eqz v8, :cond_16

    .line 495
    .line 496
    goto :goto_d

    .line 497
    :cond_17
    move-object v6, v15

    .line 498
    :goto_d
    check-cast v6, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;

    .line 499
    .line 500
    goto :goto_e

    .line 501
    :cond_18
    move-object v6, v15

    .line 502
    :goto_e
    if-eqz v6, :cond_19

    .line 503
    .line 504
    new-instance v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$UpwardSwapConfig;

    .line 505
    .line 506
    iget v3, v6, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->offset:I

    .line 507
    .line 508
    int-to-float v3, v3

    .line 509
    iget v6, v6, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->size:I

    .line 510
    .line 511
    int-to-float v8, v6

    .line 512
    div-float/2addr v8, v11

    .line 513
    add-float/2addr v8, v3

    .line 514
    add-int/2addr v7, v6

    .line 515
    int-to-float v3, v7

    .line 516
    invoke-direct {v2, v8, v3}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$UpwardSwapConfig;-><init>(FF)V

    .line 517
    .line 518
    .line 519
    goto :goto_10

    .line 520
    :cond_19
    :goto_f
    move-object v2, v15

    .line 521
    goto :goto_10

    .line 522
    :cond_1a
    new-instance v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$UpwardSwapConfig;

    .line 523
    .line 524
    iget v3, v8, Lcom/fsck/k9/ui/settings/notificationactions/ReorderVisibleItem;->offset:I

    .line 525
    .line 526
    int-to-float v3, v3

    .line 527
    int-to-float v6, v7

    .line 528
    div-float v7, v6, v11

    .line 529
    .line 530
    add-float/2addr v7, v3

    .line 531
    invoke-direct {v2, v7, v6}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$UpwardSwapConfig;-><init>(FF)V

    .line 532
    .line 533
    .line 534
    :goto_10
    if-eqz v2, :cond_1c

    .line 535
    .line 536
    int-to-float v3, v5

    .line 537
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    add-float/2addr v5, v3

    .line 542
    iget v3, v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$UpwardSwapConfig;->threshold:F

    .line 543
    .line 544
    sub-float/2addr v3, v10

    .line 545
    cmpg-float v3, v5, v3

    .line 546
    .line 547
    if-gtz v3, :cond_1b

    .line 548
    .line 549
    goto :goto_11

    .line 550
    :cond_1b
    move-object v2, v15

    .line 551
    :goto_11
    if-eqz v2, :cond_1c

    .line 552
    .line 553
    new-instance v15, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$SwapDecision;

    .line 554
    .line 555
    iget v2, v2, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$UpwardSwapConfig;->offsetCompensation:F

    .line 556
    .line 557
    invoke-direct {v15, v1, v2}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$SwapDecision;-><init>(IF)V

    .line 558
    .line 559
    .line 560
    :cond_1c
    :goto_12
    if-eqz v15, :cond_1d

    .line 561
    .line 562
    iget v1, v15, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$SwapDecision;->toIndex:I

    .line 563
    .line 564
    invoke-virtual {v0, v13, v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->moveRenderedItem(II)Z

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-eqz v1, :cond_1d

    .line 569
    .line 570
    iput-boolean v14, v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;->dragDidMove:Z

    .line 571
    .line 572
    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    iget v1, v15, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController$SwapDecision;->offsetCompensation:F

    .line 577
    .line 578
    add-float/2addr v0, v1

    .line 579
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 580
    .line 581
    .line 582
    :cond_1d
    :goto_13
    return-object v16

    .line 583
    :pswitch_3
    check-cast v0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

    .line 584
    .line 585
    check-cast v3, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 586
    .line 587
    iget-object v2, v3, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 588
    .line 589
    check-cast v2, Landroid/view/View;

    .line 590
    .line 591
    check-cast v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 592
    .line 593
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    iget-object v4, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->exportButton:Lcom/fsck/k9/ui/settings/export/ButtonState;

    .line 597
    .line 598
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    if-eqz v4, :cond_21

    .line 603
    .line 604
    if-eq v4, v14, :cond_20

    .line 605
    .line 606
    if-eq v4, v12, :cond_1f

    .line 607
    .line 608
    if-ne v4, v9, :cond_1e

    .line 609
    .line 610
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 611
    .line 612
    .line 613
    goto :goto_14

    .line 614
    :cond_1e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_1a

    .line 618
    .line 619
    :cond_1f
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 620
    .line 621
    .line 622
    goto :goto_14

    .line 623
    :cond_20
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 627
    .line 628
    .line 629
    goto :goto_14

    .line 630
    :cond_21
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v2, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 634
    .line 635
    .line 636
    :goto_14
    iget-object v2, v3, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 637
    .line 638
    check-cast v2, Landroid/view/View;

    .line 639
    .line 640
    iget-object v4, v3, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 641
    .line 642
    check-cast v4, Lcom/google/android/material/textview/MaterialTextView;

    .line 643
    .line 644
    iget-boolean v5, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 645
    .line 646
    if-eqz v5, :cond_22

    .line 647
    .line 648
    move v5, v13

    .line 649
    goto :goto_15

    .line 650
    :cond_22
    move v5, v10

    .line 651
    :goto_15
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 652
    .line 653
    .line 654
    iget-object v2, v3, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast v2, Landroid/view/View;

    .line 657
    .line 658
    iget-boolean v5, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isProgressVisible:Z

    .line 659
    .line 660
    if-eqz v5, :cond_23

    .line 661
    .line 662
    move v5, v13

    .line 663
    goto :goto_16

    .line 664
    :cond_23
    move v5, v10

    .line 665
    :goto_16
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 666
    .line 667
    .line 668
    iget-object v2, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->statusText:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 669
    .line 670
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    if-eqz v2, :cond_27

    .line 675
    .line 676
    if-eq v2, v14, :cond_26

    .line 677
    .line 678
    if-eq v2, v12, :cond_25

    .line 679
    .line 680
    if-ne v2, v9, :cond_24

    .line 681
    .line 682
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 683
    .line 684
    .line 685
    const v2, 0x7f12059d

    .line 686
    .line 687
    .line 688
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v2

    .line 692
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    .line 694
    .line 695
    goto :goto_17

    .line 696
    :cond_24
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 697
    .line 698
    .line 699
    goto/16 :goto_1a

    .line 700
    .line 701
    :cond_25
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 702
    .line 703
    .line 704
    const v2, 0x7f1205a0

    .line 705
    .line 706
    .line 707
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v2

    .line 711
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    .line 713
    .line 714
    goto :goto_17

    .line 715
    :cond_26
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 716
    .line 717
    .line 718
    const v2, 0x7f12059e

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 722
    .line 723
    .line 724
    move-result-object v2

    .line 725
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    .line 727
    .line 728
    goto :goto_17

    .line 729
    :cond_27
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 730
    .line 731
    .line 732
    :goto_17
    iget-object v2, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->settingsList:Ljava/util/List;

    .line 733
    .line 734
    iget-boolean v1, v1, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isSettingsListEnabled:Z

    .line 735
    .line 736
    new-instance v4, Ljava/util/ArrayList;

    .line 737
    .line 738
    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 739
    .line 740
    .line 741
    move-result v5

    .line 742
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 743
    .line 744
    .line 745
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 750
    .line 751
    .line 752
    move-result v5

    .line 753
    if-eqz v5, :cond_2a

    .line 754
    .line 755
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v5

    .line 759
    check-cast v5, Lcom/fsck/k9/ui/settings/export/SettingsListItem;

    .line 760
    .line 761
    instance-of v7, v5, Lcom/fsck/k9/ui/settings/export/SettingsListItem$GeneralSettings;

    .line 762
    .line 763
    if-eqz v7, :cond_28

    .line 764
    .line 765
    new-instance v7, Lcom/fsck/k9/ui/settings/export/GeneralSettingsItem;

    .line 766
    .line 767
    const-wide/16 v8, 0x0

    .line 768
    .line 769
    invoke-direct {v7, v8, v9}, Lcom/fsck/k9/ui/settings/export/CheckBoxItem;-><init>(J)V

    .line 770
    .line 771
    .line 772
    goto :goto_19

    .line 773
    :cond_28
    instance-of v7, v5, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;

    .line 774
    .line 775
    if-eqz v7, :cond_29

    .line 776
    .line 777
    new-instance v7, Lcom/fsck/k9/ui/settings/export/AccountItem;

    .line 778
    .line 779
    move-object v8, v5

    .line 780
    check-cast v8, Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;

    .line 781
    .line 782
    invoke-direct {v7, v8}, Lcom/fsck/k9/ui/settings/export/AccountItem;-><init>(Lcom/fsck/k9/ui/settings/export/SettingsListItem$Account;)V

    .line 783
    .line 784
    .line 785
    :goto_19
    iget-boolean v5, v5, Lcom/fsck/k9/ui/settings/export/SettingsListItem;->selected:Z

    .line 786
    .line 787
    iput-boolean v5, v7, Lcom/mikepenz/fastadapter/items/AbstractItem;->isSelected:Z

    .line 788
    .line 789
    iput-boolean v1, v7, Lcom/mikepenz/fastadapter/items/AbstractItem;->isEnabled:Z

    .line 790
    .line 791
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    goto :goto_18

    .line 795
    :cond_29
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 796
    .line 797
    .line 798
    goto :goto_1a

    .line 799
    :cond_2a
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 800
    .line 801
    if-eqz v0, :cond_2b

    .line 802
    .line 803
    invoke-virtual {v0, v4}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->intercept(Ljava/util/List;)Ljava/util/ArrayList;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    invoke-virtual {v0, v2, v14}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->setInternal(Ljava/util/List;Z)V

    .line 808
    .line 809
    .line 810
    iget-object v0, v3, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 811
    .line 812
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 813
    .line 814
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 815
    .line 816
    .line 817
    move-object/from16 v15, v16

    .line 818
    .line 819
    :goto_1a
    return-object v15

    .line 820
    :cond_2b
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    throw v15

    .line 824
    :pswitch_4
    check-cast v3, Ljava/util/List;

    .line 825
    .line 826
    check-cast v0, Lcom/fsck/k9/ui/settings/SettingsListFragment;

    .line 827
    .line 828
    check-cast v1, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;

    .line 829
    .line 830
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 831
    .line 832
    .line 833
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 834
    .line 835
    .line 836
    move-result v2

    .line 837
    if-le v2, v14, :cond_2c

    .line 838
    .line 839
    move v13, v14

    .line 840
    :cond_2c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    if-eqz v3, :cond_2d

    .line 849
    .line 850
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 855
    .line 856
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 857
    .line 858
    .line 859
    iget-object v4, v1, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->settingsList:Ljava/util/ArrayList;

    .line 860
    .line 861
    new-instance v5, Lcom/fsck/k9/ui/settings/AccountItem;

    .line 862
    .line 863
    invoke-direct {v5, v3, v13}, Lcom/fsck/k9/ui/settings/AccountItem;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDto;Z)V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    .line 868
    .line 869
    goto :goto_1b

    .line 870
    :cond_2d
    const v2, 0x7f1201c7

    .line 871
    .line 872
    .line 873
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 878
    .line 879
    .line 880
    const v2, 0x7f090056

    .line 881
    .line 882
    .line 883
    const v3, 0x7f0800b8

    .line 884
    .line 885
    .line 886
    invoke-virtual {v1, v2, v0, v3}, Lcom/fsck/k9/ui/settings/SettingsListFragment$SettingsListBuilder;->addAction(ILjava/lang/String;I)V

    .line 887
    .line 888
    .line 889
    return-object v16

    .line 890
    :pswitch_5
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 891
    .line 892
    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 893
    .line 894
    check-cast v1, Ljava/lang/Integer;

    .line 895
    .line 896
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 897
    .line 898
    .line 899
    move-result v1

    .line 900
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    if-eqz v0, :cond_31

    .line 905
    .line 906
    iget-object v1, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    .line 907
    .line 908
    iget-object v2, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 909
    .line 910
    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->getDragDirs(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    .line 911
    .line 912
    .line 913
    move-result v4

    .line 914
    iget v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 915
    .line 916
    or-int v5, v1, v4

    .line 917
    .line 918
    shl-int/2addr v1, v10

    .line 919
    or-int/2addr v1, v5

    .line 920
    shl-int/lit8 v4, v4, 0x10

    .line 921
    .line 922
    or-int/2addr v1, v4

    .line 923
    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    .line 924
    .line 925
    .line 926
    move-result v2

    .line 927
    invoke-static {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->convertToAbsoluteDirection(II)I

    .line 928
    .line 929
    .line 930
    move-result v1

    .line 931
    const/high16 v2, 0xff0000

    .line 932
    .line 933
    and-int/2addr v1, v2

    .line 934
    const-string v2, "ItemTouchHelper"

    .line 935
    .line 936
    if-eqz v1, :cond_30

    .line 937
    .line 938
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 939
    .line 940
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 941
    .line 942
    .line 943
    move-result-object v1

    .line 944
    iget-object v4, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 945
    .line 946
    if-eq v1, v4, :cond_2e

    .line 947
    .line 948
    const-string v0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    .line 949
    .line 950
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .line 952
    .line 953
    goto :goto_1c

    .line 954
    :cond_2e
    iget-object v1, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 955
    .line 956
    if-eqz v1, :cond_2f

    .line 957
    .line 958
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 959
    .line 960
    .line 961
    :cond_2f
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    iput-object v1, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 966
    .line 967
    iput v8, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 968
    .line 969
    iput v8, v3, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 970
    .line 971
    invoke-virtual {v3, v0, v12}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 972
    .line 973
    .line 974
    goto :goto_1c

    .line 975
    :cond_30
    const-string v0, "Start drag has been called but dragging is not enabled"

    .line 976
    .line 977
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .line 979
    .line 980
    :cond_31
    :goto_1c
    return-object v16

    .line 981
    :pswitch_6
    check-cast v0, Lokhttp3/ConnectionPool;

    .line 982
    .line 983
    check-cast v3, Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 984
    .line 985
    check-cast v1, Lcom/fsck/k9/mail/Address;

    .line 986
    .line 987
    iget-object v0, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 988
    .line 989
    check-cast v0, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;

    .line 990
    .line 991
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 992
    .line 993
    .line 994
    invoke-virtual {v0, v1, v3}, Lcom/fsck/k9/ui/messageview/RealMessageViewRecipientFormatter;->getDisplayName(Lcom/fsck/k9/mail/Address;Lnet/thunderbird/core/android/account/LegacyAccountDto;)Ljava/lang/CharSequence;

    .line 995
    .line 996
    .line 997
    move-result-object v0

    .line 998
    return-object v0

    .line 999
    :pswitch_7
    check-cast v0, Lcom/fsck/k9/ui/messagesource/MessageHeadersViewModel;

    .line 1000
    .line 1001
    check-cast v3, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 1002
    .line 1003
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 1004
    .line 1005
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1006
    .line 1007
    .line 1008
    iget-object v0, v0, Lcom/fsck/k9/ui/messagesource/MessageHeadersViewModel;->messageRepository:Lcom/fsck/k9/mailstore/MessageRepository;

    .line 1009
    .line 1010
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1011
    .line 1012
    .line 1013
    iget-object v0, v0, Lcom/fsck/k9/mailstore/MessageRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 1014
    .line 1015
    iget-object v1, v3, Lapp/k9mail/legacy/message/controller/MessageReference;->accountUuid:Ljava/lang/String;

    .line 1016
    .line 1017
    invoke-virtual {v0, v1}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Ljava/lang/String;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    iget-wide v5, v3, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 1022
    .line 1023
    iget-object v7, v3, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 1024
    .line 1025
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1026
    .line 1027
    .line 1028
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 1029
    .line 1030
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 1031
    .line 1032
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 1033
    .line 1034
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1035
    .line 1036
    .line 1037
    iget-object v0, v0, Lcom/fsck/k9/storage/messages/K9MessageStore;->retrieveMessageOperations:Lcom/google/zxing/BinaryBitmap;

    .line 1038
    .line 1039
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1040
    .line 1041
    .line 1042
    iget-object v0, v0, Lcom/google/zxing/BinaryBitmap;->binarizer:Ljava/lang/Object;

    .line 1043
    .line 1044
    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 1045
    .line 1046
    new-instance v4, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;

    .line 1047
    .line 1048
    const/4 v9, 0x2

    .line 1049
    const/4 v8, 0x0

    .line 1050
    invoke-direct/range {v4 .. v9}, Lcom/fsck/k9/storage/messages/UpdateFolderOperations$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;Ljava/lang/Object;I)V

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v0, v13, v4}, Lcom/fsck/k9/mailstore/LockableDatabase;->execute(ZLcom/fsck/k9/mailstore/LockableDatabase$DbCallback;)Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v0

    .line 1057
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    .line 1059
    .line 1060
    check-cast v0, Ljava/util/List;

    .line 1061
    .line 1062
    return-object v0

    .line 1063
    :pswitch_8
    check-cast v0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;

    .line 1064
    .line 1065
    check-cast v3, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 1066
    .line 1067
    check-cast v1, Ljava/lang/Boolean;

    .line 1068
    .line 1069
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1070
    .line 1071
    .line 1072
    iget-object v0, v0, Lcom/fsck/k9/ui/messagelist/item/ComposableMessageViewHolder;->onFavouriteClick:Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;

    .line 1073
    .line 1074
    invoke-virtual {v0, v3}, Lcom/fsck/k9/ui/messagelist/MessageListAdapter$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    return-object v16

    .line 1078
    :pswitch_9
    check-cast v0, Landroid/database/Cursor;

    .line 1079
    .line 1080
    check-cast v3, Lcom/bumptech/glide/GlideExperiments;

    .line 1081
    .line 1082
    check-cast v1, Landroid/database/Cursor;

    .line 1083
    .line 1084
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    .line 1086
    .line 1087
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 1088
    .line 1089
    .line 1090
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v1

    .line 1094
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1102
    .line 1103
    .line 1104
    iget-object v2, v3, Lcom/bumptech/glide/GlideExperiments;->experiments:Ljava/util/Map;

    .line 1105
    .line 1106
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    check-cast v1, Lcom/squareup/moshi/JsonAdapter;

    .line 1111
    .line 1112
    if-eqz v1, :cond_32

    .line 1113
    .line 1114
    invoke-virtual {v1, v0}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v0

    .line 1118
    check-cast v0, Lcom/fsck/k9/storage/migrations/LegacyPendingCommand;

    .line 1119
    .line 1120
    const-string v0, "Error deserializing pending command"

    .line 1121
    .line 1122
    :goto_1d
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    goto :goto_1e

    .line 1126
    :cond_32
    const-string v0, "Unsupported pending command type!"

    .line 1127
    .line 1128
    goto :goto_1d

    .line 1129
    :goto_1e
    return-object v15

    .line 1130
    :pswitch_a
    check-cast v0, Lokhttp3/ConnectionPool;

    .line 1131
    .line 1132
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 1133
    .line 1134
    check-cast v1, Ljava/lang/Integer;

    .line 1135
    .line 1136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1137
    .line 1138
    .line 1139
    move-result v1

    .line 1140
    if-ne v1, v12, :cond_35

    .line 1141
    .line 1142
    iget-object v1, v0, Lokhttp3/ConnectionPool;->delegate:Ljava/lang/Object;

    .line 1143
    .line 1144
    check-cast v1, Lorg/xmlpull/v1/XmlPullParser;

    .line 1145
    .line 1146
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v1

    .line 1150
    const-string/jumbo v2, "value"

    .line 1151
    .line 1152
    .line 1153
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result v1

    .line 1157
    if-eqz v1, :cond_34

    .line 1158
    .line 1159
    const-string v1, "key"

    .line 1160
    .line 1161
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionPool;->readAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->readText()Ljava/lang/String;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v0

    .line 1169
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1170
    .line 1171
    .line 1172
    move-result v2

    .line 1173
    if-eqz v2, :cond_33

    .line 1174
    .line 1175
    new-array v2, v12, [Ljava/lang/Object;

    .line 1176
    .line 1177
    aput-object v1, v2, v13

    .line 1178
    .line 1179
    aput-object v0, v2, v14

    .line 1180
    .line 1181
    const-string v0, "Already read key \"%s\". Ignoring value \"%s\""

    .line 1182
    .line 1183
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    .line 1185
    .line 1186
    goto :goto_1f

    .line 1187
    :cond_33
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    goto :goto_1f

    .line 1191
    :cond_34
    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->skipElement()V

    .line 1192
    .line 1193
    .line 1194
    :cond_35
    :goto_1f
    return-object v16

    .line 1195
    :pswitch_b
    check-cast v0, Landroid/os/Bundle;

    .line 1196
    .line 1197
    check-cast v3, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 1198
    .line 1199
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 1200
    .line 1201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1202
    .line 1203
    .line 1204
    const-string v2, "settingsListVisible"

    .line 1205
    .line 1206
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v2

    .line 1210
    iput-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListVisible:Z

    .line 1211
    .line 1212
    const-string v2, "settingsListEnabled"

    .line 1213
    .line 1214
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v2

    .line 1218
    iput-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 1219
    .line 1220
    const-string v2, "importButton"

    .line 1221
    .line 1222
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v2

    .line 1226
    sget-object v6, Lapp/k9mail/feature/settings/import/ui/ButtonState;->DISABLED:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 1227
    .line 1228
    if-nez v2, :cond_36

    .line 1229
    .line 1230
    move-object v2, v6

    .line 1231
    goto :goto_20

    .line 1232
    :cond_36
    invoke-static {v2}, Lapp/k9mail/feature/settings/import/ui/ButtonState;->valueOf(Ljava/lang/String;)Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v2

    .line 1236
    :goto_20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1237
    .line 1238
    .line 1239
    iput-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 1240
    .line 1241
    const-string v2, "closeButton"

    .line 1242
    .line 1243
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v2

    .line 1247
    if-nez v2, :cond_37

    .line 1248
    .line 1249
    goto :goto_21

    .line 1250
    :cond_37
    invoke-static {v2}, Lapp/k9mail/feature/settings/import/ui/ButtonState;->valueOf(Ljava/lang/String;)Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v6

    .line 1254
    :goto_21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1255
    .line 1256
    .line 1257
    iput-object v6, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 1258
    .line 1259
    const-string v2, "closeButtonLabel"

    .line 1260
    .line 1261
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v2

    .line 1265
    if-nez v2, :cond_38

    .line 1266
    .line 1267
    sget-object v2, Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;->OK:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 1268
    .line 1269
    goto :goto_22

    .line 1270
    :cond_38
    invoke-static {v2}, Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;->valueOf(Ljava/lang/String;)Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v2

    .line 1274
    :goto_22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1275
    .line 1276
    .line 1277
    iput-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButtonLabel:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 1278
    .line 1279
    const-string v2, "pickDocumentButtonVisible"

    .line 1280
    .line 1281
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1282
    .line 1283
    .line 1284
    move-result v2

    .line 1285
    iput-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonVisible:Z

    .line 1286
    .line 1287
    const-string v2, "pickDocumentButtonEnabled"

    .line 1288
    .line 1289
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1290
    .line 1291
    .line 1292
    move-result v2

    .line 1293
    iput-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonEnabled:Z

    .line 1294
    .line 1295
    const-string v2, "scanQrCodeButtonVisible"

    .line 1296
    .line 1297
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v2

    .line 1301
    iput-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonVisible:Z

    .line 1302
    .line 1303
    const-string v2, "scanQrCodeButtonEnabled"

    .line 1304
    .line 1305
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v2

    .line 1309
    iput-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonEnabled:Z

    .line 1310
    .line 1311
    const-string v2, "loadingProgressVisible"

    .line 1312
    .line 1313
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v2

    .line 1317
    iput-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isLoadingProgressVisible:Z

    .line 1318
    .line 1319
    const-string v2, "importProgressVisible"

    .line 1320
    .line 1321
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1322
    .line 1323
    .line 1324
    move-result v2

    .line 1325
    iput-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 1326
    .line 1327
    const-string v2, "statusText"

    .line 1328
    .line 1329
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v2

    .line 1333
    if-nez v2, :cond_39

    .line 1334
    .line 1335
    goto :goto_23

    .line 1336
    :cond_39
    invoke-static {v2}, Lapp/k9mail/feature/settings/import/ui/StatusText;->valueOf(Ljava/lang/String;)Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v4

    .line 1340
    :goto_23
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1341
    .line 1342
    .line 1343
    iput-object v4, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 1344
    .line 1345
    iget-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListVisible:Z

    .line 1346
    .line 1347
    if-nez v2, :cond_3a

    .line 1348
    .line 1349
    goto/16 :goto_2b

    .line 1350
    .line 1351
    :cond_3a
    const-string v2, "containsGeneralSettings"

    .line 1352
    .line 1353
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v2

    .line 1357
    if-eqz v2, :cond_3d

    .line 1358
    .line 1359
    const-string v2, "includeGeneralSettings"

    .line 1360
    .line 1361
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v2

    .line 1365
    const-string v4, "generalSettingsImportStatus"

    .line 1366
    .line 1367
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v4

    .line 1371
    if-nez v4, :cond_3b

    .line 1372
    .line 1373
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->NOT_AVAILABLE:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 1374
    .line 1375
    goto :goto_24

    .line 1376
    :cond_3b
    invoke-static {v4}, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->valueOf(Ljava/lang/String;)Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v4

    .line 1380
    :goto_24
    new-instance v6, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$GeneralSettings;

    .line 1381
    .line 1382
    invoke-direct {v6}, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;-><init>()V

    .line 1383
    .line 1384
    .line 1385
    iput-boolean v2, v6, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 1386
    .line 1387
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1388
    .line 1389
    .line 1390
    iput-object v4, v6, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 1391
    .line 1392
    iget-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 1393
    .line 1394
    if-ne v2, v5, :cond_3c

    .line 1395
    .line 1396
    move v2, v14

    .line 1397
    goto :goto_25

    .line 1398
    :cond_3c
    move v2, v13

    .line 1399
    :goto_25
    xor-int/2addr v2, v14

    .line 1400
    iput-boolean v2, v6, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->enabled:Z

    .line 1401
    .line 1402
    goto :goto_26

    .line 1403
    :cond_3d
    move-object v6, v15

    .line 1404
    :goto_26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1405
    .line 1406
    const/16 v4, 0x22

    .line 1407
    .line 1408
    const-string v7, "accountList"

    .line 1409
    .line 1410
    if-lt v2, v4, :cond_3e

    .line 1411
    .line 1412
    const-class v2, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;

    .line 1413
    .line 1414
    invoke-static {v0, v7, v2}, Landroidx/compose/ui/window/Api33Impl;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v0

    .line 1418
    goto :goto_27

    .line 1419
    :cond_3e
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    :goto_27
    if-eqz v0, :cond_44

    .line 1424
    .line 1425
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1426
    .line 1427
    .line 1428
    move-result-object v2

    .line 1429
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1430
    .line 1431
    .line 1432
    move-result v4

    .line 1433
    if-eqz v4, :cond_3f

    .line 1434
    .line 1435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v4

    .line 1439
    check-cast v4, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;

    .line 1440
    .line 1441
    iget-object v7, v3, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountsMap:Ljava/util/LinkedHashMap;

    .line 1442
    .line 1443
    iget v8, v4, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->accountIndex:I

    .line 1444
    .line 1445
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v8

    .line 1449
    iget-object v9, v4, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->accountUuid:Ljava/lang/String;

    .line 1450
    .line 1451
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    iget-object v7, v3, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->accountStateMap:Ljava/util/LinkedHashMap;

    .line 1455
    .line 1456
    iget v8, v4, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->accountIndex:I

    .line 1457
    .line 1458
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v8

    .line 1462
    new-instance v9, Lapp/k9mail/feature/settings/import/ui/AccountState;

    .line 1463
    .line 1464
    iget-object v10, v4, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->incomingServerName:Ljava/lang/String;

    .line 1465
    .line 1466
    iget-object v12, v4, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->outgoingServerName:Ljava/lang/String;

    .line 1467
    .line 1468
    iget-boolean v15, v4, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->incomingServerPasswordNeeded:Z

    .line 1469
    .line 1470
    iget-boolean v4, v4, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->outgoingServerPasswordNeeded:Z

    .line 1471
    .line 1472
    invoke-direct {v9, v10, v12, v15, v4}, Lapp/k9mail/feature/settings/import/ui/AccountState;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1473
    .line 1474
    .line 1475
    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    .line 1477
    .line 1478
    goto :goto_28

    .line 1479
    :cond_3f
    new-instance v2, Ljava/util/ArrayList;

    .line 1480
    .line 1481
    invoke-static {v0, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1482
    .line 1483
    .line 1484
    move-result v3

    .line 1485
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1486
    .line 1487
    .line 1488
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v0

    .line 1492
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1493
    .line 1494
    .line 1495
    move-result v3

    .line 1496
    if-eqz v3, :cond_42

    .line 1497
    .line 1498
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v3

    .line 1502
    check-cast v3, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;

    .line 1503
    .line 1504
    new-instance v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 1505
    .line 1506
    iget v7, v3, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->accountIndex:I

    .line 1507
    .line 1508
    iget-object v8, v3, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 1509
    .line 1510
    iget-object v9, v3, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->displayName:Ljava/lang/String;

    .line 1511
    .line 1512
    invoke-direct {v4, v9, v7}, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;-><init>(Ljava/lang/String;I)V

    .line 1513
    .line 1514
    .line 1515
    iget-boolean v3, v3, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->selected:Z

    .line 1516
    .line 1517
    iput-boolean v3, v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 1518
    .line 1519
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1520
    .line 1521
    .line 1522
    iput-object v8, v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 1523
    .line 1524
    iget-object v3, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 1525
    .line 1526
    if-ne v3, v5, :cond_40

    .line 1527
    .line 1528
    sget-object v3, Lapp/k9mail/feature/settings/import/ui/ImportStatus;->IMPORT_SUCCESS_PASSWORD_REQUIRED:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 1529
    .line 1530
    if-ne v8, v3, :cond_41

    .line 1531
    .line 1532
    :cond_40
    move v3, v14

    .line 1533
    goto :goto_2a

    .line 1534
    :cond_41
    move v3, v13

    .line 1535
    :goto_2a
    iput-boolean v3, v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->enabled:Z

    .line 1536
    .line 1537
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1538
    .line 1539
    .line 1540
    goto :goto_29

    .line 1541
    :cond_42
    if-eqz v6, :cond_43

    .line 1542
    .line 1543
    invoke-static {v6}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v0

    .line 1547
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v2

    .line 1551
    :cond_43
    iput-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 1552
    .line 1553
    :goto_2b
    move-object/from16 v15, v16

    .line 1554
    .line 1555
    goto :goto_2c

    .line 1556
    :cond_44
    const-string v0, "Saved account list is missing"

    .line 1557
    .line 1558
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1559
    .line 1560
    .line 1561
    :goto_2c
    return-object v15

    .line 1562
    :pswitch_c
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 1563
    .line 1564
    check-cast v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;

    .line 1565
    .line 1566
    iget-object v2, v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->importButton:Landroid/view/View;

    .line 1567
    .line 1568
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 1569
    .line 1570
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1571
    .line 1572
    .line 1573
    iget-object v8, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->importButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 1574
    .line 1575
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 1576
    .line 1577
    .line 1578
    move-result v8

    .line 1579
    if-eqz v8, :cond_48

    .line 1580
    .line 1581
    if-eq v8, v14, :cond_47

    .line 1582
    .line 1583
    if-eq v8, v12, :cond_46

    .line 1584
    .line 1585
    if-ne v8, v9, :cond_45

    .line 1586
    .line 1587
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1588
    .line 1589
    .line 1590
    goto :goto_2d

    .line 1591
    :cond_45
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1592
    .line 1593
    .line 1594
    goto/16 :goto_3b

    .line 1595
    .line 1596
    :cond_46
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    .line 1598
    .line 1599
    goto :goto_2d

    .line 1600
    :cond_47
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {v2, v14}, Landroid/view/View;->setEnabled(Z)V

    .line 1604
    .line 1605
    .line 1606
    goto :goto_2d

    .line 1607
    :cond_48
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1608
    .line 1609
    .line 1610
    invoke-virtual {v2, v13}, Landroid/view/View;->setEnabled(Z)V

    .line 1611
    .line 1612
    .line 1613
    :goto_2d
    iget-object v2, v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->closeButton:Lcom/google/android/material/button/MaterialButton;

    .line 1614
    .line 1615
    iget-object v8, v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->pickAppButton:Landroid/view/View;

    .line 1616
    .line 1617
    iget-object v9, v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->scanQrCodeButton:Landroid/view/View;

    .line 1618
    .line 1619
    iget-object v12, v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->pickDocumentButton:Landroid/view/View;

    .line 1620
    .line 1621
    iget-object v7, v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->settingsImportList:Landroidx/recyclerview/widget/RecyclerView;

    .line 1622
    .line 1623
    iget-object v10, v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->statusText:Lcom/google/android/material/textview/MaterialTextView;

    .line 1624
    .line 1625
    iget-object v13, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButton:Lapp/k9mail/feature/settings/import/ui/ButtonState;

    .line 1626
    .line 1627
    if-ne v13, v5, :cond_49

    .line 1628
    .line 1629
    const/16 v5, 0x8

    .line 1630
    .line 1631
    goto :goto_2e

    .line 1632
    :cond_49
    const/4 v5, 0x0

    .line 1633
    :goto_2e
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1634
    .line 1635
    .line 1636
    iget-object v5, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->closeButtonLabel:Lapp/k9mail/feature/settings/import/ui/CloseButtonLabel;

    .line 1637
    .line 1638
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 1639
    .line 1640
    .line 1641
    move-result v5

    .line 1642
    if-eqz v5, :cond_4b

    .line 1643
    .line 1644
    if-ne v5, v14, :cond_4a

    .line 1645
    .line 1646
    const v5, 0x7f1205a9

    .line 1647
    .line 1648
    .line 1649
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1650
    .line 1651
    .line 1652
    goto :goto_2f

    .line 1653
    :cond_4a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1654
    .line 1655
    .line 1656
    goto/16 :goto_3b

    .line 1657
    .line 1658
    :cond_4b
    const v5, 0x7f12050a

    .line 1659
    .line 1660
    .line 1661
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1662
    .line 1663
    .line 1664
    :goto_2f
    iget-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListVisible:Z

    .line 1665
    .line 1666
    if-eqz v2, :cond_4c

    .line 1667
    .line 1668
    const/4 v2, 0x0

    .line 1669
    goto :goto_30

    .line 1670
    :cond_4c
    const/16 v2, 0x8

    .line 1671
    .line 1672
    :goto_30
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    .line 1674
    .line 1675
    iget-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonVisible:Z

    .line 1676
    .line 1677
    if-nez v2, :cond_4d

    .line 1678
    .line 1679
    const/4 v2, 0x4

    .line 1680
    goto :goto_31

    .line 1681
    :cond_4d
    const/4 v2, 0x0

    .line 1682
    :goto_31
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1683
    .line 1684
    .line 1685
    iget-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonEnabled:Z

    .line 1686
    .line 1687
    invoke-virtual {v12, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1688
    .line 1689
    .line 1690
    iget-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonVisible:Z

    .line 1691
    .line 1692
    if-nez v2, :cond_4e

    .line 1693
    .line 1694
    const/4 v2, 0x4

    .line 1695
    goto :goto_32

    .line 1696
    :cond_4e
    const/4 v2, 0x0

    .line 1697
    :goto_32
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1698
    .line 1699
    .line 1700
    iget-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonEnabled:Z

    .line 1701
    .line 1702
    invoke-virtual {v9, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1703
    .line 1704
    .line 1705
    iget-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonVisible:Z

    .line 1706
    .line 1707
    if-nez v2, :cond_4f

    .line 1708
    .line 1709
    const/4 v2, 0x4

    .line 1710
    goto :goto_33

    .line 1711
    :cond_4f
    const/4 v2, 0x0

    .line 1712
    :goto_33
    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1713
    .line 1714
    .line 1715
    iget-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonEnabled:Z

    .line 1716
    .line 1717
    invoke-virtual {v8, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1718
    .line 1719
    .line 1720
    iget-object v2, v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->loadingProgressBar:Landroid/view/View;

    .line 1721
    .line 1722
    iget-boolean v5, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isLoadingProgressVisible:Z

    .line 1723
    .line 1724
    if-eqz v5, :cond_50

    .line 1725
    .line 1726
    const/4 v5, 0x0

    .line 1727
    goto :goto_34

    .line 1728
    :cond_50
    const/16 v5, 0x8

    .line 1729
    .line 1730
    :goto_34
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1731
    .line 1732
    .line 1733
    iget-object v2, v3, Lapp/k9mail/feature/settings/import/ui/ViewHolder;->importProgressBar:Landroid/view/View;

    .line 1734
    .line 1735
    iget-boolean v3, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isImportProgressVisible:Z

    .line 1736
    .line 1737
    if-eqz v3, :cond_51

    .line 1738
    .line 1739
    const/4 v3, 0x0

    .line 1740
    goto :goto_35

    .line 1741
    :cond_51
    const/16 v3, 0x8

    .line 1742
    .line 1743
    :goto_35
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1744
    .line 1745
    .line 1746
    iget-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 1747
    .line 1748
    if-eq v2, v4, :cond_52

    .line 1749
    .line 1750
    const/4 v2, 0x0

    .line 1751
    goto :goto_36

    .line 1752
    :cond_52
    const/16 v2, 0x8

    .line 1753
    .line 1754
    :goto_36
    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1755
    .line 1756
    .line 1757
    iget-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->statusText:Lapp/k9mail/feature/settings/import/ui/StatusText;

    .line 1758
    .line 1759
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 1760
    .line 1761
    .line 1762
    move-result v2

    .line 1763
    packed-switch v2, :pswitch_data_1

    .line 1764
    .line 1765
    .line 1766
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1767
    .line 1768
    .line 1769
    goto/16 :goto_3b

    .line 1770
    .line 1771
    :pswitch_d
    const v2, 0x7f1205a6

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v2

    .line 1778
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    .line 1780
    .line 1781
    goto :goto_37

    .line 1782
    :pswitch_e
    const v2, 0x7f1205b2

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v2

    .line 1789
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1790
    .line 1791
    .line 1792
    goto :goto_37

    .line 1793
    :pswitch_f
    const v2, 0x7f1205b7

    .line 1794
    .line 1795
    .line 1796
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v2

    .line 1800
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1801
    .line 1802
    .line 1803
    goto :goto_37

    .line 1804
    :pswitch_10
    const v2, 0x7f1205a3

    .line 1805
    .line 1806
    .line 1807
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v2

    .line 1811
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1812
    .line 1813
    .line 1814
    goto :goto_37

    .line 1815
    :pswitch_11
    const v2, 0x7f1205a4

    .line 1816
    .line 1817
    .line 1818
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v2

    .line 1822
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1823
    .line 1824
    .line 1825
    goto :goto_37

    .line 1826
    :pswitch_12
    const v2, 0x7f1205b3

    .line 1827
    .line 1828
    .line 1829
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1830
    .line 1831
    .line 1832
    move-result-object v2

    .line 1833
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1834
    .line 1835
    .line 1836
    goto :goto_37

    .line 1837
    :pswitch_13
    const v2, 0x7f1205bf

    .line 1838
    .line 1839
    .line 1840
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v2

    .line 1844
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1845
    .line 1846
    .line 1847
    goto :goto_37

    .line 1848
    :pswitch_14
    const v2, 0x7f1205c2

    .line 1849
    .line 1850
    .line 1851
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1852
    .line 1853
    .line 1854
    move-result-object v2

    .line 1855
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1856
    .line 1857
    .line 1858
    goto :goto_37

    .line 1859
    :pswitch_15
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1860
    .line 1861
    .line 1862
    :goto_37
    iget-object v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->settingsList:Ljava/util/List;

    .line 1863
    .line 1864
    iget-boolean v1, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isSettingsListEnabled:Z

    .line 1865
    .line 1866
    new-instance v3, Ljava/util/ArrayList;

    .line 1867
    .line 1868
    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1869
    .line 1870
    .line 1871
    move-result v4

    .line 1872
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1873
    .line 1874
    .line 1875
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v2

    .line 1879
    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1880
    .line 1881
    .line 1882
    move-result v4

    .line 1883
    if-eqz v4, :cond_56

    .line 1884
    .line 1885
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v4

    .line 1889
    check-cast v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;

    .line 1890
    .line 1891
    instance-of v5, v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$GeneralSettings;

    .line 1892
    .line 1893
    if-eqz v5, :cond_53

    .line 1894
    .line 1895
    new-instance v5, Lapp/k9mail/feature/settings/import/ui/GeneralSettingsItem;

    .line 1896
    .line 1897
    iget-object v8, v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 1898
    .line 1899
    invoke-direct {v5, v8}, Lapp/k9mail/feature/settings/import/ui/GeneralSettingsItem;-><init>(Lapp/k9mail/feature/settings/import/ui/ImportStatus;)V

    .line 1900
    .line 1901
    .line 1902
    goto :goto_39

    .line 1903
    :cond_53
    instance-of v5, v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 1904
    .line 1905
    if-eqz v5, :cond_55

    .line 1906
    .line 1907
    new-instance v5, Lapp/k9mail/feature/settings/import/ui/AccountItem;

    .line 1908
    .line 1909
    move-object v8, v4

    .line 1910
    check-cast v8, Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;

    .line 1911
    .line 1912
    invoke-direct {v5, v8}, Lapp/k9mail/feature/settings/import/ui/AccountItem;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsListItem$Account;)V

    .line 1913
    .line 1914
    .line 1915
    :goto_39
    iget-boolean v8, v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->selected:Z

    .line 1916
    .line 1917
    iput-boolean v8, v5, Lcom/mikepenz/fastadapter/items/AbstractItem;->isSelected:Z

    .line 1918
    .line 1919
    iget-boolean v4, v4, Lapp/k9mail/feature/settings/import/ui/SettingsListItem;->enabled:Z

    .line 1920
    .line 1921
    if-eqz v4, :cond_54

    .line 1922
    .line 1923
    if-eqz v1, :cond_54

    .line 1924
    .line 1925
    move v4, v14

    .line 1926
    goto :goto_3a

    .line 1927
    :cond_54
    const/4 v4, 0x0

    .line 1928
    :goto_3a
    iput-boolean v4, v5, Lcom/mikepenz/fastadapter/items/AbstractItem;->isEnabled:Z

    .line 1929
    .line 1930
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    .line 1932
    .line 1933
    goto :goto_38

    .line 1934
    :cond_55
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1935
    .line 1936
    .line 1937
    goto :goto_3b

    .line 1938
    :cond_56
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->itemAdapter:Lcom/mikepenz/fastadapter/adapters/ItemAdapter;

    .line 1939
    .line 1940
    if-eqz v0, :cond_57

    .line 1941
    .line 1942
    invoke-virtual {v0, v3}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->intercept(Ljava/util/List;)Ljava/util/ArrayList;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v2

    .line 1946
    invoke-virtual {v0, v2, v14}, Lcom/mikepenz/fastadapter/adapters/ItemAdapter;->setInternal(Ljava/util/List;Z)V

    .line 1947
    .line 1948
    .line 1949
    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1950
    .line 1951
    .line 1952
    move-object/from16 v15, v16

    .line 1953
    .line 1954
    :goto_3b
    return-object v15

    .line 1955
    :cond_57
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 1956
    .line 1957
    .line 1958
    throw v15

    .line 1959
    :pswitch_16
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 1960
    .line 1961
    check-cast v3, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 1962
    .line 1963
    check-cast v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute;

    .line 1964
    .line 1965
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1966
    .line 1967
    .line 1968
    instance-of v2, v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;

    .line 1969
    .line 1970
    if-eqz v2, :cond_58

    .line 1971
    .line 1972
    new-instance v1, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;

    .line 1973
    .line 1974
    const/16 v2, 0xe

    .line 1975
    .line 1976
    invoke-direct {v1, v2}, Lcom/fsck/k9/KoinModuleKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1977
    .line 1978
    .line 1979
    const-string v2, "permissions"

    .line 1980
    .line 1981
    invoke-virtual {v0, v2, v1}, Landroidx/navigation/NavHostController;->navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 1982
    .line 1983
    .line 1984
    goto :goto_3c

    .line 1985
    :cond_58
    sget-object v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailScanQrCode;->INSTANCE:Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailScanQrCode;

    .line 1986
    .line 1987
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1988
    .line 1989
    .line 1990
    move-result v0

    .line 1991
    if-eqz v0, :cond_59

    .line 1992
    .line 1993
    sget-object v0, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$ThundermailScanQrCode;->INSTANCE:Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$ThundermailScanQrCode;

    .line 1994
    .line 1995
    invoke-virtual {v3, v0}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    .line 1997
    .line 1998
    goto :goto_3c

    .line 1999
    :cond_59
    sget-object v0, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailSignIn;->INSTANCE:Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailSignIn;

    .line 2000
    .line 2001
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2002
    .line 2003
    .line 2004
    move-result v0

    .line 2005
    if-eqz v0, :cond_5a

    .line 2006
    .line 2007
    sget-object v0, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$ThundermailSignIn;->INSTANCE:Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$ThundermailSignIn;

    .line 2008
    .line 2009
    invoke-virtual {v3, v0}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    .line 2011
    .line 2012
    :goto_3c
    move-object/from16 v15, v16

    .line 2013
    .line 2014
    goto :goto_3d

    .line 2015
    :cond_5a
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2016
    .line 2017
    .line 2018
    :goto_3d
    return-object v15

    .line 2019
    :pswitch_17
    check-cast v0, Lnet/thunderbird/app/common/feature/MessageListLauncher;

    .line 2020
    .line 2021
    check-cast v3, Landroidx/navigation/NavHostController;

    .line 2022
    .line 2023
    check-cast v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute;

    .line 2024
    .line 2025
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2026
    .line 2027
    .line 2028
    instance-of v2, v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;

    .line 2029
    .line 2030
    if-eqz v2, :cond_5b

    .line 2031
    .line 2032
    check-cast v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;

    .line 2033
    .line 2034
    iget-object v1, v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$AccountSetup;->accountId:Ljava/lang/String;

    .line 2035
    .line 2036
    invoke-virtual {v0, v1}, Lnet/thunderbird/app/common/feature/MessageListLauncher;->launch(Ljava/lang/String;)V

    .line 2037
    .line 2038
    .line 2039
    goto :goto_3e

    .line 2040
    :cond_5b
    instance-of v0, v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailScanQrCode;

    .line 2041
    .line 2042
    if-eqz v0, :cond_5c

    .line 2043
    .line 2044
    sget-object v0, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$ScanQrCode;

    .line 2045
    .line 2046
    invoke-static {v3, v0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute;)V

    .line 2047
    .line 2048
    .line 2049
    goto :goto_3e

    .line 2050
    :cond_5c
    instance-of v0, v1, Lapp/k9mail/feature/account/setup/navigation/AccountSetupRoute$ThundermailSignIn;

    .line 2051
    .line 2052
    if-eqz v0, :cond_5d

    .line 2053
    .line 2054
    sget-object v0, Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;->INSTANCE:Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute$SignInWithThundermail;

    .line 2055
    .line 2056
    invoke-static {v3, v0}, Landroidx/navigation/NavHostController;->navigate$default(Landroidx/navigation/NavHostController;Lnet/thunderbird/feature/thundermail/navigation/ThundermailRoute;)V

    .line 2057
    .line 2058
    .line 2059
    :goto_3e
    move-object/from16 v15, v16

    .line 2060
    .line 2061
    goto :goto_3f

    .line 2062
    :cond_5d
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2063
    .line 2064
    .line 2065
    :goto_3f
    return-object v15

    .line 2066
    :pswitch_18
    check-cast v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;

    .line 2067
    .line 2068
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent;

    .line 2069
    .line 2070
    move-object v4, v1

    .line 2071
    check-cast v4, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 2072
    .line 2073
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2074
    .line 2075
    .line 2076
    iget-object v0, v0, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersViewModel;->formUiModel:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersFormUiModel;

    .line 2077
    .line 2078
    iget-object v5, v4, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->formState:Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 2079
    .line 2080
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2081
    .line 2082
    .line 2083
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2084
    .line 2085
    .line 2086
    instance-of v0, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$ArchiveFolderChanged;

    .line 2087
    .line 2088
    if-eqz v0, :cond_5e

    .line 2089
    .line 2090
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$ArchiveFolderChanged;

    .line 2091
    .line 2092
    iget-object v6, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$ArchiveFolderChanged;->specialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 2093
    .line 2094
    const/4 v10, 0x0

    .line 2095
    const/16 v11, 0x3df

    .line 2096
    .line 2097
    const/4 v7, 0x0

    .line 2098
    const/4 v8, 0x0

    .line 2099
    const/4 v9, 0x0

    .line 2100
    invoke-static/range {v5 .. v11}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;I)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v0

    .line 2104
    :goto_40
    move-object v5, v0

    .line 2105
    goto :goto_41

    .line 2106
    :cond_5e
    instance-of v0, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$DraftsFolderChanged;

    .line 2107
    .line 2108
    if-eqz v0, :cond_5f

    .line 2109
    .line 2110
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$DraftsFolderChanged;

    .line 2111
    .line 2112
    iget-object v7, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$DraftsFolderChanged;->specialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 2113
    .line 2114
    const/4 v10, 0x0

    .line 2115
    const/16 v11, 0x3bf

    .line 2116
    .line 2117
    const/4 v6, 0x0

    .line 2118
    const/4 v8, 0x0

    .line 2119
    const/4 v9, 0x0

    .line 2120
    invoke-static/range {v5 .. v11}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;I)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v0

    .line 2124
    goto :goto_40

    .line 2125
    :cond_5f
    instance-of v0, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SentFolderChanged;

    .line 2126
    .line 2127
    if-eqz v0, :cond_60

    .line 2128
    .line 2129
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SentFolderChanged;

    .line 2130
    .line 2131
    iget-object v8, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SentFolderChanged;->specialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 2132
    .line 2133
    const/4 v10, 0x0

    .line 2134
    const/16 v11, 0x37f

    .line 2135
    .line 2136
    const/4 v6, 0x0

    .line 2137
    const/4 v7, 0x0

    .line 2138
    const/4 v9, 0x0

    .line 2139
    invoke-static/range {v5 .. v11}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;I)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 2140
    .line 2141
    .line 2142
    move-result-object v0

    .line 2143
    goto :goto_40

    .line 2144
    :cond_60
    instance-of v0, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SpamFolderChanged;

    .line 2145
    .line 2146
    if-eqz v0, :cond_61

    .line 2147
    .line 2148
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SpamFolderChanged;

    .line 2149
    .line 2150
    iget-object v9, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$SpamFolderChanged;->specialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 2151
    .line 2152
    const/4 v10, 0x0

    .line 2153
    const/16 v11, 0x2ff

    .line 2154
    .line 2155
    const/4 v6, 0x0

    .line 2156
    const/4 v7, 0x0

    .line 2157
    const/4 v8, 0x0

    .line 2158
    invoke-static/range {v5 .. v11}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;I)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 2159
    .line 2160
    .line 2161
    move-result-object v0

    .line 2162
    goto :goto_40

    .line 2163
    :cond_61
    instance-of v0, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$TrashFolderChanged;

    .line 2164
    .line 2165
    if-eqz v0, :cond_62

    .line 2166
    .line 2167
    check-cast v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$TrashFolderChanged;

    .line 2168
    .line 2169
    iget-object v10, v3, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormEvent$TrashFolderChanged;->specialFolderOption:Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;

    .line 2170
    .line 2171
    const/4 v9, 0x0

    .line 2172
    const/16 v11, 0x1ff

    .line 2173
    .line 2174
    const/4 v6, 0x0

    .line 2175
    const/4 v7, 0x0

    .line 2176
    const/4 v8, 0x0

    .line 2177
    invoke-static/range {v5 .. v11}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;Lapp/k9mail/feature/account/common/domain/entity/SpecialFolderOption;I)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;

    .line 2178
    .line 2179
    .line 2180
    move-result-object v0

    .line 2181
    goto :goto_40

    .line 2182
    :goto_41
    const/4 v8, 0x0

    .line 2183
    const/16 v9, 0x1e

    .line 2184
    .line 2185
    const/4 v6, 0x0

    .line 2186
    const/4 v7, 0x0

    .line 2187
    invoke-static/range {v4 .. v9}, Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;->copy$default(Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$FormState;ZLapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$Failure$LoadFoldersFailed;ZI)Lapp/k9mail/feature/account/setup/ui/specialfolders/SpecialFoldersContract$State;

    .line 2188
    .line 2189
    .line 2190
    move-result-object v15

    .line 2191
    goto :goto_42

    .line 2192
    :cond_62
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 2193
    .line 2194
    .line 2195
    :goto_42
    return-object v15

    .line 2196
    :pswitch_19
    check-cast v0, Landroid/app/Activity;

    .line 2197
    .line 2198
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 2199
    .line 2200
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 2201
    .line 2202
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2203
    .line 2204
    .line 2205
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v1

    .line 2209
    check-cast v1, Ljava/lang/Boolean;

    .line 2210
    .line 2211
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2212
    .line 2213
    .line 2214
    move-result v1

    .line 2215
    invoke-static {v0, v1}, Lorg/slf4j/helpers/Util;->setSecure(Landroid/app/Activity;Z)V

    .line 2216
    .line 2217
    .line 2218
    new-instance v1, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 2219
    .line 2220
    const/16 v2, 0xe

    .line 2221
    .line 2222
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 2223
    .line 2224
    .line 2225
    return-object v1

    .line 2226
    :pswitch_1a
    check-cast v0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;

    .line 2227
    .line 2228
    check-cast v3, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;

    .line 2229
    .line 2230
    check-cast v1, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;

    .line 2231
    .line 2232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2233
    .line 2234
    .line 2235
    iget-object v0, v0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorViewModel;->formatServerCertificateError:Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;

    .line 2236
    .line 2237
    iget-object v0, v0, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;->dateFormat:Ljava/text/DateFormat;

    .line 2238
    .line 2239
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2240
    .line 2241
    .line 2242
    iget-object v2, v3, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;->certificateChain:Ljava/util/List;

    .line 2243
    .line 2244
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 2245
    .line 2246
    .line 2247
    move-result-object v2

    .line 2248
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 2249
    .line 2250
    if-eqz v2, :cond_65

    .line 2251
    .line 2252
    sget-object v4, Lkotlin/time/Instant;->MIN:Lkotlin/time/Instant;

    .line 2253
    .line 2254
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v4

    .line 2258
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 2259
    .line 2260
    .line 2261
    move-result-wide v4

    .line 2262
    invoke-static {v4, v5}, Lkotlin/time/InstantKt;->fromEpochMilliseconds(J)Lkotlin/time/Instant;

    .line 2263
    .line 2264
    .line 2265
    move-result-object v4

    .line 2266
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v5

    .line 2270
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 2271
    .line 2272
    .line 2273
    move-result-wide v5

    .line 2274
    invoke-static {v5, v6}, Lkotlin/time/InstantKt;->fromEpochMilliseconds(J)Lkotlin/time/Instant;

    .line 2275
    .line 2276
    .line 2277
    move-result-object v5

    .line 2278
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v6

    .line 2282
    if-nez v6, :cond_63

    .line 2283
    .line 2284
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 2285
    .line 2286
    :cond_63
    check-cast v6, Ljava/lang/Iterable;

    .line 2287
    .line 2288
    new-instance v7, Ljava/util/ArrayList;

    .line 2289
    .line 2290
    invoke-static {v6, v11}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 2291
    .line 2292
    .line 2293
    move-result v8

    .line 2294
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2295
    .line 2296
    .line 2297
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2298
    .line 2299
    .line 2300
    move-result-object v6

    .line 2301
    :goto_43
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 2302
    .line 2303
    .line 2304
    move-result v8

    .line 2305
    if-eqz v8, :cond_64

    .line 2306
    .line 2307
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v8

    .line 2311
    check-cast v8, Ljava/util/List;

    .line 2312
    .line 2313
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2314
    .line 2315
    .line 2316
    move-result-object v8

    .line 2317
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2318
    .line 2319
    .line 2320
    move-result-object v8

    .line 2321
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    .line 2323
    .line 2324
    goto :goto_43

    .line 2325
    :cond_64
    new-instance v6, Ljava/util/Date;

    .line 2326
    .line 2327
    invoke-virtual {v4}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 2328
    .line 2329
    .line 2330
    move-result-wide v8

    .line 2331
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 2332
    .line 2333
    .line 2334
    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2335
    .line 2336
    .line 2337
    move-result-object v17

    .line 2338
    new-instance v4, Ljava/util/Date;

    .line 2339
    .line 2340
    invoke-virtual {v5}, Lkotlin/time/Instant;->toEpochMilliseconds()J

    .line 2341
    .line 2342
    .line 2343
    move-result-wide v5

    .line 2344
    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 2345
    .line 2346
    .line 2347
    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 2348
    .line 2349
    .line 2350
    move-result-object v18

    .line 2351
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v0

    .line 2355
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v19

    .line 2359
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2360
    .line 2361
    .line 2362
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 2363
    .line 2364
    .line 2365
    move-result-object v0

    .line 2366
    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    .line 2367
    .line 2368
    .line 2369
    move-result-object v20

    .line 2370
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2371
    .line 2372
    .line 2373
    sget-object v0, Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;->SHA_1:Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;

    .line 2374
    .line 2375
    invoke-static {v2, v0}, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;->computeFingerprint(Ljava/security/cert/X509Certificate;Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;)Lokio/ByteString;

    .line 2376
    .line 2377
    .line 2378
    move-result-object v21

    .line 2379
    sget-object v0, Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;->SHA_256:Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;

    .line 2380
    .line 2381
    invoke-static {v2, v0}, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;->computeFingerprint(Ljava/security/cert/X509Certificate;Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;)Lokio/ByteString;

    .line 2382
    .line 2383
    .line 2384
    move-result-object v22

    .line 2385
    sget-object v0, Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;->SHA_512:Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;

    .line 2386
    .line 2387
    invoke-static {v2, v0}, Lapp/k9mail/feature/account/server/certificate/domain/usecase/FormatServerCertificateError;->computeFingerprint(Ljava/security/cert/X509Certificate;Lapp/k9mail/feature/account/server/certificate/domain/usecase/HashAlgorithm;)Lokio/ByteString;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v23

    .line 2391
    new-instance v0, Lapp/k9mail/feature/account/server/certificate/domain/entity/FormattedServerCertificateError;

    .line 2392
    .line 2393
    iget-object v2, v3, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateError;->hostname:Ljava/lang/String;

    .line 2394
    .line 2395
    new-instance v15, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;

    .line 2396
    .line 2397
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2398
    .line 2399
    .line 2400
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2401
    .line 2402
    .line 2403
    move-object/from16 v16, v7

    .line 2404
    .line 2405
    invoke-direct/range {v15 .. v23}, Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Lokio/ByteString;)V

    .line 2406
    .line 2407
    .line 2408
    invoke-direct {v0, v2, v15}, Lapp/k9mail/feature/account/server/certificate/domain/entity/FormattedServerCertificateError;-><init>(Ljava/lang/String;Lapp/k9mail/feature/account/server/certificate/domain/entity/ServerCertificateProperties;)V

    .line 2409
    .line 2410
    .line 2411
    invoke-static {v1, v0, v14}, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;->copy$default(Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;Lapp/k9mail/feature/account/server/certificate/domain/entity/FormattedServerCertificateError;I)Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;

    .line 2412
    .line 2413
    .line 2414
    move-result-object v15

    .line 2415
    goto :goto_44

    .line 2416
    :cond_65
    const-string v0, "Certificate chain must not be empty"

    .line 2417
    .line 2418
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2419
    .line 2420
    .line 2421
    :goto_44
    return-object v15

    .line 2422
    :pswitch_1b
    check-cast v0, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;

    .line 2423
    .line 2424
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 2425
    .line 2426
    check-cast v1, Ljava/lang/Boolean;

    .line 2427
    .line 2428
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2429
    .line 2430
    .line 2431
    sget-object v2, Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;->Clipped:Lapp/k9mail/core/ui/compose/designsystem/organism/banner/inline/BannerInlineNotificationCardBehaviour;

    .line 2432
    .line 2433
    if-ne v0, v2, :cond_66

    .line 2434
    .line 2435
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2436
    .line 2437
    .line 2438
    :cond_66
    return-object v16

    .line 2439
    :pswitch_1c
    check-cast v0, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 2440
    .line 2441
    check-cast v3, Landroidx/work/impl/model/WorkTag;

    .line 2442
    .line 2443
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 2444
    .line 2445
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2446
    .line 2447
    .line 2448
    iget-object v0, v0, Landroidx/work/impl/model/WorkTagDao_Impl;->__insertAdapterOfWorkTag:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 2449
    .line 2450
    invoke-virtual {v0, v1, v3}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 2451
    .line 2452
    .line 2453
    return-object v16

    .line 2454
    :pswitch_1d
    check-cast v0, Landroidx/work/Data;

    .line 2455
    .line 2456
    check-cast v3, Ljava/lang/String;

    .line 2457
    .line 2458
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 2459
    .line 2460
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2461
    .line 2462
    .line 2463
    const-string v2, "UPDATE workspec SET output=? WHERE id=?"

    .line 2464
    .line 2465
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2466
    .line 2467
    .line 2468
    move-result-object v1

    .line 2469
    :try_start_0
    sget-object v2, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    .line 2470
    .line 2471
    invoke-static {v0}, Landroidx/work/Data$Companion;->toByteArrayInternalV1(Landroidx/work/Data;)[B

    .line 2472
    .line 2473
    .line 2474
    move-result-object v0

    .line 2475
    invoke-interface {v1, v14, v0}, Landroidx/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 2476
    .line 2477
    .line 2478
    invoke-interface {v1, v3, v12}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 2479
    .line 2480
    .line 2481
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2482
    .line 2483
    .line 2484
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2485
    .line 2486
    .line 2487
    return-object v16

    .line 2488
    :catchall_0
    move-exception v0

    .line 2489
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 2490
    .line 2491
    .line 2492
    throw v0

    .line 2493
    :pswitch_1e
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 2494
    .line 2495
    check-cast v3, Landroidx/work/impl/model/WorkSpec;

    .line 2496
    .line 2497
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 2498
    .line 2499
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2500
    .line 2501
    .line 2502
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->__insertAdapterOfWorkSpec:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 2503
    .line 2504
    invoke-virtual {v0, v1, v3}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 2505
    .line 2506
    .line 2507
    return-object v16

    .line 2508
    :pswitch_1f
    check-cast v0, Landroidx/work/WorkInfo$State;

    .line 2509
    .line 2510
    check-cast v3, Ljava/lang/String;

    .line 2511
    .line 2512
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 2513
    .line 2514
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2515
    .line 2516
    .line 2517
    const-string v2, "UPDATE workspec SET state=? WHERE id=?"

    .line 2518
    .line 2519
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v2

    .line 2523
    :try_start_1
    invoke-static {v0}, Landroidx/sqlite/SQLite;->stateToInt(Landroidx/work/WorkInfo$State;)I

    .line 2524
    .line 2525
    .line 2526
    move-result v0

    .line 2527
    int-to-long v4, v0

    .line 2528
    invoke-interface {v2, v14, v4, v5}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2529
    .line 2530
    .line 2531
    invoke-interface {v2, v3, v12}, Landroidx/sqlite/SQLiteStatement;->bindText(Ljava/lang/String;I)V

    .line 2532
    .line 2533
    .line 2534
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 2535
    .line 2536
    .line 2537
    invoke-static {v1}, Lcom/fsck/k9/sasl/OAuthBearer;->getTotalChangedRows(Landroidx/sqlite/SQLiteConnection;)I

    .line 2538
    .line 2539
    .line 2540
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2541
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 2542
    .line 2543
    .line 2544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2545
    .line 2546
    .line 2547
    move-result-object v0

    .line 2548
    return-object v0

    .line 2549
    :catchall_1
    move-exception v0

    .line 2550
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 2551
    .line 2552
    .line 2553
    throw v0

    .line 2554
    :pswitch_20
    check-cast v0, Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 2555
    .line 2556
    check-cast v3, Landroidx/work/impl/model/WorkName;

    .line 2557
    .line 2558
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 2559
    .line 2560
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2561
    .line 2562
    .line 2563
    iget-object v0, v0, Landroidx/work/impl/model/WorkNameDao_Impl;->__insertAdapterOfWorkName:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 2564
    .line 2565
    invoke-virtual {v0, v1, v3}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 2566
    .line 2567
    .line 2568
    return-object v16

    .line 2569
    :pswitch_21
    check-cast v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 2570
    .line 2571
    check-cast v3, Landroidx/work/impl/model/SystemIdInfo;

    .line 2572
    .line 2573
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 2574
    .line 2575
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2576
    .line 2577
    .line 2578
    iget-object v0, v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertAdapterOfSystemIdInfo:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 2579
    .line 2580
    invoke-virtual {v0, v1, v3}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 2581
    .line 2582
    .line 2583
    return-object v16

    .line 2584
    :pswitch_22
    check-cast v0, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 2585
    .line 2586
    check-cast v3, Landroidx/work/impl/model/Preference;

    .line 2587
    .line 2588
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 2589
    .line 2590
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2591
    .line 2592
    .line 2593
    iget-object v0, v0, Landroidx/work/impl/model/PreferenceDao_Impl;->__insertAdapterOfPreference:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 2594
    .line 2595
    invoke-virtual {v0, v1, v3}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 2596
    .line 2597
    .line 2598
    return-object v16

    .line 2599
    :pswitch_23
    check-cast v0, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 2600
    .line 2601
    check-cast v3, Landroidx/work/impl/model/Dependency;

    .line 2602
    .line 2603
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 2604
    .line 2605
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2606
    .line 2607
    .line 2608
    iget-object v0, v0, Landroidx/work/impl/model/DependencyDao_Impl;->__insertAdapterOfDependency:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 2609
    .line 2610
    invoke-virtual {v0, v1, v3}, Landroidx/work/impl/model/WorkTagDao_Impl$1;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 2611
    .line 2612
    .line 2613
    return-object v16

    .line 2614
    :pswitch_24
    check-cast v0, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2615
    .line 2616
    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    .line 2617
    .line 2618
    check-cast v1, Landroidx/work/impl/constraints/ConstraintsState;

    .line 2619
    .line 2620
    invoke-virtual {v0, v15}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 2621
    .line 2622
    .line 2623
    check-cast v3, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 2624
    .line 2625
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2626
    .line 2627
    .line 2628
    return-object v16

    .line 2629
    :pswitch_25
    check-cast v0, Lapp/k9mail/K9App;

    .line 2630
    .line 2631
    check-cast v3, Ljava/util/List;

    .line 2632
    .line 2633
    check-cast v1, Lorg/koin/core/KoinApplication;

    .line 2634
    .line 2635
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2636
    .line 2637
    .line 2638
    const/4 v2, 0x0

    .line 2639
    iput-boolean v2, v1, Lorg/koin/core/KoinApplication;->allowOverride:Z

    .line 2640
    .line 2641
    iget-object v2, v1, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 2642
    .line 2643
    iget-object v4, v2, Lorg/koin/core/Koin;->logger:Lokio/AsyncTimeout$Companion;

    .line 2644
    .line 2645
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2646
    .line 2647
    .line 2648
    sget-object v4, Lorg/koin/core/logger/Level;->NONE:Lorg/koin/core/logger/Level;

    .line 2649
    .line 2650
    sget-object v5, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .line 2651
    .line 2652
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 2653
    .line 2654
    .line 2655
    move-result v6

    .line 2656
    if-gtz v6, :cond_67

    .line 2657
    .line 2658
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 2659
    .line 2660
    .line 2661
    :cond_67
    new-instance v6, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;

    .line 2662
    .line 2663
    const/16 v7, 0x12

    .line 2664
    .line 2665
    invoke-direct {v6, v7, v0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 2666
    .line 2667
    .line 2668
    new-instance v0, Lorg/koin/core/module/Module;

    .line 2669
    .line 2670
    invoke-direct {v0}, Lorg/koin/core/module/Module;-><init>()V

    .line 2671
    .line 2672
    .line 2673
    invoke-virtual {v6, v0}, Lokio/ForwardingFileSystem$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    .line 2675
    .line 2676
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v0

    .line 2680
    invoke-virtual {v2, v0, v14}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;Z)V

    .line 2681
    .line 2682
    .line 2683
    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 2684
    .line 2685
    .line 2686
    move-result v0

    .line 2687
    if-gtz v0, :cond_68

    .line 2688
    .line 2689
    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->read()J

    .line 2690
    .line 2691
    .line 2692
    move-result-wide v4

    .line 2693
    iget-boolean v0, v1, Lorg/koin/core/KoinApplication;->allowOverride:Z

    .line 2694
    .line 2695
    invoke-virtual {v2, v3, v0}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;Z)V

    .line 2696
    .line 2697
    .line 2698
    invoke-static {v4, v5}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    .line 2699
    .line 2700
    .line 2701
    move-result-wide v0

    .line 2702
    iget-object v2, v2, Lorg/koin/core/Koin;->instanceRegistry:Lorg/slf4j/event/EventRecodingLogger;

    .line 2703
    .line 2704
    iget-object v2, v2, Lorg/slf4j/event/EventRecodingLogger;->logger:Ljava/lang/Object;

    .line 2705
    .line 2706
    check-cast v2, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2707
    .line 2708
    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    .line 2709
    .line 2710
    .line 2711
    sget-object v2, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 2712
    .line 2713
    sget-object v2, Lkotlin/time/DurationUnit;->MICROSECONDS:Lkotlin/time/DurationUnit;

    .line 2714
    .line 2715
    invoke-static {v0, v1, v2}, Lkotlin/time/Duration;->toLong-impl(JLkotlin/time/DurationUnit;)J

    .line 2716
    .line 2717
    .line 2718
    goto :goto_45

    .line 2719
    :cond_68
    iget-boolean v0, v1, Lorg/koin/core/KoinApplication;->allowOverride:Z

    .line 2720
    .line 2721
    invoke-virtual {v2, v3, v0}, Lorg/koin/core/Koin;->loadModules(Ljava/util/List;Z)V

    .line 2722
    .line 2723
    .line 2724
    :goto_45
    return-object v16

    .line 2725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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

    .line 2726
    .line 2727
    .line 2728
    .line 2729
    .line 2730
    .line 2731
    .line 2732
    .line 2733
    .line 2734
    .line 2735
    .line 2736
    .line 2737
    .line 2738
    .line 2739
    .line 2740
    .line 2741
    .line 2742
    .line 2743
    .line 2744
    .line 2745
    .line 2746
    .line 2747
    .line 2748
    .line 2749
    .line 2750
    .line 2751
    .line 2752
    .line 2753
    .line 2754
    .line 2755
    .line 2756
    .line 2757
    .line 2758
    .line 2759
    .line 2760
    .line 2761
    .line 2762
    .line 2763
    .line 2764
    .line 2765
    .line 2766
    .line 2767
    .line 2768
    .line 2769
    .line 2770
    .line 2771
    .line 2772
    .line 2773
    .line 2774
    .line 2775
    .line 2776
    .line 2777
    .line 2778
    .line 2779
    .line 2780
    .line 2781
    .line 2782
    .line 2783
    .line 2784
    .line 2785
    .line 2786
    .line 2787
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
