.class public final enum Lorg/schabi/newpipe/extractor/MediaFormat;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;


# instance fields
.field public final id:I

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    const-string v5, "mp4"

    .line 4
    .line 5
    const-string/jumbo v6, "video/mp4"

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "MPEG_4"

    .line 11
    .line 12
    const-string v4, "MPEG-4"

    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 18
    .line 19
    new-instance v1, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 20
    .line 21
    const-string v6, "3gp"

    .line 22
    .line 23
    const-string/jumbo v7, "video/3gpp"

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    const/16 v3, 0x10

    .line 28
    .line 29
    const-string/jumbo v4, "v3GPP"

    .line 30
    .line 31
    .line 32
    const-string v5, "3GPP"

    .line 33
    .line 34
    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 38
    .line 39
    new-instance v2, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 40
    .line 41
    const-string/jumbo v7, "webm"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v8, "video/webm"

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const/16 v4, 0x20

    .line 49
    .line 50
    const-string v5, "WEBM"

    .line 51
    .line 52
    const-string v6, "WebM"

    .line 53
    .line 54
    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 58
    .line 59
    new-instance v3, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 60
    .line 61
    const-string v8, "m4a"

    .line 62
    .line 63
    const-string v9, "audio/mp4"

    .line 64
    .line 65
    const/4 v4, 0x3

    .line 66
    const/16 v5, 0x100

    .line 67
    .line 68
    const-string v6, "M4A"

    .line 69
    .line 70
    const-string v7, "m4a"

    .line 71
    .line 72
    invoke-direct/range {v3 .. v9}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sput-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 76
    .line 77
    new-instance v4, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 78
    .line 79
    const-string/jumbo v9, "webm"

    .line 80
    .line 81
    .line 82
    const-string v10, "audio/webm"

    .line 83
    .line 84
    const/4 v5, 0x4

    .line 85
    const/16 v6, 0x200

    .line 86
    .line 87
    const-string v7, "WEBMA"

    .line 88
    .line 89
    const-string v8, "WebM"

    .line 90
    .line 91
    invoke-direct/range {v4 .. v10}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 95
    .line 96
    new-instance v5, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 97
    .line 98
    const-string v10, "mp3"

    .line 99
    .line 100
    const-string v11, "audio/mpeg"

    .line 101
    .line 102
    const/4 v6, 0x5

    .line 103
    const/16 v7, 0x300

    .line 104
    .line 105
    const-string v8, "MP3"

    .line 106
    .line 107
    const-string v9, "MP3"

    .line 108
    .line 109
    invoke-direct/range {v5 .. v11}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v5, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 113
    .line 114
    new-instance v6, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 115
    .line 116
    const-string v11, "mp2"

    .line 117
    .line 118
    const-string v12, "audio/mpeg"

    .line 119
    .line 120
    const/4 v7, 0x6

    .line 121
    const/16 v8, 0x310

    .line 122
    .line 123
    const-string v9, "MP2"

    .line 124
    .line 125
    const-string v10, "MP2"

    .line 126
    .line 127
    invoke-direct/range {v6 .. v12}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    new-instance v7, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 131
    .line 132
    const-string v12, "opus"

    .line 133
    .line 134
    const-string v13, "audio/opus"

    .line 135
    .line 136
    const/4 v8, 0x7

    .line 137
    const/16 v9, 0x400

    .line 138
    .line 139
    const-string v10, "OPUS"

    .line 140
    .line 141
    const-string v11, "opus"

    .line 142
    .line 143
    invoke-direct/range {v7 .. v13}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sput-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 147
    .line 148
    new-instance v8, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 149
    .line 150
    const-string v13, "ogg"

    .line 151
    .line 152
    const-string v14, "audio/ogg"

    .line 153
    .line 154
    const/16 v9, 0x8

    .line 155
    .line 156
    const/16 v10, 0x500

    .line 157
    .line 158
    const-string v11, "OGG"

    .line 159
    .line 160
    const-string v12, "ogg"

    .line 161
    .line 162
    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sput-object v8, Lorg/schabi/newpipe/extractor/MediaFormat;->OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 166
    .line 167
    new-instance v9, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 168
    .line 169
    const-string/jumbo v14, "webm"

    .line 170
    .line 171
    .line 172
    const-string v15, "audio/webm"

    .line 173
    .line 174
    const/16 v10, 0x9

    .line 175
    .line 176
    const/16 v11, 0x200

    .line 177
    .line 178
    const-string v12, "WEBMA_OPUS"

    .line 179
    .line 180
    const-string v13, "WebM Opus"

    .line 181
    .line 182
    invoke-direct/range {v9 .. v15}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    sput-object v9, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 186
    .line 187
    new-instance v10, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 188
    .line 189
    const-string v15, "aiff"

    .line 190
    .line 191
    const-string v16, "audio/aiff"

    .line 192
    .line 193
    const/16 v11, 0xa

    .line 194
    .line 195
    const/16 v12, 0x600

    .line 196
    .line 197
    const-string v13, "AIFF"

    .line 198
    .line 199
    const-string v14, "AIFF"

    .line 200
    .line 201
    invoke-direct/range {v10 .. v16}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v11, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 205
    .line 206
    const-string v16, "aif"

    .line 207
    .line 208
    const-string v17, "audio/aiff"

    .line 209
    .line 210
    const/16 v12, 0xb

    .line 211
    .line 212
    const/16 v13, 0x600

    .line 213
    .line 214
    const-string v14, "AIF"

    .line 215
    .line 216
    const-string v15, "AIFF"

    .line 217
    .line 218
    invoke-direct/range {v11 .. v17}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    new-instance v12, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 222
    .line 223
    const-string/jumbo v17, "wav"

    .line 224
    .line 225
    .line 226
    const-string v18, "audio/wav"

    .line 227
    .line 228
    const/16 v13, 0xc

    .line 229
    .line 230
    const/16 v14, 0x700

    .line 231
    .line 232
    const-string v15, "WAV"

    .line 233
    .line 234
    const-string v16, "WAV"

    .line 235
    .line 236
    invoke-direct/range {v12 .. v18}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    new-instance v13, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 240
    .line 241
    const-string v18, "flac"

    .line 242
    .line 243
    const-string v19, "audio/flac"

    .line 244
    .line 245
    const/16 v14, 0xd

    .line 246
    .line 247
    const/16 v15, 0x800

    .line 248
    .line 249
    const-string v16, "FLAC"

    .line 250
    .line 251
    const-string v17, "FLAC"

    .line 252
    .line 253
    invoke-direct/range {v13 .. v19}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    new-instance v14, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 257
    .line 258
    const-string v19, "alac"

    .line 259
    .line 260
    const-string v20, "audio/alac"

    .line 261
    .line 262
    const/16 v15, 0xe

    .line 263
    .line 264
    const/16 v16, 0x900

    .line 265
    .line 266
    const-string v17, "ALAC"

    .line 267
    .line 268
    const-string v18, "ALAC"

    .line 269
    .line 270
    invoke-direct/range {v14 .. v20}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v15, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 274
    .line 275
    const-string/jumbo v20, "vtt"

    .line 276
    .line 277
    .line 278
    const-string/jumbo v21, "text/vtt"

    .line 279
    .line 280
    .line 281
    const/16 v16, 0xf

    .line 282
    .line 283
    const/16 v17, 0x1000

    .line 284
    .line 285
    const-string v18, "VTT"

    .line 286
    .line 287
    const-string v19, "WebVTT"

    .line 288
    .line 289
    invoke-direct/range {v15 .. v21}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    new-instance v16, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 293
    .line 294
    const-string/jumbo v21, "ttml"

    .line 295
    .line 296
    .line 297
    const-string v22, "application/ttml+xml"

    .line 298
    .line 299
    const/16 v17, 0x10

    .line 300
    .line 301
    const/16 v18, 0x2000

    .line 302
    .line 303
    const-string v19, "TTML"

    .line 304
    .line 305
    const-string v20, "Timed Text Markup Language"

    .line 306
    .line 307
    invoke-direct/range {v16 .. v22}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    sput-object v16, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 311
    .line 312
    new-instance v17, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 313
    .line 314
    const-string/jumbo v22, "srv1"

    .line 315
    .line 316
    .line 317
    const-string/jumbo v23, "text/xml"

    .line 318
    .line 319
    .line 320
    const/16 v18, 0x11

    .line 321
    .line 322
    const/16 v19, 0x3000

    .line 323
    .line 324
    const-string v20, "TRANSCRIPT1"

    .line 325
    .line 326
    const-string v21, "TranScript v1"

    .line 327
    .line 328
    invoke-direct/range {v17 .. v23}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    new-instance v18, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 332
    .line 333
    const-string/jumbo v23, "srv2"

    .line 334
    .line 335
    .line 336
    const-string/jumbo v24, "text/xml"

    .line 337
    .line 338
    .line 339
    const/16 v19, 0x12

    .line 340
    .line 341
    const/16 v20, 0x4000

    .line 342
    .line 343
    const-string v21, "TRANSCRIPT2"

    .line 344
    .line 345
    const-string v22, "TranScript v2"

    .line 346
    .line 347
    invoke-direct/range {v18 .. v24}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    new-instance v19, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 351
    .line 352
    const-string/jumbo v24, "srv3"

    .line 353
    .line 354
    .line 355
    const-string/jumbo v25, "text/xml"

    .line 356
    .line 357
    .line 358
    const/16 v20, 0x13

    .line 359
    .line 360
    const/16 v21, 0x5000

    .line 361
    .line 362
    const-string v22, "TRANSCRIPT3"

    .line 363
    .line 364
    const-string v23, "TranScript v3"

    .line 365
    .line 366
    invoke-direct/range {v19 .. v25}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    new-instance v20, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 370
    .line 371
    const-string/jumbo v25, "srt"

    .line 372
    .line 373
    .line 374
    const-string/jumbo v26, "text/srt"

    .line 375
    .line 376
    .line 377
    const/16 v21, 0x14

    .line 378
    .line 379
    const/16 v22, 0x6000

    .line 380
    .line 381
    const-string v23, "SRT"

    .line 382
    .line 383
    const-string v24, "SubRip file format"

    .line 384
    .line 385
    invoke-direct/range {v20 .. v26}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    sput-object v20, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 389
    .line 390
    move-object/from16 v21, v0

    .line 391
    .line 392
    const/16 v0, 0x15

    .line 393
    .line 394
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 395
    .line 396
    const/16 v22, 0x0

    .line 397
    .line 398
    aput-object v21, v0, v22

    .line 399
    .line 400
    const/16 v21, 0x1

    .line 401
    .line 402
    aput-object v1, v0, v21

    .line 403
    .line 404
    const/4 v1, 0x2

    .line 405
    aput-object v2, v0, v1

    .line 406
    .line 407
    const/4 v1, 0x3

    .line 408
    aput-object v3, v0, v1

    .line 409
    .line 410
    const/4 v1, 0x4

    .line 411
    aput-object v4, v0, v1

    .line 412
    .line 413
    const/4 v1, 0x5

    .line 414
    aput-object v5, v0, v1

    .line 415
    .line 416
    const/4 v1, 0x6

    .line 417
    aput-object v6, v0, v1

    .line 418
    .line 419
    const/4 v1, 0x7

    .line 420
    aput-object v7, v0, v1

    .line 421
    .line 422
    const/16 v1, 0x8

    .line 423
    .line 424
    aput-object v8, v0, v1

    .line 425
    .line 426
    const/16 v1, 0x9

    .line 427
    .line 428
    aput-object v9, v0, v1

    .line 429
    .line 430
    const/16 v1, 0xa

    .line 431
    .line 432
    aput-object v10, v0, v1

    .line 433
    .line 434
    const/16 v1, 0xb

    .line 435
    .line 436
    aput-object v11, v0, v1

    .line 437
    .line 438
    const/16 v1, 0xc

    .line 439
    .line 440
    aput-object v12, v0, v1

    .line 441
    .line 442
    const/16 v1, 0xd

    .line 443
    .line 444
    aput-object v13, v0, v1

    .line 445
    .line 446
    const/16 v1, 0xe

    .line 447
    .line 448
    aput-object v14, v0, v1

    .line 449
    .line 450
    const/16 v1, 0xf

    .line 451
    .line 452
    aput-object v15, v0, v1

    .line 453
    .line 454
    const/16 v1, 0x10

    .line 455
    .line 456
    aput-object v16, v0, v1

    .line 457
    .line 458
    const/16 v1, 0x11

    .line 459
    .line 460
    aput-object v17, v0, v1

    .line 461
    .line 462
    const/16 v1, 0x12

    .line 463
    .line 464
    aput-object v18, v0, v1

    .line 465
    .line 466
    const/16 v1, 0x13

    .line 467
    .line 468
    aput-object v19, v0, v1

    .line 469
    .line 470
    const/16 v1, 0x14

    .line 471
    .line 472
    aput-object v20, v0, v1

    .line 473
    .line 474
    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 475
    .line 476
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 5
    .line 6
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static getFromSuffix(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 3

    .line 1
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 29
    .line 30
    return-object p0
.end method

.method public static getNameById(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    invoke-direct {v2, p0, v3}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda0;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, ""

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/lang/String;

    .line 41
    .line 42
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/MediaFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 8
    .line 9
    return-object v0
.end method
