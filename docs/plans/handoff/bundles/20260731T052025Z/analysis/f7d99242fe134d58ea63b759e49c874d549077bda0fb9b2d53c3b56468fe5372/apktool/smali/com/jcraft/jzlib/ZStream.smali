.class public final Lcom/jcraft/jzlib/ZStream;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public _adler:Lcom/jcraft/jzlib/Adler32;

.field public adler:J

.field public avail_in:I

.field public avail_out:I

.field public dstate:Lcom/jcraft/jzlib/Deflate;

.field public msg:Ljava/lang/String;

.field public next_in:[B

.field public next_in_index:I

.field public next_out:[B

.field public next_out_index:I


# virtual methods
.method public final deflate(I)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 6
    .line 7
    const/4 v3, -0x2

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1c

    .line 11
    .line 12
    :cond_0
    const/4 v4, 0x4

    .line 13
    if-gt v1, v4, :cond_43

    .line 14
    .line 15
    if-gez v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1c

    .line 18
    .line 19
    :cond_1
    iget-object v5, v0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 20
    .line 21
    sget-object v6, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v5, :cond_42

    .line 24
    .line 25
    iget-object v5, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 26
    .line 27
    if-nez v5, :cond_2

    .line 28
    .line 29
    iget v5, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 30
    .line 31
    if-nez v5, :cond_42

    .line 32
    .line 33
    :cond_2
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 34
    .line 35
    const/16 v7, 0x29a

    .line 36
    .line 37
    if-ne v5, v7, :cond_3

    .line 38
    .line 39
    if-eq v1, v4, :cond_3

    .line 40
    .line 41
    goto/16 :goto_1b

    .line 42
    .line 43
    :cond_3
    iget v3, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 44
    .line 45
    const/4 v8, -0x5

    .line 46
    const/4 v9, 0x7

    .line 47
    if-nez v3, :cond_4

    .line 48
    .line 49
    aget-object v1, v6, v9

    .line 50
    .line 51
    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 52
    .line 53
    return v8

    .line 54
    :cond_4
    iput-object v0, v2, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 55
    .line 56
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 57
    .line 58
    iput v1, v2, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 59
    .line 60
    const/16 v10, 0x2a

    .line 61
    .line 62
    const/16 v13, 0x10

    .line 63
    .line 64
    const/4 v14, 0x3

    .line 65
    const/4 v15, 0x1

    .line 66
    if-ne v5, v10, :cond_8

    .line 67
    .line 68
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    .line 69
    .line 70
    add-int/lit8 v5, v5, -0x8

    .line 71
    .line 72
    shl-int/2addr v5, v4

    .line 73
    add-int/lit8 v5, v5, 0x8

    .line 74
    .line 75
    shl-int/lit8 v5, v5, 0x8

    .line 76
    .line 77
    iget v10, v2, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 78
    .line 79
    sub-int/2addr v10, v15

    .line 80
    and-int/lit16 v10, v10, 0xff

    .line 81
    .line 82
    shr-int/2addr v10, v15

    .line 83
    if-le v10, v14, :cond_5

    .line 84
    .line 85
    move v10, v14

    .line 86
    :cond_5
    shl-int/lit8 v10, v10, 0x6

    .line 87
    .line 88
    or-int/2addr v5, v10

    .line 89
    iget v10, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 90
    .line 91
    if-eqz v10, :cond_6

    .line 92
    .line 93
    or-int/lit8 v5, v5, 0x20

    .line 94
    .line 95
    :cond_6
    rem-int/lit8 v10, v5, 0x1f

    .line 96
    .line 97
    rsub-int/lit8 v10, v10, 0x1f

    .line 98
    .line 99
    add-int/2addr v10, v5

    .line 100
    const/16 v5, 0x71

    .line 101
    .line 102
    iput v5, v2, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 103
    .line 104
    invoke-virtual {v2, v10}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 105
    .line 106
    .line 107
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 108
    .line 109
    const-wide/32 v16, 0xffff

    .line 110
    .line 111
    .line 112
    if-eqz v5, :cond_7

    .line 113
    .line 114
    iget-wide v11, v0, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 115
    .line 116
    ushr-long v10, v11, v13

    .line 117
    .line 118
    long-to-int v5, v10

    .line 119
    invoke-virtual {v2, v5}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 120
    .line 121
    .line 122
    iget-wide v10, v0, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 123
    .line 124
    and-long v10, v10, v16

    .line 125
    .line 126
    long-to-int v5, v10

    .line 127
    invoke-virtual {v2, v5}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object v5, v0, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    const-wide/16 v10, 0x1

    .line 136
    .line 137
    iput-wide v10, v0, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_8
    const-wide/32 v16, 0xffff

    .line 141
    .line 142
    .line 143
    :goto_0
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 144
    .line 145
    const/4 v10, -0x1

    .line 146
    const/4 v11, 0x0

    .line 147
    if-eqz v5, :cond_9

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 150
    .line 151
    .line 152
    iget v3, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 153
    .line 154
    if-nez v3, :cond_a

    .line 155
    .line 156
    iput v10, v2, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 157
    .line 158
    return v11

    .line 159
    :cond_9
    iget v5, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 160
    .line 161
    if-nez v5, :cond_a

    .line 162
    .line 163
    if-gt v1, v3, :cond_a

    .line 164
    .line 165
    if-eq v1, v4, :cond_a

    .line 166
    .line 167
    aget-object v1, v6, v9

    .line 168
    .line 169
    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 170
    .line 171
    return v8

    .line 172
    :cond_a
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 173
    .line 174
    if-ne v3, v7, :cond_b

    .line 175
    .line 176
    iget v5, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 177
    .line 178
    if-eqz v5, :cond_b

    .line 179
    .line 180
    aget-object v1, v6, v9

    .line 181
    .line 182
    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 183
    .line 184
    return v8

    .line 185
    :cond_b
    iget v5, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 186
    .line 187
    if-nez v5, :cond_d

    .line 188
    .line 189
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 190
    .line 191
    if-nez v5, :cond_d

    .line 192
    .line 193
    if-eqz v1, :cond_c

    .line 194
    .line 195
    if-eq v3, v7, :cond_c

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_c
    move/from16 v18, v13

    .line 199
    .line 200
    goto/16 :goto_17

    .line 201
    .line 202
    :cond_d
    :goto_1
    sget-object v3, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    .line 203
    .line 204
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->level:I

    .line 205
    .line 206
    aget-object v3, v3, v5

    .line 207
    .line 208
    iget v3, v3, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    .line 209
    .line 210
    const/4 v5, 0x5

    .line 211
    const/16 v8, 0x106

    .line 212
    .line 213
    const v6, 0xffff

    .line 214
    .line 215
    .line 216
    const/4 v12, 0x2

    .line 217
    if-eqz v3, :cond_2b

    .line 218
    .line 219
    if-eq v3, v15, :cond_1e

    .line 220
    .line 221
    if-eq v3, v12, :cond_e

    .line 222
    .line 223
    move v14, v10

    .line 224
    move v3, v12

    .line 225
    move/from16 v18, v13

    .line 226
    .line 227
    goto/16 :goto_14

    .line 228
    .line 229
    :cond_e
    move v3, v11

    .line 230
    move/from16 v18, v13

    .line 231
    .line 232
    :goto_2
    iget v13, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 233
    .line 234
    if-ge v13, v8, :cond_15

    .line 235
    .line 236
    invoke-virtual {v2}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    .line 237
    .line 238
    .line 239
    iget v13, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 240
    .line 241
    if-ge v13, v8, :cond_10

    .line 242
    .line 243
    if-nez v1, :cond_10

    .line 244
    .line 245
    :cond_f
    :goto_3
    move v14, v11

    .line 246
    goto/16 :goto_8

    .line 247
    .line 248
    :cond_10
    if-nez v13, :cond_15

    .line 249
    .line 250
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 251
    .line 252
    if-eqz v3, :cond_11

    .line 253
    .line 254
    iget-object v3, v2, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 255
    .line 256
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 257
    .line 258
    sub-int/2addr v5, v15

    .line 259
    aget-byte v3, v3, v5

    .line 260
    .line 261
    and-int/lit16 v3, v3, 0xff

    .line 262
    .line 263
    invoke-virtual {v2, v11, v3}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 264
    .line 265
    .line 266
    iput v11, v2, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 267
    .line 268
    :cond_11
    if-ne v1, v4, :cond_12

    .line 269
    .line 270
    move v3, v15

    .line 271
    goto :goto_4

    .line 272
    :cond_12
    move v3, v11

    .line 273
    :goto_4
    invoke-virtual {v2, v3}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 274
    .line 275
    .line 276
    iget-object v3, v2, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 277
    .line 278
    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 279
    .line 280
    if-nez v3, :cond_13

    .line 281
    .line 282
    if-ne v1, v4, :cond_f

    .line 283
    .line 284
    move v14, v12

    .line 285
    goto/16 :goto_8

    .line 286
    .line 287
    :cond_13
    if-ne v1, v4, :cond_14

    .line 288
    .line 289
    goto/16 :goto_8

    .line 290
    .line 291
    :cond_14
    move v14, v15

    .line 292
    goto/16 :goto_8

    .line 293
    .line 294
    :cond_15
    iget v13, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 295
    .line 296
    if-lt v13, v14, :cond_16

    .line 297
    .line 298
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 299
    .line 300
    iget v13, v2, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 301
    .line 302
    shl-int/2addr v3, v13

    .line 303
    iget-object v13, v2, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 304
    .line 305
    iget v10, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 306
    .line 307
    add-int/lit8 v19, v10, 0x2

    .line 308
    .line 309
    aget-byte v13, v13, v19

    .line 310
    .line 311
    and-int/lit16 v13, v13, 0xff

    .line 312
    .line 313
    xor-int/2addr v3, v13

    .line 314
    iget v13, v2, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 315
    .line 316
    and-int/2addr v3, v13

    .line 317
    iput v3, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 318
    .line 319
    iget-object v13, v2, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 320
    .line 321
    aget-short v19, v13, v3

    .line 322
    .line 323
    and-int v20, v19, v6

    .line 324
    .line 325
    iget-object v9, v2, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 326
    .line 327
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 328
    .line 329
    and-int/2addr v7, v10

    .line 330
    aput-short v19, v9, v7

    .line 331
    .line 332
    int-to-short v7, v10

    .line 333
    aput-short v7, v13, v3

    .line 334
    .line 335
    move/from16 v3, v20

    .line 336
    .line 337
    :cond_16
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 338
    .line 339
    iput v7, v2, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 340
    .line 341
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 342
    .line 343
    iput v9, v2, Lcom/jcraft/jzlib/Deflate;->prev_match:I

    .line 344
    .line 345
    iput v12, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 346
    .line 347
    if-eqz v3, :cond_17

    .line 348
    .line 349
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 350
    .line 351
    if-ge v7, v9, :cond_17

    .line 352
    .line 353
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 354
    .line 355
    sub-int/2addr v7, v3

    .line 356
    and-int/2addr v7, v6

    .line 357
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 358
    .line 359
    sub-int/2addr v9, v8

    .line 360
    if-gt v7, v9, :cond_17

    .line 361
    .line 362
    invoke-virtual {v2, v3}, Lcom/jcraft/jzlib/Deflate;->longest_match(I)I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    iput v7, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 367
    .line 368
    if-gt v7, v5, :cond_17

    .line 369
    .line 370
    if-ne v7, v14, :cond_17

    .line 371
    .line 372
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 373
    .line 374
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 375
    .line 376
    sub-int/2addr v7, v9

    .line 377
    const/16 v9, 0x1000

    .line 378
    .line 379
    if-le v7, v9, :cond_17

    .line 380
    .line 381
    iput v12, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 382
    .line 383
    :cond_17
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 384
    .line 385
    if-lt v7, v14, :cond_1b

    .line 386
    .line 387
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 388
    .line 389
    if-gt v9, v7, :cond_1b

    .line 390
    .line 391
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 392
    .line 393
    iget v10, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 394
    .line 395
    add-int/2addr v10, v9

    .line 396
    sub-int/2addr v10, v14

    .line 397
    sub-int/2addr v9, v15

    .line 398
    iget v13, v2, Lcom/jcraft/jzlib/Deflate;->prev_match:I

    .line 399
    .line 400
    sub-int/2addr v9, v13

    .line 401
    add-int/lit8 v7, v7, -0x3

    .line 402
    .line 403
    invoke-virtual {v2, v9, v7}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 404
    .line 405
    .line 406
    move-result v7

    .line 407
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 408
    .line 409
    iget v13, v2, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 410
    .line 411
    add-int/lit8 v19, v13, -0x1

    .line 412
    .line 413
    sub-int v9, v9, v19

    .line 414
    .line 415
    iput v9, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 416
    .line 417
    sub-int/2addr v13, v12

    .line 418
    iput v13, v2, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 419
    .line 420
    :goto_5
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 421
    .line 422
    add-int/lit8 v13, v9, 0x1

    .line 423
    .line 424
    iput v13, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 425
    .line 426
    if-gt v13, v10, :cond_18

    .line 427
    .line 428
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 429
    .line 430
    move/from16 v19, v5

    .line 431
    .line 432
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 433
    .line 434
    shl-int/2addr v3, v5

    .line 435
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 436
    .line 437
    add-int/lit8 v20, v9, 0x3

    .line 438
    .line 439
    aget-byte v5, v5, v20

    .line 440
    .line 441
    and-int/lit16 v5, v5, 0xff

    .line 442
    .line 443
    xor-int/2addr v3, v5

    .line 444
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 445
    .line 446
    and-int/2addr v3, v5

    .line 447
    iput v3, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 448
    .line 449
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 450
    .line 451
    aget-short v20, v5, v3

    .line 452
    .line 453
    and-int v21, v20, v6

    .line 454
    .line 455
    move/from16 v22, v6

    .line 456
    .line 457
    iget-object v6, v2, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 458
    .line 459
    iget v14, v2, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 460
    .line 461
    and-int/2addr v14, v13

    .line 462
    aput-short v20, v6, v14

    .line 463
    .line 464
    int-to-short v6, v13

    .line 465
    aput-short v6, v5, v3

    .line 466
    .line 467
    move/from16 v3, v21

    .line 468
    .line 469
    goto :goto_6

    .line 470
    :cond_18
    move/from16 v19, v5

    .line 471
    .line 472
    move/from16 v22, v6

    .line 473
    .line 474
    :goto_6
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 475
    .line 476
    sub-int/2addr v5, v15

    .line 477
    iput v5, v2, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 478
    .line 479
    if-nez v5, :cond_1a

    .line 480
    .line 481
    iput v11, v2, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 482
    .line 483
    iput v12, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 484
    .line 485
    add-int/lit8 v9, v9, 0x2

    .line 486
    .line 487
    iput v9, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 488
    .line 489
    if-eqz v7, :cond_19

    .line 490
    .line 491
    invoke-virtual {v2, v11}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 492
    .line 493
    .line 494
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 495
    .line 496
    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 497
    .line 498
    if-nez v5, :cond_19

    .line 499
    .line 500
    goto/16 :goto_3

    .line 501
    .line 502
    :cond_19
    :goto_7
    move/from16 v5, v19

    .line 503
    .line 504
    move/from16 v6, v22

    .line 505
    .line 506
    const/16 v7, 0x29a

    .line 507
    .line 508
    const/4 v9, 0x7

    .line 509
    const/4 v10, -0x1

    .line 510
    const/4 v14, 0x3

    .line 511
    goto/16 :goto_2

    .line 512
    .line 513
    :cond_1a
    move/from16 v5, v19

    .line 514
    .line 515
    move/from16 v6, v22

    .line 516
    .line 517
    const/4 v14, 0x3

    .line 518
    goto :goto_5

    .line 519
    :cond_1b
    move/from16 v19, v5

    .line 520
    .line 521
    move/from16 v22, v6

    .line 522
    .line 523
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 524
    .line 525
    if-eqz v5, :cond_1d

    .line 526
    .line 527
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 528
    .line 529
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 530
    .line 531
    sub-int/2addr v6, v15

    .line 532
    aget-byte v5, v5, v6

    .line 533
    .line 534
    and-int/lit16 v5, v5, 0xff

    .line 535
    .line 536
    invoke-virtual {v2, v11, v5}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 537
    .line 538
    .line 539
    move-result v5

    .line 540
    if-eqz v5, :cond_1c

    .line 541
    .line 542
    invoke-virtual {v2, v11}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 543
    .line 544
    .line 545
    :cond_1c
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 546
    .line 547
    add-int/2addr v5, v15

    .line 548
    iput v5, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 549
    .line 550
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 551
    .line 552
    sub-int/2addr v5, v15

    .line 553
    iput v5, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 554
    .line 555
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 556
    .line 557
    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 558
    .line 559
    if-nez v5, :cond_19

    .line 560
    .line 561
    goto/16 :goto_3

    .line 562
    .line 563
    :goto_8
    move v3, v12

    .line 564
    goto/16 :goto_14

    .line 565
    .line 566
    :cond_1d
    iput v15, v2, Lcom/jcraft/jzlib/Deflate;->match_available:I

    .line 567
    .line 568
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 569
    .line 570
    add-int/2addr v5, v15

    .line 571
    iput v5, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 572
    .line 573
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 574
    .line 575
    sub-int/2addr v5, v15

    .line 576
    iput v5, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 577
    .line 578
    goto :goto_7

    .line 579
    :cond_1e
    move/from16 v22, v6

    .line 580
    .line 581
    move/from16 v18, v13

    .line 582
    .line 583
    move v3, v11

    .line 584
    :goto_9
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 585
    .line 586
    if-ge v5, v8, :cond_24

    .line 587
    .line 588
    invoke-virtual {v2}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    .line 589
    .line 590
    .line 591
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 592
    .line 593
    if-ge v5, v8, :cond_20

    .line 594
    .line 595
    if-nez v1, :cond_20

    .line 596
    .line 597
    :cond_1f
    :goto_a
    move v12, v11

    .line 598
    goto/16 :goto_e

    .line 599
    .line 600
    :cond_20
    if-nez v5, :cond_24

    .line 601
    .line 602
    if-ne v1, v4, :cond_21

    .line 603
    .line 604
    move v3, v15

    .line 605
    goto :goto_b

    .line 606
    :cond_21
    move v3, v11

    .line 607
    :goto_b
    invoke-virtual {v2, v3}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 608
    .line 609
    .line 610
    iget-object v3, v2, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 611
    .line 612
    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 613
    .line 614
    if-nez v3, :cond_22

    .line 615
    .line 616
    if-ne v1, v4, :cond_1f

    .line 617
    .line 618
    goto/16 :goto_e

    .line 619
    .line 620
    :cond_22
    if-ne v1, v4, :cond_23

    .line 621
    .line 622
    const/4 v12, 0x3

    .line 623
    goto/16 :goto_e

    .line 624
    .line 625
    :cond_23
    move v12, v15

    .line 626
    goto/16 :goto_e

    .line 627
    .line 628
    :cond_24
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 629
    .line 630
    const/4 v6, 0x3

    .line 631
    if-lt v5, v6, :cond_25

    .line 632
    .line 633
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 634
    .line 635
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 636
    .line 637
    shl-int/2addr v3, v5

    .line 638
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 639
    .line 640
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 641
    .line 642
    add-int/lit8 v7, v6, 0x2

    .line 643
    .line 644
    aget-byte v5, v5, v7

    .line 645
    .line 646
    and-int/lit16 v5, v5, 0xff

    .line 647
    .line 648
    xor-int/2addr v3, v5

    .line 649
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 650
    .line 651
    and-int/2addr v3, v5

    .line 652
    iput v3, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 653
    .line 654
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 655
    .line 656
    aget-short v7, v5, v3

    .line 657
    .line 658
    and-int v9, v7, v22

    .line 659
    .line 660
    iget-object v10, v2, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 661
    .line 662
    iget v13, v2, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 663
    .line 664
    and-int/2addr v13, v6

    .line 665
    aput-short v7, v10, v13

    .line 666
    .line 667
    int-to-short v6, v6

    .line 668
    aput-short v6, v5, v3

    .line 669
    .line 670
    move v3, v9

    .line 671
    :cond_25
    int-to-long v5, v3

    .line 672
    const-wide/16 v9, 0x0

    .line 673
    .line 674
    cmp-long v5, v5, v9

    .line 675
    .line 676
    if-eqz v5, :cond_26

    .line 677
    .line 678
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 679
    .line 680
    sub-int/2addr v5, v3

    .line 681
    and-int v5, v5, v22

    .line 682
    .line 683
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 684
    .line 685
    sub-int/2addr v6, v8

    .line 686
    if-gt v5, v6, :cond_26

    .line 687
    .line 688
    invoke-virtual {v2, v3}, Lcom/jcraft/jzlib/Deflate;->longest_match(I)I

    .line 689
    .line 690
    .line 691
    move-result v5

    .line 692
    iput v5, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 693
    .line 694
    :cond_26
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 695
    .line 696
    const/4 v6, 0x3

    .line 697
    if-lt v5, v6, :cond_29

    .line 698
    .line 699
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 700
    .line 701
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 702
    .line 703
    sub-int/2addr v6, v7

    .line 704
    add-int/lit8 v5, v5, -0x3

    .line 705
    .line 706
    invoke-virtual {v2, v6, v5}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 707
    .line 708
    .line 709
    move-result v5

    .line 710
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 711
    .line 712
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 713
    .line 714
    sub-int/2addr v6, v7

    .line 715
    iput v6, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 716
    .line 717
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    .line 718
    .line 719
    if-gt v7, v9, :cond_28

    .line 720
    .line 721
    const/4 v9, 0x3

    .line 722
    if-lt v6, v9, :cond_28

    .line 723
    .line 724
    add-int/lit8 v7, v7, -0x1

    .line 725
    .line 726
    iput v7, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 727
    .line 728
    :goto_c
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 729
    .line 730
    add-int/lit8 v6, v3, 0x1

    .line 731
    .line 732
    iput v6, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 733
    .line 734
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 735
    .line 736
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 737
    .line 738
    shl-int/2addr v7, v9

    .line 739
    iget-object v9, v2, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 740
    .line 741
    add-int/lit8 v10, v3, 0x3

    .line 742
    .line 743
    aget-byte v9, v9, v10

    .line 744
    .line 745
    and-int/lit16 v9, v9, 0xff

    .line 746
    .line 747
    xor-int/2addr v7, v9

    .line 748
    iget v9, v2, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 749
    .line 750
    and-int/2addr v7, v9

    .line 751
    iput v7, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 752
    .line 753
    iget-object v9, v2, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 754
    .line 755
    aget-short v10, v9, v7

    .line 756
    .line 757
    and-int v13, v10, v22

    .line 758
    .line 759
    iget-object v14, v2, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 760
    .line 761
    iget v12, v2, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 762
    .line 763
    and-int/2addr v12, v6

    .line 764
    aput-short v10, v14, v12

    .line 765
    .line 766
    int-to-short v6, v6

    .line 767
    aput-short v6, v9, v7

    .line 768
    .line 769
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 770
    .line 771
    sub-int/2addr v6, v15

    .line 772
    iput v6, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 773
    .line 774
    if-nez v6, :cond_27

    .line 775
    .line 776
    add-int/lit8 v3, v3, 0x2

    .line 777
    .line 778
    iput v3, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 779
    .line 780
    move v3, v13

    .line 781
    goto :goto_d

    .line 782
    :cond_27
    const/4 v12, 0x2

    .line 783
    goto :goto_c

    .line 784
    :cond_28
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 785
    .line 786
    add-int/2addr v6, v7

    .line 787
    iput v6, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 788
    .line 789
    iput v11, v2, Lcom/jcraft/jzlib/Deflate;->match_length:I

    .line 790
    .line 791
    iget-object v7, v2, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 792
    .line 793
    aget-byte v9, v7, v6

    .line 794
    .line 795
    and-int/lit16 v9, v9, 0xff

    .line 796
    .line 797
    iput v9, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 798
    .line 799
    iget v10, v2, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    .line 800
    .line 801
    shl-int/2addr v9, v10

    .line 802
    add-int/2addr v6, v15

    .line 803
    aget-byte v6, v7, v6

    .line 804
    .line 805
    and-int/lit16 v6, v6, 0xff

    .line 806
    .line 807
    xor-int/2addr v6, v9

    .line 808
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    .line 809
    .line 810
    and-int/2addr v6, v7

    .line 811
    iput v6, v2, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 812
    .line 813
    goto :goto_d

    .line 814
    :cond_29
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 815
    .line 816
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 817
    .line 818
    aget-byte v5, v5, v6

    .line 819
    .line 820
    and-int/lit16 v5, v5, 0xff

    .line 821
    .line 822
    invoke-virtual {v2, v11, v5}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    .line 823
    .line 824
    .line 825
    move-result v5

    .line 826
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 827
    .line 828
    sub-int/2addr v6, v15

    .line 829
    iput v6, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 830
    .line 831
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 832
    .line 833
    add-int/2addr v6, v15

    .line 834
    iput v6, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 835
    .line 836
    :goto_d
    if-eqz v5, :cond_2a

    .line 837
    .line 838
    invoke-virtual {v2, v11}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 839
    .line 840
    .line 841
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 842
    .line 843
    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 844
    .line 845
    if-nez v5, :cond_2a

    .line 846
    .line 847
    goto/16 :goto_a

    .line 848
    .line 849
    :goto_e
    move v14, v12

    .line 850
    :goto_f
    const/4 v3, 0x2

    .line 851
    goto/16 :goto_14

    .line 852
    .line 853
    :cond_2a
    const/4 v12, 0x2

    .line 854
    goto/16 :goto_9

    .line 855
    .line 856
    :cond_2b
    move/from16 v19, v5

    .line 857
    .line 858
    move/from16 v22, v6

    .line 859
    .line 860
    move/from16 v18, v13

    .line 861
    .line 862
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    .line 863
    .line 864
    add-int/lit8 v3, v3, -0x5

    .line 865
    .line 866
    move/from16 v5, v22

    .line 867
    .line 868
    if-le v5, v3, :cond_2c

    .line 869
    .line 870
    move v6, v3

    .line 871
    goto :goto_10

    .line 872
    :cond_2c
    move v6, v5

    .line 873
    :goto_10
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 874
    .line 875
    if-gt v3, v15, :cond_32

    .line 876
    .line 877
    invoke-virtual {v2}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    .line 878
    .line 879
    .line 880
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 881
    .line 882
    if-nez v3, :cond_2e

    .line 883
    .line 884
    if-nez v1, :cond_2e

    .line 885
    .line 886
    :cond_2d
    :goto_11
    move v3, v11

    .line 887
    goto :goto_13

    .line 888
    :cond_2e
    if-nez v3, :cond_32

    .line 889
    .line 890
    if-ne v1, v4, :cond_2f

    .line 891
    .line 892
    move v3, v15

    .line 893
    goto :goto_12

    .line 894
    :cond_2f
    move v3, v11

    .line 895
    :goto_12
    invoke-virtual {v2, v3}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 896
    .line 897
    .line 898
    iget-object v3, v2, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 899
    .line 900
    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 901
    .line 902
    if-nez v3, :cond_30

    .line 903
    .line 904
    if-ne v1, v4, :cond_2d

    .line 905
    .line 906
    const/4 v3, 0x2

    .line 907
    goto :goto_13

    .line 908
    :cond_30
    if-ne v1, v4, :cond_31

    .line 909
    .line 910
    const/4 v3, 0x3

    .line 911
    goto :goto_13

    .line 912
    :cond_31
    move v3, v15

    .line 913
    goto :goto_13

    .line 914
    :cond_32
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 915
    .line 916
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 917
    .line 918
    add-int/2addr v3, v5

    .line 919
    iput v3, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 920
    .line 921
    iput v11, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 922
    .line 923
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 924
    .line 925
    add-int/2addr v5, v6

    .line 926
    if-eqz v3, :cond_33

    .line 927
    .line 928
    if-lt v3, v5, :cond_34

    .line 929
    .line 930
    :cond_33
    sub-int/2addr v3, v5

    .line 931
    iput v3, v2, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 932
    .line 933
    iput v5, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 934
    .line 935
    invoke-virtual {v2, v11}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 936
    .line 937
    .line 938
    iget-object v3, v2, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 939
    .line 940
    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 941
    .line 942
    if-nez v3, :cond_34

    .line 943
    .line 944
    goto :goto_11

    .line 945
    :cond_34
    iget v3, v2, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 946
    .line 947
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 948
    .line 949
    sub-int/2addr v3, v5

    .line 950
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 951
    .line 952
    sub-int/2addr v5, v8

    .line 953
    if-lt v3, v5, :cond_41

    .line 954
    .line 955
    invoke-virtual {v2, v11}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    .line 956
    .line 957
    .line 958
    iget-object v3, v2, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 959
    .line 960
    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 961
    .line 962
    if-nez v3, :cond_41

    .line 963
    .line 964
    goto :goto_11

    .line 965
    :goto_13
    move v14, v3

    .line 966
    goto :goto_f

    .line 967
    :goto_14
    const/4 v6, 0x3

    .line 968
    if-eq v14, v3, :cond_35

    .line 969
    .line 970
    if-ne v14, v6, :cond_36

    .line 971
    .line 972
    :cond_35
    const/16 v5, 0x29a

    .line 973
    .line 974
    iput v5, v2, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 975
    .line 976
    :cond_36
    if-eqz v14, :cond_37

    .line 977
    .line 978
    if-ne v14, v3, :cond_38

    .line 979
    .line 980
    :cond_37
    const/4 v12, -0x1

    .line 981
    goto/16 :goto_19

    .line 982
    .line 983
    :cond_38
    if-ne v14, v15, :cond_3c

    .line 984
    .line 985
    if-ne v1, v15, :cond_3a

    .line 986
    .line 987
    invoke-virtual {v2, v3, v6}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 988
    .line 989
    .line 990
    sget-object v3, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    .line 991
    .line 992
    const/16 v5, 0x100

    .line 993
    .line 994
    invoke-virtual {v2, v5, v3}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v2}, Lcom/jcraft/jzlib/Deflate;->bi_flush()V

    .line 998
    .line 999
    .line 1000
    iget v6, v2, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 1001
    .line 1002
    add-int/lit8 v6, v6, 0xb

    .line 1003
    .line 1004
    iget v7, v2, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 1005
    .line 1006
    sub-int/2addr v6, v7

    .line 1007
    const/16 v7, 0x9

    .line 1008
    .line 1009
    if-ge v6, v7, :cond_39

    .line 1010
    .line 1011
    const/4 v7, 0x2

    .line 1012
    const/4 v9, 0x3

    .line 1013
    invoke-virtual {v2, v7, v9}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {v2, v5, v3}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v2}, Lcom/jcraft/jzlib/Deflate;->bi_flush()V

    .line 1020
    .line 1021
    .line 1022
    :cond_39
    const/4 v10, 0x7

    .line 1023
    iput v10, v2, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 1024
    .line 1025
    goto :goto_16

    .line 1026
    :cond_3a
    move v9, v6

    .line 1027
    invoke-virtual {v2, v11, v11, v11}, Lcom/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 1028
    .line 1029
    .line 1030
    if-ne v1, v9, :cond_3b

    .line 1031
    .line 1032
    move v3, v11

    .line 1033
    :goto_15
    iget v5, v2, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 1034
    .line 1035
    if-ge v3, v5, :cond_3b

    .line 1036
    .line 1037
    iget-object v5, v2, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 1038
    .line 1039
    aput-short v11, v5, v3

    .line 1040
    .line 1041
    add-int/lit8 v3, v3, 0x1

    .line 1042
    .line 1043
    goto :goto_15

    .line 1044
    :cond_3b
    :goto_16
    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1045
    .line 1046
    .line 1047
    iget v3, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 1048
    .line 1049
    if-nez v3, :cond_3c

    .line 1050
    .line 1051
    const/4 v3, -0x1

    .line 1052
    iput v3, v2, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1053
    .line 1054
    return v11

    .line 1055
    :cond_3c
    :goto_17
    if-eq v1, v4, :cond_3d

    .line 1056
    .line 1057
    goto :goto_1a

    .line 1058
    :cond_3d
    iget v1, v2, Lcom/jcraft/jzlib/Deflate;->noheader:I

    .line 1059
    .line 1060
    if-eqz v1, :cond_3e

    .line 1061
    .line 1062
    goto :goto_18

    .line 1063
    :cond_3e
    iget-wide v3, v0, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 1064
    .line 1065
    ushr-long v3, v3, v18

    .line 1066
    .line 1067
    long-to-int v1, v3

    .line 1068
    invoke-virtual {v2, v1}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1069
    .line 1070
    .line 1071
    iget-wide v3, v0, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 1072
    .line 1073
    and-long v3, v3, v16

    .line 1074
    .line 1075
    long-to-int v1, v3

    .line 1076
    invoke-virtual {v2, v1}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1077
    .line 1078
    .line 1079
    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1080
    .line 1081
    .line 1082
    const/4 v12, -0x1

    .line 1083
    iput v12, v2, Lcom/jcraft/jzlib/Deflate;->noheader:I

    .line 1084
    .line 1085
    iget v0, v2, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 1086
    .line 1087
    if-eqz v0, :cond_3f

    .line 1088
    .line 1089
    goto :goto_1a

    .line 1090
    :cond_3f
    :goto_18
    return v15

    .line 1091
    :goto_19
    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 1092
    .line 1093
    if-nez v0, :cond_40

    .line 1094
    .line 1095
    iput v12, v2, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1096
    .line 1097
    :cond_40
    :goto_1a
    return v11

    .line 1098
    :cond_41
    const/16 v5, 0x29a

    .line 1099
    .line 1100
    const/4 v7, 0x2

    .line 1101
    const/4 v9, 0x3

    .line 1102
    const/4 v10, 0x7

    .line 1103
    const/4 v12, -0x1

    .line 1104
    goto/16 :goto_10

    .line 1105
    .line 1106
    :cond_42
    :goto_1b
    aget-object v1, v6, v4

    .line 1107
    .line 1108
    iput-object v1, v0, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1109
    .line 1110
    :cond_43
    :goto_1c
    return v3
.end method

.method public final flush_pending()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 2
    .line 3
    iget v1, v0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 4
    .line 5
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 6
    .line 7
    if-le v1, v2, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    :cond_0
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_1
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 18
    .line 19
    if-le v3, v0, :cond_2

    .line 20
    .line 21
    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 22
    .line 23
    array-length v4, v3

    .line 24
    iget v5, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 25
    .line 26
    if-le v4, v5, :cond_2

    .line 27
    .line 28
    array-length v2, v2

    .line 29
    add-int/2addr v0, v1

    .line 30
    if-lt v2, v0, :cond_2

    .line 31
    .line 32
    array-length v0, v3

    .line 33
    add-int/2addr v5, v1

    .line 34
    if-ge v0, v5, :cond_3

    .line 35
    .line 36
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuffer;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 46
    .line 47
    array-length v3, v3

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    const-string v3, ", "

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 57
    .line 58
    iget v4, v4, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 67
    .line 68
    array-length v4, v4

    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    iget v4, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuffer;

    .line 96
    .line 97
    const-string v3, "avail_out="

    .line 98
    .line 99
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget v3, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_3
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 115
    .line 116
    iget-object v2, v0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 117
    .line 118
    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 119
    .line 120
    iget-object v3, p0, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 121
    .line 122
    iget v4, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 123
    .line 124
    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    .line 126
    .line 127
    iget v0, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 128
    .line 129
    add-int/2addr v0, v1

    .line 130
    iput v0, p0, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 131
    .line 132
    iget-object v0, p0, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    .line 133
    .line 134
    iget v2, v0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 135
    .line 136
    add-int/2addr v2, v1

    .line 137
    iput v2, v0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 138
    .line 139
    iget v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 140
    .line 141
    sub-int/2addr v2, v1

    .line 142
    iput v2, p0, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 143
    .line 144
    iget p0, v0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 145
    .line 146
    sub-int/2addr p0, v1

    .line 147
    iput p0, v0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 148
    .line 149
    if-nez p0, :cond_4

    .line 150
    .line 151
    const/4 p0, 0x0

    .line 152
    iput p0, v0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    .line 153
    .line 154
    :cond_4
    :goto_0
    return-void
.end method
