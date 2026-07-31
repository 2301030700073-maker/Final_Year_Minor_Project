.class public abstract Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final CANNOT_INFER_FUNCTION_PARAM_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

.field public static final DONT_CARE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

.field public static final NO_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

.field public static final UNIT_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;


# direct methods
.method public static synthetic $$$reportNull$$$0(I)V
    .locals 27

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x6

    .line 5
    const/16 v3, 0x35

    .line 6
    .line 7
    const/16 v4, 0x30

    .line 8
    .line 9
    const/16 v5, 0x23

    .line 10
    .line 11
    const/16 v6, 0x1a

    .line 12
    .line 13
    const/16 v7, 0x13

    .line 14
    .line 15
    const/16 v8, 0x11

    .line 16
    .line 17
    const/16 v9, 0xf

    .line 18
    .line 19
    const/16 v10, 0xb

    .line 20
    .line 21
    const/16 v11, 0x9

    .line 22
    .line 23
    const/4 v12, 0x4

    .line 24
    if-eq v0, v12, :cond_0

    .line 25
    .line 26
    if-eq v0, v11, :cond_0

    .line 27
    .line 28
    if-eq v0, v10, :cond_0

    .line 29
    .line 30
    if-eq v0, v9, :cond_0

    .line 31
    .line 32
    if-eq v0, v8, :cond_0

    .line 33
    .line 34
    if-eq v0, v7, :cond_0

    .line 35
    .line 36
    if-eq v0, v6, :cond_0

    .line 37
    .line 38
    if-eq v0, v5, :cond_0

    .line 39
    .line 40
    if-eq v0, v4, :cond_0

    .line 41
    .line 42
    if-eq v0, v3, :cond_0

    .line 43
    .line 44
    if-eq v0, v2, :cond_0

    .line 45
    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    packed-switch v0, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    const-string v13, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    :pswitch_0
    const-string v13, "@NotNull method %s.%s must not return null"

    .line 55
    .line 56
    :goto_0
    const/4 v14, 0x2

    .line 57
    if-eq v0, v12, :cond_1

    .line 58
    .line 59
    if-eq v0, v11, :cond_1

    .line 60
    .line 61
    if-eq v0, v10, :cond_1

    .line 62
    .line 63
    if-eq v0, v9, :cond_1

    .line 64
    .line 65
    if-eq v0, v8, :cond_1

    .line 66
    .line 67
    if-eq v0, v7, :cond_1

    .line 68
    .line 69
    if-eq v0, v6, :cond_1

    .line 70
    .line 71
    if-eq v0, v5, :cond_1

    .line 72
    .line 73
    if-eq v0, v4, :cond_1

    .line 74
    .line 75
    if-eq v0, v3, :cond_1

    .line 76
    .line 77
    if-eq v0, v2, :cond_1

    .line 78
    .line 79
    if-eq v0, v1, :cond_1

    .line 80
    .line 81
    packed-switch v0, :pswitch_data_1

    .line 82
    .line 83
    .line 84
    const/4 v15, 0x3

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :pswitch_1
    move v15, v14

    .line 87
    :goto_1
    new-array v15, v15, [Ljava/lang/Object;

    .line 88
    .line 89
    const-string v16, "kotlin/reflect/jvm/internal/impl/types/TypeUtils"

    .line 90
    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    packed-switch v0, :pswitch_data_2

    .line 94
    .line 95
    .line 96
    :pswitch_2
    const-string/jumbo v18, "type"

    .line 97
    .line 98
    .line 99
    aput-object v18, v15, v17

    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :pswitch_3
    const-string v18, "literalTypeConstructor"

    .line 104
    .line 105
    aput-object v18, v15, v17

    .line 106
    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :pswitch_4
    const-string v18, "expectedType"

    .line 110
    .line 111
    aput-object v18, v15, v17

    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :pswitch_5
    const-string v18, "supertypes"

    .line 116
    .line 117
    aput-object v18, v15, v17

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :pswitch_6
    const-string v18, "numberValueTypeConstructor"

    .line 122
    .line 123
    aput-object v18, v15, v17

    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :pswitch_7
    const-string v18, "parameterDescriptor"

    .line 128
    .line 129
    aput-object v18, v15, v17

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :pswitch_8
    const-string v18, "isSpecialType"

    .line 133
    .line 134
    aput-object v18, v15, v17

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :pswitch_9
    const-string v18, "specialType"

    .line 138
    .line 139
    aput-object v18, v15, v17

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :pswitch_a
    const-string/jumbo v18, "typeParameterConstructors"

    .line 143
    .line 144
    .line 145
    aput-object v18, v15, v17

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :pswitch_b
    const-string/jumbo v18, "typeParameters"

    .line 149
    .line 150
    .line 151
    aput-object v18, v15, v17

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :pswitch_c
    const-string v18, "b"

    .line 155
    .line 156
    aput-object v18, v15, v17

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :pswitch_d
    const-string v18, "a"

    .line 160
    .line 161
    aput-object v18, v15, v17

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :pswitch_e
    const-string v18, "projections"

    .line 165
    .line 166
    aput-object v18, v15, v17

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :pswitch_f
    const-string/jumbo v18, "typeArguments"

    .line 170
    .line 171
    .line 172
    aput-object v18, v15, v17

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :pswitch_10
    const-string v18, "clazz"

    .line 176
    .line 177
    aput-object v18, v15, v17

    .line 178
    .line 179
    goto :goto_2

    .line 180
    :pswitch_11
    const-string v18, "result"

    .line 181
    .line 182
    aput-object v18, v15, v17

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :pswitch_12
    const-string v18, "substitutor"

    .line 186
    .line 187
    aput-object v18, v15, v17

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :pswitch_13
    const-string v18, "superType"

    .line 191
    .line 192
    aput-object v18, v15, v17

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :pswitch_14
    const-string v18, "subType"

    .line 196
    .line 197
    aput-object v18, v15, v17

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :pswitch_15
    const-string v18, "parameters"

    .line 201
    .line 202
    aput-object v18, v15, v17

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :pswitch_16
    const-string v18, "refinedTypeFactory"

    .line 206
    .line 207
    aput-object v18, v15, v17

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :pswitch_17
    const-string/jumbo v18, "unsubstitutedMemberScope"

    .line 211
    .line 212
    .line 213
    aput-object v18, v15, v17

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :pswitch_18
    const-string/jumbo v18, "typeConstructor"

    .line 217
    .line 218
    .line 219
    aput-object v18, v15, v17

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :pswitch_19
    aput-object v16, v15, v17

    .line 223
    .line 224
    :goto_2
    const-string v17, "makeNullableAsSpecified"

    .line 225
    .line 226
    const-string v18, "makeNullableIfNeeded"

    .line 227
    .line 228
    const-string v19, "makeUnsubstitutedType"

    .line 229
    .line 230
    const-string v20, "getDefaultTypeProjections"

    .line 231
    .line 232
    const-string v21, "getImmediateSupertypes"

    .line 233
    .line 234
    const-string v22, "getAllSupertypes"

    .line 235
    .line 236
    const-string v23, "substituteProjectionsForParameters"

    .line 237
    .line 238
    const-string v24, "getDefaultPrimitiveNumberType"

    .line 239
    .line 240
    const-string v25, "getPrimitiveNumberType"

    .line 241
    .line 242
    const/16 v26, 0x1

    .line 243
    .line 244
    if-eq v0, v12, :cond_a

    .line 245
    .line 246
    if-eq v0, v11, :cond_9

    .line 247
    .line 248
    if-eq v0, v10, :cond_8

    .line 249
    .line 250
    if-eq v0, v9, :cond_8

    .line 251
    .line 252
    if-eq v0, v8, :cond_7

    .line 253
    .line 254
    if-eq v0, v7, :cond_6

    .line 255
    .line 256
    if-eq v0, v6, :cond_5

    .line 257
    .line 258
    if-eq v0, v5, :cond_4

    .line 259
    .line 260
    if-eq v0, v4, :cond_3

    .line 261
    .line 262
    if-eq v0, v3, :cond_2

    .line 263
    .line 264
    if-eq v0, v2, :cond_9

    .line 265
    .line 266
    if-eq v0, v1, :cond_9

    .line 267
    .line 268
    packed-switch v0, :pswitch_data_3

    .line 269
    .line 270
    .line 271
    aput-object v16, v15, v26

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_2
    :pswitch_1a
    aput-object v25, v15, v26

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_3
    aput-object v24, v15, v26

    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_4
    aput-object v23, v15, v26

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_5
    aput-object v22, v15, v26

    .line 284
    .line 285
    goto :goto_3

    .line 286
    :cond_6
    aput-object v21, v15, v26

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_7
    aput-object v20, v15, v26

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_8
    aput-object v19, v15, v26

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_9
    aput-object v18, v15, v26

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_a
    aput-object v17, v15, v26

    .line 299
    .line 300
    :goto_3
    packed-switch v0, :pswitch_data_4

    .line 301
    .line 302
    .line 303
    const-string v16, "noExpectedType"

    .line 304
    .line 305
    aput-object v16, v15, v14

    .line 306
    .line 307
    goto/16 :goto_4

    .line 308
    .line 309
    :pswitch_1b
    const-string v16, "getTypeParameterDescriptorOrNull"

    .line 310
    .line 311
    aput-object v16, v15, v14

    .line 312
    .line 313
    goto/16 :goto_4

    .line 314
    .line 315
    :pswitch_1c
    const-string v16, "isNonReifiedTypeParameter"

    .line 316
    .line 317
    aput-object v16, v15, v14

    .line 318
    .line 319
    goto/16 :goto_4

    .line 320
    .line 321
    :pswitch_1d
    const-string v16, "isReifiedTypeParameter"

    .line 322
    .line 323
    aput-object v16, v15, v14

    .line 324
    .line 325
    goto/16 :goto_4

    .line 326
    .line 327
    :pswitch_1e
    const-string v16, "isTypeParameter"

    .line 328
    .line 329
    aput-object v16, v15, v14

    .line 330
    .line 331
    goto/16 :goto_4

    .line 332
    .line 333
    :pswitch_1f
    aput-object v25, v15, v14

    .line 334
    .line 335
    goto/16 :goto_4

    .line 336
    .line 337
    :pswitch_20
    const-string v16, "findByFqName"

    .line 338
    .line 339
    aput-object v16, v15, v14

    .line 340
    .line 341
    goto/16 :goto_4

    .line 342
    .line 343
    :pswitch_21
    aput-object v24, v15, v14

    .line 344
    .line 345
    goto/16 :goto_4

    .line 346
    .line 347
    :pswitch_22
    const-string v16, "makeStarProjection"

    .line 348
    .line 349
    aput-object v16, v15, v14

    .line 350
    .line 351
    goto/16 :goto_4

    .line 352
    .line 353
    :pswitch_23
    const-string v16, "contains"

    .line 354
    .line 355
    aput-object v16, v15, v14

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :pswitch_24
    const-string v16, "dependsOnTypeConstructors"

    .line 359
    .line 360
    aput-object v16, v15, v14

    .line 361
    .line 362
    goto :goto_4

    .line 363
    :pswitch_25
    const-string v16, "dependsOnTypeParameters"

    .line 364
    .line 365
    aput-object v16, v15, v14

    .line 366
    .line 367
    goto :goto_4

    .line 368
    :pswitch_26
    const-string v16, "equalTypes"

    .line 369
    .line 370
    aput-object v16, v15, v14

    .line 371
    .line 372
    goto :goto_4

    .line 373
    :pswitch_27
    aput-object v23, v15, v14

    .line 374
    .line 375
    goto :goto_4

    .line 376
    :pswitch_28
    const-string v16, "substituteParameters"

    .line 377
    .line 378
    aput-object v16, v15, v14

    .line 379
    .line 380
    goto :goto_4

    .line 381
    :pswitch_29
    const-string v16, "getClassDescriptor"

    .line 382
    .line 383
    aput-object v16, v15, v14

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :pswitch_2a
    const-string v16, "hasNullableSuperType"

    .line 387
    .line 388
    aput-object v16, v15, v14

    .line 389
    .line 390
    goto :goto_4

    .line 391
    :pswitch_2b
    const-string v16, "acceptsNullable"

    .line 392
    .line 393
    aput-object v16, v15, v14

    .line 394
    .line 395
    goto :goto_4

    .line 396
    :pswitch_2c
    const-string v16, "isNullableType"

    .line 397
    .line 398
    aput-object v16, v15, v14

    .line 399
    .line 400
    goto :goto_4

    .line 401
    :pswitch_2d
    aput-object v22, v15, v14

    .line 402
    .line 403
    goto :goto_4

    .line 404
    :pswitch_2e
    const-string v16, "collectAllSupertypes"

    .line 405
    .line 406
    aput-object v16, v15, v14

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :pswitch_2f
    const-string v16, "createSubstitutedSupertype"

    .line 410
    .line 411
    aput-object v16, v15, v14

    .line 412
    .line 413
    goto :goto_4

    .line 414
    :pswitch_30
    aput-object v21, v15, v14

    .line 415
    .line 416
    goto :goto_4

    .line 417
    :pswitch_31
    aput-object v20, v15, v14

    .line 418
    .line 419
    goto :goto_4

    .line 420
    :pswitch_32
    aput-object v19, v15, v14

    .line 421
    .line 422
    goto :goto_4

    .line 423
    :pswitch_33
    const-string v16, "canHaveSubtypes"

    .line 424
    .line 425
    aput-object v16, v15, v14

    .line 426
    .line 427
    goto :goto_4

    .line 428
    :pswitch_34
    aput-object v18, v15, v14

    .line 429
    .line 430
    goto :goto_4

    .line 431
    :pswitch_35
    aput-object v17, v15, v14

    .line 432
    .line 433
    goto :goto_4

    .line 434
    :pswitch_36
    const-string v16, "makeNotNullable"

    .line 435
    .line 436
    aput-object v16, v15, v14

    .line 437
    .line 438
    goto :goto_4

    .line 439
    :pswitch_37
    const-string v16, "makeNullable"

    .line 440
    .line 441
    aput-object v16, v15, v14

    .line 442
    .line 443
    :goto_4
    :pswitch_38
    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v13

    .line 447
    if-eq v0, v12, :cond_b

    .line 448
    .line 449
    if-eq v0, v11, :cond_b

    .line 450
    .line 451
    if-eq v0, v10, :cond_b

    .line 452
    .line 453
    if-eq v0, v9, :cond_b

    .line 454
    .line 455
    if-eq v0, v8, :cond_b

    .line 456
    .line 457
    if-eq v0, v7, :cond_b

    .line 458
    .line 459
    if-eq v0, v6, :cond_b

    .line 460
    .line 461
    if-eq v0, v5, :cond_b

    .line 462
    .line 463
    if-eq v0, v4, :cond_b

    .line 464
    .line 465
    if-eq v0, v3, :cond_b

    .line 466
    .line 467
    if-eq v0, v2, :cond_b

    .line 468
    .line 469
    if-eq v0, v1, :cond_b

    .line 470
    .line 471
    packed-switch v0, :pswitch_data_5

    .line 472
    .line 473
    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 475
    .line 476
    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    goto :goto_5

    .line 480
    :cond_b
    :pswitch_39
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 481
    .line 482
    invoke-direct {v0, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :goto_5
    throw v0

    .line 486
    nop

    .line 487
    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_19
        :pswitch_2
        :pswitch_19
        :pswitch_19
        :pswitch_2
        :pswitch_19
        :pswitch_2
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_15
        :pswitch_19
        :pswitch_2
        :pswitch_19
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_2
        :pswitch_11
        :pswitch_2
        :pswitch_19
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_19
        :pswitch_d
        :pswitch_c
        :pswitch_2
        :pswitch_b
        :pswitch_2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_19
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_19
        :pswitch_3
        :pswitch_4
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :pswitch_data_3
    .packed-switch 0x38
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_38
        :pswitch_34
        :pswitch_38
        :pswitch_38
        :pswitch_34
        :pswitch_38
        :pswitch_33
        :pswitch_38
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_38
        :pswitch_31
        :pswitch_38
        :pswitch_30
        :pswitch_38
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2e
        :pswitch_2e
        :pswitch_2d
        :pswitch_38
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_38
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_22
        :pswitch_21
        :pswitch_38
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_38
        :pswitch_1f
        :pswitch_1f
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    :pswitch_data_5
    .packed-switch 0x38
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->DONT_CARE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->DONT_CARE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 11
    .line 12
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->UNINFERRED_LAMBDA_PARAMETER_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    .line 13
    .line 14
    new-array v1, v1, [Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->CANNOT_INFER_FUNCTION_PARAM_TYPE:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    .line 21
    .line 22
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    .line 23
    .line 24
    const-string v1, "NO_EXPECTED_TYPE"

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->NO_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    .line 30
    .line 31
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    .line 32
    .line 33
    const-string v1, "UNIT_EXPECTED_TYPE"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->UNIT_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    .line 39
    .line 40
    return-void
.end method

.method public static acceptsNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 23
    .line 24
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 25
    .line 26
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->acceptsNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return p0

    .line 36
    :cond_2
    const/16 p0, 0x1c

    .line 37
    .line 38
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    throw p0
.end method

.method public static contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_3

    .line 4
    .line 5
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->noExpectedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_1
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_2
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_3
    if-nez p2, :cond_4

    .line 51
    .line 52
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    .line 53
    .line 54
    invoke-direct {p2}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;-><init>()V

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-virtual {p2, p0}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    move-object v1, v0

    .line 65
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    const/4 v1, 0x0

    .line 69
    :goto_0
    if-eqz v1, :cond_6

    .line 70
    .line 71
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->lowerBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 72
    .line 73
    invoke-static {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_c

    .line 78
    .line 79
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 80
    .line 81
    invoke-static {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    .line 89
    .line 90
    if-eqz v1, :cond_7

    .line 91
    .line 92
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    .line 93
    .line 94
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->original:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 95
    .line 96
    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_7

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 108
    .line 109
    if-eqz v1, :cond_9

    .line 110
    .line 111
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 112
    .line 113
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    .line 114
    .line 115
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_d

    .line 124
    .line 125
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 130
    .line 131
    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_9
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    :cond_a
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_d

    .line 151
    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;

    .line 157
    .line 158
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->isStarProjection()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_b

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_b
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    :try_start_0
    invoke-static {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->contains(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)Z

    .line 170
    .line 171
    .line 172
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-eqz v0, :cond_a

    .line 174
    .line 175
    :cond_c
    :goto_2
    const/4 p0, 0x1

    .line 176
    return p0

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    throw p0

    .line 179
    :cond_d
    :goto_3
    const/4 p0, 0x0

    .line 180
    return p0
.end method

.method public static getDefaultTypeProjections(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 27
    .line 28
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 29
    .line 30
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_1
    const/16 p0, 0x10

    .line 47
    .line 48
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    throw p0
.end method

.method public static isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_d

    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    .line 26
    .line 27
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->upperBound:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 28
    .line 29
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_a

    .line 53
    .line 54
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleAwareClassDescriptor;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_7

    .line 97
    .line 98
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 103
    .line 104
    if-eqz v6, :cond_6

    .line 105
    .line 106
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 107
    .line 108
    invoke-virtual {v1, v6, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->substitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-eqz v6, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    goto :goto_1

    .line 123
    :cond_5
    move-object v6, v0

    .line 124
    :goto_1
    if-eqz v6, :cond_4

    .line 125
    .line 126
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_6
    const/16 p0, 0x15

    .line 131
    .line 132
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 133
    .line 134
    .line 135
    throw v0

    .line 136
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_9

    .line 145
    .line 146
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 151
    .line 152
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_8

    .line 157
    .line 158
    return v2

    .line 159
    :cond_9
    :goto_2
    return v3

    .line 160
    :cond_a
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 165
    .line 166
    if-eqz v0, :cond_c

    .line 167
    .line 168
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 169
    .line 170
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    .line 171
    .line 172
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_c

    .line 181
    .line 182
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 187
    .line 188
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    :goto_3
    return v2

    .line 195
    :cond_c
    :goto_4
    return v3

    .line 196
    :cond_d
    const/16 p0, 0x1b

    .line 197
    .line 198
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 199
    .line 200
    .line 201
    throw v0
.end method

.method public static isTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 25
    .line 26
    :cond_0
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_2
    const/16 p0, 0x3c

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public static makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 p0, 0x4

    .line 16
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :cond_1
    const/4 p0, 0x3

    .line 21
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public static makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 25
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/16 p0, 0x8

    .line 26
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x6

    .line 15
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_1
    return-object p0

    .line 20
    :cond_2
    const/4 p0, 0x5

    .line 21
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public static makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;
    .locals 1

    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    return-object v0

    :cond_0
    const/16 p0, 0x2d

    .line 33
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionBase;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;->howThisTypeIsUsed:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 4
    .line 5
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUsage;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->starProjectionType(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_1
    const/16 p0, 0x2e

    .line 26
    .line 27
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    throw p0
.end method

.method public static noExpectedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->NO_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    .line 5
    .line 6
    if-eq p0, v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->UNIT_EXPECTED_TYPE:Lkotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType;

    .line 9
    .line 10
    if-ne p0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_2
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->$$$reportNull$$$0(I)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    throw p0
.end method
