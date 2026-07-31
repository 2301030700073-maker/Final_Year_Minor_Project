.class public final synthetic Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/wikipedia/settings/homefeed/HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    check-cast v1, Lorg/wikipedia/feed/personalization/homepreference/HomePreferenceType;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lorg/wikipedia/extensions/ContextKt;->getInstrument(Landroid/content/Context;)Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/4 v9, 0x0

    .line 30
    const/16 v10, 0xf2

    .line 31
    .line 32
    const-string v4, "click"

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    const-string v7, "feed_default_view_select"

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object v0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 42
    .line 43
    const v0, 0x7f12060d

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :pswitch_0
    move-object/from16 v1, p1

    .line 55
    .line 56
    check-cast v1, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-static {v0}, Lkotlin/ExceptionsKt;->createNavController$NavHostControllerKt__NavHostController_androidKt(Landroid/content/Context;)Landroidx/navigation/NavHostController;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    iget-object v2, v0, Landroidx/navigation/NavHostController;->context:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    iget-object v2, v0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 74
    .line 75
    iget-object v3, v2, Landroidx/navigation/internal/NavControllerImpl;->backStackStates:Ljava/util/LinkedHashMap;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    const/4 v5, 0x0

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    move-object/from16 p0, v4

    .line 82
    .line 83
    goto/16 :goto_7

    .line 84
    .line 85
    :cond_2
    const-string v6, "android-support-nav:controller:navigatorState"

    .line 86
    .line 87
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_4

    .line 92
    .line 93
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    if-eqz v7, :cond_3

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-static {v6}, Landroidx/work/Operation$State;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v4

    .line 104
    :cond_4
    move-object v7, v4

    .line 105
    :goto_0
    iput-object v7, v2, Landroidx/navigation/internal/NavControllerImpl;->navigatorStateToRestore:Landroid/os/Bundle;

    .line 106
    .line 107
    const-string v6, "android-support-nav:controller:backStack"

    .line 108
    .line 109
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    const-class v8, Landroid/os/Bundle;

    .line 114
    .line 115
    if-eqz v7, :cond_6

    .line 116
    .line 117
    sget-object v7, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 118
    .line 119
    invoke-virtual {v7, v8}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-static {v7}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v7

    .line 127
    invoke-static {v1, v6, v7}, Landroidx/room/Room;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    if-eqz v7, :cond_5

    .line 132
    .line 133
    new-array v6, v5, [Landroid/os/Bundle;

    .line 134
    .line 135
    invoke-interface {v7, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    check-cast v6, [Landroid/os/Bundle;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_5
    invoke-static {v6}, Landroidx/work/Operation$State;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v4

    .line 146
    :cond_6
    move-object v6, v4

    .line 147
    :goto_1
    iput-object v6, v2, Landroidx/navigation/internal/NavControllerImpl;->backStackToRestore:[Landroid/os/Bundle;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 150
    .line 151
    .line 152
    const-string v6, "android-support-nav:controller:backStackDestIds"

    .line 153
    .line 154
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_8

    .line 159
    .line 160
    const-string v7, "android-support-nav:controller:backStackIds"

    .line 161
    .line 162
    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-eqz v9, :cond_8

    .line 167
    .line 168
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    if-eqz v9, :cond_a

    .line 173
    .line 174
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    if-eqz v6, :cond_9

    .line 179
    .line 180
    array-length v7, v9

    .line 181
    move v10, v5

    .line 182
    move v11, v10

    .line 183
    :goto_2
    if-ge v10, v7, :cond_8

    .line 184
    .line 185
    aget v12, v9, v10

    .line 186
    .line 187
    add-int/lit8 v13, v11, 0x1

    .line 188
    .line 189
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    iget-object v14, v2, Landroidx/navigation/internal/NavControllerImpl;->backStackMap:Ljava/util/LinkedHashMap;

    .line 194
    .line 195
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v15

    .line 199
    move-object/from16 p0, v4

    .line 200
    .line 201
    const-string v4, ""

    .line 202
    .line 203
    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    if-nez v4, :cond_7

    .line 208
    .line 209
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Ljava/lang/String;

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_7
    move-object/from16 v4, p0

    .line 217
    .line 218
    :goto_3
    invoke-interface {v14, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    add-int/lit8 v10, v10, 0x1

    .line 222
    .line 223
    move-object/from16 v4, p0

    .line 224
    .line 225
    move v11, v13

    .line 226
    goto :goto_2

    .line 227
    :cond_8
    move-object/from16 p0, v4

    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_9
    move-object/from16 p0, v4

    .line 231
    .line 232
    invoke-static {v7}, Landroidx/work/Operation$State;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p0

    .line 236
    :cond_a
    move-object/from16 p0, v4

    .line 237
    .line 238
    invoke-static {v6}, Landroidx/work/Operation$State;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    throw p0

    .line 242
    :goto_4
    const-string v2, "android-support-nav:controller:backStackStates"

    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_f

    .line 249
    .line 250
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    if-eqz v4, :cond_e

    .line 255
    .line 256
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    :cond_b
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_f

    .line 265
    .line 266
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Ljava/lang/String;

    .line 271
    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v7, "android-support-nav:controller:backStackStates:"

    .line 275
    .line 276
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    if-eqz v6, :cond_b

    .line 291
    .line 292
    invoke-static {v7, v4}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    sget-object v7, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 297
    .line 298
    invoke-virtual {v7, v8}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    invoke-static {v7}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    invoke-static {v1, v6, v7}, Landroidx/room/Room;->getParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    if-eqz v7, :cond_d

    .line 311
    .line 312
    new-instance v6, Lkotlin/collections/ArrayDeque;

    .line 313
    .line 314
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 315
    .line 316
    .line 317
    move-result v9

    .line 318
    invoke-direct {v6, v9}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    .line 319
    .line 320
    .line 321
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v9

    .line 329
    if-eqz v9, :cond_c

    .line 330
    .line 331
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v9

    .line 335
    check-cast v9, Landroid/os/Bundle;

    .line 336
    .line 337
    new-instance v10, Landroidx/navigation/NavBackStackEntryState;

    .line 338
    .line 339
    invoke-direct {v10, v9}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroid/os/Bundle;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6, v10}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_c
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    goto :goto_5

    .line 350
    :cond_d
    invoke-static {v6}, Landroidx/work/Operation$State;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw p0

    .line 354
    :cond_e
    invoke-static {v2}, Landroidx/work/Operation$State;->keyOrValueNotFoundError(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw p0

    .line 358
    :cond_f
    :goto_7
    if-eqz v1, :cond_12

    .line 359
    .line 360
    const-string v2, "android-support-nav:controller:deepLinkHandled"

    .line 361
    .line 362
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-nez v3, :cond_10

    .line 367
    .line 368
    const/4 v4, 0x1

    .line 369
    invoke-virtual {v1, v2, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-ne v1, v4, :cond_10

    .line 374
    .line 375
    move-object/from16 v4, p0

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    :goto_8
    if-eqz v4, :cond_11

    .line 383
    .line 384
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 385
    .line 386
    .line 387
    move-result v5

    .line 388
    :cond_11
    iput-boolean v5, v0, Landroidx/navigation/NavHostController;->deepLinkHandled:Z

    .line 389
    .line 390
    :cond_12
    return-object v0

    .line 391
    :pswitch_1
    move-object/from16 v1, p1

    .line 392
    .line 393
    check-cast v1, Landroidx/activity/result/ActivityResult;

    .line 394
    .line 395
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    iget v1, v1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 399
    .line 400
    const/4 v3, -0x1

    .line 401
    const/16 v4, 0x64

    .line 402
    .line 403
    if-eq v1, v3, :cond_13

    .line 404
    .line 405
    if-ne v1, v4, :cond_14

    .line 406
    .line 407
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    check-cast v0, Landroid/app/Activity;

    .line 411
    .line 412
    if-ne v1, v4, :cond_14

    .line 413
    .line 414
    const v1, 0x7f1202a5

    .line 415
    .line 416
    .line 417
    invoke-static {v0, v1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 418
    .line 419
    .line 420
    :cond_14
    return-object v2

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
