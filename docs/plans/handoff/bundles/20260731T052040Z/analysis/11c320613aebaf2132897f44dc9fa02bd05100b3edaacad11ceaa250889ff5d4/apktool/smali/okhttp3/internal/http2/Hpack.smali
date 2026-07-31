.class public abstract Lokhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final NAME_TO_FIRST_INDEX:Ljava/util/Map;

.field public static final STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 64

    .line 1
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 2
    .line 3
    sget-object v1, Lokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lokio/ByteString;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 11
    .line 12
    sget-object v3, Lokhttp3/internal/http2/Header;->TARGET_METHOD:Lokio/ByteString;

    .line 13
    .line 14
    const-string v4, "GET"

    .line 15
    .line 16
    invoke-direct {v1, v3, v4}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Lokhttp3/internal/http2/Header;

    .line 20
    .line 21
    const-string v5, "POST"

    .line 22
    .line 23
    invoke-direct {v4, v3, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lokhttp3/internal/http2/Header;

    .line 27
    .line 28
    sget-object v5, Lokhttp3/internal/http2/Header;->TARGET_PATH:Lokio/ByteString;

    .line 29
    .line 30
    const-string v6, "/"

    .line 31
    .line 32
    invoke-direct {v3, v5, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v6, Lokhttp3/internal/http2/Header;

    .line 36
    .line 37
    const-string v7, "/index.html"

    .line 38
    .line 39
    invoke-direct {v6, v5, v7}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v5, Lokhttp3/internal/http2/Header;

    .line 43
    .line 44
    sget-object v7, Lokhttp3/internal/http2/Header;->TARGET_SCHEME:Lokio/ByteString;

    .line 45
    .line 46
    const-string v8, "http"

    .line 47
    .line 48
    invoke-direct {v5, v7, v8}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v8, Lokhttp3/internal/http2/Header;

    .line 52
    .line 53
    const-string v9, "https"

    .line 54
    .line 55
    invoke-direct {v8, v7, v9}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v7, Lokhttp3/internal/http2/Header;

    .line 59
    .line 60
    sget-object v9, Lokhttp3/internal/http2/Header;->RESPONSE_STATUS:Lokio/ByteString;

    .line 61
    .line 62
    const-string v10, "200"

    .line 63
    .line 64
    invoke-direct {v7, v9, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v10, Lokhttp3/internal/http2/Header;

    .line 68
    .line 69
    const-string v11, "204"

    .line 70
    .line 71
    invoke-direct {v10, v9, v11}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v11, Lokhttp3/internal/http2/Header;

    .line 75
    .line 76
    const-string v12, "206"

    .line 77
    .line 78
    invoke-direct {v11, v9, v12}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v12, Lokhttp3/internal/http2/Header;

    .line 82
    .line 83
    const-string v13, "304"

    .line 84
    .line 85
    invoke-direct {v12, v9, v13}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v13, Lokhttp3/internal/http2/Header;

    .line 89
    .line 90
    const-string v14, "400"

    .line 91
    .line 92
    invoke-direct {v13, v9, v14}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v14, Lokhttp3/internal/http2/Header;

    .line 96
    .line 97
    const-string v15, "404"

    .line 98
    .line 99
    invoke-direct {v14, v9, v15}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v15, Lokhttp3/internal/http2/Header;

    .line 103
    .line 104
    move-object/from16 v16, v0

    .line 105
    .line 106
    const-string v0, "500"

    .line 107
    .line 108
    invoke-direct {v15, v9, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 112
    .line 113
    const-string v9, "accept-charset"

    .line 114
    .line 115
    invoke-direct {v0, v9, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v9, Lokhttp3/internal/http2/Header;

    .line 119
    .line 120
    move-object/from16 v17, v0

    .line 121
    .line 122
    const-string v0, "accept-encoding"

    .line 123
    .line 124
    move-object/from16 v18, v1

    .line 125
    .line 126
    const-string v1, "gzip, deflate"

    .line 127
    .line 128
    invoke-direct {v9, v0, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 132
    .line 133
    const-string v1, "accept-language"

    .line 134
    .line 135
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 139
    .line 140
    move-object/from16 v19, v0

    .line 141
    .line 142
    const-string v0, "accept-ranges"

    .line 143
    .line 144
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 148
    .line 149
    move-object/from16 v20, v1

    .line 150
    .line 151
    const-string v1, "accept"

    .line 152
    .line 153
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 157
    .line 158
    move-object/from16 v21, v0

    .line 159
    .line 160
    const-string v0, "access-control-allow-origin"

    .line 161
    .line 162
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 166
    .line 167
    move-object/from16 v22, v1

    .line 168
    .line 169
    const-string v1, "age"

    .line 170
    .line 171
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 175
    .line 176
    move-object/from16 v23, v0

    .line 177
    .line 178
    const-string v0, "allow"

    .line 179
    .line 180
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 184
    .line 185
    move-object/from16 v24, v1

    .line 186
    .line 187
    const-string v1, "authorization"

    .line 188
    .line 189
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 193
    .line 194
    move-object/from16 v25, v0

    .line 195
    .line 196
    const-string v0, "cache-control"

    .line 197
    .line 198
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 202
    .line 203
    move-object/from16 v26, v1

    .line 204
    .line 205
    const-string v1, "content-disposition"

    .line 206
    .line 207
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 211
    .line 212
    move-object/from16 v27, v0

    .line 213
    .line 214
    const-string v0, "content-encoding"

    .line 215
    .line 216
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 220
    .line 221
    move-object/from16 v28, v1

    .line 222
    .line 223
    const-string v1, "content-language"

    .line 224
    .line 225
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 229
    .line 230
    move-object/from16 v29, v0

    .line 231
    .line 232
    const-string v0, "content-length"

    .line 233
    .line 234
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 238
    .line 239
    move-object/from16 v30, v1

    .line 240
    .line 241
    const-string v1, "content-location"

    .line 242
    .line 243
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 247
    .line 248
    move-object/from16 v31, v0

    .line 249
    .line 250
    const-string v0, "content-range"

    .line 251
    .line 252
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 256
    .line 257
    move-object/from16 v32, v1

    .line 258
    .line 259
    const-string v1, "content-type"

    .line 260
    .line 261
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 265
    .line 266
    move-object/from16 v33, v0

    .line 267
    .line 268
    const-string v0, "cookie"

    .line 269
    .line 270
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 274
    .line 275
    move-object/from16 v34, v1

    .line 276
    .line 277
    const-string v1, "date"

    .line 278
    .line 279
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 283
    .line 284
    move-object/from16 v35, v0

    .line 285
    .line 286
    const-string v0, "etag"

    .line 287
    .line 288
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 292
    .line 293
    move-object/from16 v36, v1

    .line 294
    .line 295
    const-string v1, "expect"

    .line 296
    .line 297
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 301
    .line 302
    move-object/from16 v37, v0

    .line 303
    .line 304
    const-string v0, "expires"

    .line 305
    .line 306
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 310
    .line 311
    move-object/from16 v38, v1

    .line 312
    .line 313
    const-string v1, "from"

    .line 314
    .line 315
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 319
    .line 320
    move-object/from16 v39, v0

    .line 321
    .line 322
    const-string v0, "host"

    .line 323
    .line 324
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 328
    .line 329
    move-object/from16 v40, v1

    .line 330
    .line 331
    const-string v1, "if-match"

    .line 332
    .line 333
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 337
    .line 338
    move-object/from16 v41, v0

    .line 339
    .line 340
    const-string v0, "if-modified-since"

    .line 341
    .line 342
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 346
    .line 347
    move-object/from16 v42, v1

    .line 348
    .line 349
    const-string v1, "if-none-match"

    .line 350
    .line 351
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 355
    .line 356
    move-object/from16 v43, v0

    .line 357
    .line 358
    const-string v0, "if-range"

    .line 359
    .line 360
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 364
    .line 365
    move-object/from16 v44, v1

    .line 366
    .line 367
    const-string v1, "if-unmodified-since"

    .line 368
    .line 369
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 373
    .line 374
    move-object/from16 v45, v0

    .line 375
    .line 376
    const-string v0, "last-modified"

    .line 377
    .line 378
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 382
    .line 383
    move-object/from16 v46, v1

    .line 384
    .line 385
    const-string v1, "link"

    .line 386
    .line 387
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 391
    .line 392
    move-object/from16 v47, v0

    .line 393
    .line 394
    const-string v0, "location"

    .line 395
    .line 396
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 400
    .line 401
    move-object/from16 v48, v1

    .line 402
    .line 403
    const-string v1, "max-forwards"

    .line 404
    .line 405
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 409
    .line 410
    move-object/from16 v49, v0

    .line 411
    .line 412
    const-string v0, "proxy-authenticate"

    .line 413
    .line 414
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 418
    .line 419
    move-object/from16 v50, v1

    .line 420
    .line 421
    const-string v1, "proxy-authorization"

    .line 422
    .line 423
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 427
    .line 428
    move-object/from16 v51, v0

    .line 429
    .line 430
    const-string v0, "range"

    .line 431
    .line 432
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 436
    .line 437
    move-object/from16 v52, v1

    .line 438
    .line 439
    const-string v1, "referer"

    .line 440
    .line 441
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 445
    .line 446
    move-object/from16 v53, v0

    .line 447
    .line 448
    const-string v0, "refresh"

    .line 449
    .line 450
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 454
    .line 455
    move-object/from16 v54, v1

    .line 456
    .line 457
    const-string v1, "retry-after"

    .line 458
    .line 459
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 463
    .line 464
    move-object/from16 v55, v0

    .line 465
    .line 466
    const-string v0, "server"

    .line 467
    .line 468
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 472
    .line 473
    move-object/from16 v56, v1

    .line 474
    .line 475
    const-string v1, "set-cookie"

    .line 476
    .line 477
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 481
    .line 482
    move-object/from16 v57, v0

    .line 483
    .line 484
    const-string/jumbo v0, "strict-transport-security"

    .line 485
    .line 486
    .line 487
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 491
    .line 492
    move-object/from16 v58, v1

    .line 493
    .line 494
    const-string/jumbo v1, "transfer-encoding"

    .line 495
    .line 496
    .line 497
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 501
    .line 502
    move-object/from16 v59, v0

    .line 503
    .line 504
    const-string/jumbo v0, "user-agent"

    .line 505
    .line 506
    .line 507
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 511
    .line 512
    move-object/from16 v60, v1

    .line 513
    .line 514
    const-string/jumbo v1, "vary"

    .line 515
    .line 516
    .line 517
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    new-instance v1, Lokhttp3/internal/http2/Header;

    .line 521
    .line 522
    move-object/from16 v61, v0

    .line 523
    .line 524
    const-string/jumbo v0, "via"

    .line 525
    .line 526
    .line 527
    invoke-direct {v1, v0, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    new-instance v0, Lokhttp3/internal/http2/Header;

    .line 531
    .line 532
    move-object/from16 v62, v1

    .line 533
    .line 534
    const-string/jumbo v1, "www-authenticate"

    .line 535
    .line 536
    .line 537
    invoke-direct {v0, v1, v2}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    const/16 v1, 0x3d

    .line 541
    .line 542
    new-array v2, v1, [Lokhttp3/internal/http2/Header;

    .line 543
    .line 544
    const/16 v63, 0x0

    .line 545
    .line 546
    aput-object v16, v2, v63

    .line 547
    .line 548
    const/16 v16, 0x1

    .line 549
    .line 550
    aput-object v18, v2, v16

    .line 551
    .line 552
    const/16 v16, 0x2

    .line 553
    .line 554
    aput-object v4, v2, v16

    .line 555
    .line 556
    const/4 v4, 0x3

    .line 557
    aput-object v3, v2, v4

    .line 558
    .line 559
    const/4 v3, 0x4

    .line 560
    aput-object v6, v2, v3

    .line 561
    .line 562
    const/4 v3, 0x5

    .line 563
    aput-object v5, v2, v3

    .line 564
    .line 565
    const/4 v3, 0x6

    .line 566
    aput-object v8, v2, v3

    .line 567
    .line 568
    const/4 v3, 0x7

    .line 569
    aput-object v7, v2, v3

    .line 570
    .line 571
    const/16 v3, 0x8

    .line 572
    .line 573
    aput-object v10, v2, v3

    .line 574
    .line 575
    const/16 v3, 0x9

    .line 576
    .line 577
    aput-object v11, v2, v3

    .line 578
    .line 579
    const/16 v3, 0xa

    .line 580
    .line 581
    aput-object v12, v2, v3

    .line 582
    .line 583
    const/16 v3, 0xb

    .line 584
    .line 585
    aput-object v13, v2, v3

    .line 586
    .line 587
    const/16 v3, 0xc

    .line 588
    .line 589
    aput-object v14, v2, v3

    .line 590
    .line 591
    const/16 v3, 0xd

    .line 592
    .line 593
    aput-object v15, v2, v3

    .line 594
    .line 595
    const/16 v3, 0xe

    .line 596
    .line 597
    aput-object v17, v2, v3

    .line 598
    .line 599
    const/16 v3, 0xf

    .line 600
    .line 601
    aput-object v9, v2, v3

    .line 602
    .line 603
    const/16 v3, 0x10

    .line 604
    .line 605
    aput-object v19, v2, v3

    .line 606
    .line 607
    const/16 v3, 0x11

    .line 608
    .line 609
    aput-object v20, v2, v3

    .line 610
    .line 611
    const/16 v3, 0x12

    .line 612
    .line 613
    aput-object v21, v2, v3

    .line 614
    .line 615
    const/16 v3, 0x13

    .line 616
    .line 617
    aput-object v22, v2, v3

    .line 618
    .line 619
    const/16 v3, 0x14

    .line 620
    .line 621
    aput-object v23, v2, v3

    .line 622
    .line 623
    const/16 v3, 0x15

    .line 624
    .line 625
    aput-object v24, v2, v3

    .line 626
    .line 627
    const/16 v3, 0x16

    .line 628
    .line 629
    aput-object v25, v2, v3

    .line 630
    .line 631
    const/16 v3, 0x17

    .line 632
    .line 633
    aput-object v26, v2, v3

    .line 634
    .line 635
    const/16 v3, 0x18

    .line 636
    .line 637
    aput-object v27, v2, v3

    .line 638
    .line 639
    const/16 v3, 0x19

    .line 640
    .line 641
    aput-object v28, v2, v3

    .line 642
    .line 643
    const/16 v3, 0x1a

    .line 644
    .line 645
    aput-object v29, v2, v3

    .line 646
    .line 647
    const/16 v3, 0x1b

    .line 648
    .line 649
    aput-object v30, v2, v3

    .line 650
    .line 651
    const/16 v3, 0x1c

    .line 652
    .line 653
    aput-object v31, v2, v3

    .line 654
    .line 655
    const/16 v3, 0x1d

    .line 656
    .line 657
    aput-object v32, v2, v3

    .line 658
    .line 659
    const/16 v3, 0x1e

    .line 660
    .line 661
    aput-object v33, v2, v3

    .line 662
    .line 663
    const/16 v3, 0x1f

    .line 664
    .line 665
    aput-object v34, v2, v3

    .line 666
    .line 667
    const/16 v3, 0x20

    .line 668
    .line 669
    aput-object v35, v2, v3

    .line 670
    .line 671
    const/16 v3, 0x21

    .line 672
    .line 673
    aput-object v36, v2, v3

    .line 674
    .line 675
    const/16 v3, 0x22

    .line 676
    .line 677
    aput-object v37, v2, v3

    .line 678
    .line 679
    const/16 v3, 0x23

    .line 680
    .line 681
    aput-object v38, v2, v3

    .line 682
    .line 683
    const/16 v3, 0x24

    .line 684
    .line 685
    aput-object v39, v2, v3

    .line 686
    .line 687
    const/16 v3, 0x25

    .line 688
    .line 689
    aput-object v40, v2, v3

    .line 690
    .line 691
    const/16 v3, 0x26

    .line 692
    .line 693
    aput-object v41, v2, v3

    .line 694
    .line 695
    const/16 v3, 0x27

    .line 696
    .line 697
    aput-object v42, v2, v3

    .line 698
    .line 699
    const/16 v3, 0x28

    .line 700
    .line 701
    aput-object v43, v2, v3

    .line 702
    .line 703
    const/16 v3, 0x29

    .line 704
    .line 705
    aput-object v44, v2, v3

    .line 706
    .line 707
    const/16 v3, 0x2a

    .line 708
    .line 709
    aput-object v45, v2, v3

    .line 710
    .line 711
    const/16 v3, 0x2b

    .line 712
    .line 713
    aput-object v46, v2, v3

    .line 714
    .line 715
    const/16 v3, 0x2c

    .line 716
    .line 717
    aput-object v47, v2, v3

    .line 718
    .line 719
    const/16 v3, 0x2d

    .line 720
    .line 721
    aput-object v48, v2, v3

    .line 722
    .line 723
    const/16 v3, 0x2e

    .line 724
    .line 725
    aput-object v49, v2, v3

    .line 726
    .line 727
    const/16 v3, 0x2f

    .line 728
    .line 729
    aput-object v50, v2, v3

    .line 730
    .line 731
    const/16 v3, 0x30

    .line 732
    .line 733
    aput-object v51, v2, v3

    .line 734
    .line 735
    const/16 v3, 0x31

    .line 736
    .line 737
    aput-object v52, v2, v3

    .line 738
    .line 739
    const/16 v3, 0x32

    .line 740
    .line 741
    aput-object v53, v2, v3

    .line 742
    .line 743
    const/16 v3, 0x33

    .line 744
    .line 745
    aput-object v54, v2, v3

    .line 746
    .line 747
    const/16 v3, 0x34

    .line 748
    .line 749
    aput-object v55, v2, v3

    .line 750
    .line 751
    const/16 v3, 0x35

    .line 752
    .line 753
    aput-object v56, v2, v3

    .line 754
    .line 755
    const/16 v3, 0x36

    .line 756
    .line 757
    aput-object v57, v2, v3

    .line 758
    .line 759
    const/16 v3, 0x37

    .line 760
    .line 761
    aput-object v58, v2, v3

    .line 762
    .line 763
    const/16 v3, 0x38

    .line 764
    .line 765
    aput-object v59, v2, v3

    .line 766
    .line 767
    const/16 v3, 0x39

    .line 768
    .line 769
    aput-object v60, v2, v3

    .line 770
    .line 771
    const/16 v3, 0x3a

    .line 772
    .line 773
    aput-object v61, v2, v3

    .line 774
    .line 775
    const/16 v3, 0x3b

    .line 776
    .line 777
    aput-object v62, v2, v3

    .line 778
    .line 779
    const/16 v3, 0x3c

    .line 780
    .line 781
    aput-object v0, v2, v3

    .line 782
    .line 783
    sput-object v2, Lokhttp3/internal/http2/Hpack;->STATIC_HEADER_TABLE:[Lokhttp3/internal/http2/Header;

    .line 784
    .line 785
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 786
    .line 787
    const/high16 v3, 0x3f800000    # 1.0f

    .line 788
    .line 789
    invoke-direct {v0, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 790
    .line 791
    .line 792
    move/from16 v3, v63

    .line 793
    .line 794
    :goto_0
    if-ge v3, v1, :cond_1

    .line 795
    .line 796
    aget-object v4, v2, v3

    .line 797
    .line 798
    iget-object v4, v4, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 799
    .line 800
    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 801
    .line 802
    .line 803
    move-result v4

    .line 804
    if-nez v4, :cond_0

    .line 805
    .line 806
    aget-object v4, v2, v3

    .line 807
    .line 808
    iget-object v4, v4, Lokhttp3/internal/http2/Header;->name:Lokio/ByteString;

    .line 809
    .line 810
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 818
    .line 819
    goto :goto_0

    .line 820
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 821
    .line 822
    .line 823
    move-result-object v0

    .line 824
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    .line 826
    .line 827
    sput-object v0, Lokhttp3/internal/http2/Hpack;->NAME_TO_FIRST_INDEX:Ljava/util/Map;

    .line 828
    .line 829
    return-void
.end method

.method public static checkLowercase(Lokio/ByteString;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lokio/ByteString;->getSize$okio()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lokio/ByteString;->internalGet$okio(I)B

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x41

    .line 16
    .line 17
    if-gt v3, v2, :cond_1

    .line 18
    .line 19
    const/16 v3, 0x5b

    .line 20
    .line 21
    if-lt v2, v3, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "PROTOCOL_ERROR response malformed: mixed case name: "

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$3(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method
