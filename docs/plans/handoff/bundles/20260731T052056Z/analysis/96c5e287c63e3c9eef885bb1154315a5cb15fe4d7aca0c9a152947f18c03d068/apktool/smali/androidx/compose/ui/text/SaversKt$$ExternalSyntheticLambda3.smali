.class public final synthetic Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/ui/text/SaversKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v7, 0x4

    .line 9
    const/4 v8, 0x3

    .line 10
    const/4 v9, 0x2

    .line 11
    const/4 v10, 0x1

    .line 12
    const/4 v11, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p1

    .line 17
    .line 18
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 19
    .line 20
    move-object/from16 v1, p2

    .line 21
    .line 22
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-interface {v1}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 39
    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    sget-object v3, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 44
    .line 45
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 50
    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    new-instance v2, Lkotlin/coroutines/CombinedContext;

    .line 54
    .line 55
    invoke-direct {v2, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    move-object v1, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-ne v0, v2, :cond_2

    .line 65
    .line 66
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    .line 67
    .line 68
    invoke-direct {v0, v4, v1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 69
    .line 70
    .line 71
    move-object v1, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    new-instance v2, Lkotlin/coroutines/CombinedContext;

    .line 74
    .line 75
    new-instance v3, Lkotlin/coroutines/CombinedContext;

    .line 76
    .line 77
    invoke-direct {v3, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, v4, v3}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :goto_1
    return-object v1

    .line 85
    :pswitch_0
    move-object/from16 v0, p1

    .line 86
    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    move-object/from16 v1, p2

    .line 90
    .line 91
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v0, ", "

    .line 116
    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :goto_2
    return-object v0

    .line 128
    :pswitch_1
    move-object/from16 v0, p1

    .line 129
    .line 130
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 131
    .line 132
    move-object/from16 v0, p2

    .line 133
    .line 134
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 135
    .line 136
    iget-object v1, v0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 137
    .line 138
    iget-object v2, v1, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/LinkedHashMap;

    .line 139
    .line 140
    iget-object v3, v1, Landroidx/navigation/internal/NavControllerImpl;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 141
    .line 142
    iget-object v4, v1, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/LinkedHashMap;

    .line 143
    .line 144
    new-instance v6, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    new-array v7, v11, [Lkotlin/Pair;

    .line 150
    .line 151
    invoke-static {v7, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, [Lkotlin/Pair;

    .line 156
    .line 157
    invoke-static {v7}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    iget-object v1, v1, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 162
    .line 163
    iget-object v1, v1, Landroidx/navigation/NavigatorProvider;->_navigators:Ljava/util/LinkedHashMap;

    .line 164
    .line 165
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-eqz v8, :cond_4

    .line 182
    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    check-cast v8, Ljava/util/Map$Entry;

    .line 188
    .line 189
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    check-cast v9, Ljava/lang/String;

    .line 194
    .line 195
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    check-cast v8, Landroidx/navigation/Navigator;

    .line 200
    .line 201
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_5

    .line 210
    .line 211
    new-array v1, v11, [Lkotlin/Pair;

    .line 212
    .line 213
    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, [Lkotlin/Pair;

    .line 218
    .line 219
    invoke-static {v1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    const-string v1, "android-support-nav:controller:navigatorState:names"

    .line 224
    .line 225
    invoke-static {v7, v1, v6}, Landroidx/work/OperationKt;->putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    const-string v1, "android-support-nav:controller:navigatorState"

    .line 229
    .line 230
    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    .line 232
    .line 233
    :cond_5
    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    const-string v6, "nav-entry-state:saved-state"

    .line 238
    .line 239
    const-string v7, "nav-entry-state:args"

    .line 240
    .line 241
    const-string v8, "nav-entry-state:destination-id"

    .line 242
    .line 243
    const-string v9, "nav-entry-state:id"

    .line 244
    .line 245
    if-nez v1, :cond_9

    .line 246
    .line 247
    if-nez v5, :cond_6

    .line 248
    .line 249
    new-array v1, v11, [Lkotlin/Pair;

    .line 250
    .line 251
    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, [Lkotlin/Pair;

    .line 256
    .line 257
    invoke-static {v1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    move-object v5, v1

    .line 262
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-eqz v10, :cond_8

    .line 276
    .line 277
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    check-cast v10, Landroidx/navigation/NavBackStackEntry;

    .line 282
    .line 283
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    iget-object v12, v10, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 287
    .line 288
    iget-object v12, v12, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 289
    .line 290
    iget v12, v12, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 291
    .line 292
    iget-object v13, v10, Landroidx/navigation/NavBackStackEntry;->id:Ljava/lang/String;

    .line 293
    .line 294
    iget-object v10, v10, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 295
    .line 296
    invoke-virtual {v10}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 297
    .line 298
    .line 299
    move-result-object v14

    .line 300
    new-array v15, v11, [Lkotlin/Pair;

    .line 301
    .line 302
    invoke-static {v15, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v15

    .line 306
    check-cast v15, [Lkotlin/Pair;

    .line 307
    .line 308
    invoke-static {v15}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 309
    .line 310
    .line 311
    move-result-object v15

    .line 312
    iget-object v10, v10, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryController:Lcoil3/svg/internal/AndroidSvg;

    .line 313
    .line 314
    invoke-virtual {v10, v15}, Lcoil3/svg/internal/AndroidSvg;->performSave(Landroid/os/Bundle;)V

    .line 315
    .line 316
    .line 317
    new-array v10, v11, [Lkotlin/Pair;

    .line 318
    .line 319
    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    check-cast v10, [Lkotlin/Pair;

    .line 324
    .line 325
    invoke-static {v10}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 326
    .line 327
    .line 328
    move-result-object v10

    .line 329
    invoke-virtual {v10, v9, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v10, v8, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 333
    .line 334
    .line 335
    if-nez v14, :cond_7

    .line 336
    .line 337
    new-array v12, v11, [Lkotlin/Pair;

    .line 338
    .line 339
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v12

    .line 343
    check-cast v12, [Lkotlin/Pair;

    .line 344
    .line 345
    invoke-static {v12}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 346
    .line 347
    .line 348
    move-result-object v14

    .line 349
    :cond_7
    invoke-virtual {v10, v7, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v10, v6, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_8
    const-string v3, "android-support-nav:controller:backStack"

    .line 360
    .line 361
    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 362
    .line 363
    .line 364
    :cond_9
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_d

    .line 369
    .line 370
    if-nez v5, :cond_a

    .line 371
    .line 372
    new-array v1, v11, [Lkotlin/Pair;

    .line 373
    .line 374
    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    check-cast v1, [Lkotlin/Pair;

    .line 379
    .line 380
    invoke-static {v1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    move-object v5, v1

    .line 385
    :cond_a
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    new-array v1, v1, [I

    .line 390
    .line 391
    new-instance v3, Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 397
    .line 398
    .line 399
    move-result-object v4

    .line 400
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    move v10, v11

    .line 405
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 406
    .line 407
    .line 408
    move-result v12

    .line 409
    if-eqz v12, :cond_c

    .line 410
    .line 411
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v12

    .line 415
    check-cast v12, Ljava/util/Map$Entry;

    .line 416
    .line 417
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v13

    .line 421
    check-cast v13, Ljava/lang/Number;

    .line 422
    .line 423
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result v13

    .line 427
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v12

    .line 431
    check-cast v12, Ljava/lang/String;

    .line 432
    .line 433
    add-int/lit8 v14, v10, 0x1

    .line 434
    .line 435
    aput v13, v1, v10

    .line 436
    .line 437
    if-nez v12, :cond_b

    .line 438
    .line 439
    const-string v12, ""

    .line 440
    .line 441
    :cond_b
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move v10, v14

    .line 445
    goto :goto_5

    .line 446
    :cond_c
    const-string v4, "android-support-nav:controller:backStackDestIds"

    .line 447
    .line 448
    invoke-virtual {v5, v4, v1}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 449
    .line 450
    .line 451
    const-string v1, "android-support-nav:controller:backStackIds"

    .line 452
    .line 453
    invoke-static {v5, v1, v3}, Landroidx/work/OperationKt;->putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 454
    .line 455
    .line 456
    :cond_d
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_12

    .line 461
    .line 462
    if-nez v5, :cond_e

    .line 463
    .line 464
    new-array v1, v11, [Lkotlin/Pair;

    .line 465
    .line 466
    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    check-cast v1, [Lkotlin/Pair;

    .line 471
    .line 472
    invoke-static {v1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    move-object v5, v1

    .line 477
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    if-eqz v3, :cond_11

    .line 495
    .line 496
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    check-cast v3, Ljava/util/Map$Entry;

    .line 501
    .line 502
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    check-cast v4, Ljava/lang/String;

    .line 507
    .line 508
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    check-cast v3, Lkotlin/collections/ArrayDeque;

    .line 513
    .line 514
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    new-instance v10, Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 527
    .line 528
    .line 529
    move-result v12

    .line 530
    if-eqz v12, :cond_10

    .line 531
    .line 532
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v12

    .line 536
    check-cast v12, Landroidx/navigation/NavBackStackEntryState;

    .line 537
    .line 538
    iget-object v12, v12, Landroidx/navigation/NavBackStackEntryState;->impl:Lkotlinx/coroutines/flow/SharingConfig;

    .line 539
    .line 540
    new-array v13, v11, [Lkotlin/Pair;

    .line 541
    .line 542
    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v13

    .line 546
    check-cast v13, [Lkotlin/Pair;

    .line 547
    .line 548
    invoke-static {v13}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 549
    .line 550
    .line 551
    move-result-object v13

    .line 552
    iget-object v14, v12, Lkotlinx/coroutines/flow/SharingConfig;->upstream:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v14, Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v13, v9, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    iget v14, v12, Lkotlinx/coroutines/flow/SharingConfig;->extraBufferCapacity:I

    .line 560
    .line 561
    invoke-virtual {v13, v8, v14}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 562
    .line 563
    .line 564
    iget-object v14, v12, Lkotlinx/coroutines/flow/SharingConfig;->onBufferOverflow:Ljava/lang/Object;

    .line 565
    .line 566
    check-cast v14, Landroid/os/Bundle;

    .line 567
    .line 568
    if-nez v14, :cond_f

    .line 569
    .line 570
    new-array v14, v11, [Lkotlin/Pair;

    .line 571
    .line 572
    invoke-static {v14, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v14

    .line 576
    check-cast v14, [Lkotlin/Pair;

    .line 577
    .line 578
    invoke-static {v14}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 579
    .line 580
    .line 581
    move-result-object v14

    .line 582
    :cond_f
    invoke-virtual {v13, v7, v14}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 583
    .line 584
    .line 585
    iget-object v12, v12, Lkotlinx/coroutines/flow/SharingConfig;->context:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v12, Landroid/os/Bundle;

    .line 588
    .line 589
    invoke-virtual {v13, v6, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    goto :goto_7

    .line 596
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    const-string v12, "android-support-nav:controller:backStackStates:"

    .line 599
    .line 600
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-virtual {v5, v3, v10}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 611
    .line 612
    .line 613
    goto :goto_6

    .line 614
    :cond_11
    const-string v2, "android-support-nav:controller:backStackStates"

    .line 615
    .line 616
    invoke-static {v5, v2, v1}, Landroidx/work/OperationKt;->putStringList-impl(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    .line 617
    .line 618
    .line 619
    :cond_12
    iget-boolean v1, v0, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 620
    .line 621
    if-eqz v1, :cond_14

    .line 622
    .line 623
    if-nez v5, :cond_13

    .line 624
    .line 625
    new-array v1, v11, [Lkotlin/Pair;

    .line 626
    .line 627
    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    check-cast v1, [Lkotlin/Pair;

    .line 632
    .line 633
    invoke-static {v1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    move-object v5, v1

    .line 638
    :cond_13
    const-string v1, "android-support-nav:controller:deepLinkHandled"

    .line 639
    .line 640
    iget-boolean v0, v0, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 641
    .line 642
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    .line 644
    .line 645
    :cond_14
    return-object v5

    .line 646
    :pswitch_2
    move-object/from16 v0, p1

    .line 647
    .line 648
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 649
    .line 650
    move-object/from16 v0, p2

    .line 651
    .line 652
    check-cast v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 653
    .line 654
    iget v0, v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->value:I

    .line 655
    .line 656
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    return-object v0

    .line 661
    :pswitch_3
    move-object/from16 v0, p1

    .line 662
    .line 663
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 664
    .line 665
    move-object/from16 v1, p2

    .line 666
    .line 667
    check-cast v1, Landroidx/compose/ui/text/style/TextMotion;

    .line 668
    .line 669
    iget v2, v1, Landroidx/compose/ui/text/style/TextMotion;->linearity:I

    .line 670
    .line 671
    new-instance v3, Landroidx/compose/ui/text/style/TextMotion$Linearity;

    .line 672
    .line 673
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/TextMotion$Linearity;-><init>(I)V

    .line 674
    .line 675
    .line 676
    sget-object v2, Landroidx/compose/ui/text/ParagraphKt;->TextMotionLinearitySaver:Landroidx/cardview/widget/CardView$1;

    .line 677
    .line 678
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    iget-boolean v1, v1, Landroidx/compose/ui/text/style/TextMotion;->subpixelTextPositioning:Z

    .line 683
    .line 684
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    new-array v2, v9, [Ljava/lang/Object;

    .line 689
    .line 690
    aput-object v0, v2, v11

    .line 691
    .line 692
    aput-object v1, v2, v10

    .line 693
    .line 694
    invoke-static {v2}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    return-object v0

    .line 699
    :pswitch_4
    move-object/from16 v0, p1

    .line 700
    .line 701
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 702
    .line 703
    move-object/from16 v0, p2

    .line 704
    .line 705
    check-cast v0, Landroidx/compose/ui/text/style/LineBreak;

    .line 706
    .line 707
    iget v0, v0, Landroidx/compose/ui/text/style/LineBreak;->mask:I

    .line 708
    .line 709
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    return-object v0

    .line 714
    :pswitch_5
    move-object/from16 v0, p1

    .line 715
    .line 716
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 717
    .line 718
    move-object/from16 v0, p2

    .line 719
    .line 720
    check-cast v0, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 721
    .line 722
    iget v0, v0, Landroidx/compose/ui/text/EmojiSupportMatch;->value:I

    .line 723
    .line 724
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    return-object v0

    .line 729
    :pswitch_6
    move-object/from16 v0, p1

    .line 730
    .line 731
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 732
    .line 733
    move-object/from16 v1, p2

    .line 734
    .line 735
    check-cast v1, Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 736
    .line 737
    iget-boolean v2, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->includeFontPadding:Z

    .line 738
    .line 739
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->AnnotationRangeListSaver:Landroidx/cardview/widget/CardView$1;

    .line 744
    .line 745
    iget v1, v1, Landroidx/compose/ui/text/PlatformParagraphStyle;->emojiSupportMatch:I

    .line 746
    .line 747
    new-instance v3, Landroidx/compose/ui/text/EmojiSupportMatch;

    .line 748
    .line 749
    invoke-direct {v3, v1}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    .line 750
    .line 751
    .line 752
    sget-object v1, Landroidx/compose/ui/text/ParagraphKt;->emojiSupportMatchSaver:Landroidx/cardview/widget/CardView$1;

    .line 753
    .line 754
    invoke-static {v3, v1, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    new-array v1, v9, [Ljava/lang/Object;

    .line 759
    .line 760
    aput-object v2, v1, v11

    .line 761
    .line 762
    aput-object v0, v1, v10

    .line 763
    .line 764
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    return-object v0

    .line 769
    :pswitch_7
    move-object/from16 v0, p1

    .line 770
    .line 771
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 772
    .line 773
    move-object/from16 v1, p2

    .line 774
    .line 775
    check-cast v1, Landroidx/compose/ui/text/TextLinkStyles;

    .line 776
    .line 777
    iget-object v2, v1, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 778
    .line 779
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 780
    .line 781
    invoke-static {v2, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    iget-object v4, v1, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 786
    .line 787
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    iget-object v5, v1, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 792
    .line 793
    invoke-static {v5, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    iget-object v1, v1, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 798
    .line 799
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    new-array v1, v7, [Ljava/lang/Object;

    .line 804
    .line 805
    aput-object v2, v1, v11

    .line 806
    .line 807
    aput-object v4, v1, v10

    .line 808
    .line 809
    aput-object v5, v1, v9

    .line 810
    .line 811
    aput-object v0, v1, v8

    .line 812
    .line 813
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    return-object v0

    .line 818
    :pswitch_8
    move-object/from16 v0, p1

    .line 819
    .line 820
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 821
    .line 822
    move-object/from16 v5, p2

    .line 823
    .line 824
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    .line 825
    .line 826
    iget-object v12, v5, Landroidx/compose/ui/text/SpanStyle;->textForegroundStyle:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 827
    .line 828
    invoke-interface {v12}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    .line 829
    .line 830
    .line 831
    move-result-wide v12

    .line 832
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    .line 833
    .line 834
    invoke-direct {v14, v12, v13}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 835
    .line 836
    .line 837
    sget-object v12, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 838
    .line 839
    invoke-static {v14, v12, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 840
    .line 841
    .line 842
    move-result-object v13

    .line 843
    iget-wide v14, v5, Landroidx/compose/ui/text/SpanStyle;->fontSize:J

    .line 844
    .line 845
    const/16 p0, 0x8

    .line 846
    .line 847
    new-instance v2, Landroidx/compose/ui/unit/TextUnit;

    .line 848
    .line 849
    invoke-direct {v2, v14, v15}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 850
    .line 851
    .line 852
    sget-object v14, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 853
    .line 854
    invoke-static {v2, v14, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v2

    .line 858
    iget-object v15, v5, Landroidx/compose/ui/text/SpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 859
    .line 860
    sget-object v16, Landroidx/compose/ui/text/font/FontWeight;->W500:Landroidx/compose/ui/text/font/FontWeight;

    .line 861
    .line 862
    const/16 v16, 0x7

    .line 863
    .line 864
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->FontWeightSaver:Landroidx/cardview/widget/CardView$1;

    .line 865
    .line 866
    invoke-static {v15, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v3

    .line 870
    iget-object v15, v5, Landroidx/compose/ui/text/SpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 871
    .line 872
    const/16 v17, 0x6

    .line 873
    .line 874
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->FontStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 875
    .line 876
    invoke-static {v15, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    iget-object v15, v5, Landroidx/compose/ui/text/SpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 881
    .line 882
    move/from16 v18, v7

    .line 883
    .line 884
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->FontSynthesisSaver:Landroidx/cardview/widget/CardView$1;

    .line 885
    .line 886
    invoke-static {v15, v7, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v7

    .line 890
    const/4 v15, -0x1

    .line 891
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 892
    .line 893
    .line 894
    move-result-object v15

    .line 895
    move/from16 v19, v10

    .line 896
    .line 897
    iget-object v10, v5, Landroidx/compose/ui/text/SpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 898
    .line 899
    move/from16 v20, v9

    .line 900
    .line 901
    move-object/from16 p1, v10

    .line 902
    .line 903
    iget-wide v9, v5, Landroidx/compose/ui/text/SpanStyle;->letterSpacing:J

    .line 904
    .line 905
    move/from16 v21, v11

    .line 906
    .line 907
    new-instance v11, Landroidx/compose/ui/unit/TextUnit;

    .line 908
    .line 909
    invoke-direct {v11, v9, v10}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 910
    .line 911
    .line 912
    invoke-static {v11, v14, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v9

    .line 916
    iget-object v10, v5, Landroidx/compose/ui/text/SpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 917
    .line 918
    sget-object v11, Landroidx/compose/ui/text/SaversKt;->BaselineShiftSaver:Landroidx/cardview/widget/CardView$1;

    .line 919
    .line 920
    invoke-static {v10, v11, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 921
    .line 922
    .line 923
    move-result-object v10

    .line 924
    iget-object v11, v5, Landroidx/compose/ui/text/SpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 925
    .line 926
    sget-object v14, Landroidx/compose/ui/text/SaversKt;->TextGeometricTransformSaver:Landroidx/cardview/widget/CardView$1;

    .line 927
    .line 928
    invoke-static {v11, v14, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 929
    .line 930
    .line 931
    move-result-object v11

    .line 932
    iget-object v14, v5, Landroidx/compose/ui/text/SpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 933
    .line 934
    sget-object v22, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    .line 935
    .line 936
    const/16 v22, 0x5

    .line 937
    .line 938
    sget-object v6, Landroidx/compose/ui/text/SaversKt;->LocaleListSaver:Landroidx/cardview/widget/CardView$1;

    .line 939
    .line 940
    invoke-static {v14, v6, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v6

    .line 944
    move v14, v8

    .line 945
    move-object/from16 p2, v9

    .line 946
    .line 947
    iget-wide v8, v5, Landroidx/compose/ui/text/SpanStyle;->background:J

    .line 948
    .line 949
    move/from16 v23, v14

    .line 950
    .line 951
    new-instance v14, Landroidx/compose/ui/graphics/Color;

    .line 952
    .line 953
    invoke-direct {v14, v8, v9}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 954
    .line 955
    .line 956
    invoke-static {v14, v12, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 957
    .line 958
    .line 959
    move-result-object v8

    .line 960
    iget-object v9, v5, Landroidx/compose/ui/text/SpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 961
    .line 962
    sget-object v12, Landroidx/compose/ui/text/SaversKt;->TextDecorationSaver:Landroidx/cardview/widget/CardView$1;

    .line 963
    .line 964
    invoke-static {v9, v12, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 965
    .line 966
    .line 967
    move-result-object v9

    .line 968
    iget-object v5, v5, Landroidx/compose/ui/text/SpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 969
    .line 970
    sget-object v12, Landroidx/compose/ui/graphics/Shadow;->None:Landroidx/compose/ui/graphics/Shadow;

    .line 971
    .line 972
    sget-object v12, Landroidx/compose/ui/text/SaversKt;->ShadowSaver:Landroidx/cardview/widget/CardView$1;

    .line 973
    .line 974
    invoke-static {v5, v12, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 975
    .line 976
    .line 977
    move-result-object v0

    .line 978
    const/16 v5, 0xe

    .line 979
    .line 980
    new-array v5, v5, [Ljava/lang/Object;

    .line 981
    .line 982
    aput-object v13, v5, v21

    .line 983
    .line 984
    aput-object v2, v5, v19

    .line 985
    .line 986
    aput-object v3, v5, v20

    .line 987
    .line 988
    aput-object v4, v5, v23

    .line 989
    .line 990
    aput-object v7, v5, v18

    .line 991
    .line 992
    aput-object v15, v5, v22

    .line 993
    .line 994
    aput-object p1, v5, v17

    .line 995
    .line 996
    aput-object p2, v5, v16

    .line 997
    .line 998
    aput-object v10, v5, p0

    .line 999
    .line 1000
    aput-object v11, v5, v1

    .line 1001
    .line 1002
    const/16 v1, 0xa

    .line 1003
    .line 1004
    aput-object v6, v5, v1

    .line 1005
    .line 1006
    const/16 v1, 0xb

    .line 1007
    .line 1008
    aput-object v8, v5, v1

    .line 1009
    .line 1010
    const/16 v1, 0xc

    .line 1011
    .line 1012
    aput-object v9, v5, v1

    .line 1013
    .line 1014
    const/16 v1, 0xd

    .line 1015
    .line 1016
    aput-object v0, v5, v1

    .line 1017
    .line 1018
    invoke-static {v5}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    return-object v0

    .line 1023
    :pswitch_9
    move-object/from16 v0, p1

    .line 1024
    .line 1025
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1026
    .line 1027
    move-object/from16 v0, p2

    .line 1028
    .line 1029
    check-cast v0, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1030
    .line 1031
    iget-object v0, v0, Landroidx/compose/ui/text/UrlAnnotation;->url:Ljava/lang/String;

    .line 1032
    .line 1033
    return-object v0

    .line 1034
    :pswitch_a
    move/from16 v18, v7

    .line 1035
    .line 1036
    move/from16 v23, v8

    .line 1037
    .line 1038
    move/from16 v20, v9

    .line 1039
    .line 1040
    move/from16 v19, v10

    .line 1041
    .line 1042
    move/from16 v21, v11

    .line 1043
    .line 1044
    const/16 p0, 0x8

    .line 1045
    .line 1046
    const/16 v16, 0x7

    .line 1047
    .line 1048
    const/16 v17, 0x6

    .line 1049
    .line 1050
    const/16 v22, 0x5

    .line 1051
    .line 1052
    move-object/from16 v0, p1

    .line 1053
    .line 1054
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1055
    .line 1056
    move-object/from16 v2, p2

    .line 1057
    .line 1058
    check-cast v2, Landroidx/compose/ui/text/ParagraphStyle;

    .line 1059
    .line 1060
    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 1061
    .line 1062
    new-instance v4, Landroidx/compose/ui/text/style/TextAlign;

    .line 1063
    .line 1064
    invoke-direct {v4, v3}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    .line 1065
    .line 1066
    .line 1067
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextAlignSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1068
    .line 1069
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v3

    .line 1073
    iget v4, v2, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 1074
    .line 1075
    new-instance v5, Landroidx/compose/ui/text/style/TextDirection;

    .line 1076
    .line 1077
    invoke-direct {v5, v4}, Landroidx/compose/ui/text/style/TextDirection;-><init>(I)V

    .line 1078
    .line 1079
    .line 1080
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->TextDirectionSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1081
    .line 1082
    invoke-static {v5, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v4

    .line 1086
    iget-wide v5, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 1087
    .line 1088
    new-instance v7, Landroidx/compose/ui/unit/TextUnit;

    .line 1089
    .line 1090
    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/unit/TextUnit;-><init>(J)V

    .line 1091
    .line 1092
    .line 1093
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->TextUnitSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1094
    .line 1095
    invoke-static {v7, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v5

    .line 1099
    iget-object v6, v2, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 1100
    .line 1101
    sget-object v7, Landroidx/compose/ui/text/style/TextIndent;->None:Landroidx/compose/ui/text/style/TextIndent;

    .line 1102
    .line 1103
    sget-object v7, Landroidx/compose/ui/text/SaversKt;->TextIndentSaver:Landroidx/cardview/widget/CardView$1;

    .line 1104
    .line 1105
    invoke-static {v6, v7, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v6

    .line 1109
    iget-object v7, v2, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 1110
    .line 1111
    sget-object v8, Landroidx/compose/ui/text/ParagraphKt;->PlatformParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1112
    .line 1113
    invoke-static {v7, v8, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v7

    .line 1117
    iget-object v8, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1118
    .line 1119
    sget-object v9, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1120
    .line 1121
    sget-object v9, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1122
    .line 1123
    invoke-static {v8, v9, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v8

    .line 1127
    iget v9, v2, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 1128
    .line 1129
    new-instance v10, Landroidx/compose/ui/text/style/LineBreak;

    .line 1130
    .line 1131
    invoke-direct {v10, v9}, Landroidx/compose/ui/text/style/LineBreak;-><init>(I)V

    .line 1132
    .line 1133
    .line 1134
    sget-object v9, Landroidx/compose/ui/text/ParagraphKt;->LineBreakSaver:Landroidx/cardview/widget/CardView$1;

    .line 1135
    .line 1136
    invoke-static {v10, v9, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v9

    .line 1140
    iget v10, v2, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 1141
    .line 1142
    new-instance v11, Landroidx/compose/ui/text/style/Hyphens;

    .line 1143
    .line 1144
    invoke-direct {v11, v10}, Landroidx/compose/ui/text/style/Hyphens;-><init>(I)V

    .line 1145
    .line 1146
    .line 1147
    sget-object v10, Landroidx/compose/ui/text/SaversKt;->HyphensSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1148
    .line 1149
    invoke-static {v11, v10, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v10

    .line 1153
    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 1154
    .line 1155
    sget-object v11, Landroidx/compose/ui/text/ParagraphKt;->TextMotionSaver:Landroidx/cardview/widget/CardView$1;

    .line 1156
    .line 1157
    invoke-static {v2, v11, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v0

    .line 1161
    new-array v1, v1, [Ljava/lang/Object;

    .line 1162
    .line 1163
    aput-object v3, v1, v21

    .line 1164
    .line 1165
    aput-object v4, v1, v19

    .line 1166
    .line 1167
    aput-object v5, v1, v20

    .line 1168
    .line 1169
    aput-object v6, v1, v23

    .line 1170
    .line 1171
    aput-object v7, v1, v18

    .line 1172
    .line 1173
    aput-object v8, v1, v22

    .line 1174
    .line 1175
    aput-object v9, v1, v17

    .line 1176
    .line 1177
    aput-object v10, v1, v16

    .line 1178
    .line 1179
    aput-object v0, v1, p0

    .line 1180
    .line 1181
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v0

    .line 1185
    return-object v0

    .line 1186
    :pswitch_b
    move-object/from16 v0, p1

    .line 1187
    .line 1188
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1189
    .line 1190
    move-object/from16 v0, p2

    .line 1191
    .line 1192
    check-cast v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 1193
    .line 1194
    iget-object v0, v0, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->verbatim:Ljava/lang/String;

    .line 1195
    .line 1196
    return-object v0

    .line 1197
    :pswitch_c
    move-object/from16 v0, p1

    .line 1198
    .line 1199
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1200
    .line 1201
    move-object/from16 v0, p2

    .line 1202
    .line 1203
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 1204
    .line 1205
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->value:I

    .line 1206
    .line 1207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    return-object v0

    .line 1212
    :pswitch_d
    move-object/from16 v0, p1

    .line 1213
    .line 1214
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1215
    .line 1216
    move-object/from16 v0, p2

    .line 1217
    .line 1218
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 1219
    .line 1220
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->value:I

    .line 1221
    .line 1222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v0

    .line 1226
    return-object v0

    .line 1227
    :pswitch_e
    move-object/from16 v0, p1

    .line 1228
    .line 1229
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1230
    .line 1231
    move-object/from16 v0, p2

    .line 1232
    .line 1233
    check-cast v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 1234
    .line 1235
    iget v0, v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topRatio:F

    .line 1236
    .line 1237
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v0

    .line 1241
    return-object v0

    .line 1242
    :pswitch_f
    move/from16 v23, v8

    .line 1243
    .line 1244
    move/from16 v20, v9

    .line 1245
    .line 1246
    move/from16 v19, v10

    .line 1247
    .line 1248
    move/from16 v21, v11

    .line 1249
    .line 1250
    move-object/from16 v0, p1

    .line 1251
    .line 1252
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1253
    .line 1254
    move-object/from16 v1, p2

    .line 1255
    .line 1256
    check-cast v1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 1257
    .line 1258
    iget v2, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:F

    .line 1259
    .line 1260
    new-instance v3, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 1261
    .line 1262
    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(F)V

    .line 1263
    .line 1264
    .line 1265
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleAlignmentSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1266
    .line 1267
    invoke-static {v3, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v2

    .line 1271
    iget v3, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    .line 1272
    .line 1273
    new-instance v4, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;

    .line 1274
    .line 1275
    invoke-direct {v4, v3}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;-><init>(I)V

    .line 1276
    .line 1277
    .line 1278
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleTrimSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1279
    .line 1280
    invoke-static {v4, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v3

    .line 1284
    iget v1, v1, Landroidx/compose/ui/text/style/LineHeightStyle;->mode:I

    .line 1285
    .line 1286
    new-instance v4, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;

    .line 1287
    .line 1288
    invoke-direct {v4, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;-><init>(I)V

    .line 1289
    .line 1290
    .line 1291
    sget-object v1, Landroidx/compose/ui/text/SaversKt;->LineHeightStyleModeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1292
    .line 1293
    invoke-static {v4, v1, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v0

    .line 1297
    move/from16 v14, v23

    .line 1298
    .line 1299
    new-array v1, v14, [Ljava/lang/Object;

    .line 1300
    .line 1301
    aput-object v2, v1, v21

    .line 1302
    .line 1303
    aput-object v3, v1, v19

    .line 1304
    .line 1305
    aput-object v0, v1, v20

    .line 1306
    .line 1307
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v0

    .line 1311
    return-object v0

    .line 1312
    :pswitch_10
    move-object/from16 v0, p1

    .line 1313
    .line 1314
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1315
    .line 1316
    move-object/from16 v0, p2

    .line 1317
    .line 1318
    check-cast v0, Landroidx/compose/ui/text/intl/Locale;

    .line 1319
    .line 1320
    iget-object v0, v0, Landroidx/compose/ui/text/intl/Locale;->platformLocale:Ljava/util/Locale;

    .line 1321
    .line 1322
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v0

    .line 1326
    return-object v0

    .line 1327
    :pswitch_11
    move/from16 v21, v11

    .line 1328
    .line 1329
    move-object/from16 v0, p1

    .line 1330
    .line 1331
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1332
    .line 1333
    move-object/from16 v1, p2

    .line 1334
    .line 1335
    check-cast v1, Landroidx/compose/ui/text/intl/LocaleList;

    .line 1336
    .line 1337
    iget-object v1, v1, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    .line 1338
    .line 1339
    new-instance v2, Ljava/util/ArrayList;

    .line 1340
    .line 1341
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1342
    .line 1343
    .line 1344
    move-result v3

    .line 1345
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1346
    .line 1347
    .line 1348
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1349
    .line 1350
    .line 1351
    move-result v3

    .line 1352
    :goto_8
    if-ge v11, v3, :cond_15

    .line 1353
    .line 1354
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v4

    .line 1358
    check-cast v4, Landroidx/compose/ui/text/intl/Locale;

    .line 1359
    .line 1360
    sget-object v5, Landroidx/compose/ui/text/SaversKt;->LocaleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1361
    .line 1362
    invoke-static {v4, v5, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v4

    .line 1366
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    .line 1368
    .line 1369
    add-int/lit8 v11, v11, 0x1

    .line 1370
    .line 1371
    goto :goto_8

    .line 1372
    :cond_15
    return-object v2

    .line 1373
    :pswitch_12
    move/from16 v18, v7

    .line 1374
    .line 1375
    move/from16 v20, v9

    .line 1376
    .line 1377
    move/from16 v19, v10

    .line 1378
    .line 1379
    move/from16 v21, v11

    .line 1380
    .line 1381
    const/16 v22, 0x5

    .line 1382
    .line 1383
    move-object/from16 v0, p1

    .line 1384
    .line 1385
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1386
    .line 1387
    move-object/from16 v1, p2

    .line 1388
    .line 1389
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1390
    .line 1391
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1392
    .line 1393
    instance-of v3, v2, Landroidx/compose/ui/text/ParagraphStyle;

    .line 1394
    .line 1395
    if-eqz v3, :cond_16

    .line 1396
    .line 1397
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Paragraph:Landroidx/compose/ui/text/AnnotationType;

    .line 1398
    .line 1399
    goto :goto_9

    .line 1400
    :cond_16
    instance-of v3, v2, Landroidx/compose/ui/text/SpanStyle;

    .line 1401
    .line 1402
    if-eqz v3, :cond_17

    .line 1403
    .line 1404
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Span:Landroidx/compose/ui/text/AnnotationType;

    .line 1405
    .line 1406
    goto :goto_9

    .line 1407
    :cond_17
    instance-of v3, v2, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 1408
    .line 1409
    if-eqz v3, :cond_18

    .line 1410
    .line 1411
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->VerbatimTts:Landroidx/compose/ui/text/AnnotationType;

    .line 1412
    .line 1413
    goto :goto_9

    .line 1414
    :cond_18
    instance-of v3, v2, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1415
    .line 1416
    if-eqz v3, :cond_19

    .line 1417
    .line 1418
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Url:Landroidx/compose/ui/text/AnnotationType;

    .line 1419
    .line 1420
    goto :goto_9

    .line 1421
    :cond_19
    instance-of v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1422
    .line 1423
    if-eqz v3, :cond_1a

    .line 1424
    .line 1425
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Link:Landroidx/compose/ui/text/AnnotationType;

    .line 1426
    .line 1427
    goto :goto_9

    .line 1428
    :cond_1a
    instance-of v3, v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1429
    .line 1430
    if-eqz v3, :cond_1b

    .line 1431
    .line 1432
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->Clickable:Landroidx/compose/ui/text/AnnotationType;

    .line 1433
    .line 1434
    goto :goto_9

    .line 1435
    :cond_1b
    instance-of v3, v2, Landroidx/compose/ui/text/StringAnnotation;

    .line 1436
    .line 1437
    if-eqz v3, :cond_1c

    .line 1438
    .line 1439
    sget-object v3, Landroidx/compose/ui/text/AnnotationType;->String:Landroidx/compose/ui/text/AnnotationType;

    .line 1440
    .line 1441
    :goto_9
    sget-object v4, Landroidx/compose/ui/text/SaversKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 1442
    .line 1443
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 1444
    .line 1445
    .line 1446
    move-result v6

    .line 1447
    aget v4, v4, v6

    .line 1448
    .line 1449
    packed-switch v4, :pswitch_data_1

    .line 1450
    .line 1451
    .line 1452
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1453
    .line 1454
    .line 1455
    goto/16 :goto_b

    .line 1456
    .line 1457
    :pswitch_13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1458
    .line 1459
    .line 1460
    check-cast v2, Landroidx/compose/ui/text/StringAnnotation;

    .line 1461
    .line 1462
    iget-object v0, v2, Landroidx/compose/ui/text/StringAnnotation;->value:Ljava/lang/String;

    .line 1463
    .line 1464
    goto :goto_a

    .line 1465
    :pswitch_14
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1466
    .line 1467
    .line 1468
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1469
    .line 1470
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->ClickableSaver:Landroidx/cardview/widget/CardView$1;

    .line 1471
    .line 1472
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    goto :goto_a

    .line 1477
    :pswitch_15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1478
    .line 1479
    .line 1480
    check-cast v2, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 1481
    .line 1482
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->LinkSaver:Landroidx/cardview/widget/CardView$1;

    .line 1483
    .line 1484
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v0

    .line 1488
    goto :goto_a

    .line 1489
    :pswitch_16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1490
    .line 1491
    .line 1492
    check-cast v2, Landroidx/compose/ui/text/UrlAnnotation;

    .line 1493
    .line 1494
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->UrlAnnotationSaver:Landroidx/cardview/widget/CardView$1;

    .line 1495
    .line 1496
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1497
    .line 1498
    .line 1499
    move-result-object v0

    .line 1500
    goto :goto_a

    .line 1501
    :pswitch_17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1502
    .line 1503
    .line 1504
    check-cast v2, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 1505
    .line 1506
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->VerbatimTtsAnnotationSaver:Landroidx/cardview/widget/CardView$1;

    .line 1507
    .line 1508
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v0

    .line 1512
    goto :goto_a

    .line 1513
    :pswitch_18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1514
    .line 1515
    .line 1516
    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    .line 1517
    .line 1518
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->SpanStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1519
    .line 1520
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v0

    .line 1524
    goto :goto_a

    .line 1525
    :pswitch_19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1526
    .line 1527
    .line 1528
    check-cast v2, Landroidx/compose/ui/text/ParagraphStyle;

    .line 1529
    .line 1530
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->ParagraphStyleSaver:Landroidx/cardview/widget/CardView$1;

    .line 1531
    .line 1532
    invoke-static {v2, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v0

    .line 1536
    :goto_a
    iget v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1537
    .line 1538
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v2

    .line 1542
    iget v4, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1543
    .line 1544
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v4

    .line 1548
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 1549
    .line 1550
    move/from16 v5, v22

    .line 1551
    .line 1552
    new-array v5, v5, [Ljava/lang/Object;

    .line 1553
    .line 1554
    aput-object v3, v5, v21

    .line 1555
    .line 1556
    aput-object v0, v5, v19

    .line 1557
    .line 1558
    aput-object v2, v5, v20

    .line 1559
    .line 1560
    const/4 v14, 0x3

    .line 1561
    aput-object v4, v5, v14

    .line 1562
    .line 1563
    aput-object v1, v5, v18

    .line 1564
    .line 1565
    invoke-static {v5}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v5

    .line 1569
    :goto_b
    return-object v5

    .line 1570
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1571
    .line 1572
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 1573
    .line 1574
    .line 1575
    throw v0

    .line 1576
    :pswitch_1a
    move/from16 v20, v9

    .line 1577
    .line 1578
    move/from16 v19, v10

    .line 1579
    .line 1580
    move/from16 v21, v11

    .line 1581
    .line 1582
    move-object/from16 v0, p1

    .line 1583
    .line 1584
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1585
    .line 1586
    move-object/from16 v0, p2

    .line 1587
    .line 1588
    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    .line 1589
    .line 1590
    if-nez v0, :cond_1d

    .line 1591
    .line 1592
    move/from16 v1, v21

    .line 1593
    .line 1594
    goto :goto_c

    .line 1595
    :cond_1d
    iget-wide v1, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1596
    .line 1597
    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 1603
    .line 1604
    .line 1605
    move-result v1

    .line 1606
    :goto_c
    if-eqz v1, :cond_1e

    .line 1607
    .line 1608
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1609
    .line 1610
    goto :goto_d

    .line 1611
    :cond_1e
    iget-wide v1, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1612
    .line 1613
    const/16 v3, 0x20

    .line 1614
    .line 1615
    shr-long/2addr v1, v3

    .line 1616
    long-to-int v1, v1

    .line 1617
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1618
    .line 1619
    .line 1620
    move-result v1

    .line 1621
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v1

    .line 1625
    iget-wide v2, v0, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1626
    .line 1627
    const-wide v4, 0xffffffffL

    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    and-long/2addr v2, v4

    .line 1633
    long-to-int v0, v2

    .line 1634
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1635
    .line 1636
    .line 1637
    move-result v0

    .line 1638
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v0

    .line 1642
    move/from16 v2, v20

    .line 1643
    .line 1644
    new-array v2, v2, [Ljava/lang/Float;

    .line 1645
    .line 1646
    aput-object v1, v2, v21

    .line 1647
    .line 1648
    aput-object v0, v2, v19

    .line 1649
    .line 1650
    invoke-static {v2}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v0

    .line 1654
    :goto_d
    return-object v0

    .line 1655
    :pswitch_1b
    move/from16 v19, v10

    .line 1656
    .line 1657
    move/from16 v21, v11

    .line 1658
    .line 1659
    move-object/from16 v0, p1

    .line 1660
    .line 1661
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1662
    .line 1663
    move-object/from16 v0, p2

    .line 1664
    .line 1665
    check-cast v0, Landroidx/compose/ui/unit/TextUnitType;

    .line 1666
    .line 1667
    iget-wide v0, v0, Landroidx/compose/ui/unit/TextUnitType;->type:J

    .line 1668
    .line 1669
    const-wide v2, 0x200000000L

    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1675
    .line 1676
    .line 1677
    move-result v2

    .line 1678
    if-eqz v2, :cond_1f

    .line 1679
    .line 1680
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v0

    .line 1684
    goto :goto_e

    .line 1685
    :cond_1f
    const-wide v2, 0x100000000L

    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    .line 1691
    .line 1692
    .line 1693
    move-result v0

    .line 1694
    if-eqz v0, :cond_20

    .line 1695
    .line 1696
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v0

    .line 1700
    goto :goto_e

    .line 1701
    :cond_20
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1702
    .line 1703
    :goto_e
    return-object v0

    .line 1704
    :pswitch_1c
    move/from16 v19, v10

    .line 1705
    .line 1706
    move/from16 v21, v11

    .line 1707
    .line 1708
    move-object/from16 v0, p1

    .line 1709
    .line 1710
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1711
    .line 1712
    move-object/from16 v1, p2

    .line 1713
    .line 1714
    check-cast v1, Landroidx/compose/ui/unit/TextUnit;

    .line 1715
    .line 1716
    sget-wide v2, Landroidx/compose/ui/unit/TextUnit;->Unspecified:J

    .line 1717
    .line 1718
    if-nez v1, :cond_21

    .line 1719
    .line 1720
    move/from16 v2, v21

    .line 1721
    .line 1722
    goto :goto_f

    .line 1723
    :cond_21
    iget-wide v4, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 1724
    .line 1725
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/unit/TextUnit;->equals-impl0(JJ)Z

    .line 1726
    .line 1727
    .line 1728
    move-result v2

    .line 1729
    :goto_f
    if-eqz v2, :cond_22

    .line 1730
    .line 1731
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1732
    .line 1733
    goto :goto_10

    .line 1734
    :cond_22
    iget-wide v2, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 1735
    .line 1736
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    .line 1737
    .line 1738
    .line 1739
    move-result v2

    .line 1740
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v2

    .line 1744
    iget-wide v3, v1, Landroidx/compose/ui/unit/TextUnit;->packedValue:J

    .line 1745
    .line 1746
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    .line 1747
    .line 1748
    .line 1749
    move-result-wide v3

    .line 1750
    new-instance v1, Landroidx/compose/ui/unit/TextUnitType;

    .line 1751
    .line 1752
    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;-><init>(J)V

    .line 1753
    .line 1754
    .line 1755
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->TextUnitTypeSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1756
    .line 1757
    invoke-static {v1, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1758
    .line 1759
    .line 1760
    move-result-object v0

    .line 1761
    const/4 v1, 0x2

    .line 1762
    new-array v1, v1, [Ljava/lang/Object;

    .line 1763
    .line 1764
    aput-object v2, v1, v21

    .line 1765
    .line 1766
    aput-object v0, v1, v19

    .line 1767
    .line 1768
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v0

    .line 1772
    :goto_10
    return-object v0

    .line 1773
    :pswitch_1d
    move-object/from16 v0, p1

    .line 1774
    .line 1775
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1776
    .line 1777
    move-object/from16 v0, p2

    .line 1778
    .line 1779
    check-cast v0, Landroidx/compose/ui/text/font/FontSynthesis;

    .line 1780
    .line 1781
    iget v0, v0, Landroidx/compose/ui/text/font/FontSynthesis;->value:I

    .line 1782
    .line 1783
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v0

    .line 1787
    return-object v0

    .line 1788
    :pswitch_1e
    move-object/from16 v0, p1

    .line 1789
    .line 1790
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1791
    .line 1792
    move-object/from16 v0, p2

    .line 1793
    .line 1794
    check-cast v0, Landroidx/compose/ui/text/font/FontStyle;

    .line 1795
    .line 1796
    iget v0, v0, Landroidx/compose/ui/text/font/FontStyle;->value:I

    .line 1797
    .line 1798
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v0

    .line 1802
    return-object v0

    .line 1803
    :pswitch_1f
    move-object/from16 v0, p1

    .line 1804
    .line 1805
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1806
    .line 1807
    move-object/from16 v0, p2

    .line 1808
    .line 1809
    check-cast v0, Landroidx/compose/ui/text/style/Hyphens;

    .line 1810
    .line 1811
    iget v0, v0, Landroidx/compose/ui/text/style/Hyphens;->value:I

    .line 1812
    .line 1813
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v0

    .line 1817
    return-object v0

    .line 1818
    :pswitch_20
    move-object/from16 v0, p1

    .line 1819
    .line 1820
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1821
    .line 1822
    move-object/from16 v0, p2

    .line 1823
    .line 1824
    check-cast v0, Landroidx/compose/ui/text/style/TextDirection;

    .line 1825
    .line 1826
    iget v0, v0, Landroidx/compose/ui/text/style/TextDirection;->value:I

    .line 1827
    .line 1828
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1829
    .line 1830
    .line 1831
    move-result-object v0

    .line 1832
    return-object v0

    .line 1833
    :pswitch_21
    move-object/from16 v0, p1

    .line 1834
    .line 1835
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1836
    .line 1837
    move-object/from16 v0, p2

    .line 1838
    .line 1839
    check-cast v0, Landroidx/compose/ui/text/style/TextAlign;

    .line 1840
    .line 1841
    iget v0, v0, Landroidx/compose/ui/text/style/TextAlign;->value:I

    .line 1842
    .line 1843
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1844
    .line 1845
    .line 1846
    move-result-object v0

    .line 1847
    return-object v0

    .line 1848
    :pswitch_22
    move/from16 v19, v10

    .line 1849
    .line 1850
    move/from16 v21, v11

    .line 1851
    .line 1852
    move-object/from16 v0, p1

    .line 1853
    .line 1854
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1855
    .line 1856
    move-object/from16 v1, p2

    .line 1857
    .line 1858
    check-cast v1, Landroidx/compose/ui/graphics/Shadow;

    .line 1859
    .line 1860
    iget-wide v2, v1, Landroidx/compose/ui/graphics/Shadow;->color:J

    .line 1861
    .line 1862
    new-instance v4, Landroidx/compose/ui/graphics/Color;

    .line 1863
    .line 1864
    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 1865
    .line 1866
    .line 1867
    sget-object v2, Landroidx/compose/ui/text/SaversKt;->ColorSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1868
    .line 1869
    invoke-static {v4, v2, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v2

    .line 1873
    iget-wide v3, v1, Landroidx/compose/ui/graphics/Shadow;->offset:J

    .line 1874
    .line 1875
    new-instance v5, Landroidx/compose/ui/geometry/Offset;

    .line 1876
    .line 1877
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1878
    .line 1879
    .line 1880
    sget-object v3, Landroidx/compose/ui/text/SaversKt;->OffsetSaver:Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;

    .line 1881
    .line 1882
    invoke-static {v5, v3, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1883
    .line 1884
    .line 1885
    move-result-object v0

    .line 1886
    iget v1, v1, Landroidx/compose/ui/graphics/Shadow;->blurRadius:F

    .line 1887
    .line 1888
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1889
    .line 1890
    .line 1891
    move-result-object v1

    .line 1892
    const/4 v14, 0x3

    .line 1893
    new-array v3, v14, [Ljava/lang/Object;

    .line 1894
    .line 1895
    aput-object v2, v3, v21

    .line 1896
    .line 1897
    aput-object v0, v3, v19

    .line 1898
    .line 1899
    const/4 v2, 0x2

    .line 1900
    aput-object v1, v3, v2

    .line 1901
    .line 1902
    invoke-static {v3}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v0

    .line 1906
    return-object v0

    .line 1907
    :pswitch_23
    move v2, v9

    .line 1908
    move/from16 v19, v10

    .line 1909
    .line 1910
    move/from16 v21, v11

    .line 1911
    .line 1912
    move-object/from16 v0, p1

    .line 1913
    .line 1914
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1915
    .line 1916
    move-object/from16 v1, p2

    .line 1917
    .line 1918
    check-cast v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;

    .line 1919
    .line 1920
    iget-object v3, v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->tag:Ljava/lang/String;

    .line 1921
    .line 1922
    iget-object v1, v1, Landroidx/compose/ui/text/LinkAnnotation$Clickable;->styles:Landroidx/compose/ui/text/TextLinkStyles;

    .line 1923
    .line 1924
    sget-object v4, Landroidx/compose/ui/text/SaversKt;->TextLinkStylesSaver:Landroidx/cardview/widget/CardView$1;

    .line 1925
    .line 1926
    invoke-static {v1, v4, v0}, Landroidx/compose/ui/text/SaversKt;->save(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaveableHolder;)Ljava/lang/Object;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v0

    .line 1930
    new-array v1, v2, [Ljava/lang/Object;

    .line 1931
    .line 1932
    aput-object v3, v1, v21

    .line 1933
    .line 1934
    aput-object v0, v1, v19

    .line 1935
    .line 1936
    invoke-static {v1}, Landroidx/room/Room;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1937
    .line 1938
    .line 1939
    move-result-object v0

    .line 1940
    return-object v0

    .line 1941
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method
