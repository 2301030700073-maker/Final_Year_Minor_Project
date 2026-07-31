.class public final synthetic Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x7

    .line 8
    const/4 v3, 0x6

    .line 9
    const/4 v4, 0x4

    .line 10
    const/4 v5, 0x3

    .line 11
    const/4 v6, 0x2

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    move-object/from16 v0, p1

    .line 19
    .line 20
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v0, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 26
    .line 27
    iget v0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0

    .line 34
    :pswitch_0
    move-object/from16 v0, p1

    .line 35
    .line 36
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v2, v1, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 46
    .line 47
    iget v2, v2, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 48
    .line 49
    iget-object v0, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 50
    .line 51
    iget v0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 52
    .line 53
    if-ne v2, v0, :cond_0

    .line 54
    .line 55
    move-object v9, v1

    .line 56
    :cond_0
    return-object v9

    .line 57
    :pswitch_1
    move-object/from16 v0, p1

    .line 58
    .line 59
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget-object v1, v0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    iget-object v2, v1, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 69
    .line 70
    iget v2, v2, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 71
    .line 72
    iget-object v0, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 73
    .line 74
    iget v0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 75
    .line 76
    if-ne v2, v0, :cond_1

    .line 77
    .line 78
    move-object v9, v1

    .line 79
    :cond_1
    return-object v9

    .line 80
    :pswitch_2
    move-object/from16 v0, p1

    .line 81
    .line 82
    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance v1, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    .line 88
    .line 89
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {v1, v0}, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    .line 94
    .line 95
    .line 96
    return-object v1

    .line 97
    :pswitch_3
    move-object/from16 v0, p1

    .line 98
    .line 99
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 100
    .line 101
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 102
    .line 103
    return-object v0

    .line 104
    :pswitch_4
    move-object/from16 v0, p1

    .line 105
    .line 106
    check-cast v0, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;

    .line 107
    .line 108
    invoke-virtual {v0}, Landroidx/compose/animation/AnimatedContentTransitionScopeImpl;->getTargetState()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 113
    .line 114
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    .line 120
    .line 121
    sget v1, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 122
    .line 123
    invoke-static {v0}, Lkotlin/text/UStringsKt;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_2

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    return-object v9

    .line 145
    :pswitch_5
    move-object/from16 v0, p1

    .line 146
    .line 147
    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 148
    .line 149
    new-instance v1, Landroidx/navigation/compose/BackStackEntryIdViewModel;

    .line 150
    .line 151
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->createSavedStateHandle(Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/SavedStateHandle;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-direct {v1, v0}, Landroidx/navigation/compose/BackStackEntryIdViewModel;-><init>(Landroidx/lifecycle/SavedStateHandle;)V

    .line 156
    .line 157
    .line 158
    return-object v1

    .line 159
    :pswitch_6
    move-object/from16 v0, p1

    .line 160
    .line 161
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    instance-of v1, v0, Landroidx/navigation/NavGraph;

    .line 167
    .line 168
    if-eqz v1, :cond_3

    .line 169
    .line 170
    check-cast v0, Landroidx/navigation/NavGraph;

    .line 171
    .line 172
    iget-object v0, v0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 173
    .line 174
    iget v1, v0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    :cond_3
    return-object v9

    .line 181
    :pswitch_7
    move-object/from16 v0, p1

    .line 182
    .line 183
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    iget-object v0, v0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 189
    .line 190
    return-object v0

    .line 191
    :pswitch_8
    move-object/from16 v0, p1

    .line 192
    .line 193
    check-cast v0, Landroid/content/Context;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    instance-of v1, v0, Landroid/app/Activity;

    .line 199
    .line 200
    if-eqz v1, :cond_4

    .line 201
    .line 202
    move-object v9, v0

    .line 203
    check-cast v9, Landroid/app/Activity;

    .line 204
    .line 205
    :cond_4
    return-object v9

    .line 206
    :pswitch_9
    move-object/from16 v0, p1

    .line 207
    .line 208
    check-cast v0, Landroid/content/Context;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 214
    .line 215
    if-eqz v1, :cond_5

    .line 216
    .line 217
    check-cast v0, Landroid/content/ContextWrapper;

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_5
    move-object v0, v9

    .line 221
    :goto_1
    if-eqz v0, :cond_6

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    :cond_6
    return-object v9

    .line 228
    :pswitch_a
    move-object/from16 v0, p1

    .line 229
    .line 230
    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    new-instance v0, Landroidx/navigation/NavControllerViewModel;

    .line 236
    .line 237
    invoke-direct {v0}, Landroidx/navigation/NavControllerViewModel;-><init>()V

    .line 238
    .line 239
    .line 240
    return-object v0

    .line 241
    :pswitch_b
    move-object/from16 v0, p1

    .line 242
    .line 243
    check-cast v0, Landroid/content/Context;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 249
    .line 250
    if-eqz v1, :cond_7

    .line 251
    .line 252
    check-cast v0, Landroid/content/ContextWrapper;

    .line 253
    .line 254
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    :cond_7
    return-object v9

    .line 259
    :pswitch_c
    move-object/from16 v0, p1

    .line 260
    .line 261
    check-cast v0, Landroid/content/Context;

    .line 262
    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    instance-of v1, v0, Landroid/content/ContextWrapper;

    .line 267
    .line 268
    if-eqz v1, :cond_8

    .line 269
    .line 270
    check-cast v0, Landroid/content/ContextWrapper;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 273
    .line 274
    .line 275
    move-result-object v9

    .line 276
    :cond_8
    return-object v9

    .line 277
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    move-object/from16 v0, p1

    .line 281
    .line 282
    check-cast v0, Ljava/lang/Integer;

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    new-instance v1, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 289
    .line 290
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;-><init>(I)V

    .line 291
    .line 292
    .line 293
    return-object v1

    .line 294
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    move-object/from16 v0, p1

    .line 298
    .line 299
    check-cast v0, Ljava/util/List;

    .line 300
    .line 301
    new-instance v1, Landroidx/compose/ui/text/style/TextMotion;

    .line 302
    .line 303
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    sget-object v3, Landroidx/compose/ui/text/ParagraphKt;->TextMotionLinearitySaver:Landroidx/cardview/widget/CardView$1;

    .line 308
    .line 309
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 310
    .line 311
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_a

    .line 316
    .line 317
    :cond_9
    move-object v2, v9

    .line 318
    goto :goto_2

    .line 319
    :cond_a
    if-eqz v2, :cond_9

    .line 320
    .line 321
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 324
    .line 325
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    check-cast v2, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 330
    .line 331
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    iget v2, v2, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    .line 335
    .line 336
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    if-eqz v0, :cond_b

    .line 341
    .line 342
    move-object v9, v0

    .line 343
    check-cast v9, Ljava/lang/Boolean;

    .line 344
    .line 345
    :cond_b
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/text/style/TextMotion;-><init>(IZ)V

    .line 353
    .line 354
    .line 355
    return-object v1

    .line 356
    :pswitch_f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    move-object/from16 v0, p1

    .line 360
    .line 361
    check-cast v0, Ljava/lang/Integer;

    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    new-instance v1, Landroidx/compose/ui/text/style/LineBreak;

    .line 368
    .line 369
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 370
    .line 371
    .line 372
    return-object v1

    .line 373
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    move-object/from16 v0, p1

    .line 377
    .line 378
    check-cast v0, Ljava/lang/Integer;

    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    new-instance v1, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 385
    .line 386
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 387
    .line 388
    .line 389
    return-object v1

    .line 390
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    move-object/from16 v0, p1

    .line 394
    .line 395
    check-cast v0, Ljava/util/List;

    .line 396
    .line 397
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    if-eqz v1, :cond_c

    .line 402
    .line 403
    check-cast v1, Ljava/lang/Boolean;

    .line 404
    .line 405
    goto :goto_3

    .line 406
    :cond_c
    move-object v1, v9

    .line 407
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    sget-object v2, Landroidx/compose/ui/text/ParagraphKt;->emojiSupportMatchSaver:Landroidx/cardview/widget/CardView$1;

    .line 419
    .line 420
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 421
    .line 422
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-eqz v3, :cond_d

    .line 427
    .line 428
    goto :goto_4

    .line 429
    :cond_d
    if-eqz v0, :cond_e

    .line 430
    .line 431
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 434
    .line 435
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    move-object v9, v0

    .line 440
    check-cast v9, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 441
    .line 442
    :cond_e
    :goto_4
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    iget v0, v9, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    .line 446
    .line 447
    new-instance v2, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 448
    .line 449
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/PlatformParagraphStyle;-><init>(IZ)V

    .line 450
    .line 451
    .line 452
    return-object v2

    .line 453
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    move-object/from16 v0, p1

    .line 457
    .line 458
    check-cast v0, Ljava/util/List;

    .line 459
    .line 460
    new-instance v10, Landroidx/compose/ui/text/SpanStyle;

    .line 461
    .line 462
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v8

    .line 466
    sget v11, Landroidx/compose/ui/graphics/Color;->$r8$clinit:I

    .line 467
    .line 468
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 469
    .line 470
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    if-eqz v8, :cond_10

    .line 474
    .line 475
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 476
    .line 477
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v12

    .line 481
    if-eqz v12, :cond_f

    .line 482
    .line 483
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 484
    .line 485
    new-instance v8, Landroidx/compose/ui/graphics/Color;

    .line 486
    .line 487
    invoke-direct {v8, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 488
    .line 489
    .line 490
    goto :goto_5

    .line 491
    :cond_f
    check-cast v8, Ljava/lang/Integer;

    .line 492
    .line 493
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 494
    .line 495
    .line 496
    move-result v8

    .line 497
    invoke-static {v8}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 498
    .line 499
    .line 500
    move-result-wide v12

    .line 501
    new-instance v8, Landroidx/compose/ui/graphics/Color;

    .line 502
    .line 503
    invoke-direct {v8, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 504
    .line 505
    .line 506
    goto :goto_5

    .line 507
    :cond_10
    move-object v8, v9

    .line 508
    :goto_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 509
    .line 510
    .line 511
    iget-wide v12, v8, Landroidx/compose/ui/graphics/Color;->value:J

    .line 512
    .line 513
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v7

    .line 517
    sget-object v8, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 518
    .line 519
    sget-object v8, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 520
    .line 521
    iget-object v8, v8, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 522
    .line 523
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    if-eqz v7, :cond_11

    .line 527
    .line 528
    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    check-cast v7, Landroidx/compose/ui/unit/TextUnit;

    .line 533
    .line 534
    goto :goto_6

    .line 535
    :cond_11
    move-object v7, v9

    .line 536
    :goto_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    .line 538
    .line 539
    iget-wide v14, v7, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 540
    .line 541
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v6

    .line 545
    sget-object v7, Landroidx/compose/ui/text/font/FontWeight;->W500:Landroidx/compose/ui/text/font/FontWeight;

    .line 546
    .line 547
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/cardview/widget/CardView$1;

    .line 548
    .line 549
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result v16

    .line 553
    if-eqz v16, :cond_13

    .line 554
    .line 555
    :cond_12
    move-object v6, v9

    .line 556
    goto :goto_7

    .line 557
    :cond_13
    if-eqz v6, :cond_12

    .line 558
    .line 559
    iget-object v7, v7, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 562
    .line 563
    invoke-interface {v7, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    check-cast v6, Landroidx/compose/ui/text/font/FontWeight;

    .line 568
    .line 569
    :goto_7
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v5

    .line 573
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->FontStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 574
    .line 575
    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v16

    .line 579
    if-eqz v16, :cond_15

    .line 580
    .line 581
    :cond_14
    move-object/from16 v16, v9

    .line 582
    .line 583
    goto :goto_8

    .line 584
    :cond_15
    if-eqz v5, :cond_14

    .line 585
    .line 586
    iget-object v7, v7, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 589
    .line 590
    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    check-cast v5, Landroidx/compose/ui/text/font/FontStyle;

    .line 595
    .line 596
    move-object/from16 v16, v5

    .line 597
    .line 598
    :goto_8
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->FontSynthesisSaver:Landroidx/cardview/widget/CardView$1;

    .line 603
    .line 604
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v7

    .line 608
    if-eqz v7, :cond_17

    .line 609
    .line 610
    :cond_16
    move-object/from16 v17, v9

    .line 611
    .line 612
    goto :goto_9

    .line 613
    :cond_17
    if-eqz v4, :cond_16

    .line 614
    .line 615
    iget-object v5, v5, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 616
    .line 617
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 618
    .line 619
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    check-cast v4, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 624
    .line 625
    move-object/from16 v17, v4

    .line 626
    .line 627
    :goto_9
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    if-eqz v3, :cond_18

    .line 632
    .line 633
    check-cast v3, Ljava/lang/String;

    .line 634
    .line 635
    move-object/from16 v19, v3

    .line 636
    .line 637
    goto :goto_a

    .line 638
    :cond_18
    move-object/from16 v19, v9

    .line 639
    .line 640
    :goto_a
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    if-eqz v2, :cond_19

    .line 648
    .line 649
    invoke-interface {v8, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    check-cast v2, Landroidx/compose/ui/unit/TextUnit;

    .line 654
    .line 655
    goto :goto_b

    .line 656
    :cond_19
    move-object v2, v9

    .line 657
    :goto_b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 658
    .line 659
    .line 660
    iget-wide v2, v2, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 661
    .line 662
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/cardview/widget/CardView$1;

    .line 667
    .line 668
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v5

    .line 672
    if-eqz v5, :cond_1b

    .line 673
    .line 674
    :cond_1a
    move-object/from16 v22, v9

    .line 675
    .line 676
    goto :goto_c

    .line 677
    :cond_1b
    if-eqz v1, :cond_1a

    .line 678
    .line 679
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 682
    .line 683
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v1

    .line 687
    check-cast v1, Landroidx/compose/ui/text/style/BaselineShift;

    .line 688
    .line 689
    move-object/from16 v22, v1

    .line 690
    .line 691
    :goto_c
    const/16 v1, 0x9

    .line 692
    .line 693
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/cardview/widget/CardView$1;

    .line 698
    .line 699
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 700
    .line 701
    .line 702
    move-result v5

    .line 703
    if-eqz v5, :cond_1d

    .line 704
    .line 705
    :cond_1c
    move-object/from16 v23, v9

    .line 706
    .line 707
    goto :goto_d

    .line 708
    :cond_1d
    if-eqz v1, :cond_1c

    .line 709
    .line 710
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 711
    .line 712
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 713
    .line 714
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    check-cast v1, Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 719
    .line 720
    move-object/from16 v23, v1

    .line 721
    .line 722
    :goto_d
    const/16 v1, 0xa

    .line 723
    .line 724
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    sget-object v4, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    .line 729
    .line 730
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/cardview/widget/CardView$1;

    .line 731
    .line 732
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    if-eqz v5, :cond_1f

    .line 737
    .line 738
    :cond_1e
    move-object/from16 v24, v9

    .line 739
    .line 740
    goto :goto_e

    .line 741
    :cond_1f
    if-eqz v1, :cond_1e

    .line 742
    .line 743
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 744
    .line 745
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 746
    .line 747
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    move-result-object v1

    .line 751
    check-cast v1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 752
    .line 753
    move-object/from16 v24, v1

    .line 754
    .line 755
    :goto_e
    const/16 v1, 0xb

    .line 756
    .line 757
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    if-eqz v1, :cond_21

    .line 765
    .line 766
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 767
    .line 768
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v4

    .line 772
    if-eqz v4, :cond_20

    .line 773
    .line 774
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 775
    .line 776
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 777
    .line 778
    invoke-direct {v1, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 779
    .line 780
    .line 781
    goto :goto_f

    .line 782
    :cond_20
    check-cast v1, Ljava/lang/Integer;

    .line 783
    .line 784
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 785
    .line 786
    .line 787
    move-result v1

    .line 788
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 789
    .line 790
    .line 791
    move-result-wide v4

    .line 792
    new-instance v1, Landroidx/compose/ui/graphics/Color;

    .line 793
    .line 794
    invoke-direct {v1, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 795
    .line 796
    .line 797
    goto :goto_f

    .line 798
    :cond_21
    move-object v1, v9

    .line 799
    :goto_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    iget-wide v4, v1, Landroidx/compose/ui/graphics/Color;->value:J

    .line 803
    .line 804
    const/16 v1, 0xc

    .line 805
    .line 806
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/cardview/widget/CardView$1;

    .line 811
    .line 812
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v8

    .line 816
    if-eqz v8, :cond_23

    .line 817
    .line 818
    :cond_22
    move-object/from16 v27, v9

    .line 819
    .line 820
    goto :goto_10

    .line 821
    :cond_23
    if-eqz v1, :cond_22

    .line 822
    .line 823
    iget-object v7, v7, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 824
    .line 825
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 826
    .line 827
    invoke-interface {v7, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    check-cast v1, Landroidx/compose/ui/text/style/TextDecoration;

    .line 832
    .line 833
    move-object/from16 v27, v1

    .line 834
    .line 835
    :goto_10
    const/16 v1, 0xd

    .line 836
    .line 837
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    sget-object v1, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 842
    .line 843
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/cardview/widget/CardView$1;

    .line 844
    .line 845
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    move-result v7

    .line 849
    if-eqz v7, :cond_25

    .line 850
    .line 851
    :cond_24
    :goto_11
    move-object/from16 v28, v9

    .line 852
    .line 853
    goto :goto_12

    .line 854
    :cond_25
    if-eqz v0, :cond_24

    .line 855
    .line 856
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 859
    .line 860
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    move-object v9, v0

    .line 865
    check-cast v9, Landroidx/compose/ui/graphics/Shadow;

    .line 866
    .line 867
    goto :goto_11

    .line 868
    :goto_12
    const v29, 0xc020

    .line 869
    .line 870
    .line 871
    const/16 v18, 0x0

    .line 872
    .line 873
    move-wide/from16 v20, v2

    .line 874
    .line 875
    move-wide/from16 v25, v4

    .line 876
    .line 877
    move-wide v11, v12

    .line 878
    move-wide v13, v14

    .line 879
    move-object v15, v6

    .line 880
    invoke-direct/range {v10 .. v29}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;I)V

    .line 881
    .line 882
    .line 883
    return-object v10

    .line 884
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    .line 886
    .line 887
    move-object/from16 v0, p1

    .line 888
    .line 889
    check-cast v0, Ljava/util/List;

    .line 890
    .line 891
    new-instance v10, Landroidx/compose/ui/text/ParagraphStyle;

    .line 892
    .line 893
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v8

    .line 897
    sget-object v11, Landroidx/compose/ui/text/SaversKt;->TextAlignSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 898
    .line 899
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 900
    .line 901
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    if-eqz v8, :cond_26

    .line 905
    .line 906
    iget-object v11, v11, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 907
    .line 908
    invoke-interface {v11, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    move-result-object v8

    .line 912
    check-cast v8, Landroidx/compose/ui/text/style/TextAlign;

    .line 913
    .line 914
    goto :goto_13

    .line 915
    :cond_26
    move-object v8, v9

    .line 916
    :goto_13
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 917
    .line 918
    .line 919
    iget v11, v8, Landroidx/compose/ui/text/style/TextAlign;->value:I

    .line 920
    .line 921
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v7

    .line 925
    sget-object v8, Landroidx/compose/ui/text/SaversKt;->TextDirectionSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 926
    .line 927
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 928
    .line 929
    .line 930
    if-eqz v7, :cond_27

    .line 931
    .line 932
    iget-object v8, v8, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 933
    .line 934
    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v7

    .line 938
    check-cast v7, Landroidx/compose/ui/text/style/TextDirection;

    .line 939
    .line 940
    goto :goto_14

    .line 941
    :cond_27
    move-object v7, v9

    .line 942
    :goto_14
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    iget v7, v7, Landroidx/compose/ui/text/style/TextDirection;->value:I

    .line 946
    .line 947
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 948
    .line 949
    .line 950
    move-result-object v6

    .line 951
    sget-object v8, Landroidx/compose/ui/unit/TextUnit;->TextUnitTypes:[Landroidx/compose/ui/unit/TextUnitType;

    .line 952
    .line 953
    sget-object v8, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 954
    .line 955
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 956
    .line 957
    .line 958
    if-eqz v6, :cond_28

    .line 959
    .line 960
    iget-object v8, v8, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 961
    .line 962
    invoke-interface {v8, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v6

    .line 966
    check-cast v6, Landroidx/compose/ui/unit/TextUnit;

    .line 967
    .line 968
    goto :goto_15

    .line 969
    :cond_28
    move-object v6, v9

    .line 970
    :goto_15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 971
    .line 972
    .line 973
    iget-wide v13, v6, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 974
    .line 975
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v5

    .line 979
    sget-object v6, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 980
    .line 981
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/cardview/widget/CardView$1;

    .line 982
    .line 983
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    move-result v8

    .line 987
    if-eqz v8, :cond_2a

    .line 988
    .line 989
    :cond_29
    move-object v15, v9

    .line 990
    goto :goto_16

    .line 991
    :cond_2a
    if-eqz v5, :cond_29

    .line 992
    .line 993
    iget-object v6, v6, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 996
    .line 997
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v5

    .line 1001
    check-cast v5, Landroidx/compose/ui/text/style/TextIndent;

    .line 1002
    .line 1003
    move-object v15, v5

    .line 1004
    :goto_16
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    sget-object v5, Landroidx/compose/ui/text/ParagraphKt;->PlatformParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1009
    .line 1010
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v6

    .line 1014
    if-eqz v6, :cond_2c

    .line 1015
    .line 1016
    :cond_2b
    move-object/from16 v16, v9

    .line 1017
    .line 1018
    goto :goto_17

    .line 1019
    :cond_2c
    if-eqz v4, :cond_2b

    .line 1020
    .line 1021
    iget-object v5, v5, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1022
    .line 1023
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1024
    .line 1025
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v4

    .line 1029
    check-cast v4, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 1030
    .line 1031
    move-object/from16 v16, v4

    .line 1032
    .line 1033
    :goto_17
    const/4 v4, 0x5

    .line 1034
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v4

    .line 1038
    sget-object v5, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1039
    .line 1040
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1041
    .line 1042
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v6

    .line 1046
    if-eqz v6, :cond_2e

    .line 1047
    .line 1048
    :cond_2d
    move-object/from16 v17, v9

    .line 1049
    .line 1050
    goto :goto_18

    .line 1051
    :cond_2e
    if-eqz v4, :cond_2d

    .line 1052
    .line 1053
    iget-object v5, v5, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1054
    .line 1055
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1056
    .line 1057
    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v4

    .line 1061
    check-cast v4, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1062
    .line 1063
    move-object/from16 v17, v4

    .line 1064
    .line 1065
    :goto_18
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v3

    .line 1069
    sget-object v4, Landroidx/compose/ui/text/ParagraphKt;->LineBreakSaver:Landroidx/cardview/widget/CardView$1;

    .line 1070
    .line 1071
    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result v5

    .line 1075
    if-eqz v5, :cond_30

    .line 1076
    .line 1077
    :cond_2f
    move-object v3, v9

    .line 1078
    goto :goto_19

    .line 1079
    :cond_30
    if-eqz v3, :cond_2f

    .line 1080
    .line 1081
    iget-object v4, v4, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1082
    .line 1083
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1084
    .line 1085
    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v3

    .line 1089
    check-cast v3, Landroidx/compose/ui/text/style/LineBreak;

    .line 1090
    .line 1091
    :goto_19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1092
    .line 1093
    .line 1094
    iget v3, v3, Landroidx/compose/ui/text/style/LineBreak;->mask:I

    .line 1095
    .line 1096
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v2

    .line 1100
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->HyphensSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1101
    .line 1102
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1103
    .line 1104
    .line 1105
    if-eqz v2, :cond_31

    .line 1106
    .line 1107
    iget-object v4, v4, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1108
    .line 1109
    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    check-cast v2, Landroidx/compose/ui/text/style/Hyphens;

    .line 1114
    .line 1115
    goto :goto_1a

    .line 1116
    :cond_31
    move-object v2, v9

    .line 1117
    :goto_1a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1118
    .line 1119
    .line 1120
    iget v2, v2, Landroidx/compose/ui/text/style/Hyphens;->value:I

    .line 1121
    .line 1122
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v0

    .line 1126
    sget-object v1, Landroidx/compose/ui/text/ParagraphKt;->TextMotionSaver:Landroidx/cardview/widget/CardView$1;

    .line 1127
    .line 1128
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v4

    .line 1132
    if-eqz v4, :cond_33

    .line 1133
    .line 1134
    :cond_32
    :goto_1b
    move/from16 v19, v2

    .line 1135
    .line 1136
    move/from16 v18, v3

    .line 1137
    .line 1138
    move v12, v7

    .line 1139
    move-object/from16 v20, v9

    .line 1140
    .line 1141
    goto :goto_1c

    .line 1142
    :cond_33
    if-eqz v0, :cond_32

    .line 1143
    .line 1144
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1145
    .line 1146
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1147
    .line 1148
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    move-object v9, v0

    .line 1153
    check-cast v9, Landroidx/compose/ui/text/style/TextMotion;

    .line 1154
    .line 1155
    goto :goto_1b

    .line 1156
    :goto_1c
    invoke-direct/range {v10 .. v20}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 1157
    .line 1158
    .line 1159
    return-object v10

    .line 1160
    :pswitch_14
    new-instance v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1161
    .line 1162
    if-eqz p1, :cond_34

    .line 1163
    .line 1164
    move-object/from16 v9, p1

    .line 1165
    .line 1166
    check-cast v9, Ljava/lang/String;

    .line 1167
    .line 1168
    :cond_34
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1169
    .line 1170
    .line 1171
    invoke-direct {v0, v9}, Landroidx/compose/ui/text/UrlAnnotation;-><init>(Ljava/lang/String;)V

    .line 1172
    .line 1173
    .line 1174
    return-object v0

    .line 1175
    :pswitch_15
    new-instance v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 1176
    .line 1177
    if-eqz p1, :cond_35

    .line 1178
    .line 1179
    move-object/from16 v9, p1

    .line 1180
    .line 1181
    check-cast v9, Ljava/lang/String;

    .line 1182
    .line 1183
    :cond_35
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1184
    .line 1185
    .line 1186
    invoke-direct {v0, v9}, Landroidx/compose/ui/text/VerbatimTtsAnnotation;-><init>(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    return-object v0

    .line 1190
    :pswitch_16
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    .line 1192
    .line 1193
    move-object/from16 v0, p1

    .line 1194
    .line 1195
    check-cast v0, Ljava/lang/Integer;

    .line 1196
    .line 1197
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1198
    .line 1199
    .line 1200
    move-result v0

    .line 1201
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 1202
    .line 1203
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;-><init>(I)V

    .line 1204
    .line 1205
    .line 1206
    return-object v1

    .line 1207
    :pswitch_17
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1208
    .line 1209
    .line 1210
    move-object/from16 v0, p1

    .line 1211
    .line 1212
    check-cast v0, Ljava/util/List;

    .line 1213
    .line 1214
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v1

    .line 1218
    if-eqz v1, :cond_36

    .line 1219
    .line 1220
    check-cast v1, Landroidx/compose/ui/text/AnnotationType;

    .line 1221
    .line 1222
    goto :goto_1d

    .line 1223
    :cond_36
    move-object v1, v9

    .line 1224
    :goto_1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1225
    .line 1226
    .line 1227
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v2

    .line 1231
    if-eqz v2, :cond_37

    .line 1232
    .line 1233
    check-cast v2, Ljava/lang/Integer;

    .line 1234
    .line 1235
    goto :goto_1e

    .line 1236
    :cond_37
    move-object v2, v9

    .line 1237
    :goto_1e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 1241
    .line 1242
    .line 1243
    move-result v2

    .line 1244
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v3

    .line 1248
    if-eqz v3, :cond_38

    .line 1249
    .line 1250
    check-cast v3, Ljava/lang/Integer;

    .line 1251
    .line 1252
    goto :goto_1f

    .line 1253
    :cond_38
    move-object v3, v9

    .line 1254
    :goto_1f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1255
    .line 1256
    .line 1257
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 1258
    .line 1259
    .line 1260
    move-result v3

    .line 1261
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v4

    .line 1265
    if-eqz v4, :cond_39

    .line 1266
    .line 1267
    check-cast v4, Ljava/lang/String;

    .line 1268
    .line 1269
    goto :goto_20

    .line 1270
    :cond_39
    move-object v4, v9

    .line 1271
    :goto_20
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1272
    .line 1273
    .line 1274
    sget-object v5, Landroidx/compose/ui/text/SaversKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1275
    .line 1276
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1277
    .line 1278
    .line 1279
    move-result v1

    .line 1280
    aget v1, v5, v1

    .line 1281
    .line 1282
    packed-switch v1, :pswitch_data_1

    .line 1283
    .line 1284
    .line 1285
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1286
    .line 1287
    .line 1288
    goto/16 :goto_28

    .line 1289
    .line 1290
    :pswitch_18
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v0

    .line 1294
    if-eqz v0, :cond_3a

    .line 1295
    .line 1296
    move-object v9, v0

    .line 1297
    check-cast v9, Ljava/lang/String;

    .line 1298
    .line 1299
    :cond_3a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1300
    .line 1301
    .line 1302
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1303
    .line 1304
    new-instance v1, Landroidx/compose/ui/text/StringAnnotation;

    .line 1305
    .line 1306
    invoke-direct {v1, v9}, Landroidx/compose/ui/text/StringAnnotation;-><init>(Ljava/lang/String;)V

    .line 1307
    .line 1308
    .line 1309
    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1310
    .line 1311
    .line 1312
    :goto_21
    move-object v9, v0

    .line 1313
    goto/16 :goto_28

    .line 1314
    .line 1315
    :pswitch_19
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/cardview/widget/CardView$1;

    .line 1320
    .line 1321
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1322
    .line 1323
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v5

    .line 1327
    if-eqz v5, :cond_3b

    .line 1328
    .line 1329
    goto :goto_22

    .line 1330
    :cond_3b
    if-eqz v0, :cond_3c

    .line 1331
    .line 1332
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1333
    .line 1334
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1335
    .line 1336
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    move-object v9, v0

    .line 1341
    check-cast v9, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1342
    .line 1343
    :cond_3c
    :goto_22
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1344
    .line 1345
    .line 1346
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1347
    .line 1348
    invoke-direct {v0, v2, v3, v9, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1349
    .line 1350
    .line 1351
    goto :goto_21

    .line 1352
    :pswitch_1a
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/cardview/widget/CardView$1;

    .line 1357
    .line 1358
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1359
    .line 1360
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v5

    .line 1364
    if-eqz v5, :cond_3d

    .line 1365
    .line 1366
    goto :goto_23

    .line 1367
    :cond_3d
    if-eqz v0, :cond_3e

    .line 1368
    .line 1369
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1370
    .line 1371
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1372
    .line 1373
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v0

    .line 1377
    move-object v9, v0

    .line 1378
    check-cast v9, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1379
    .line 1380
    :cond_3e
    :goto_23
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1381
    .line 1382
    .line 1383
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1384
    .line 1385
    invoke-direct {v0, v2, v3, v9, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1386
    .line 1387
    .line 1388
    goto :goto_21

    .line 1389
    :pswitch_1b
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v0

    .line 1393
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/cardview/widget/CardView$1;

    .line 1394
    .line 1395
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1396
    .line 1397
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1398
    .line 1399
    .line 1400
    move-result v5

    .line 1401
    if-eqz v5, :cond_3f

    .line 1402
    .line 1403
    goto :goto_24

    .line 1404
    :cond_3f
    if-eqz v0, :cond_40

    .line 1405
    .line 1406
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1407
    .line 1408
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1409
    .line 1410
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v0

    .line 1414
    move-object v9, v0

    .line 1415
    check-cast v9, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1416
    .line 1417
    :cond_40
    :goto_24
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1418
    .line 1419
    .line 1420
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1421
    .line 1422
    invoke-direct {v0, v2, v3, v9, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1423
    .line 1424
    .line 1425
    goto :goto_21

    .line 1426
    :pswitch_1c
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v0

    .line 1430
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/cardview/widget/CardView$1;

    .line 1431
    .line 1432
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1433
    .line 1434
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1435
    .line 1436
    .line 1437
    move-result v5

    .line 1438
    if-eqz v5, :cond_41

    .line 1439
    .line 1440
    goto :goto_25

    .line 1441
    :cond_41
    if-eqz v0, :cond_42

    .line 1442
    .line 1443
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1444
    .line 1445
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1446
    .line 1447
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v0

    .line 1451
    move-object v9, v0

    .line 1452
    check-cast v9, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 1453
    .line 1454
    :cond_42
    :goto_25
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1455
    .line 1456
    .line 1457
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1458
    .line 1459
    invoke-direct {v0, v2, v3, v9, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1460
    .line 1461
    .line 1462
    goto/16 :goto_21

    .line 1463
    .line 1464
    :pswitch_1d
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v0

    .line 1468
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1469
    .line 1470
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1471
    .line 1472
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1473
    .line 1474
    .line 1475
    move-result v5

    .line 1476
    if-eqz v5, :cond_43

    .line 1477
    .line 1478
    goto :goto_26

    .line 1479
    :cond_43
    if-eqz v0, :cond_44

    .line 1480
    .line 1481
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1482
    .line 1483
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1484
    .line 1485
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v0

    .line 1489
    move-object v9, v0

    .line 1490
    check-cast v9, Landroidx/compose/ui/text/SpanStyle;

    .line 1491
    .line 1492
    :cond_44
    :goto_26
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1493
    .line 1494
    .line 1495
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1496
    .line 1497
    invoke-direct {v0, v2, v3, v9, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1498
    .line 1499
    .line 1500
    goto/16 :goto_21

    .line 1501
    .line 1502
    :pswitch_1e
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v0

    .line 1506
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1507
    .line 1508
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1509
    .line 1510
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v5

    .line 1514
    if-eqz v5, :cond_45

    .line 1515
    .line 1516
    goto :goto_27

    .line 1517
    :cond_45
    if-eqz v0, :cond_46

    .line 1518
    .line 1519
    iget-object v1, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1520
    .line 1521
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1522
    .line 1523
    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v0

    .line 1527
    move-object v9, v0

    .line 1528
    check-cast v9, Landroidx/compose/ui/text/ParagraphStyle;

    .line 1529
    .line 1530
    :cond_46
    :goto_27
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1531
    .line 1532
    .line 1533
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1534
    .line 1535
    invoke-direct {v0, v2, v3, v9, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;Ljava/lang/String;)V

    .line 1536
    .line 1537
    .line 1538
    goto/16 :goto_21

    .line 1539
    .line 1540
    :goto_28
    return-object v9

    .line 1541
    :pswitch_1f
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1542
    .line 1543
    .line 1544
    move-object/from16 v0, p1

    .line 1545
    .line 1546
    check-cast v0, Ljava/lang/Integer;

    .line 1547
    .line 1548
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1549
    .line 1550
    .line 1551
    move-result v0

    .line 1552
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 1553
    .line 1554
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;-><init>(I)V

    .line 1555
    .line 1556
    .line 1557
    return-object v1

    .line 1558
    :pswitch_20
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1559
    .line 1560
    .line 1561
    move-object/from16 v0, p1

    .line 1562
    .line 1563
    check-cast v0, Ljava/lang/Float;

    .line 1564
    .line 1565
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 1566
    .line 1567
    .line 1568
    move-result v0

    .line 1569
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(F)V

    .line 1570
    .line 1571
    .line 1572
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 1573
    .line 1574
    invoke-direct {v1, v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(F)V

    .line 1575
    .line 1576
    .line 1577
    return-object v1

    .line 1578
    :pswitch_21
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1579
    .line 1580
    .line 1581
    move-object/from16 v0, p1

    .line 1582
    .line 1583
    check-cast v0, Ljava/util/List;

    .line 1584
    .line 1585
    new-instance v1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1586
    .line 1587
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v2

    .line 1591
    sget v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:F

    .line 1592
    .line 1593
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleAlignmentSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1594
    .line 1595
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1596
    .line 1597
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1598
    .line 1599
    .line 1600
    if-eqz v2, :cond_47

    .line 1601
    .line 1602
    iget-object v3, v3, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1603
    .line 1604
    invoke-interface {v3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v2

    .line 1608
    check-cast v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 1609
    .line 1610
    goto :goto_29

    .line 1611
    :cond_47
    move-object v2, v9

    .line 1612
    :goto_29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1613
    .line 1614
    .line 1615
    iget v2, v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    .line 1616
    .line 1617
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v3

    .line 1621
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleTrimSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1622
    .line 1623
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1624
    .line 1625
    .line 1626
    if-eqz v3, :cond_48

    .line 1627
    .line 1628
    iget-object v5, v5, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1629
    .line 1630
    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v3

    .line 1634
    check-cast v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 1635
    .line 1636
    goto :goto_2a

    .line 1637
    :cond_48
    move-object v3, v9

    .line 1638
    :goto_2a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1639
    .line 1640
    .line 1641
    iget v3, v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    .line 1642
    .line 1643
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    move-result-object v0

    .line 1647
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleModeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1648
    .line 1649
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1650
    .line 1651
    .line 1652
    if-eqz v0, :cond_49

    .line 1653
    .line 1654
    iget-object v4, v5, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 1655
    .line 1656
    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v0

    .line 1660
    move-object v9, v0

    .line 1661
    check-cast v9, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 1662
    .line 1663
    :cond_49
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1664
    .line 1665
    .line 1666
    iget v0, v9, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->value:I

    .line 1667
    .line 1668
    invoke-direct {v1, v3, v2, v0}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(IFI)V

    .line 1669
    .line 1670
    .line 1671
    return-object v1

    .line 1672
    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1673
    .line 1674
    .line 1675
    move-object/from16 v0, p1

    .line 1676
    .line 1677
    check-cast v0, Ljava/util/List;

    .line 1678
    .line 1679
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v1

    .line 1683
    if-eqz v1, :cond_4a

    .line 1684
    .line 1685
    check-cast v1, Ljava/lang/String;

    .line 1686
    .line 1687
    goto :goto_2b

    .line 1688
    :cond_4a
    move-object v1, v9

    .line 1689
    :goto_2b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1690
    .line 1691
    .line 1692
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/cardview/widget/CardView$1;

    .line 1697
    .line 1698
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1699
    .line 1700
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1701
    .line 1702
    .line 1703
    move-result v3

    .line 1704
    if-eqz v3, :cond_4c

    .line 1705
    .line 1706
    :cond_4b
    move-object v0, v9

    .line 1707
    goto :goto_2c

    .line 1708
    :cond_4c
    if-eqz v0, :cond_4b

    .line 1709
    .line 1710
    iget-object v2, v2, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 1711
    .line 1712
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1713
    .line 1714
    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v0

    .line 1718
    check-cast v0, Landroidx/compose/ui/text/TextLinkStyles;

    .line 1719
    .line 1720
    :goto_2c
    new-instance v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1721
    .line 1722
    invoke-direct {v2, v1, v0, v9}, Landroidx/compose/ui/text/LinkAnnotation$Clickable;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextLinkStyles;Landroidx/compose/ui/text/LinkInteractionListener;)V

    .line 1723
    .line 1724
    .line 1725
    return-object v2

    .line 1726
    :pswitch_23
    move-object/from16 v0, p1

    .line 1727
    .line 1728
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1729
    .line 1730
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1731
    .line 1732
    .line 1733
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1734
    .line 1735
    .line 1736
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1737
    .line 1738
    return-object v0

    .line 1739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method
