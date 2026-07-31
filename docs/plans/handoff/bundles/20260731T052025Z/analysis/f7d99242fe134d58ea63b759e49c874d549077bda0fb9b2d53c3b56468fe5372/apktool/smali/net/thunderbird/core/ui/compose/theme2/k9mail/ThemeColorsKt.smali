.class public abstract Lnet/thunderbird/core/ui/compose/theme2/k9mail/ThemeColorsKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final darkThemeColorScheme:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

.field public static final lightThemeColorScheme:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 182

    .line 1
    new-instance v0, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 2
    .line 3
    const-wide v1, 0xff5f303dL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-wide v3, 0xffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    move-wide v5, v3

    .line 18
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    const-wide v7, 0xff875360L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    move-wide v9, v5

    .line 32
    move-wide v5, v7

    .line 33
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    const-wide v11, 0xff422129L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v11

    .line 46
    move-wide v13, v9

    .line 47
    move-wide v9, v11

    .line 48
    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v11

    .line 52
    const-wide v15, 0xff68414bL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v15

    .line 61
    const-wide v17, 0xffffe2e7L

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v17

    .line 70
    const-wide v19, 0xff443968L

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 76
    .line 77
    .line 78
    move-result-wide v19

    .line 79
    move-wide/from16 v21, v13

    .line 80
    .line 81
    move-wide v13, v15

    .line 82
    move-wide/from16 v15, v17

    .line 83
    .line 84
    move-wide/from16 v17, v19

    .line 85
    .line 86
    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v19

    .line 90
    const-wide v23, 0xff685c8eL

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    invoke-static/range {v23 .. v24}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v23

    .line 99
    move-wide/from16 v25, v21

    .line 100
    .line 101
    move-wide/from16 v21, v23

    .line 102
    .line 103
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 104
    .line 105
    .line 106
    move-result-wide v23

    .line 107
    const-wide v89, 0xff7f1d1dL

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    move-wide/from16 v27, v25

    .line 113
    .line 114
    invoke-static/range {v89 .. v90}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v25

    .line 118
    move-wide/from16 v29, v27

    .line 119
    .line 120
    invoke-static/range {v29 .. v30}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v27

    .line 124
    const-wide v91, 0xfffef2f2L

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    move-wide/from16 v31, v29

    .line 130
    .line 131
    invoke-static/range {v91 .. v92}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v29

    .line 135
    move-wide/from16 v33, v31

    .line 136
    .line 137
    invoke-static/range {v89 .. v90}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v31

    .line 141
    const-wide v35, 0xffdcd9d9L

    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    invoke-static/range {v35 .. v36}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 147
    .line 148
    .line 149
    move-result-wide v35

    .line 150
    const-wide v37, 0xfffcf8f8L

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    move-wide/from16 v39, v33

    .line 156
    .line 157
    move-wide/from16 v33, v35

    .line 158
    .line 159
    invoke-static/range {v37 .. v38}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 160
    .line 161
    .line 162
    move-result-wide v35

    .line 163
    invoke-static/range {v37 .. v38}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 164
    .line 165
    .line 166
    move-result-wide v37

    .line 167
    const-wide v41, 0xff1c1b1bL

    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    invoke-static/range {v41 .. v42}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 173
    .line 174
    .line 175
    move-result-wide v41

    .line 176
    const-wide v43, 0xff45474aL

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    invoke-static/range {v43 .. v44}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 182
    .line 183
    .line 184
    move-result-wide v43

    .line 185
    move-wide/from16 v45, v39

    .line 186
    .line 187
    move-wide/from16 v39, v41

    .line 188
    .line 189
    move-wide/from16 v41, v43

    .line 190
    .line 191
    invoke-static/range {v45 .. v46}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 192
    .line 193
    .line 194
    move-result-wide v43

    .line 195
    const-wide v47, 0xfff6f3f2L

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    invoke-static/range {v47 .. v48}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 201
    .line 202
    .line 203
    move-result-wide v47

    .line 204
    const-wide v49, 0xfff1edecL

    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    invoke-static/range {v49 .. v50}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 210
    .line 211
    .line 212
    move-result-wide v49

    .line 213
    const-wide v51, 0xffebe7e7L

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    invoke-static/range {v51 .. v52}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 219
    .line 220
    .line 221
    move-result-wide v51

    .line 222
    const-wide v53, 0xffe5e2e1L

    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    invoke-static/range {v53 .. v54}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 228
    .line 229
    .line 230
    move-result-wide v53

    .line 231
    const-wide v55, 0xff313030L

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    invoke-static/range {v55 .. v56}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v55

    .line 240
    const-wide v57, 0xfff3f0efL

    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    invoke-static/range {v57 .. v58}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 246
    .line 247
    .line 248
    move-result-wide v57

    .line 249
    const-wide v59, 0xfff7b5c4L

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    invoke-static/range {v59 .. v60}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 255
    .line 256
    .line 257
    move-result-wide v59

    .line 258
    const-wide v61, 0xff75777aL

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    invoke-static/range {v61 .. v62}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v61

    .line 267
    const-wide v63, 0xffc5c6caL

    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    invoke-static/range {v63 .. v64}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 273
    .line 274
    .line 275
    move-result-wide v63

    .line 276
    sget-wide v156, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 277
    .line 278
    const-wide v65, 0xff004f9bL

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    move-wide/from16 v67, v65

    .line 284
    .line 285
    invoke-static/range {v67 .. v68}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 286
    .line 287
    .line 288
    move-result-wide v65

    .line 289
    move-wide/from16 v69, v67

    .line 290
    .line 291
    invoke-static/range {v45 .. v46}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 292
    .line 293
    .line 294
    move-result-wide v67

    .line 295
    const-wide v71, 0xfff0f8ffL

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    invoke-static/range {v71 .. v72}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 301
    .line 302
    .line 303
    move-result-wide v71

    .line 304
    invoke-static/range {v69 .. v70}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 305
    .line 306
    .line 307
    move-result-wide v69

    .line 308
    const-wide v73, 0xff194e2cL

    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    move-wide/from16 v75, v73

    .line 314
    .line 315
    invoke-static/range {v75 .. v76}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 316
    .line 317
    .line 318
    move-result-wide v73

    .line 319
    invoke-static/range {v45 .. v46}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 320
    .line 321
    .line 322
    move-result-wide v45

    .line 323
    const-wide v77, 0xfff4f9f4L

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    invoke-static/range {v77 .. v78}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 329
    .line 330
    .line 331
    move-result-wide v77

    .line 332
    invoke-static/range {v75 .. v76}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 333
    .line 334
    .line 335
    move-result-wide v79

    .line 336
    const-wide v75, 0xff713f12L

    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    invoke-static/range {v75 .. v76}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 342
    .line 343
    .line 344
    move-result-wide v81

    .line 345
    const-wide v83, 0xfffefae8L

    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    move-wide/from16 v85, v83

    .line 351
    .line 352
    invoke-static/range {v85 .. v86}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 353
    .line 354
    .line 355
    move-result-wide v83

    .line 356
    invoke-static/range {v85 .. v86}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 357
    .line 358
    .line 359
    move-result-wide v85

    .line 360
    invoke-static/range {v75 .. v76}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 361
    .line 362
    .line 363
    move-result-wide v87

    .line 364
    move-wide/from16 v75, v71

    .line 365
    .line 366
    move-wide/from16 v71, v69

    .line 367
    .line 368
    move-wide/from16 v69, v75

    .line 369
    .line 370
    move-wide/from16 v75, v45

    .line 371
    .line 372
    move-wide/from16 v45, v47

    .line 373
    .line 374
    move-wide/from16 v47, v49

    .line 375
    .line 376
    move-wide/from16 v49, v51

    .line 377
    .line 378
    move-wide/from16 v51, v53

    .line 379
    .line 380
    move-wide/from16 v53, v55

    .line 381
    .line 382
    move-wide/from16 v55, v57

    .line 383
    .line 384
    move-wide/from16 v57, v59

    .line 385
    .line 386
    move-wide/from16 v59, v61

    .line 387
    .line 388
    move-wide/from16 v61, v63

    .line 389
    .line 390
    move-wide/from16 v63, v156

    .line 391
    .line 392
    invoke-direct/range {v0 .. v88}, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 393
    .line 394
    .line 395
    sput-object v0, Lnet/thunderbird/core/ui/compose/theme2/k9mail/ThemeColorsKt;->lightThemeColorScheme:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 396
    .line 397
    new-instance v93, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 398
    .line 399
    const-wide v0, 0xfff1e7ffL

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 405
    .line 406
    .line 407
    move-result-wide v94

    .line 408
    const-wide v2, 0xff37265dL

    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 414
    .line 415
    .line 416
    move-result-wide v96

    .line 417
    const-wide v2, 0xffcbb7f9L

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 423
    .line 424
    .line 425
    move-result-wide v98

    .line 426
    const-wide v2, 0xff39285fL

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 432
    .line 433
    .line 434
    move-result-wide v100

    .line 435
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 436
    .line 437
    .line 438
    move-result-wide v102

    .line 439
    const-wide v0, 0xff332d41L

    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 445
    .line 446
    .line 447
    move-result-wide v104

    .line 448
    const-wide v0, 0xffc7bdd7L

    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 454
    .line 455
    .line 456
    move-result-wide v106

    .line 457
    const-wide v0, 0xff352f43L

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 463
    .line 464
    .line 465
    move-result-wide v108

    .line 466
    const-wide v0, 0xffffdbe5L

    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 472
    .line 473
    .line 474
    move-result-wide v110

    .line 475
    const-wide v0, 0xff472732L

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 481
    .line 482
    .line 483
    move-result-wide v112

    .line 484
    const-wide v0, 0xffddaebcL

    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 490
    .line 491
    .line 492
    move-result-wide v114

    .line 493
    const-wide v0, 0xff43242fL

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 499
    .line 500
    .line 501
    move-result-wide v116

    .line 502
    const-wide v0, 0xfffca5a5L

    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 508
    .line 509
    .line 510
    move-result-wide v118

    .line 511
    const-wide v0, 0xff450a0aL

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 517
    .line 518
    .line 519
    move-result-wide v120

    .line 520
    invoke-static/range {v89 .. v90}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 521
    .line 522
    .line 523
    move-result-wide v122

    .line 524
    invoke-static/range {v91 .. v92}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 525
    .line 526
    .line 527
    move-result-wide v124

    .line 528
    const-wide v0, 0xff131314L

    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 534
    .line 535
    .line 536
    move-result-wide v126

    .line 537
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 538
    .line 539
    .line 540
    move-result-wide v128

    .line 541
    const-wide v0, 0xff39393aL

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 547
    .line 548
    .line 549
    move-result-wide v130

    .line 550
    const-wide v0, 0xffe5e2e3L

    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 556
    .line 557
    .line 558
    move-result-wide v132

    .line 559
    const-wide v2, 0xffc5c6ccL

    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 565
    .line 566
    .line 567
    move-result-wide v134

    .line 568
    const-wide v2, 0xff0e0e0fL

    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 574
    .line 575
    .line 576
    move-result-wide v136

    .line 577
    const-wide v2, 0xff1b1b1cL

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 583
    .line 584
    .line 585
    move-result-wide v138

    .line 586
    const-wide v2, 0xff201f20L

    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 592
    .line 593
    .line 594
    move-result-wide v140

    .line 595
    const-wide v2, 0xff2a2a2bL

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 601
    .line 602
    .line 603
    move-result-wide v142

    .line 604
    const-wide v2, 0xff353436L

    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 610
    .line 611
    .line 612
    move-result-wide v144

    .line 613
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 614
    .line 615
    .line 616
    move-result-wide v146

    .line 617
    const-wide v0, 0xff313031L

    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 623
    .line 624
    .line 625
    move-result-wide v148

    .line 626
    const-wide v0, 0xff66558fL

    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 632
    .line 633
    .line 634
    move-result-wide v150

    .line 635
    const-wide v0, 0xff8f9096L

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 641
    .line 642
    .line 643
    move-result-wide v152

    .line 644
    const-wide v0, 0xff44474cL

    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 650
    .line 651
    .line 652
    move-result-wide v154

    .line 653
    const-wide v0, 0xffbee6ffL

    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 659
    .line 660
    .line 661
    move-result-wide v158

    .line 662
    const-wide v2, 0xff002e41L

    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 668
    .line 669
    .line 670
    move-result-wide v160

    .line 671
    const-wide v2, 0xff262c40L

    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 677
    .line 678
    .line 679
    move-result-wide v162

    .line 680
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 681
    .line 682
    .line 683
    move-result-wide v164

    .line 684
    const-wide v0, 0xff8ee7aaL

    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 690
    .line 691
    .line 692
    move-result-wide v166

    .line 693
    const-wide v2, 0xff082b16L

    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 699
    .line 700
    .line 701
    move-result-wide v168

    .line 702
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 703
    .line 704
    .line 705
    move-result-wide v170

    .line 706
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 707
    .line 708
    .line 709
    move-result-wide v172

    .line 710
    const-wide v0, 0xfffee78aL

    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 716
    .line 717
    .line 718
    move-result-wide v174

    .line 719
    const-wide v2, 0xff411107L

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 725
    .line 726
    .line 727
    move-result-wide v176

    .line 728
    const-wide v2, 0xff423606L

    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 734
    .line 735
    .line 736
    move-result-wide v178

    .line 737
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 738
    .line 739
    .line 740
    move-result-wide v180

    .line 741
    invoke-direct/range {v93 .. v181}, Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    .line 742
    .line 743
    .line 744
    sput-object v93, Lnet/thunderbird/core/ui/compose/theme2/k9mail/ThemeColorsKt;->darkThemeColorScheme:Lnet/thunderbird/core/ui/compose/theme2/ThemeColorScheme;

    .line 745
    .line 746
    return-void
.end method
