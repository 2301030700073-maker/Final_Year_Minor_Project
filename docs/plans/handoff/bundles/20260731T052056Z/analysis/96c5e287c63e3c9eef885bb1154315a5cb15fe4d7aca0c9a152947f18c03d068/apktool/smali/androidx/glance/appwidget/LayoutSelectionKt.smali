.class public abstract Landroidx/glance/appwidget/LayoutSelectionKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final LayoutMap:Ljava/util/Map;

.field public static final RootAliasTypeCount:I

.field public static final TopLevelLayoutsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->Text:Landroidx/glance/appwidget/LayoutType;

    .line 2
    .line 3
    const v1, 0x7f0c028f

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lkotlin/Pair;

    .line 11
    .line 12
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->List:Landroidx/glance/appwidget/LayoutType;

    .line 16
    .line 17
    const v1, 0x7f0c024e

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v3, Lkotlin/Pair;

    .line 25
    .line 26
    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->CheckBox:Landroidx/glance/appwidget/LayoutType;

    .line 30
    .line 31
    const v1, 0x7f0c01c3

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v4, Lkotlin/Pair;

    .line 39
    .line 40
    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->CheckBoxBackport:Landroidx/glance/appwidget/LayoutType;

    .line 44
    .line 45
    const v1, 0x7f0c01c4

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v5, Lkotlin/Pair;

    .line 53
    .line 54
    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->Button:Landroidx/glance/appwidget/LayoutType;

    .line 58
    .line 59
    const v1, 0x7f0c01b7

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v6, Lkotlin/Pair;

    .line 67
    .line 68
    invoke-direct {v6, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->Swtch:Landroidx/glance/appwidget/LayoutType;

    .line 72
    .line 73
    const v1, 0x7f0c0277

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v7, Lkotlin/Pair;

    .line 81
    .line 82
    invoke-direct {v7, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->SwtchBackport:Landroidx/glance/appwidget/LayoutType;

    .line 86
    .line 87
    const v1, 0x7f0c0278

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v8, Lkotlin/Pair;

    .line 95
    .line 96
    invoke-direct {v8, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->Frame:Landroidx/glance/appwidget/LayoutType;

    .line 100
    .line 101
    const v1, 0x7f0c01ed

    .line 102
    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v9, Lkotlin/Pair;

    .line 109
    .line 110
    invoke-direct {v9, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->ImageCrop:Landroidx/glance/appwidget/LayoutType;

    .line 114
    .line 115
    const v1, 0x7f0c01f9

    .line 116
    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v10, Lkotlin/Pair;

    .line 123
    .line 124
    invoke-direct {v10, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->ImageCropDecorative:Landroidx/glance/appwidget/LayoutType;

    .line 128
    .line 129
    const v1, 0x7f0c01fd

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v11, Lkotlin/Pair;

    .line 137
    .line 138
    invoke-direct {v11, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->ImageFit:Landroidx/glance/appwidget/LayoutType;

    .line 142
    .line 143
    const v1, 0x7f0c0229

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    new-instance v12, Lkotlin/Pair;

    .line 151
    .line 152
    invoke-direct {v12, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->ImageFitDecorative:Landroidx/glance/appwidget/LayoutType;

    .line 156
    .line 157
    const v1, 0x7f0c022d

    .line 158
    .line 159
    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    new-instance v13, Lkotlin/Pair;

    .line 165
    .line 166
    invoke-direct {v13, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->ImageFillBounds:Landroidx/glance/appwidget/LayoutType;

    .line 170
    .line 171
    const v1, 0x7f0c0211

    .line 172
    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    new-instance v14, Lkotlin/Pair;

    .line 179
    .line 180
    invoke-direct {v14, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->ImageFillBoundsDecorative:Landroidx/glance/appwidget/LayoutType;

    .line 184
    .line 185
    const v1, 0x7f0c0215

    .line 186
    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    new-instance v15, Lkotlin/Pair;

    .line 193
    .line 194
    invoke-direct {v15, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->LinearProgressIndicator:Landroidx/glance/appwidget/LayoutType;

    .line 198
    .line 199
    const v1, 0x7f0c0242

    .line 200
    .line 201
    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    move-object/from16 v16, v2

    .line 207
    .line 208
    new-instance v2, Lkotlin/Pair;

    .line 209
    .line 210
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->CircularProgressIndicator:Landroidx/glance/appwidget/LayoutType;

    .line 214
    .line 215
    const v1, 0x7f0c01de

    .line 216
    .line 217
    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    move-object/from16 v17, v2

    .line 223
    .line 224
    new-instance v2, Lkotlin/Pair;

    .line 225
    .line 226
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->VerticalGridOneColumn:Landroidx/glance/appwidget/LayoutType;

    .line 230
    .line 231
    const v1, 0x7f0c02bf

    .line 232
    .line 233
    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    move-object/from16 v18, v2

    .line 239
    .line 240
    new-instance v2, Lkotlin/Pair;

    .line 241
    .line 242
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->VerticalGridTwoColumns:Landroidx/glance/appwidget/LayoutType;

    .line 246
    .line 247
    const v1, 0x7f0c02d7

    .line 248
    .line 249
    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    move-object/from16 v19, v2

    .line 255
    .line 256
    new-instance v2, Lkotlin/Pair;

    .line 257
    .line 258
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->VerticalGridThreeColumns:Landroidx/glance/appwidget/LayoutType;

    .line 262
    .line 263
    const v1, 0x7f0c02cb

    .line 264
    .line 265
    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    move-object/from16 v20, v2

    .line 271
    .line 272
    new-instance v2, Lkotlin/Pair;

    .line 273
    .line 274
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->VerticalGridFourColumns:Landroidx/glance/appwidget/LayoutType;

    .line 278
    .line 279
    const v1, 0x7f0c02b3

    .line 280
    .line 281
    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    move-object/from16 v21, v2

    .line 287
    .line 288
    new-instance v2, Lkotlin/Pair;

    .line 289
    .line 290
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->VerticalGridFiveColumns:Landroidx/glance/appwidget/LayoutType;

    .line 294
    .line 295
    const v1, 0x7f0c02a7

    .line 296
    .line 297
    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    move-object/from16 v22, v2

    .line 303
    .line 304
    new-instance v2, Lkotlin/Pair;

    .line 305
    .line 306
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->VerticalGridAutoFit:Landroidx/glance/appwidget/LayoutType;

    .line 310
    .line 311
    const v1, 0x7f0c029b

    .line 312
    .line 313
    .line 314
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    move-object/from16 v23, v2

    .line 319
    .line 320
    new-instance v2, Lkotlin/Pair;

    .line 321
    .line 322
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->RadioButton:Landroidx/glance/appwidget/LayoutType;

    .line 326
    .line 327
    const v1, 0x7f0c025a

    .line 328
    .line 329
    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    move-object/from16 v24, v2

    .line 335
    .line 336
    new-instance v2, Lkotlin/Pair;

    .line 337
    .line 338
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    sget-object v0, Landroidx/glance/appwidget/LayoutType;->RadioButtonBackport:Landroidx/glance/appwidget/LayoutType;

    .line 342
    .line 343
    const v1, 0x7f0c025b

    .line 344
    .line 345
    .line 346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    move-object/from16 v25, v2

    .line 351
    .line 352
    new-instance v2, Lkotlin/Pair;

    .line 353
    .line 354
    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    const/16 v0, 0x18

    .line 358
    .line 359
    new-array v0, v0, [Lkotlin/Pair;

    .line 360
    .line 361
    const/4 v1, 0x0

    .line 362
    aput-object v16, v0, v1

    .line 363
    .line 364
    const/4 v1, 0x1

    .line 365
    aput-object v3, v0, v1

    .line 366
    .line 367
    const/4 v1, 0x2

    .line 368
    aput-object v4, v0, v1

    .line 369
    .line 370
    const/4 v1, 0x3

    .line 371
    aput-object v5, v0, v1

    .line 372
    .line 373
    const/4 v1, 0x4

    .line 374
    aput-object v6, v0, v1

    .line 375
    .line 376
    const/4 v1, 0x5

    .line 377
    aput-object v7, v0, v1

    .line 378
    .line 379
    const/4 v1, 0x6

    .line 380
    aput-object v8, v0, v1

    .line 381
    .line 382
    const/4 v1, 0x7

    .line 383
    aput-object v9, v0, v1

    .line 384
    .line 385
    const/16 v1, 0x8

    .line 386
    .line 387
    aput-object v10, v0, v1

    .line 388
    .line 389
    const/16 v1, 0x9

    .line 390
    .line 391
    aput-object v11, v0, v1

    .line 392
    .line 393
    const/16 v1, 0xa

    .line 394
    .line 395
    aput-object v12, v0, v1

    .line 396
    .line 397
    const/16 v1, 0xb

    .line 398
    .line 399
    aput-object v13, v0, v1

    .line 400
    .line 401
    const/16 v1, 0xc

    .line 402
    .line 403
    aput-object v14, v0, v1

    .line 404
    .line 405
    const/16 v1, 0xd

    .line 406
    .line 407
    aput-object v15, v0, v1

    .line 408
    .line 409
    const/16 v1, 0xe

    .line 410
    .line 411
    aput-object v17, v0, v1

    .line 412
    .line 413
    const/16 v1, 0xf

    .line 414
    .line 415
    aput-object v18, v0, v1

    .line 416
    .line 417
    const/16 v1, 0x10

    .line 418
    .line 419
    aput-object v19, v0, v1

    .line 420
    .line 421
    const/16 v1, 0x11

    .line 422
    .line 423
    aput-object v20, v0, v1

    .line 424
    .line 425
    const/16 v1, 0x12

    .line 426
    .line 427
    aput-object v21, v0, v1

    .line 428
    .line 429
    const/16 v1, 0x13

    .line 430
    .line 431
    aput-object v22, v0, v1

    .line 432
    .line 433
    const/16 v1, 0x14

    .line 434
    .line 435
    aput-object v23, v0, v1

    .line 436
    .line 437
    const/16 v1, 0x15

    .line 438
    .line 439
    aput-object v24, v0, v1

    .line 440
    .line 441
    const/16 v1, 0x16

    .line 442
    .line 443
    aput-object v25, v0, v1

    .line 444
    .line 445
    const/16 v1, 0x17

    .line 446
    .line 447
    aput-object v2, v0, v1

    .line 448
    .line 449
    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    sput-object v0, Landroidx/glance/appwidget/LayoutSelectionKt;->LayoutMap:Ljava/util/Map;

    .line 454
    .line 455
    sget-object v0, Landroidx/glance/appwidget/GeneratedLayoutsKt;->generatedRootLayoutShifts:Ljava/util/Map;

    .line 456
    .line 457
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    sput v0, Landroidx/glance/appwidget/LayoutSelectionKt;->RootAliasTypeCount:I

    .line 462
    .line 463
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 464
    .line 465
    const/16 v2, 0x1f

    .line 466
    .line 467
    if-lt v1, v2, :cond_0

    .line 468
    .line 469
    sget v0, Landroidx/glance/appwidget/GeneratedLayoutsKt;->RootAliasCount:I

    .line 470
    .line 471
    goto :goto_0

    .line 472
    :cond_0
    sget v1, Landroidx/glance/appwidget/GeneratedLayoutsKt;->RootAliasCount:I

    .line 473
    .line 474
    div-int v0, v1, v0

    .line 475
    .line 476
    :goto_0
    sput v0, Landroidx/glance/appwidget/LayoutSelectionKt;->TopLevelLayoutsCount:I

    .line 477
    .line 478
    return-void
.end method

.method public static final createRootView(Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/GlanceModifier;I)Landroidx/glance/appwidget/RemoteViewsInfo;
    .locals 8

    .line 1
    const v0, 0x7f09059a

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object p0, p0, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 14
    .line 15
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v4, 0x1f

    .line 18
    .line 19
    const-string v5, ", currently "

    .line 20
    .line 21
    const-string v6, "Index of the root view cannot be more than "

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    if-lt v3, v4, :cond_5

    .line 25
    .line 26
    sget v4, Landroidx/glance/appwidget/GeneratedLayoutsKt;->RootAliasCount:I

    .line 27
    .line 28
    if-ge p2, v4, :cond_4

    .line 29
    .line 30
    new-instance v4, Landroidx/glance/appwidget/SizeSelector;

    .line 31
    .line 32
    sget-object v5, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 33
    .line 34
    invoke-direct {v4, v5, v5}, Landroidx/glance/appwidget/SizeSelector;-><init>(Landroidx/glance/appwidget/LayoutSize;Landroidx/glance/appwidget/LayoutSize;)V

    .line 35
    .line 36
    .line 37
    sget v5, Landroidx/glance/appwidget/GeneratedLayoutsKt;->FirstRootAlias:I

    .line 38
    .line 39
    add-int/2addr v5, p2

    .line 40
    new-instance p2, Landroid/widget/RemoteViews;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-direct {p2, v6, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sget-object v5, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$3:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 50
    .line 51
    invoke-interface {p1, v7, v5}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroidx/glance/layout/WidthModifier;

    .line 56
    .line 57
    const v6, 0x7f09059b

    .line 58
    .line 59
    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    invoke-static {p0, p2, v5, v6}, Lcoil3/util/UtilsKt;->applySimpleWidthModifier(Landroid/content/Context;Landroid/widget/RemoteViews;Landroidx/glance/layout/WidthModifier;I)V

    .line 63
    .line 64
    .line 65
    :cond_0
    sget-object v5, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$4:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 66
    .line 67
    invoke-interface {p1, v7, v5}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroidx/glance/layout/HeightModifier;

    .line 72
    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    invoke-static {p0, p2, p1, v6}, Lcoil3/util/UtilsKt;->applySimpleHeightModifier(Landroid/content/Context;Landroid/widget/RemoteViews;Landroidx/glance/layout/HeightModifier;I)V

    .line 76
    .line 77
    .line 78
    :cond_1
    const/16 p0, 0x21

    .line 79
    .line 80
    if-lt v3, p0, :cond_2

    .line 81
    .line 82
    invoke-virtual {p2, v6}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    new-instance p1, Landroidx/glance/appwidget/InsertedViewInfo;

    .line 86
    .line 87
    if-lt v3, p0, :cond_3

    .line 88
    .line 89
    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v2, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    :goto_0
    const/4 v0, 0x2

    .line 107
    invoke-direct {p1, v6, v1, p0, v0}, Landroidx/glance/appwidget/InsertedViewInfo;-><init>(IILjava/util/Map;I)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Landroidx/glance/appwidget/RemoteViewsInfo;

    .line 111
    .line 112
    invoke-direct {p0, p2, p1}, Landroidx/glance/appwidget/RemoteViewsInfo;-><init>(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/InsertedViewInfo;)V

    .line 113
    .line 114
    .line 115
    return-object p0

    .line 116
    :cond_4
    invoke-static {v4, p2, v6, v5}, Landroidx/compose/ui/Modifier$-CC;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return-object v7

    .line 124
    :cond_5
    sget v3, Landroidx/glance/appwidget/LayoutSelectionKt;->RootAliasTypeCount:I

    .line 125
    .line 126
    mul-int/2addr v3, p2

    .line 127
    sget v4, Landroidx/glance/appwidget/GeneratedLayoutsKt;->RootAliasCount:I

    .line 128
    .line 129
    if-ge v3, v4, :cond_d

    .line 130
    .line 131
    sget-object p2, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$1:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 132
    .line 133
    invoke-interface {p1, v7, p2}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    check-cast p2, Landroidx/glance/layout/WidthModifier;

    .line 138
    .line 139
    sget-object v4, Landroidx/glance/unit/Dimension$Wrap;->INSTANCE:Landroidx/glance/unit/Dimension$Wrap;

    .line 140
    .line 141
    if-eqz p2, :cond_6

    .line 142
    .line 143
    iget-object p2, p2, Landroidx/glance/layout/WidthModifier;->width:Landroidx/glance/unit/Dimension;

    .line 144
    .line 145
    invoke-static {p2, p0}, Landroidx/glance/appwidget/LayoutSelectionKt;->resolveDimension(Landroidx/glance/unit/Dimension;Landroid/content/Context;)Landroidx/glance/unit/Dimension;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    goto :goto_1

    .line 150
    :cond_6
    move-object p2, v4

    .line 151
    :goto_1
    sget-object v5, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$2:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 152
    .line 153
    invoke-interface {p1, v7, v5}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroidx/glance/layout/HeightModifier;

    .line 158
    .line 159
    if-eqz p1, :cond_7

    .line 160
    .line 161
    iget-object p1, p1, Landroidx/glance/layout/HeightModifier;->height:Landroidx/glance/unit/Dimension;

    .line 162
    .line 163
    invoke-static {p1, p0}, Landroidx/glance/appwidget/LayoutSelectionKt;->resolveDimension(Landroidx/glance/unit/Dimension;Landroid/content/Context;)Landroidx/glance/unit/Dimension;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    :cond_7
    sget-object p1, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 168
    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-eqz p2, :cond_8

    .line 174
    .line 175
    sget-object p2, Landroidx/glance/appwidget/LayoutSize;->MatchParent:Landroidx/glance/appwidget/LayoutSize;

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_8
    sget-object p2, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 179
    .line 180
    :goto_2
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_9

    .line 185
    .line 186
    sget-object p1, Landroidx/glance/appwidget/LayoutSize;->MatchParent:Landroidx/glance/appwidget/LayoutSize;

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_9
    sget-object p1, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 190
    .line 191
    :goto_3
    new-instance v4, Landroidx/glance/appwidget/SizeSelector;

    .line 192
    .line 193
    sget-object v5, Landroidx/glance/appwidget/LayoutSize;->Fixed:Landroidx/glance/appwidget/LayoutSize;

    .line 194
    .line 195
    if-ne p2, v5, :cond_a

    .line 196
    .line 197
    sget-object v6, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_a
    move-object v6, p2

    .line 201
    :goto_4
    if-ne p1, v5, :cond_b

    .line 202
    .line 203
    sget-object v5, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_b
    move-object v5, p1

    .line 207
    :goto_5
    invoke-direct {v4, v6, v5}, Landroidx/glance/appwidget/SizeSelector;-><init>(Landroidx/glance/appwidget/LayoutSize;Landroidx/glance/appwidget/LayoutSize;)V

    .line 208
    .line 209
    .line 210
    sget-object v5, Landroidx/glance/appwidget/GeneratedLayoutsKt;->generatedRootLayoutShifts:Ljava/util/Map;

    .line 211
    .line 212
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Ljava/lang/Integer;

    .line 217
    .line 218
    if-eqz v5, :cond_c

    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    sget p2, Landroidx/glance/appwidget/GeneratedLayoutsKt;->FirstRootAlias:I

    .line 225
    .line 226
    add-int/2addr v3, p2

    .line 227
    add-int/2addr v3, p1

    .line 228
    new-instance p1, Landroidx/glance/appwidget/RemoteViewsInfo;

    .line 229
    .line 230
    new-instance p2, Landroid/widget/RemoteViews;

    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-direct {p2, p0, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    new-instance p0, Landroidx/glance/appwidget/InsertedViewInfo;

    .line 240
    .line 241
    invoke-static {v4, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    const/4 v2, 0x3

    .line 256
    invoke-direct {p0, v1, v1, v0, v2}, Landroidx/glance/appwidget/InsertedViewInfo;-><init>(IILjava/util/Map;I)V

    .line 257
    .line 258
    .line 259
    invoke-direct {p1, p2, p0}, Landroidx/glance/appwidget/RemoteViewsInfo;-><init>(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/InsertedViewInfo;)V

    .line 260
    .line 261
    .line 262
    return-object p1

    .line 263
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    const-string v1, "Cannot find root element for size ["

    .line 268
    .line 269
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    const-string p2, ", "

    .line 276
    .line 277
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const/16 p1, 0x5d

    .line 284
    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p0

    .line 296
    :cond_d
    div-int/lit8 v4, v4, 0x4

    .line 297
    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 317
    .line 318
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    throw p1
.end method

.method public static final insertContainerView-nVsUan0(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/LayoutType;ILandroidx/glance/GlanceModifier;Landroidx/glance/layout/Alignment$Horizontal;Landroidx/glance/layout/Alignment$Vertical;)Landroidx/glance/appwidget/InsertedViewInfo;
    .locals 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-le p3, v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Truncated "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " container from "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " to 10 elements"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, " container cannot have more than 10 elements"

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v3, "GlanceAppWidget"

    .line 55
    .line 56
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_0
    if-le p3, v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v0, p3

    .line 63
    :goto_0
    invoke-static {p2, p4}, Landroidx/glance/appwidget/LayoutSelectionKt;->selectLayout33(Landroidx/glance/appwidget/LayoutType;Landroidx/glance/GlanceModifier;)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    sget-object v1, Landroidx/glance/appwidget/GeneratedLayoutsKt;->generatedContainers:Ljava/util/Map;

    .line 76
    .line 77
    new-instance v3, Landroidx/glance/appwidget/ContainerSelector;

    .line 78
    .line 79
    invoke-direct {v3, p2, v0, p5, p6}, Landroidx/glance/appwidget/ContainerSelector;-><init>(Landroidx/glance/appwidget/LayoutType;ILandroidx/glance/layout/Alignment$Horizontal;Landroidx/glance/layout/Alignment$Vertical;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p5

    .line 86
    check-cast p5, Landroidx/glance/appwidget/ContainerInfo;

    .line 87
    .line 88
    if-eqz p5, :cond_3

    .line 89
    .line 90
    iget p5, p5, Landroidx/glance/appwidget/ContainerInfo;->layoutId:I

    .line 91
    .line 92
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p5

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move-object p5, v2

    .line 98
    :goto_1
    if-eqz p5, :cond_6

    .line 99
    .line 100
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result p3

    .line 104
    :goto_2
    sget-object p5, Landroidx/glance/appwidget/GeneratedLayoutsKt;->generatedChildren:Ljava/util/Map;

    .line 105
    .line 106
    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p5

    .line 110
    check-cast p5, Ljava/util/Map;

    .line 111
    .line 112
    if-eqz p5, :cond_5

    .line 113
    .line 114
    invoke-static {p0, p1, p3, p4}, Landroidx/glance/appwidget/LayoutSelectionKt;->insertViewInternal(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/GlanceModifier;)Landroidx/glance/appwidget/InsertedViewInfo;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget p2, p1, Landroidx/glance/appwidget/InsertedViewInfo;->mainViewId:I

    .line 119
    .line 120
    iget p1, p1, Landroidx/glance/appwidget/InsertedViewInfo;->complexViewId:I

    .line 121
    .line 122
    new-instance p3, Landroidx/glance/appwidget/InsertedViewInfo;

    .line 123
    .line 124
    invoke-direct {p3, p2, p1, p5}, Landroidx/glance/appwidget/InsertedViewInfo;-><init>(IILjava/util/Map;)V

    .line 125
    .line 126
    .line 127
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 128
    .line 129
    const/16 p4, 0x21

    .line 130
    .line 131
    if-lt p1, p4, :cond_4

    .line 132
    .line 133
    invoke-virtual {p0, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 134
    .line 135
    .line 136
    :cond_4
    return-object p3

    .line 137
    :cond_5
    const-string p0, "Cannot find generated children for "

    .line 138
    .line 139
    invoke-static {p0, p2}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-object v2

    .line 143
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 144
    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string p4, "Cannot find container "

    .line 148
    .line 149
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p2, " with "

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p2, " children"

    .line 164
    .line 165
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0
.end method

.method public static final insertView(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;Landroidx/glance/appwidget/LayoutType;Landroidx/glance/GlanceModifier;)Landroidx/glance/appwidget/InsertedViewInfo;
    .locals 1

    .line 1
    invoke-static {p2, p3}, Landroidx/glance/appwidget/LayoutSelectionKt;->selectLayout33(Landroidx/glance/appwidget/LayoutType;Landroidx/glance/GlanceModifier;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Landroidx/glance/appwidget/LayoutSelectionKt;->LayoutMap:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroidx/glance/appwidget/LayoutSelectionKt;->insertViewInternal(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/GlanceModifier;)Landroidx/glance/appwidget/InsertedViewInfo;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    const-string p0, "Cannot use `insertView` with a container like "

    .line 29
    .line 30
    invoke-static {p0, p2}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public static final insertViewInternal(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/GlanceModifier;)Landroidx/glance/appwidget/InsertedViewInfo;
    .locals 10

    .line 1
    iget v0, p1, Landroidx/glance/appwidget/TranslationContext;->itemPosition:I

    .line 2
    .line 3
    iget-object v1, p1, Landroidx/glance/appwidget/TranslationContext;->context:Landroid/content/Context;

    .line 4
    .line 5
    sget-object v2, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$5:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {p3, v3, v2}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroidx/glance/layout/WidthModifier;

    .line 13
    .line 14
    sget-object v4, Landroidx/glance/unit/Dimension$Wrap;->INSTANCE:Landroidx/glance/unit/Dimension$Wrap;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/glance/layout/WidthModifier;->width:Landroidx/glance/unit/Dimension;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v4

    .line 22
    :goto_0
    sget-object v5, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$6:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 23
    .line 24
    invoke-interface {p3, v3, v5}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroidx/glance/layout/HeightModifier;

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget-object v4, v5, Landroidx/glance/layout/HeightModifier;->height:Landroidx/glance/unit/Dimension;

    .line 33
    .line 34
    :cond_1
    invoke-interface {p3}, Landroidx/glance/GlanceModifier;->all()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_2

    .line 39
    .line 40
    move-object p3, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    iget-object p3, p1, Landroidx/glance/appwidget/TranslationContext;->isBackgroundSpecified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    invoke-virtual {p3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-nez p3, :cond_c

    .line 50
    .line 51
    const/high16 p3, 0x1020000

    .line 52
    .line 53
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const/16 v6, 0x21

    .line 60
    .line 61
    const/16 v7, 0x1f

    .line 62
    .line 63
    const/4 v8, 0x6

    .line 64
    const/4 v9, 0x0

    .line 65
    if-lt v5, v6, :cond_5

    .line 66
    .line 67
    if-eqz p3, :cond_3

    .line 68
    .line 69
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p3

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget-object p3, p1, Landroidx/glance/appwidget/TranslationContext;->lastViewId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    :goto_2
    sget-object v2, Landroidx/glance/appwidget/LayoutSelectionApi31Impl;->INSTANCE:Landroidx/glance/appwidget/LayoutSelectionApi31Impl;

    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v2, v1, p2, p3}, Landroidx/glance/appwidget/LayoutSelectionApi31Impl;->remoteViews(Ljava/lang/String;II)Landroid/widget/RemoteViews;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    iget-object p1, p1, Landroidx/glance/appwidget/TranslationContext;->parentContext:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 91
    .line 92
    iget p1, p1, Landroidx/glance/appwidget/InsertedViewInfo;->mainViewId:I

    .line 93
    .line 94
    if-lt v5, v7, :cond_4

    .line 95
    .line 96
    sget-object v1, Landroidx/glance/appwidget/RemoteViewsTranslatorApi31Impl;->INSTANCE:Landroidx/glance/appwidget/RemoteViewsTranslatorApi31Impl;

    .line 97
    .line 98
    invoke-virtual {v1, p0, p1, p2, v0}, Landroidx/glance/appwidget/RemoteViewsTranslatorApi31Impl;->addChildView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;I)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 103
    .line 104
    .line 105
    :goto_3
    new-instance p0, Landroidx/glance/appwidget/InsertedViewInfo;

    .line 106
    .line 107
    invoke-direct {p0, p3, v9, v3, v8}, Landroidx/glance/appwidget/InsertedViewInfo;-><init>(IILjava/util/Map;I)V

    .line 108
    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_5
    if-lt v5, v7, :cond_8

    .line 112
    .line 113
    sget-object v1, Landroidx/glance/unit/Dimension$Expand;->INSTANCE:Landroidx/glance/unit/Dimension$Expand;

    .line 114
    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_6

    .line 120
    .line 121
    sget-object v2, Landroidx/glance/appwidget/LayoutSize;->Expand:Landroidx/glance/appwidget/LayoutSize;

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    sget-object v2, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 125
    .line 126
    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_7

    .line 131
    .line 132
    sget-object v1, Landroidx/glance/appwidget/LayoutSize;->Expand:Landroidx/glance/appwidget/LayoutSize;

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_7
    sget-object v1, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 136
    .line 137
    :goto_5
    invoke-static {p0, p1, v0, v2, v1}, Landroidx/glance/appwidget/LayoutSelectionKt;->selectChild(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/LayoutSize;Landroidx/glance/appwidget/LayoutSize;)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-static {p0, p1, v0, p2, p3}, Landroidx/work/OperationKt;->inflateViewStub(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;IILjava/lang/Integer;)I

    .line 142
    .line 143
    .line 144
    move-result p0

    .line 145
    new-instance p1, Landroidx/glance/appwidget/InsertedViewInfo;

    .line 146
    .line 147
    invoke-direct {p1, p0, v9, v3, v8}, Landroidx/glance/appwidget/InsertedViewInfo;-><init>(IILjava/util/Map;I)V

    .line 148
    .line 149
    .line 150
    return-object p1

    .line 151
    :cond_8
    invoke-static {v2, v1}, Landroidx/glance/appwidget/LayoutSelectionKt;->resolveDimension(Landroidx/glance/unit/Dimension;Landroid/content/Context;)Landroidx/glance/unit/Dimension;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v2}, Landroidx/glance/appwidget/LayoutSelectionKt;->toSpecSize(Landroidx/glance/unit/Dimension;)Landroidx/glance/appwidget/LayoutSize;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v4, v1}, Landroidx/glance/appwidget/LayoutSelectionKt;->resolveDimension(Landroidx/glance/unit/Dimension;Landroid/content/Context;)Landroidx/glance/unit/Dimension;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v1}, Landroidx/glance/appwidget/LayoutSelectionKt;->toSpecSize(Landroidx/glance/unit/Dimension;)Landroidx/glance/appwidget/LayoutSize;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-static {p0, p1, v0, v2, v1}, Landroidx/glance/appwidget/LayoutSelectionKt;->selectChild(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/LayoutSize;Landroidx/glance/appwidget/LayoutSize;)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    sget-object v4, Landroidx/glance/appwidget/LayoutSize;->Fixed:Landroidx/glance/appwidget/LayoutSize;

    .line 172
    .line 173
    if-eq v2, v4, :cond_a

    .line 174
    .line 175
    if-ne v1, v4, :cond_9

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_9
    invoke-static {p0, p1, v0, p2, p3}, Landroidx/work/OperationKt;->inflateViewStub(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;IILjava/lang/Integer;)I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    new-instance p1, Landroidx/glance/appwidget/InsertedViewInfo;

    .line 183
    .line 184
    invoke-direct {p1, p0, v9, v3, v8}, Landroidx/glance/appwidget/InsertedViewInfo;-><init>(IILjava/util/Map;I)V

    .line 185
    .line 186
    .line 187
    return-object p1

    .line 188
    :cond_a
    :goto_6
    sget-object v4, Landroidx/glance/appwidget/GeneratedLayoutsKt;->generatedComplexLayouts:Ljava/util/Map;

    .line 189
    .line 190
    new-instance v5, Landroidx/glance/appwidget/SizeSelector;

    .line 191
    .line 192
    invoke-direct {v5, v2, v1}, Landroidx/glance/appwidget/SizeSelector;-><init>(Landroidx/glance/appwidget/LayoutSize;Landroidx/glance/appwidget/LayoutSize;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    check-cast v4, Landroidx/glance/appwidget/LayoutInfo;

    .line 200
    .line 201
    if-eqz v4, :cond_b

    .line 202
    .line 203
    iget v1, v4, Landroidx/glance/appwidget/LayoutInfo;->layoutId:I

    .line 204
    .line 205
    invoke-static {p0, p1, v0, v1, v3}, Landroidx/work/OperationKt;->inflateViewStub(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;IILjava/lang/Integer;)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    const v1, 0x7f09028a

    .line 210
    .line 211
    .line 212
    invoke-static {p0, p1, v1, p2, p3}, Landroidx/work/OperationKt;->inflateViewStub(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;IILjava/lang/Integer;)I

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    new-instance p1, Landroidx/glance/appwidget/InsertedViewInfo;

    .line 217
    .line 218
    const/4 p2, 0x4

    .line 219
    invoke-direct {p1, p0, v0, v3, p2}, Landroidx/glance/appwidget/InsertedViewInfo;-><init>(IILjava/util/Map;I)V

    .line 220
    .line 221
    .line 222
    return-object p1

    .line 223
    :cond_b
    const-string p0, "Could not find complex layout for width="

    .line 224
    .line 225
    const-string p1, ", height="

    .line 226
    .line 227
    invoke-static {p0, v2, p1, v1}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v3

    .line 231
    :cond_c
    const-string p0, "At most one view can be set as AppWidgetBackground."

    .line 232
    .line 233
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    return-object v3
.end method

.method public static final resolveDimension(Landroidx/glance/unit/Dimension;Landroid/content/Context;)Landroidx/glance/unit/Dimension;
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/glance/unit/Dimension$Resource;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const v0, 0x7f0700a3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    float-to-int v0, p0

    .line 18
    const/4 v1, -0x2

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    new-instance v0, Landroidx/glance/unit/Dimension$Dp;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 35
    .line 36
    div-float/2addr p0, p1

    .line 37
    invoke-direct {v0, p0}, Landroidx/glance/unit/Dimension$Dp;-><init>(F)V

    .line 38
    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    sget-object p0, Landroidx/glance/unit/Dimension$Fill;->INSTANCE:Landroidx/glance/unit/Dimension$Fill;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    sget-object p0, Landroidx/glance/unit/Dimension$Wrap;->INSTANCE:Landroidx/glance/unit/Dimension$Wrap;

    .line 45
    .line 46
    return-object p0
.end method

.method public static final selectChild(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;ILandroidx/glance/appwidget/LayoutSize;Landroidx/glance/appwidget/LayoutSize;)I
    .locals 3

    .line 1
    new-instance v0, Landroidx/glance/appwidget/SizeSelector;

    .line 2
    .line 3
    sget-object v1, Landroidx/glance/appwidget/LayoutSize;->Fixed:Landroidx/glance/appwidget/LayoutSize;

    .line 4
    .line 5
    if-ne p3, v1, :cond_0

    .line 6
    .line 7
    sget-object v2, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v2, p3

    .line 11
    :goto_0
    if-ne p4, v1, :cond_1

    .line 12
    .line 13
    sget-object v1, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v1, p4

    .line 17
    :goto_1
    invoke-direct {v0, v2, v1}, Landroidx/glance/appwidget/SizeSelector;-><init>(Landroidx/glance/appwidget/LayoutSize;Landroidx/glance/appwidget/LayoutSize;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p1, Landroidx/glance/appwidget/TranslationContext;->parentContext:Landroidx/glance/appwidget/InsertedViewInfo;

    .line 21
    .line 22
    iget-object v1, v1, Landroidx/glance/appwidget/InsertedViewInfo;->children:Ljava/util/Map;

    .line 23
    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map;

    .line 33
    .line 34
    if-eqz v1, :cond_6

    .line 35
    .line 36
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Integer;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Ljava/lang/Iterable;

    .line 53
    .line 54
    new-instance p4, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    :cond_2
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    move-object v1, v0

    .line 74
    check-cast v1, Ljava/lang/Number;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eq v1, p2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result p4

    .line 94
    if-eqz p4, :cond_4

    .line 95
    .line 96
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    check-cast p4, Ljava/lang/Number;

    .line 101
    .line 102
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result p4

    .line 106
    const v0, 0x7f0901a0

    .line 107
    .line 108
    .line 109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const v1, 0x7f0c01eb

    .line 114
    .line 115
    .line 116
    invoke-static {p0, p1, p4, v1, v0}, Landroidx/work/OperationKt;->inflateViewStub(Landroid/widget/RemoteViews;Landroidx/glance/appwidget/TranslationContext;IILjava/lang/Integer;)I

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    return p2

    .line 121
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v0, "No child for position "

    .line 126
    .line 127
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p2, " and size "

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string p2, " x "

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_6
    const-string p0, "Parent doesn\'t have child position "

    .line 158
    .line 159
    invoke-static {p2, p0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const/4 p0, 0x0

    .line 167
    return p0
.end method

.method public static final selectLayout33(Landroidx/glance/appwidget/LayoutType;Landroidx/glance/GlanceModifier;)Ljava/lang/Integer;
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    sget-object v0, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$7:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 10
    .line 11
    invoke-interface {p1, v2, v0}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/glance/appwidget/AlignmentModifier;

    .line 16
    .line 17
    sget-object v1, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$8:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 18
    .line 19
    invoke-interface {p1, v2, v1}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/glance/layout/WidthModifier;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    sget-object v4, Landroidx/glance/unit/Dimension$Expand;->INSTANCE:Landroidx/glance/unit/Dimension$Expand;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v1, Landroidx/glance/layout/WidthModifier;->width:Landroidx/glance/unit/Dimension;

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v1, v3

    .line 38
    :goto_0
    sget-object v5, Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;->INSTANCE$9:Landroidx/glance/appwidget/SizeBoxKt$SizeBox$1$2$1;

    .line 39
    .line 40
    invoke-interface {p1, v2, v5}, Landroidx/glance/GlanceModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroidx/glance/layout/HeightModifier;

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iget-object p1, p1, Landroidx/glance/layout/HeightModifier;->height:Landroidx/glance/unit/Dimension;

    .line 49
    .line 50
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    :cond_2
    const-string p1, "Cannot find "

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/glance/appwidget/AlignmentModifier;->alignment:Landroidx/glance/layout/Alignment;

    .line 59
    .line 60
    sget-object v1, Landroidx/glance/appwidget/GeneratedLayoutsKt;->generatedBoxChildren:Ljava/util/Map;

    .line 61
    .line 62
    new-instance v3, Landroidx/glance/appwidget/BoxChildSelector;

    .line 63
    .line 64
    iget v4, v0, Landroidx/glance/layout/Alignment;->horizontal:I

    .line 65
    .line 66
    iget v5, v0, Landroidx/glance/layout/Alignment;->vertical:I

    .line 67
    .line 68
    invoke-direct {v3, p0, v4, v5}, Landroidx/glance/appwidget/BoxChildSelector;-><init>(Landroidx/glance/appwidget/LayoutType;II)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroidx/glance/appwidget/LayoutInfo;

    .line 76
    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    iget p0, v1, Landroidx/glance/appwidget/LayoutInfo;->layoutId:I

    .line 80
    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :cond_3
    const-string v1, " with alignment "

    .line 87
    .line 88
    invoke-static {p1, p0, v1, v0}, Lretrofit2/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-object v2

    .line 92
    :cond_4
    if-nez v1, :cond_6

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    :goto_1
    return-object v2

    .line 98
    :cond_6
    :goto_2
    sget-object v0, Landroidx/glance/appwidget/GeneratedLayoutsKt;->generatedRowColumnChildren:Ljava/util/Map;

    .line 99
    .line 100
    new-instance v4, Landroidx/glance/appwidget/RowColumnChildSelector;

    .line 101
    .line 102
    invoke-direct {v4, p0, v1, v3}, Landroidx/glance/appwidget/RowColumnChildSelector;-><init>(Landroidx/glance/appwidget/LayoutType;ZZ)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroidx/glance/appwidget/LayoutInfo;

    .line 110
    .line 111
    if-eqz v0, :cond_7

    .line 112
    .line 113
    iget p0, v0, Landroidx/glance/appwidget/LayoutInfo;->layoutId:I

    .line 114
    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_7
    const-string v0, " with defaultWeight set"

    .line 121
    .line 122
    invoke-static {p0, v0, p1}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-object v2
.end method

.method public static final toSpecSize(Landroidx/glance/unit/Dimension;)Landroidx/glance/appwidget/LayoutSize;
    .locals 1

    .line 1
    instance-of v0, p0, Landroidx/glance/unit/Dimension$Wrap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/glance/appwidget/LayoutSize;->Wrap:Landroidx/glance/appwidget/LayoutSize;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Landroidx/glance/unit/Dimension$Expand;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object p0, Landroidx/glance/appwidget/LayoutSize;->Expand:Landroidx/glance/appwidget/LayoutSize;

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    instance-of v0, p0, Landroidx/glance/unit/Dimension$Fill;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object p0, Landroidx/glance/appwidget/LayoutSize;->MatchParent:Landroidx/glance/appwidget/LayoutSize;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    instance-of v0, p0, Landroidx/glance/unit/Dimension$Dp;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_3
    instance-of p0, p0, Landroidx/glance/unit/Dimension$Resource;

    .line 29
    .line 30
    :goto_0
    if-eqz p0, :cond_4

    .line 31
    .line 32
    sget-object p0, Landroidx/glance/appwidget/LayoutSize;->Fixed:Landroidx/glance/appwidget/LayoutSize;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_4
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method
