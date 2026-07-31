.class public final Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $state$delegate:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v5, 0x6

    .line 9
    const/4 v6, 0x2

    .line 10
    const/16 v7, 0xa

    .line 11
    .line 12
    const/4 v8, 0x1

    .line 13
    const/4 v9, 0x0

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Ljava/util/List;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;

    .line 24
    .line 25
    iget-object v2, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->getDisplayTreeFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;

    .line 26
    .line 27
    iget v3, v0, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->maxNestingLevel:I

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    new-instance v6, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v11

    .line 48
    if-eqz v11, :cond_1

    .line 49
    .line 50
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    instance-of v12, v11, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;

    .line 55
    .line 56
    if-eqz v12, :cond_0

    .line 57
    .line 58
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_2

    .line 80
    .line 81
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    move-object v13, v11

    .line 86
    check-cast v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;

    .line 87
    .line 88
    new-instance v12, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 89
    .line 90
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget v15, v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->unreadMessageCount:I

    .line 94
    .line 95
    iget v11, v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/UnifiedDisplayFolder;->starredMessageCount:I

    .line 96
    .line 97
    sget-object v17, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->EMPTY:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    .line 98
    .line 99
    const-string v14, "unified_inbox"

    .line 100
    .line 101
    move/from16 v16, v11

    .line 102
    .line 103
    invoke-direct/range {v12 .. v17}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Ljava/lang/String;IILkotlinx/collections/immutable/ImmutableList;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 115
    .line 116
    if-eqz v6, :cond_4

    .line 117
    .line 118
    invoke-interface {v6}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getPathDelimiter()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    if-nez v6, :cond_3

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_3
    :goto_2
    move-object v12, v6

    .line 126
    goto :goto_4

    .line 127
    :cond_4
    :goto_3
    const-string v6, "/"

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :goto_4
    new-instance v6, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    :cond_5
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    if-eqz v13, :cond_6

    .line 144
    .line 145
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v13

    .line 149
    instance-of v14, v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 150
    .line 151
    if-eqz v14, :cond_5

    .line 152
    .line 153
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 171
    .line 172
    .line 173
    move-result v13

    .line 174
    if-eqz v13, :cond_b

    .line 175
    .line 176
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v13

    .line 180
    check-cast v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;

    .line 181
    .line 182
    iget-object v14, v13, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/MailDisplayFolder;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 183
    .line 184
    iget-object v14, v14, Lnet/thunderbird/feature/mail/folder/api/Folder;->name:Ljava/lang/String;

    .line 185
    .line 186
    filled-new-array {v12}, [Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    invoke-static {v14, v15, v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v14

    .line 194
    new-instance v15, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-static {v14, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    if-eqz v14, :cond_9

    .line 212
    .line 213
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    check-cast v14, Ljava/lang/String;

    .line 218
    .line 219
    invoke-static {v14}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 220
    .line 221
    .line 222
    move-result v16

    .line 223
    if-nez v16, :cond_7

    .line 224
    .line 225
    goto :goto_8

    .line 226
    :cond_7
    move-object v14, v9

    .line 227
    :goto_8
    if-nez v14, :cond_8

    .line 228
    .line 229
    const-string v14, "(Unnamed)"

    .line 230
    .line 231
    :cond_8
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    goto :goto_7

    .line 235
    :cond_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-gt v5, v3, :cond_a

    .line 240
    .line 241
    move-object v10, v11

    .line 242
    move-object v4, v13

    .line 243
    goto :goto_9

    .line 244
    :cond_a
    invoke-static {v15, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    invoke-static {v3, v15}, Lkotlin/collections/CollectionsKt;->drop(ILjava/util/List;)Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    const/4 v15, 0x0

    .line 253
    const/16 v16, 0x3e

    .line 254
    .line 255
    move-object/from16 v18, v13

    .line 256
    .line 257
    const/4 v13, 0x0

    .line 258
    move-object/from16 v19, v11

    .line 259
    .line 260
    move-object v11, v14

    .line 261
    const/4 v14, 0x0

    .line 262
    move-object/from16 v4, v18

    .line 263
    .line 264
    move-object/from16 v10, v19

    .line 265
    .line 266
    invoke-static/range {v11 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    invoke-static {v11}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v11

    .line 274
    invoke-static {v5, v11}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 275
    .line 276
    .line 277
    move-result-object v15

    .line 278
    :goto_9
    iget-object v5, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 279
    .line 280
    new-instance v11, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;

    .line 281
    .line 282
    invoke-direct {v11, v7, v4, v15}, Lkotlinx/serialization/SealedClassSerializer$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    const/4 v13, 0x3

    .line 286
    invoke-static {v5, v9, v9, v11, v13}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 287
    .line 288
    .line 289
    new-instance v5, Lkotlin/Pair;

    .line 290
    .line 291
    invoke-direct {v5, v15, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-object v11, v10

    .line 298
    const/4 v5, 0x6

    .line 299
    goto/16 :goto_6

    .line 300
    .line 301
    :cond_b
    move-object v10, v11

    .line 302
    const-string v3, ""

    .line 303
    .line 304
    invoke-virtual {v2, v10, v12, v3}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/usecase/GetDisplayTreeFolder;->buildAccountFolderTree(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    const/4 v13, 0x0

    .line 313
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_c

    .line 318
    .line 319
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    check-cast v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 324
    .line 325
    iget v4, v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->totalUnreadCount:I

    .line 326
    .line 327
    add-int/2addr v13, v4

    .line 328
    goto :goto_a

    .line 329
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    const/4 v14, 0x0

    .line 334
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    if-eqz v4, :cond_d

    .line 339
    .line 340
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    check-cast v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 345
    .line 346
    iget v4, v4, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->totalStarredCount:I

    .line 347
    .line 348
    add-int/2addr v14, v4

    .line 349
    goto :goto_b

    .line 350
    :cond_d
    invoke-static {v8, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    invoke-static {v2}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 355
    .line 356
    .line 357
    move-result-object v15

    .line 358
    new-instance v21, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 359
    .line 360
    const/4 v11, 0x0

    .line 361
    const/4 v12, 0x0

    .line 362
    move-object/from16 v10, v21

    .line 363
    .line 364
    invoke-direct/range {v10 .. v15}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;-><init>(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;Ljava/lang/String;IILkotlinx/collections/immutable/ImmutableList;)V

    .line 365
    .line 366
    .line 367
    iget-object v2, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 368
    .line 369
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    if-eqz v4, :cond_f

    .line 378
    .line 379
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    move-object v5, v4

    .line 384
    check-cast v5, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 385
    .line 386
    invoke-interface {v5}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getId()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    iget-object v6, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 391
    .line 392
    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    check-cast v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 397
    .line 398
    iget-object v6, v6, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolderId:Ljava/lang/String;

    .line 399
    .line 400
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-eqz v5, :cond_e

    .line 405
    .line 406
    goto :goto_c

    .line 407
    :cond_f
    move-object v4, v9

    .line 408
    :goto_c
    if-nez v4, :cond_10

    .line 409
    .line 410
    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 411
    .line 412
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    check-cast v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 417
    .line 418
    iget-object v2, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->selectedFolderId:Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {v10, v2}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerViewModel;->findFolderById(Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Ljava/lang/String;)Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    :cond_10
    if-nez v4, :cond_13

    .line 425
    .line 426
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    check-cast v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 431
    .line 432
    if-nez v2, :cond_11

    .line 433
    .line 434
    iget-object v2, v10, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->children:Lkotlinx/collections/immutable/ImmutableList;

    .line 435
    .line 436
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    check-cast v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;

    .line 441
    .line 442
    if-eqz v2, :cond_12

    .line 443
    .line 444
    iget-object v2, v2, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;->displayFolder:Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 445
    .line 446
    :cond_11
    move-object v4, v2

    .line 447
    goto :goto_d

    .line 448
    :cond_12
    move-object v4, v9

    .line 449
    :cond_13
    :goto_d
    iget-object v2, v0, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 450
    .line 451
    :cond_14
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    move-object/from16 v16, v0

    .line 456
    .line 457
    check-cast v16, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 458
    .line 459
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    .line 461
    .line 462
    invoke-static {v1}, Lokio/Okio;->toImmutableList(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    .line 463
    .line 464
    .line 465
    move-result-object v22

    .line 466
    move-object/from16 v24, v4

    .line 467
    .line 468
    check-cast v24, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;

    .line 469
    .line 470
    if-eqz v24, :cond_15

    .line 471
    .line 472
    invoke-interface/range {v24 .. v24}, Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;->getId()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    move-object/from16 v23, v3

    .line 477
    .line 478
    goto :goto_e

    .line 479
    :cond_15
    move-object/from16 v23, v9

    .line 480
    .line 481
    :goto_e
    const/16 v26, 0x0

    .line 482
    .line 483
    const/16 v27, 0x30f

    .line 484
    .line 485
    const/16 v17, 0x0

    .line 486
    .line 487
    const/16 v18, 0x0

    .line 488
    .line 489
    const/16 v19, 0x0

    .line 490
    .line 491
    const/16 v20, 0x0

    .line 492
    .line 493
    const/16 v25, 0x0

    .line 494
    .line 495
    move-object/from16 v21, v10

    .line 496
    .line 497
    invoke-static/range {v16 .. v27}, Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;->copy$default(Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;Lnet/thunderbird/feature/navigation/drawer/api/NavigationDrawerExternalContract$DrawerConfig;ZLkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayTreeFolder;Lkotlinx/collections/immutable/ImmutableList;Ljava/lang/String;Lnet/thunderbird/feature/navigation/drawer/dropdown/domain/entity/DisplayFolder;ZZI)Lnet/thunderbird/feature/navigation/drawer/dropdown/ui/DrawerContract$State;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    invoke-virtual {v2, v0, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-eqz v0, :cond_14

    .line 506
    .line 507
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 508
    .line 509
    return-object v0

    .line 510
    :pswitch_0
    move-object/from16 v1, p1

    .line 511
    .line 512
    check-cast v1, Lkotlin/Pair;

    .line 513
    .line 514
    iget-object v2, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 515
    .line 516
    check-cast v2, Lnet/thunderbird/core/preference/GeneralSettings;

    .line 517
    .line 518
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v1, Lde/cketti/changelog/ChangeLog;

    .line 521
    .line 522
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v0, Lnet/thunderbird/feature/changelog/internal/ChangelogViewModel;

    .line 525
    .line 526
    new-instance v3, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 527
    .line 528
    const/4 v4, 0x4

    .line 529
    invoke-direct {v3, v2, v0, v1, v4}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v3}, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->updateState(Lkotlin/jvm/functions/Function1;)V

    .line 533
    .line 534
    .line 535
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 536
    .line 537
    return-object v0

    .line 538
    :pswitch_1
    move-object/from16 v1, p1

    .line 539
    .line 540
    check-cast v1, Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent;

    .line 541
    .line 542
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v0, Lcom/fsck/k9/ui/messagedetails/MessageDetailsFragment;

    .line 545
    .line 546
    instance-of v2, v1, Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent$ShowCryptoKeys;

    .line 547
    .line 548
    if-eqz v2, :cond_16

    .line 549
    .line 550
    check-cast v1, Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent$ShowCryptoKeys;

    .line 551
    .line 552
    iget-object v1, v1, Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent$ShowCryptoKeys;->pendingIntent:Landroid/app/PendingIntent;

    .line 553
    .line 554
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-static {}, Lorg/openintents/openpgp/util/OpenPgpIntentStarter;->buildOptionsBundle()Landroid/os/Bundle;

    .line 566
    .line 567
    .line 568
    move-result-object v8

    .line 569
    const/4 v6, 0x0

    .line 570
    const/4 v7, 0x0

    .line 571
    const/4 v4, 0x0

    .line 572
    const/4 v5, 0x0

    .line 573
    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .line 575
    .line 576
    goto :goto_f

    .line 577
    :catch_0
    move-exception v0

    .line 578
    const-string v1, "Error starting PendingIntent"

    .line 579
    .line 580
    const/4 v2, 0x0

    .line 581
    new-array v2, v2, [Ljava/lang/Object;

    .line 582
    .line 583
    invoke-static {v0, v1, v2}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    goto :goto_f

    .line 587
    :cond_16
    sget-object v2, Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent$SearchCryptoKeys;->INSTANCE:Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent$SearchCryptoKeys;

    .line 588
    .line 589
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    const-string v3, "action"

    .line 594
    .line 595
    const-string v4, "messageDetailsResult"

    .line 596
    .line 597
    if-eqz v2, :cond_17

    .line 598
    .line 599
    new-instance v1, Lkotlin/Pair;

    .line 600
    .line 601
    const-string v2, "search_keys"

    .line 602
    .line 603
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 604
    .line 605
    .line 606
    new-array v2, v8, [Lkotlin/Pair;

    .line 607
    .line 608
    const/16 v20, 0x0

    .line 609
    .line 610
    aput-object v1, v2, v20

    .line 611
    .line 612
    invoke-static {v2}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-static {v0, v4, v1}, Lorg/slf4j/helpers/Util;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 620
    .line 621
    .line 622
    goto :goto_f

    .line 623
    :cond_17
    sget-object v2, Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent$SearchCryptoKeys;->INSTANCE$1:Lcom/fsck/k9/ui/messagedetails/MessageDetailEvent$SearchCryptoKeys;

    .line 624
    .line 625
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 626
    .line 627
    .line 628
    move-result v1

    .line 629
    if-eqz v1, :cond_18

    .line 630
    .line 631
    new-instance v1, Lkotlin/Pair;

    .line 632
    .line 633
    const-string v2, "show_warning"

    .line 634
    .line 635
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 636
    .line 637
    .line 638
    new-array v2, v8, [Lkotlin/Pair;

    .line 639
    .line 640
    const/16 v20, 0x0

    .line 641
    .line 642
    aput-object v1, v2, v20

    .line 643
    .line 644
    invoke-static {v2}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    invoke-static {v0, v4, v1}, Lorg/slf4j/helpers/Util;->setFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 652
    .line 653
    .line 654
    :goto_f
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 655
    .line 656
    goto :goto_10

    .line 657
    :cond_18
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 658
    .line 659
    .line 660
    :goto_10
    return-object v9

    .line 661
    :pswitch_2
    move-object/from16 v1, p1

    .line 662
    .line 663
    check-cast v1, Ljava/lang/Boolean;

    .line 664
    .line 665
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 669
    .line 670
    check-cast v0, Lcom/fsck/k9/controller/push/PushController;

    .line 671
    .line 672
    invoke-virtual {v0}, Lcom/fsck/k9/controller/push/PushController;->updatePushers()V

    .line 673
    .line 674
    .line 675
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 676
    .line 677
    return-object v0

    .line 678
    :pswitch_3
    move-object/from16 v1, p1

    .line 679
    .line 680
    check-cast v1, Ljava/util/List;

    .line 681
    .line 682
    new-instance v2, Ljava/util/ArrayList;

    .line 683
    .line 684
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 689
    .line 690
    .line 691
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    if-eqz v3, :cond_19

    .line 700
    .line 701
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v3

    .line 705
    check-cast v3, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;

    .line 706
    .line 707
    iget-object v3, v3, Lnet/thunderbird/feature/mail/folder/api/RemoteFolder;->serverId:Ljava/lang/String;

    .line 708
    .line 709
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    goto :goto_11

    .line 713
    :cond_19
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v0, Lcom/fsck/k9/controller/push/AccountPushController;

    .line 716
    .line 717
    iget-object v1, v0, Lcom/fsck/k9/controller/push/AccountPushController;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 718
    .line 719
    new-instance v3, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 720
    .line 721
    const/16 v4, 0x17

    .line 722
    .line 723
    invoke-direct {v3, v4, v0, v2}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 724
    .line 725
    .line 726
    const-string v4, "AccountPushController"

    .line 727
    .line 728
    invoke-static {v1, v4, v9, v3, v6}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 729
    .line 730
    .line 731
    iget-object v0, v0, Lcom/fsck/k9/controller/push/AccountPushController;->backendPusher:Lcom/fsck/k9/backend/imap/ImapBackendPusher;

    .line 732
    .line 733
    if-eqz v0, :cond_1a

    .line 734
    .line 735
    iget v1, v0, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->currentMaxPushFolders:I

    .line 736
    .line 737
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/backend/imap/ImapBackendPusher;->updateFolders(ILjava/util/Collection;)V

    .line 738
    .line 739
    .line 740
    :cond_1a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 741
    .line 742
    return-object v0

    .line 743
    :pswitch_4
    move-object/from16 v1, p1

    .line 744
    .line 745
    check-cast v1, Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 746
    .line 747
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 748
    .line 749
    check-cast v0, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 750
    .line 751
    sget-object v2, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 752
    .line 753
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getGeneralSettingsManager$1()Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    check-cast v2, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;

    .line 758
    .line 759
    invoke-virtual {v2}, Lcom/fsck/k9/preferences/DefaultGeneralSettingsManager;->getConfig()Lnet/thunderbird/core/preference/GeneralSettings;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    iget-object v2, v2, Lnet/thunderbird/core/preference/GeneralSettings;->display:Lnet/thunderbird/core/preference/display/DisplaySettings;

    .line 764
    .line 765
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/DisplaySettings;->coreSettings:Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;

    .line 766
    .line 767
    iget-object v2, v2, Lnet/thunderbird/core/preference/display/coreSettings/DisplayCoreSettings;->splitViewMode:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 768
    .line 769
    sget-object v4, Lnet/thunderbird/core/preference/SplitViewMode;->WHEN_UNFOLDED:Lnet/thunderbird/core/preference/SplitViewMode;

    .line 770
    .line 771
    if-ne v2, v4, :cond_1e

    .line 772
    .line 773
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getLogger$1()Lnet/thunderbird/core/logging/Logger;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    new-instance v4, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;

    .line 778
    .line 779
    const/4 v5, 0x6

    .line 780
    invoke-direct {v4, v5, v1}, Lcom/fsck/k9/K9$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 781
    .line 782
    .line 783
    const-string v5, "MainActivity"

    .line 784
    .line 785
    invoke-static {v2, v5, v9, v4, v6}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 786
    .line 787
    .line 788
    sget-object v2, Lapp/k9mail/core/ui/compose/common/window/FoldableState;->UNFOLDED:Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 789
    .line 790
    if-ne v1, v2, :cond_1b

    .line 791
    .line 792
    move v2, v8

    .line 793
    goto :goto_12

    .line 794
    :cond_1b
    const/4 v2, 0x0

    .line 795
    :goto_12
    iget-object v1, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 796
    .line 797
    sget-object v4, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 798
    .line 799
    if-ne v1, v4, :cond_1c

    .line 800
    .line 801
    goto :goto_13

    .line 802
    :cond_1c
    const/4 v8, 0x0

    .line 803
    :goto_13
    if-eqz v2, :cond_1d

    .line 804
    .line 805
    if-nez v8, :cond_1d

    .line 806
    .line 807
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getLogger$1()Lnet/thunderbird/core/logging/Logger;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    new-instance v2, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 812
    .line 813
    invoke-direct {v2, v3}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 814
    .line 815
    .line 816
    invoke-static {v1, v5, v9, v2, v6}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 820
    .line 821
    .line 822
    goto :goto_14

    .line 823
    :cond_1d
    if-nez v2, :cond_1e

    .line 824
    .line 825
    if-eqz v8, :cond_1e

    .line 826
    .line 827
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->getLogger$1()Lnet/thunderbird/core/logging/Logger;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    new-instance v2, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 832
    .line 833
    const/16 v3, 0x9

    .line 834
    .line 835
    invoke-direct {v2, v3}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 836
    .line 837
    .line 838
    invoke-static {v1, v5, v9, v2, v6}, Lkotlinx/io/Sink$-CC;->debug$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Exception;Lkotlin/jvm/functions/Function0;I)V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 842
    .line 843
    .line 844
    :cond_1e
    :goto_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 845
    .line 846
    return-object v0

    .line 847
    :pswitch_5
    move-object/from16 v1, p1

    .line 848
    .line 849
    check-cast v1, Ljava/util/List;

    .line 850
    .line 851
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 852
    .line 853
    check-cast v0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;

    .line 854
    .line 855
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 862
    .line 863
    .line 864
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 865
    .line 866
    return-object v0

    .line 867
    :pswitch_6
    move-object/from16 v1, p1

    .line 868
    .line 869
    check-cast v1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState;

    .line 870
    .line 871
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 872
    .line 873
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;

    .line 874
    .line 875
    sget v3, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->$r8$clinit:I

    .line 876
    .line 877
    sget-object v3, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 878
    .line 879
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 880
    .line 881
    .line 882
    move-result v4

    .line 883
    if-eqz v4, :cond_1f

    .line 884
    .line 885
    goto :goto_16

    .line 886
    :cond_1f
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE$4:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 887
    .line 888
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 889
    .line 890
    .line 891
    move-result v4

    .line 892
    if-eqz v4, :cond_20

    .line 893
    .line 894
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 898
    .line 899
    .line 900
    goto :goto_15

    .line 901
    :cond_20
    sget-object v2, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE$2:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 902
    .line 903
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    move-result v2

    .line 907
    if-eqz v2, :cond_21

    .line 908
    .line 909
    const v1, 0x7f1205ac

    .line 910
    .line 911
    .line 912
    const/4 v2, 0x0

    .line 913
    new-array v2, v2, [Ljava/lang/Object;

    .line 914
    .line 915
    invoke-virtual {v0, v1, v2}, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->displayErrorText(I[Ljava/lang/Object;)V

    .line 916
    .line 917
    .line 918
    goto :goto_15

    .line 919
    :cond_21
    const/4 v2, 0x0

    .line 920
    instance-of v4, v1, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Failed;

    .line 921
    .line 922
    if-eqz v4, :cond_22

    .line 923
    .line 924
    new-array v4, v8, [Ljava/lang/Object;

    .line 925
    .line 926
    aput-object v1, v4, v2

    .line 927
    .line 928
    const v1, 0x7f1205ad

    .line 929
    .line 930
    .line 931
    invoke-virtual {v0, v1, v4}, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->displayErrorText(I[Ljava/lang/Object;)V

    .line 932
    .line 933
    .line 934
    goto :goto_15

    .line 935
    :cond_22
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE$3:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 936
    .line 937
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result v4

    .line 941
    if-eqz v4, :cond_23

    .line 942
    .line 943
    const v1, 0x7f1205ae

    .line 944
    .line 945
    .line 946
    new-array v2, v2, [Ljava/lang/Object;

    .line 947
    .line 948
    invoke-virtual {v0, v1, v2}, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->displayErrorText(I[Ljava/lang/Object;)V

    .line 949
    .line 950
    .line 951
    goto :goto_15

    .line 952
    :cond_23
    sget-object v4, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE$1:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 953
    .line 954
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    if-eqz v1, :cond_25

    .line 959
    .line 960
    const v1, 0x7f1205ab

    .line 961
    .line 962
    .line 963
    new-array v2, v2, [Ljava/lang/Object;

    .line 964
    .line 965
    invoke-virtual {v0, v1, v2}, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->displayErrorText(I[Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    :goto_15
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/OAuthFlowActivity;->authViewModel$delegate:Lkotlin/Lazy;

    .line 969
    .line 970
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v0

    .line 974
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 975
    .line 976
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 977
    .line 978
    :cond_24
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    move-object v2, v1

    .line 983
    check-cast v2, Lapp/k9mail/feature/settings/import/ui/AuthFlowState;

    .line 984
    .line 985
    invoke-virtual {v0, v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 986
    .line 987
    .line 988
    move-result v1

    .line 989
    if-eqz v1, :cond_24

    .line 990
    .line 991
    :goto_16
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 992
    .line 993
    goto :goto_17

    .line 994
    :cond_25
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 995
    .line 996
    .line 997
    :goto_17
    return-object v9

    .line 998
    :pswitch_7
    sget-object v1, Lapp/k9mail/core/ui/compose/common/window/FoldableState;->UNFOLDED:Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 999
    .line 1000
    sget-object v2, Lapp/k9mail/core/ui/compose/common/window/FoldableState;->UNKNOWN:Lapp/k9mail/core/ui/compose/common/window/FoldableState;

    .line 1001
    .line 1002
    move-object/from16 v4, p1

    .line 1003
    .line 1004
    check-cast v4, Landroidx/window/layout/WindowLayoutInfo;

    .line 1005
    .line 1006
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 1007
    .line 1008
    check-cast v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;

    .line 1009
    .line 1010
    iget-object v4, v4, Landroidx/window/layout/WindowLayoutInfo;->displayFeatures:Ljava/util/List;

    .line 1011
    .line 1012
    new-instance v5, Ljava/util/ArrayList;

    .line 1013
    .line 1014
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .line 1016
    .line 1017
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v4

    .line 1021
    :cond_26
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1022
    .line 1023
    .line 1024
    move-result v7

    .line 1025
    if-eqz v7, :cond_27

    .line 1026
    .line 1027
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v7

    .line 1031
    instance-of v8, v7, Landroidx/window/layout/HardwareFoldingFeature;

    .line 1032
    .line 1033
    if-eqz v8, :cond_26

    .line 1034
    .line 1035
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    goto :goto_18

    .line 1039
    :cond_27
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v4

    .line 1043
    check-cast v4, Landroidx/window/layout/HardwareFoldingFeature;

    .line 1044
    .line 1045
    if-nez v4, :cond_28

    .line 1046
    .line 1047
    :goto_19
    move-object v1, v2

    .line 1048
    goto :goto_1a

    .line 1049
    :cond_28
    iget-object v5, v4, Landroidx/window/layout/HardwareFoldingFeature;->state:Landroidx/window/layout/FoldingFeature$State;

    .line 1050
    .line 1051
    sget-object v7, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    .line 1052
    .line 1053
    if-eq v5, v7, :cond_29

    .line 1054
    .line 1055
    sget-object v7, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    .line 1056
    .line 1057
    if-eq v5, v7, :cond_29

    .line 1058
    .line 1059
    goto :goto_19

    .line 1060
    :cond_29
    :goto_1a
    iget-object v2, v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->logger:Lnet/thunderbird/core/logging/Logger;

    .line 1061
    .line 1062
    new-instance v5, Lkotlin/text/Regex$$ExternalSyntheticLambda1;

    .line 1063
    .line 1064
    invoke-direct {v5, v3, v4, v1}, Lkotlin/text/Regex$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1065
    .line 1066
    .line 1067
    const-string v3, "FoldableStateObserver"

    .line 1068
    .line 1069
    invoke-static {v2, v3, v9, v5, v6}, Lkotlinx/io/Sink$-CC;->verbose$default(Lnet/thunderbird/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;I)V

    .line 1070
    .line 1071
    .line 1072
    iget-object v2, v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->debounceJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1073
    .line 1074
    if-eqz v2, :cond_2a

    .line 1075
    .line 1076
    invoke-virtual {v2, v9}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1077
    .line 1078
    .line 1079
    :cond_2a
    iget-object v2, v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 1080
    .line 1081
    new-instance v3, Landroidx/lifecycle/BlockRunner$maybeRun$1;

    .line 1082
    .line 1083
    const/16 v4, 0x14

    .line 1084
    .line 1085
    invoke-direct {v3, v0, v1, v9, v4}, Landroidx/lifecycle/BlockRunner$maybeRun$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1086
    .line 1087
    .line 1088
    const/4 v13, 0x3

    .line 1089
    invoke-static {v2, v9, v9, v3, v13}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1090
    .line 1091
    .line 1092
    move-result-object v1

    .line 1093
    iput-object v1, v0, Lapp/k9mail/core/ui/compose/common/window/FoldableStateObserver;->debounceJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1094
    .line 1095
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1096
    .line 1097
    return-object v0

    .line 1098
    :pswitch_8
    move-object/from16 v1, p1

    .line 1099
    .line 1100
    check-cast v1, Lkotlin/Unit;

    .line 1101
    .line 1102
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1103
    .line 1104
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v0, Landroidx/datastore/core/DataStoreImpl;

    .line 1107
    .line 1108
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl;->inMemoryCache:Landroidx/room/ObservedTableVersions;

    .line 1109
    .line 1110
    invoke-virtual {v2}, Landroidx/room/ObservedTableVersions;->getCurrentState()Landroidx/datastore/core/State;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v2

    .line 1114
    instance-of v2, v2, Landroidx/datastore/core/Final;

    .line 1115
    .line 1116
    if-nez v2, :cond_2b

    .line 1117
    .line 1118
    move-object/from16 v2, p2

    .line 1119
    .line 1120
    invoke-static {v0, v8, v2}, Landroidx/datastore/core/DataStoreImpl;->access$readDataAndUpdateCache(Landroidx/datastore/core/DataStoreImpl;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v0

    .line 1124
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1125
    .line 1126
    if-ne v0, v2, :cond_2b

    .line 1127
    .line 1128
    move-object v1, v0

    .line 1129
    :cond_2b
    return-object v1

    .line 1130
    :pswitch_9
    move-object/from16 v1, p1

    .line 1131
    .line 1132
    check-cast v1, Ljava/lang/Number;

    .line 1133
    .line 1134
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 1135
    .line 1136
    .line 1137
    move-result v1

    .line 1138
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 1139
    .line 1140
    check-cast v0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;

    .line 1141
    .line 1142
    iget-object v0, v0, Landroidx/compose/ui/platform/MotionDurationScaleImpl;->_scaleFactor$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 1143
    .line 1144
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 1145
    .line 1146
    .line 1147
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1148
    .line 1149
    return-object v0

    .line 1150
    :pswitch_a
    move-object/from16 v1, p1

    .line 1151
    .line 1152
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    .line 1153
    .line 1154
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 1155
    .line 1156
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 1157
    .line 1158
    instance-of v3, v1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 1159
    .line 1160
    if-nez v3, :cond_2e

    .line 1161
    .line 1162
    instance-of v3, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 1163
    .line 1164
    if-eqz v3, :cond_2c

    .line 1165
    .line 1166
    goto :goto_1b

    .line 1167
    :cond_2c
    instance-of v3, v1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    .line 1168
    .line 1169
    if-nez v3, :cond_2d

    .line 1170
    .line 1171
    instance-of v3, v1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 1172
    .line 1173
    if-nez v3, :cond_2d

    .line 1174
    .line 1175
    instance-of v1, v1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 1176
    .line 1177
    if-eqz v1, :cond_2f

    .line 1178
    .line 1179
    :cond_2d
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1180
    .line 1181
    .line 1182
    move-result v1

    .line 1183
    add-int/2addr v1, v2

    .line 1184
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 1185
    .line 1186
    .line 1187
    goto :goto_1c

    .line 1188
    :cond_2e
    :goto_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1189
    .line 1190
    .line 1191
    move-result v1

    .line 1192
    add-int/2addr v1, v8

    .line 1193
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    .line 1194
    .line 1195
    .line 1196
    :cond_2f
    :goto_1c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1197
    .line 1198
    return-object v0

    .line 1199
    :pswitch_b
    move-object/from16 v1, p1

    .line 1200
    .line 1201
    check-cast v1, Lkotlin/Unit;

    .line 1202
    .line 1203
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 1204
    .line 1205
    check-cast v0, Landroidx/cardview/widget/CardView$1;

    .line 1206
    .line 1207
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1208
    .line 1209
    const/16 v2, 0x22

    .line 1210
    .line 1211
    if-lt v1, v2, :cond_30

    .line 1212
    .line 1213
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView$1;->getImm()Landroid/view/inputmethod/InputMethodManager;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v1

    .line 1217
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 1218
    .line 1219
    check-cast v0, Landroid/view/View;

    .line 1220
    .line 1221
    invoke-static {v1, v0}, Landroidx/compose/foundation/text/input/internal/Api34StartStylusHandwriting;->startStylusHandwriting(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    .line 1222
    .line 1223
    .line 1224
    :cond_30
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1225
    .line 1226
    return-object v0

    .line 1227
    :pswitch_c
    move-object/from16 v1, p1

    .line 1228
    .line 1229
    check-cast v1, Lcom/skydoves/landscapist/ImageLoadState;

    .line 1230
    .line 1231
    iget-object v0, v0, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;->$state$delegate:Ljava/lang/Object;

    .line 1232
    .line 1233
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 1234
    .line 1235
    sget v2, Lcom/skydoves/landscapist/ImageLoadKt;->$r8$clinit:I

    .line 1236
    .line 1237
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1238
    .line 1239
    .line 1240
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1241
    .line 1242
    return-object v0

    .line 1243
    :pswitch_data_0
    .packed-switch 0x0
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
