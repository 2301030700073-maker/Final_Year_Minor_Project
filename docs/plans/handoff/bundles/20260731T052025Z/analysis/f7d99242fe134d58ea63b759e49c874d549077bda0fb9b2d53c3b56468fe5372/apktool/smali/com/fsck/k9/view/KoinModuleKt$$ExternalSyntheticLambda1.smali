.class public final synthetic Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lcom/fsck/k9/view/KoinModuleKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const-class v1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 6
    .line 7
    const-class v2, Lcom/fsck/k9/job/K9JobManager;

    .line 8
    .line 9
    const-class v3, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 10
    .line 11
    const-class v4, Landroid/content/Context;

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object/from16 v0, p1

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    move-object/from16 v1, p2

    .line 29
    .line 30
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 31
    .line 32
    add-int/2addr v0, v7

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :pswitch_0
    move-object/from16 v0, p1

    .line 39
    .line 40
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 41
    .line 42
    move-object/from16 v1, p2

    .line 43
    .line 44
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 45
    .line 46
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :pswitch_1
    move-object/from16 v0, p1

    .line 52
    .line 53
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 54
    .line 55
    move-object/from16 v1, p2

    .line 56
    .line 57
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0

    .line 64
    :pswitch_2
    move-object/from16 v0, p1

    .line 65
    .line 66
    check-cast v0, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-object/from16 v1, p2

    .line 72
    .line 73
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 74
    .line 75
    return-object v0

    .line 76
    :pswitch_3
    move-object/from16 v0, p1

    .line 77
    .line 78
    check-cast v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 79
    .line 80
    move-object/from16 v1, p2

    .line 81
    .line 82
    check-cast v1, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 91
    .line 92
    return-object v0

    .line 93
    :pswitch_4
    move-object/from16 v0, p1

    .line 94
    .line 95
    check-cast v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 96
    .line 97
    move-object/from16 v1, p2

    .line 98
    .line 99
    check-cast v1, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 108
    .line 109
    return-object v0

    .line 110
    :pswitch_5
    move-object/from16 v0, p1

    .line 111
    .line 112
    check-cast v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 113
    .line 114
    move-object/from16 v1, p2

    .line 115
    .line 116
    check-cast v1, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 125
    .line 126
    return-object v0

    .line 127
    :pswitch_6
    move-object/from16 v0, p1

    .line 128
    .line 129
    check-cast v0, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 130
    .line 131
    move-object/from16 v1, p2

    .line 132
    .line 133
    check-cast v1, Lkotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 142
    .line 143
    return-object v0

    .line 144
    :pswitch_7
    move-object/from16 v0, p1

    .line 145
    .line 146
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 147
    .line 148
    move-object/from16 v1, p2

    .line 149
    .line 150
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-interface {v1}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 167
    .line 168
    if-ne v0, v2, :cond_0

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_0
    sget-object v3, Lkotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lkotlin/coroutines/ContinuationInterceptor$Key;

    .line 172
    .line 173
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 178
    .line 179
    if-nez v4, :cond_1

    .line 180
    .line 181
    new-instance v2, Lkotlin/coroutines/CombinedContext;

    .line 182
    .line 183
    invoke-direct {v2, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 184
    .line 185
    .line 186
    :goto_0
    move-object v1, v2

    .line 187
    goto :goto_1

    .line 188
    :cond_1
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-ne v0, v2, :cond_2

    .line 193
    .line 194
    new-instance v0, Lkotlin/coroutines/CombinedContext;

    .line 195
    .line 196
    invoke-direct {v0, v4, v1}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 197
    .line 198
    .line 199
    move-object v1, v0

    .line 200
    goto :goto_1

    .line 201
    :cond_2
    new-instance v2, Lkotlin/coroutines/CombinedContext;

    .line 202
    .line 203
    new-instance v3, Lkotlin/coroutines/CombinedContext;

    .line 204
    .line 205
    invoke-direct {v3, v1, v0}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 206
    .line 207
    .line 208
    invoke-direct {v2, v4, v3}, Lkotlin/coroutines/CombinedContext;-><init>(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)V

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :goto_1
    return-object v1

    .line 213
    :pswitch_8
    move-object/from16 v0, p1

    .line 214
    .line 215
    check-cast v0, Ljava/lang/String;

    .line 216
    .line 217
    move-object/from16 v1, p2

    .line 218
    .line 219
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-nez v2, :cond_3

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    goto :goto_2

    .line 238
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v0, ", "

    .line 247
    .line 248
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    :goto_2
    return-object v0

    .line 259
    :pswitch_9
    move-object/from16 v0, p1

    .line 260
    .line 261
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 262
    .line 263
    move-object/from16 v1, p2

    .line 264
    .line 265
    check-cast v1, Ljava/lang/Integer;

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    and-int/lit8 v2, v1, 0x3

    .line 272
    .line 273
    if-eq v2, v5, :cond_4

    .line 274
    .line 275
    move v6, v7

    .line 276
    :cond_4
    and-int/2addr v1, v7

    .line 277
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 278
    .line 279
    invoke-virtual {v0, v1, v6}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-nez v1, :cond_5

    .line 284
    .line 285
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 286
    .line 287
    .line 288
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 289
    .line 290
    return-object v0

    .line 291
    :cond_5
    throw v8

    .line 292
    :pswitch_a
    move-object/from16 v0, p1

    .line 293
    .line 294
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 295
    .line 296
    move-object/from16 v1, p2

    .line 297
    .line 298
    check-cast v1, Ljava/lang/Integer;

    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    invoke-static {v0, v1}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$vSfVI36hxI_AuFwsxsl1FN79JAo(Landroidx/compose/runtime/Composer;I)Lcoil3/ImageLoader;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    return-object v0

    .line 309
    :pswitch_b
    move-object/from16 v0, p1

    .line 310
    .line 311
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 312
    .line 313
    move-object/from16 v1, p2

    .line 314
    .line 315
    check-cast v1, Ljava/lang/Integer;

    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    invoke-static {v0, v1}, Lcom/skydoves/landscapist/coil3/CoilImageKt;->$r8$lambda$t73XYqEPl2sIlJPHJRg1xfHHeA0(Landroidx/compose/runtime/Composer;I)Lcoil3/ImageLoader;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    return-object v0

    .line 326
    :pswitch_c
    move-object/from16 v0, p1

    .line 327
    .line 328
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 329
    .line 330
    move-object/from16 v1, p2

    .line 331
    .line 332
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    new-instance v0, Lcom/fsck/k9/view/UserInputEmailAddressParser;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 343
    .line 344
    .line 345
    return-object v0

    .line 346
    :pswitch_d
    move-object/from16 v0, p1

    .line 347
    .line 348
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 349
    .line 350
    move-object/from16 v1, p2

    .line 351
    .line 352
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    new-instance v0, Lcom/fsck/k9/view/WebViewClientFactory;

    .line 361
    .line 362
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 363
    .line 364
    .line 365
    return-object v0

    .line 366
    :pswitch_e
    move-object/from16 v0, p1

    .line 367
    .line 368
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 369
    .line 370
    move-object/from16 v1, p2

    .line 371
    .line 372
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 378
    .line 379
    .line 380
    const-class v2, Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 381
    .line 382
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-virtual {v1, v6, v2}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    check-cast v2, Lcom/fsck/k9/mailstore/AttachmentResolver;

    .line 391
    .line 392
    const-class v3, Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;

    .line 393
    .line 394
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {v1, v7, v3}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/jvm/internal/ClassReference;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    check-cast v1, Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;

    .line 403
    .line 404
    new-instance v3, Lcom/fsck/k9/view/K9WebViewClient;

    .line 405
    .line 406
    const-class v4, Lcom/fsck/k9/helper/ClipboardManager;

    .line 407
    .line 408
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    invoke-virtual {v0, v4, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    check-cast v0, Lcom/fsck/k9/helper/ClipboardManager;

    .line 417
    .line 418
    invoke-direct {v3, v0, v2, v1}, Lcom/fsck/k9/view/K9WebViewClient;-><init>(Lcom/fsck/k9/helper/ClipboardManager;Lcom/fsck/k9/mailstore/AttachmentResolver;Lcom/fsck/k9/view/MessageWebView$OnPageFinishedListener;)V

    .line 419
    .line 420
    .line 421
    return-object v3

    .line 422
    :pswitch_f
    move-object/from16 v0, p1

    .line 423
    .line 424
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 425
    .line 426
    move-object/from16 v1, p2

    .line 427
    .line 428
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    new-instance v1, Lcom/fsck/k9/message/ReplyActionStrategy;

    .line 437
    .line 438
    const-class v2, Lcom/fsck/k9/helper/ReplyToParser;

    .line 439
    .line 440
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v0, v2, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    check-cast v0, Lcom/fsck/k9/helper/ReplyToParser;

    .line 449
    .line 450
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 451
    .line 452
    .line 453
    return-object v1

    .line 454
    :pswitch_10
    move-object/from16 v0, p1

    .line 455
    .line 456
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 457
    .line 458
    move-object/from16 v1, p2

    .line 459
    .line 460
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    new-instance v0, Lcom/fsck/k9/helper/ReplyToParser;

    .line 469
    .line 470
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 471
    .line 472
    .line 473
    return-object v0

    .line 474
    :pswitch_11
    move-object/from16 v0, p1

    .line 475
    .line 476
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 477
    .line 478
    move-object/from16 v1, p2

    .line 479
    .line 480
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    new-instance v1, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;

    .line 489
    .line 490
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 491
    .line 492
    .line 493
    move-result-object v2

    .line 494
    invoke-virtual {v0, v2, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    check-cast v2, Landroid/content/Context;

    .line 499
    .line 500
    const-class v3, Lkotlin/time/Clock;

    .line 501
    .line 502
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 503
    .line 504
    .line 505
    move-result-object v3

    .line 506
    invoke-virtual {v0, v3, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Lkotlin/time/Clock;

    .line 511
    .line 512
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/ui/helper/RelativeDateTimeFormatter;-><init>(Landroid/content/Context;Lkotlin/time/Clock;)V

    .line 513
    .line 514
    .line 515
    return-object v1

    .line 516
    :pswitch_12
    move-object/from16 v0, p1

    .line 517
    .line 518
    check-cast v0, Ljava/lang/Integer;

    .line 519
    .line 520
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 521
    .line 522
    .line 523
    move-object/from16 v0, p2

    .line 524
    .line 525
    check-cast v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;

    .line 526
    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    invoke-static {v0}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->getKey(Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItem;)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    return-object v0

    .line 535
    :pswitch_13
    move-object/from16 v0, p1

    .line 536
    .line 537
    check-cast v0, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 538
    .line 539
    move-object/from16 v1, p2

    .line 540
    .line 541
    check-cast v1, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 542
    .line 543
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 547
    .line 548
    .line 549
    invoke-static {v0, v1, v8, v5}, Lnet/thunderbird/core/common/action/SwipeActions;->copy$default(Lnet/thunderbird/core/common/action/SwipeActions;Lnet/thunderbird/core/common/action/SwipeAction;Lnet/thunderbird/core/common/action/SwipeAction;I)Lnet/thunderbird/core/common/action/SwipeActions;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    return-object v0

    .line 554
    :pswitch_14
    move-object/from16 v0, p1

    .line 555
    .line 556
    check-cast v0, Lnet/thunderbird/core/common/action/SwipeActions;

    .line 557
    .line 558
    move-object/from16 v1, p2

    .line 559
    .line 560
    check-cast v1, Lnet/thunderbird/core/common/action/SwipeAction;

    .line 561
    .line 562
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    invoke-static {v0, v8, v1, v7}, Lnet/thunderbird/core/common/action/SwipeActions;->copy$default(Lnet/thunderbird/core/common/action/SwipeActions;Lnet/thunderbird/core/common/action/SwipeAction;Lnet/thunderbird/core/common/action/SwipeAction;I)Lnet/thunderbird/core/common/action/SwipeActions;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    return-object v0

    .line 573
    :pswitch_15
    move-object/from16 v0, p1

    .line 574
    .line 575
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 576
    .line 577
    move-object/from16 v1, p2

    .line 578
    .line 579
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 580
    .line 581
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    new-instance v1, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 588
    .line 589
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    invoke-virtual {v0, v2, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 598
    .line 599
    const-class v3, Lcom/fsck/k9/preferences/SettingsExporter;

    .line 600
    .line 601
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    invoke-virtual {v0, v3, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    check-cast v0, Lcom/fsck/k9/preferences/SettingsExporter;

    .line 610
    .line 611
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lcom/fsck/k9/preferences/SettingsExporter;)V

    .line 612
    .line 613
    .line 614
    return-object v1

    .line 615
    :pswitch_16
    move-object/from16 v0, p1

    .line 616
    .line 617
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 618
    .line 619
    move-object/from16 v1, p2

    .line 620
    .line 621
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 622
    .line 623
    invoke-static {v0, v1, v4, v8, v8}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    check-cast v0, Landroid/content/Context;

    .line 628
    .line 629
    const-class v1, Landroid/os/Vibrator;

    .line 630
    .line 631
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    check-cast v0, Landroid/os/Vibrator;

    .line 636
    .line 637
    if-eqz v0, :cond_6

    .line 638
    .line 639
    new-instance v8, Lcom/fsck/k9/ui/settings/account/AndroidVibrator;

    .line 640
    .line 641
    invoke-direct {v8, v0}, Lcom/fsck/k9/ui/settings/account/AndroidVibrator;-><init>(Landroid/os/Vibrator;)V

    .line 642
    .line 643
    .line 644
    goto :goto_3

    .line 645
    :cond_6
    const-string v0, "Vibrator service missing"

    .line 646
    .line 647
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    :goto_3
    return-object v8

    .line 651
    :pswitch_17
    move-object/from16 v0, p1

    .line 652
    .line 653
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 654
    .line 655
    move-object/from16 v1, p2

    .line 656
    .line 657
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 658
    .line 659
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 663
    .line 664
    .line 665
    new-instance v9, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;

    .line 666
    .line 667
    const-class v1, Lcom/fsck/k9/Preferences;

    .line 668
    .line 669
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    invoke-virtual {v0, v1, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    move-object v10, v1

    .line 678
    check-cast v10, Lcom/fsck/k9/Preferences;

    .line 679
    .line 680
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    invoke-virtual {v0, v1, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    move-object v11, v1

    .line 689
    check-cast v11, Lcom/fsck/k9/job/K9JobManager;

    .line 690
    .line 691
    new-instance v1, Lorg/koin/core/qualifier/StringQualifier;

    .line 692
    .line 693
    const-string v2, "SaveSettingsExecutorService"

    .line 694
    .line 695
    invoke-direct {v1, v2}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    const-class v2, Ljava/util/concurrent/ExecutorService;

    .line 699
    .line 700
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    invoke-virtual {v0, v2, v8, v1}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    move-object v12, v1

    .line 709
    check-cast v12, Ljava/util/concurrent/ExecutorService;

    .line 710
    .line 711
    const-class v1, Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 712
    .line 713
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    invoke-virtual {v0, v1, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v1

    .line 721
    move-object v13, v1

    .line 722
    check-cast v13, Lcom/fsck/k9/notification/NotificationChannelManager;

    .line 723
    .line 724
    const-class v1, Lcom/fsck/k9/notification/NotificationController;

    .line 725
    .line 726
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    invoke-virtual {v0, v1, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    move-object v14, v1

    .line 735
    check-cast v14, Lcom/fsck/k9/notification/NotificationController;

    .line 736
    .line 737
    const-class v1, Lcom/fsck/k9/controller/MessagingController;

    .line 738
    .line 739
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    invoke-virtual {v0, v1, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    move-object v15, v0

    .line 748
    check-cast v15, Lcom/fsck/k9/controller/MessagingController;

    .line 749
    .line 750
    invoke-direct/range {v9 .. v15}, Lcom/fsck/k9/ui/settings/account/AccountSettingsDataStoreFactory;-><init>(Lcom/fsck/k9/Preferences;Lcom/fsck/k9/job/K9JobManager;Ljava/util/concurrent/ExecutorService;Lcom/fsck/k9/notification/NotificationChannelManager;Lcom/fsck/k9/notification/NotificationController;Lcom/fsck/k9/controller/MessagingController;)V

    .line 751
    .line 752
    .line 753
    return-object v9

    .line 754
    :pswitch_18
    move-object/from16 v0, p1

    .line 755
    .line 756
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 757
    .line 758
    move-object/from16 v1, p2

    .line 759
    .line 760
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 761
    .line 762
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 766
    .line 767
    .line 768
    new-instance v1, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;

    .line 769
    .line 770
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 771
    .line 772
    .line 773
    move-result-object v2

    .line 774
    invoke-virtual {v0, v2, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    check-cast v2, Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;

    .line 779
    .line 780
    const-class v3, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 781
    .line 782
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 783
    .line 784
    .line 785
    move-result-object v3

    .line 786
    invoke-virtual {v0, v3, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v3

    .line 790
    check-cast v3, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 791
    .line 792
    const-class v4, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 793
    .line 794
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    invoke-virtual {v0, v4, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    check-cast v0, Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;

    .line 803
    .line 804
    invoke-direct {v1, v2, v3, v0}, Lcom/fsck/k9/ui/settings/account/AccountSettingsViewModel;-><init>(Lnet/thunderbird/core/android/account/LegacyAccountDtoManager;Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;Lcom/fsck/k9/mailstore/SpecialFolderSelectionStrategy;)V

    .line 805
    .line 806
    .line 807
    return-object v1

    .line 808
    :pswitch_19
    move-object/from16 v0, p1

    .line 809
    .line 810
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 811
    .line 812
    move-object/from16 v1, p2

    .line 813
    .line 814
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 815
    .line 816
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 820
    .line 821
    .line 822
    new-instance v0, Lcom/fsck/k9/helper/NamedThreadFactory;

    .line 823
    .line 824
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 825
    .line 826
    .line 827
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    return-object v0

    .line 832
    :pswitch_1a
    move-object/from16 v0, p1

    .line 833
    .line 834
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 835
    .line 836
    move-object/from16 v3, p2

    .line 837
    .line 838
    check-cast v3, Lorg/koin/core/parameter/ParametersHolder;

    .line 839
    .line 840
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    .line 845
    .line 846
    new-instance v3, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;

    .line 847
    .line 848
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 849
    .line 850
    .line 851
    move-result-object v2

    .line 852
    invoke-virtual {v0, v2, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v2

    .line 856
    check-cast v2, Lcom/fsck/k9/job/K9JobManager;

    .line 857
    .line 858
    const-class v4, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 859
    .line 860
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    invoke-virtual {v0, v4, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    check-cast v4, Lcom/fsck/k9/ui/base/AppLanguageManager;

    .line 869
    .line 870
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    invoke-virtual {v0, v1, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    check-cast v1, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 879
    .line 880
    const-class v5, Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;

    .line 881
    .line 882
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 883
    .line 884
    .line 885
    move-result-object v5

    .line 886
    invoke-virtual {v0, v5, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    check-cast v0, Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;

    .line 891
    .line 892
    invoke-direct {v3, v2, v4, v1, v0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsDataStore;-><init>(Lcom/fsck/k9/job/K9JobManager;Lcom/fsck/k9/ui/base/AppLanguageManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;Lapp/k9mail/feature/telemetry/noop/NoOpTelemetryManager;)V

    .line 893
    .line 894
    .line 895
    return-object v3

    .line 896
    :pswitch_1b
    move-object/from16 v0, p1

    .line 897
    .line 898
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 899
    .line 900
    move-object/from16 v1, p2

    .line 901
    .line 902
    check-cast v1, Lorg/koin/core/parameter/ParametersHolder;

    .line 903
    .line 904
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 908
    .line 909
    .line 910
    new-instance v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 911
    .line 912
    const-class v2, Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;

    .line 913
    .line 914
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 915
    .line 916
    .line 917
    move-result-object v2

    .line 918
    invoke-virtual {v0, v2, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    check-cast v2, Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;

    .line 923
    .line 924
    new-instance v3, Lorg/koin/core/qualifier/StringQualifier;

    .line 925
    .line 926
    const-string v4, "syncDebug"

    .line 927
    .line 928
    invoke-direct {v3, v4}, Lorg/koin/core/qualifier/StringQualifier;-><init>(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    const-class v4, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 932
    .line 933
    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 934
    .line 935
    .line 936
    move-result-object v4

    .line 937
    invoke-virtual {v0, v4, v8, v3}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    check-cast v0, Lnet/thunderbird/core/logging/file/FileLogSink;

    .line 942
    .line 943
    invoke-direct {v1, v2, v0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;-><init>(Lnet/thunderbird/core/android/logging/LogcatLogFileWriter;Lnet/thunderbird/core/logging/file/FileLogSink;)V

    .line 944
    .line 945
    .line 946
    return-object v1

    .line 947
    :pswitch_1c
    move-object/from16 v0, p1

    .line 948
    .line 949
    check-cast v0, Lorg/koin/core/scope/Scope;

    .line 950
    .line 951
    move-object/from16 v2, p2

    .line 952
    .line 953
    check-cast v2, Lorg/koin/core/parameter/ParametersHolder;

    .line 954
    .line 955
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 956
    .line 957
    .line 958
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 959
    .line 960
    .line 961
    new-instance v2, Lcom/fsck/k9/view/WebViewConfigProvider;

    .line 962
    .line 963
    const-class v3, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 964
    .line 965
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 966
    .line 967
    .line 968
    move-result-object v3

    .line 969
    invoke-virtual {v0, v3, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v3

    .line 973
    check-cast v3, Lnet/thunderbird/core/ui/theme/manager/ThemeManager;

    .line 974
    .line 975
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    invoke-virtual {v0, v1, v8, v8}, Lorg/koin/core/scope/Scope;->resolve(Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;Lorg/koin/core/qualifier/Qualifier;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    check-cast v0, Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 984
    .line 985
    invoke-direct {v2, v3, v0}, Lcom/fsck/k9/view/WebViewConfigProvider;-><init>(Lnet/thunderbird/core/ui/theme/manager/ThemeManager;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 986
    .line 987
    .line 988
    return-object v2

    .line 989
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
.end method
