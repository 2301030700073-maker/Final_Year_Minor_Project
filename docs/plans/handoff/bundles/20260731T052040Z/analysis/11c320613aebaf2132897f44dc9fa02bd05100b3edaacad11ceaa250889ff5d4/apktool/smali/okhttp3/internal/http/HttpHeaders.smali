.class public abstract Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 2
    .line 3
    const-string v0, "\"\\"

    .line 4
    .line 5
    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    const-string v0, "\t ,="

    .line 9
    .line 10
    invoke-static {v0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final promisesBody(Lokhttp3/Response;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/Request;->method:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "HEAD"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lokhttp3/Response;->code:I

    .line 15
    .line 16
    const/16 v1, 0x64

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0xc8

    .line 21
    .line 22
    if-lt v0, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    const/16 v1, 0xcc

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/16 v1, 0x130

    .line 29
    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->headersContentLength(Lokhttp3/Response;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    const-wide/16 v2, -0x1

    .line 38
    .line 39
    cmp-long v0, v0, v2

    .line 40
    .line 41
    if-nez v0, :cond_5

    .line 42
    .line 43
    iget-object p0, p0, Lokhttp3/Response;->headers:Lokhttp3/Headers;

    .line 44
    .line 45
    const-string v0, "Transfer-Encoding"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    if-nez p0, :cond_3

    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    :cond_3
    const-string v0, "chunked"

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 64
    return p0

    .line 65
    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 66
    return p0
.end method

.method public static final receiveHeaders(Lokhttp3/HttpUrl$Companion;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 36

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lokhttp3/HttpUrl$Companion;->NO_COOKIES:Lokhttp3/HttpUrl$Companion;

    .line 13
    .line 14
    move-object/from16 v2, p0

    .line 15
    .line 16
    if-ne v2, v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v1, Lokhttp3/Cookie;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v4, v2

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v4, v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string v7, "Set-Cookie"

    .line 35
    .line 36
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    new-instance v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/4 v6, 0x2

    .line 47
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    if-eqz v5, :cond_4

    .line 61
    .line 62
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v0, 0x0

    .line 71
    :goto_1
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 72
    .line 73
    if-nez v0, :cond_5

    .line 74
    .line 75
    move-object v4, v1

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    move-object v4, v0

    .line 78
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    move v6, v2

    .line 83
    const/4 v7, 0x0

    .line 84
    :goto_3
    if-ge v6, v5, :cond_26

    .line 85
    .line 86
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    move-object v8, v0

    .line 91
    check-cast v8, Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    .line 98
    .line 99
    move-result-wide v9

    .line 100
    sget-object v0, Lokhttp3/internal/_UtilCommonKt;->EMPTY_BYTE_ARRAY:[B

    .line 101
    .line 102
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    const/16 v11, 0x3b

    .line 107
    .line 108
    invoke-static {v8, v11, v2, v0}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    const/16 v12, 0x3d

    .line 113
    .line 114
    invoke-static {v8, v12, v2, v0}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 115
    .line 116
    .line 117
    move-result v13

    .line 118
    if-ne v13, v0, :cond_6

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_6
    invoke-static {v2, v13, v8}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    invoke-static {v14, v13, v8}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v17

    .line 133
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-nez v14, :cond_7

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_7
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/_UtilCommonKt;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    const/4 v15, -0x1

    .line 145
    if-eq v14, v15, :cond_8

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 149
    .line 150
    invoke-static {v13, v0, v8}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    invoke-static {v13, v0, v8}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v18

    .line 162
    invoke-static/range {v18 .. v18}, Lokhttp3/internal/_UtilCommonKt;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-eq v13, v15, :cond_9

    .line 167
    .line 168
    :goto_4
    move v8, v2

    .line 169
    const/4 v3, 0x0

    .line 170
    move-object/from16 v2, p1

    .line 171
    .line 172
    goto/16 :goto_10

    .line 173
    .line 174
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    const-wide v19, 0xe677d21fdbffL

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    move/from16 v23, v2

    .line 186
    .line 187
    move/from16 v24, v23

    .line 188
    .line 189
    move/from16 v25, v24

    .line 190
    .line 191
    move-wide/from16 v28, v19

    .line 192
    .line 193
    const/16 p2, 0x1

    .line 194
    .line 195
    const/4 v3, 0x0

    .line 196
    const/4 v14, 0x0

    .line 197
    const-wide/16 v21, -0x1

    .line 198
    .line 199
    const/16 v26, 0x1

    .line 200
    .line 201
    const/16 v27, 0x0

    .line 202
    .line 203
    :goto_5
    const-wide v30, 0x7fffffffffffffffL

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    const-wide/high16 v32, -0x8000000000000000L

    .line 209
    .line 210
    if-ge v0, v13, :cond_17

    .line 211
    .line 212
    const-wide/16 v34, -0x1

    .line 213
    .line 214
    invoke-static {v8, v11, v0, v13}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 215
    .line 216
    .line 217
    move-result v15

    .line 218
    invoke-static {v8, v12, v0, v15}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    invoke-static {v0, v11, v8}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-static {v0, v11, v8}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result v12

    .line 230
    invoke-virtual {v8, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-ge v11, v15, :cond_a

    .line 235
    .line 236
    add-int/lit8 v11, v11, 0x1

    .line 237
    .line 238
    invoke-static {v11, v15, v8}, Lokhttp3/internal/_UtilCommonKt;->indexOfFirstNonAsciiWhitespace(IILjava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    invoke-static {v11, v15, v8}, Lokhttp3/internal/_UtilCommonKt;->indexOfLastNonAsciiWhitespace(IILjava/lang/String;)I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    goto :goto_6

    .line 251
    :cond_a
    const-string v11, ""

    .line 252
    .line 253
    :goto_6
    const-string v12, "expires"

    .line 254
    .line 255
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 256
    .line 257
    .line 258
    move-result v12

    .line 259
    if-eqz v12, :cond_b

    .line 260
    .line 261
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    invoke-static {v0, v11}, Lokhttp3/Cookie$Companion;->parseExpires(ILjava/lang/String;)J

    .line 266
    .line 267
    .line 268
    move-result-wide v28
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 269
    :goto_7
    move/from16 v25, p2

    .line 270
    .line 271
    goto/16 :goto_8

    .line 272
    .line 273
    :cond_b
    const-string v12, "max-age"

    .line 274
    .line 275
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    if-eqz v12, :cond_f

    .line 280
    .line 281
    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 282
    .line 283
    .line 284
    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    const-wide/16 v21, 0x0

    .line 286
    .line 287
    cmp-long v0, v11, v21

    .line 288
    .line 289
    if-gtz v0, :cond_c

    .line 290
    .line 291
    move-wide/from16 v21, v32

    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_c
    move-wide/from16 v21, v11

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :catch_0
    move-exception v0

    .line 298
    :try_start_2
    new-instance v12, Lkotlin/text/Regex;

    .line 299
    .line 300
    const-string v2, "-?\\d+"

    .line 301
    .line 302
    invoke-direct {v12, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v12, v11}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    if-eqz v2, :cond_e

    .line 310
    .line 311
    const-string v0, "-"

    .line 312
    .line 313
    const/4 v2, 0x0

    .line 314
    invoke-static {v11, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_d

    .line 319
    .line 320
    move-wide/from16 v30, v32

    .line 321
    .line 322
    :cond_d
    move-wide/from16 v21, v30

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :cond_e
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 326
    :cond_f
    const-string v2, "domain"

    .line 327
    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_12

    .line 333
    .line 334
    :try_start_3
    const-string v0, "."

    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    invoke-static {v11, v0, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 338
    .line 339
    .line 340
    move-result v12

    .line 341
    if-nez v12, :cond_11

    .line 342
    .line 343
    invoke-static {v11, v0}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {v0}, Lokhttp3/internal/_HostnamesCommonKt;->toCanonicalHost(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    if-eqz v0, :cond_10

    .line 352
    .line 353
    move-object v3, v0

    .line 354
    const/16 v26, 0x0

    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 358
    .line 359
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 360
    .line 361
    .line 362
    throw v0

    .line 363
    :cond_11
    const-string v0, "Failed requirement."

    .line 364
    .line 365
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 366
    .line 367
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 371
    :cond_12
    const-string v2, "path"

    .line 372
    .line 373
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    if-eqz v2, :cond_13

    .line 378
    .line 379
    move-object v14, v11

    .line 380
    goto :goto_8

    .line 381
    :cond_13
    const-string v2, "secure"

    .line 382
    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-eqz v2, :cond_14

    .line 388
    .line 389
    move/from16 v23, p2

    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_14
    const-string v2, "httponly"

    .line 393
    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_15

    .line 399
    .line 400
    move/from16 v24, p2

    .line 401
    .line 402
    goto :goto_8

    .line 403
    :cond_15
    const-string v2, "samesite"

    .line 404
    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_16

    .line 410
    .line 411
    move-object/from16 v27, v11

    .line 412
    .line 413
    :catch_1
    :cond_16
    :goto_8
    add-int/lit8 v0, v15, 0x1

    .line 414
    .line 415
    const/4 v2, 0x0

    .line 416
    const/16 v11, 0x3b

    .line 417
    .line 418
    const/16 v12, 0x3d

    .line 419
    .line 420
    goto/16 :goto_5

    .line 421
    .line 422
    :cond_17
    const-wide/16 v34, -0x1

    .line 423
    .line 424
    cmp-long v0, v21, v32

    .line 425
    .line 426
    if-nez v0, :cond_18

    .line 427
    .line 428
    move-object/from16 v2, p1

    .line 429
    .line 430
    move-wide/from16 v19, v32

    .line 431
    .line 432
    goto :goto_a

    .line 433
    :cond_18
    cmp-long v0, v21, v34

    .line 434
    .line 435
    if-eqz v0, :cond_1c

    .line 436
    .line 437
    const-wide v11, 0x20c49ba5e353f7L

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    cmp-long v0, v21, v11

    .line 443
    .line 444
    if-gtz v0, :cond_19

    .line 445
    .line 446
    const-wide/16 v11, 0x3e8

    .line 447
    .line 448
    mul-long v30, v21, v11

    .line 449
    .line 450
    :cond_19
    add-long v30, v9, v30

    .line 451
    .line 452
    cmp-long v0, v30, v9

    .line 453
    .line 454
    if-ltz v0, :cond_1b

    .line 455
    .line 456
    cmp-long v0, v30, v19

    .line 457
    .line 458
    if-lez v0, :cond_1a

    .line 459
    .line 460
    goto :goto_9

    .line 461
    :cond_1a
    move-object/from16 v2, p1

    .line 462
    .line 463
    move-wide/from16 v19, v30

    .line 464
    .line 465
    goto :goto_a

    .line 466
    :cond_1b
    :goto_9
    move-object/from16 v2, p1

    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_1c
    move-object/from16 v2, p1

    .line 470
    .line 471
    move-wide/from16 v19, v28

    .line 472
    .line 473
    :goto_a
    iget-object v0, v2, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    .line 474
    .line 475
    if-nez v3, :cond_1d

    .line 476
    .line 477
    move-object v3, v0

    .line 478
    goto :goto_b

    .line 479
    :cond_1d
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 480
    .line 481
    .line 482
    move-result v8

    .line 483
    if-eqz v8, :cond_1e

    .line 484
    .line 485
    goto :goto_b

    .line 486
    :cond_1e
    const/4 v8, 0x0

    .line 487
    invoke-static {v0, v3, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 488
    .line 489
    .line 490
    move-result v9

    .line 491
    if-eqz v9, :cond_1f

    .line 492
    .line 493
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 494
    .line 495
    .line 496
    move-result v8

    .line 497
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 498
    .line 499
    .line 500
    move-result v9

    .line 501
    sub-int/2addr v8, v9

    .line 502
    add-int/lit8 v8, v8, -0x1

    .line 503
    .line 504
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 505
    .line 506
    .line 507
    move-result v8

    .line 508
    const/16 v9, 0x2e

    .line 509
    .line 510
    if-ne v8, v9, :cond_1f

    .line 511
    .line 512
    sget-object v8, Lokhttp3/internal/_HostnamesCommonKt;->VERIFY_AS_IP_ADDRESS:Lkotlin/text/Regex;

    .line 513
    .line 514
    invoke-virtual {v8, v0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    if-nez v8, :cond_1f

    .line 519
    .line 520
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 525
    .line 526
    .line 527
    move-result v8

    .line 528
    if-eq v0, v8, :cond_20

    .line 529
    .line 530
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 531
    .line 532
    invoke-virtual {v0, v3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    if-nez v0, :cond_20

    .line 537
    .line 538
    :cond_1f
    const/4 v8, 0x0

    .line 539
    const/16 v16, 0x0

    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_20
    const-string v0, "/"

    .line 543
    .line 544
    const/4 v8, 0x0

    .line 545
    if-eqz v14, :cond_22

    .line 546
    .line 547
    invoke-static {v14, v0, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 548
    .line 549
    .line 550
    move-result v9

    .line 551
    if-nez v9, :cond_21

    .line 552
    .line 553
    goto :goto_d

    .line 554
    :cond_21
    :goto_c
    move-object/from16 v22, v14

    .line 555
    .line 556
    goto :goto_e

    .line 557
    :cond_22
    :goto_d
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v9

    .line 561
    const/16 v10, 0x2f

    .line 562
    .line 563
    const/4 v11, 0x6

    .line 564
    invoke-static {v9, v10, v8, v11}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/String;CII)I

    .line 565
    .line 566
    .line 567
    move-result v10

    .line 568
    if-eqz v10, :cond_23

    .line 569
    .line 570
    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    :cond_23
    move-object v14, v0

    .line 575
    goto :goto_c

    .line 576
    :goto_e
    new-instance v16, Lokhttp3/Cookie;

    .line 577
    .line 578
    move-object/from16 v21, v3

    .line 579
    .line 580
    invoke-direct/range {v16 .. v27}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 581
    .line 582
    .line 583
    :goto_f
    move-object/from16 v3, v16

    .line 584
    .line 585
    :goto_10
    if-nez v3, :cond_24

    .line 586
    .line 587
    goto :goto_11

    .line 588
    :cond_24
    if-nez v7, :cond_25

    .line 589
    .line 590
    new-instance v0, Ljava/util/ArrayList;

    .line 591
    .line 592
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .line 594
    .line 595
    move-object v7, v0

    .line 596
    :cond_25
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    :goto_11
    add-int/lit8 v6, v6, 0x1

    .line 600
    .line 601
    move v2, v8

    .line 602
    goto/16 :goto_3

    .line 603
    .line 604
    :cond_26
    if-eqz v7, :cond_27

    .line 605
    .line 606
    invoke-static {v7}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 611
    .line 612
    .line 613
    goto :goto_12

    .line 614
    :cond_27
    const/4 v3, 0x0

    .line 615
    :goto_12
    if-nez v3, :cond_28

    .line 616
    .line 617
    goto :goto_13

    .line 618
    :cond_28
    move-object v1, v3

    .line 619
    :goto_13
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 620
    .line 621
    .line 622
    return-void
.end method
