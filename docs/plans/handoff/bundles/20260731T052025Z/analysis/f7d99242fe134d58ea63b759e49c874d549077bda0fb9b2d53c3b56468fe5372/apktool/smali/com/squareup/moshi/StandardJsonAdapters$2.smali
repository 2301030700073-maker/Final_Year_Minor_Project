.class public final Lcom/squareup/moshi/StandardJsonAdapters$2;
.super Lcom/squareup/moshi/JsonAdapter;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/squareup/moshi/StandardJsonAdapters$2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final fromJson(Lcom/squareup/moshi/JsonUtf8Reader;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lcom/squareup/moshi/StandardJsonAdapters$2;->$r8$classId:I

    .line 6
    .line 7
    const-string v2, " at path "

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/16 v5, 0x9

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->beginObject()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    move-object v2, v6

    .line 26
    move-object v8, v2

    .line 27
    move-object v9, v8

    .line 28
    move-object v11, v9

    .line 29
    move-object v12, v11

    .line 30
    move-object v13, v12

    .line 31
    move-object v14, v13

    .line 32
    move-object v15, v14

    .line 33
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    sget-object v3, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializerKt;->JSON_KEYS:Lcom/google/zxing/BinaryBitmap;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lcom/squareup/moshi/JsonUtf8Reader;->selectName(Lcom/google/zxing/BinaryBitmap;)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    packed-switch v3, :pswitch_data_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v4, v5, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNull()V

    .line 59
    .line 60
    .line 61
    move-object v4, v6

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    :goto_1
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_0
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-ne v3, v5, :cond_1

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNull()V

    .line 78
    .line 79
    .line 80
    move-object v15, v6

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    move-object v15, v3

    .line 87
    goto :goto_0

    .line 88
    :pswitch_1
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-ne v3, v5, :cond_2

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextNull()V

    .line 95
    .line 96
    .line 97
    move-object v14, v6

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    move-object v14, v3

    .line 104
    goto :goto_0

    .line 105
    :pswitch_2
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v13

    .line 109
    goto :goto_0

    .line 110
    :pswitch_3
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    invoke-static {v3}, Lcom/fsck/k9/mail/AuthType;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/AuthType;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    goto :goto_0

    .line 122
    :pswitch_4
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-static {v3}, Lcom/fsck/k9/mail/ConnectionSecurity;->valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    goto :goto_0

    .line 134
    :pswitch_5
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    goto :goto_0

    .line 143
    :pswitch_6
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    goto :goto_0

    .line 148
    :pswitch_7
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->endObject()V

    .line 154
    .line 155
    .line 156
    if-eqz v8, :cond_9

    .line 157
    .line 158
    if-eqz v9, :cond_8

    .line 159
    .line 160
    if-eqz v2, :cond_7

    .line 161
    .line 162
    if-eqz v11, :cond_6

    .line 163
    .line 164
    if-eqz v12, :cond_5

    .line 165
    .line 166
    if-eqz v13, :cond_4

    .line 167
    .line 168
    new-instance v7, Lcom/fsck/k9/mail/ServerSettings;

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    move-object/from16 v16, v0

    .line 175
    .line 176
    invoke-direct/range {v7 .. v16}, Lcom/fsck/k9/mail/ServerSettings;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/fsck/k9/mail/ConnectionSecurity;Lcom/fsck/k9/mail/AuthType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    .line 178
    .line 179
    move-object v6, v7

    .line 180
    goto :goto_2

    .line 181
    :cond_4
    const-string v0, "\'username\' must not be missing"

    .line 182
    .line 183
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_5
    const-string v0, "\'authenticationType\' must not be missing"

    .line 188
    .line 189
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_6
    const-string v0, "\'connectionSecurity\' must not be missing"

    .line 194
    .line 195
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_7
    const-string v0, "\'port\' must not be missing"

    .line 200
    .line 201
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_8
    const-string v0, "\'host\' must not be missing"

    .line 206
    .line 207
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_9
    const-string v0, "\'type\' must not be missing"

    .line 212
    .line 213
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_2
    return-object v6

    .line 217
    :pswitch_8
    const/16 v0, -0x8000

    .line 218
    .line 219
    const/16 v2, 0x7fff

    .line 220
    .line 221
    const-string v3, "a short"

    .line 222
    .line 223
    invoke-static {v1, v3, v0, v2}, Lcom/squareup/moshi/Types;->rangeCheckNextInt(Lcom/squareup/moshi/JsonUtf8Reader;Ljava/lang/String;II)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    int-to-short v0, v0

    .line 228
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    return-object v0

    .line 233
    :pswitch_9
    iget v0, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 234
    .line 235
    if-nez v0, :cond_a

    .line 236
    .line 237
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->doPeek()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    :cond_a
    const/16 v2, 0x10

    .line 242
    .line 243
    if-ne v0, v2, :cond_b

    .line 244
    .line 245
    iput v4, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 246
    .line 247
    iget-object v0, v1, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    .line 248
    .line 249
    iget v2, v1, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 250
    .line 251
    sub-int/2addr v2, v3

    .line 252
    aget v4, v0, v2

    .line 253
    .line 254
    add-int/2addr v4, v3

    .line 255
    aput v4, v0, v2

    .line 256
    .line 257
    iget-wide v0, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peekedLong:J

    .line 258
    .line 259
    goto/16 :goto_6

    .line 260
    .line 261
    :cond_b
    const/16 v2, 0x11

    .line 262
    .line 263
    const-string v7, "Expected a long but was "

    .line 264
    .line 265
    const/16 v8, 0xb

    .line 266
    .line 267
    if-ne v0, v2, :cond_c

    .line 268
    .line 269
    iget-object v0, v1, Lcom/squareup/moshi/JsonUtf8Reader;->buffer:Lokio/Buffer;

    .line 270
    .line 271
    iget v2, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peekedNumberLength:I

    .line 272
    .line 273
    int-to-long v9, v2

    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    .line 276
    .line 277
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 278
    .line 279
    invoke-virtual {v0, v9, v10, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iput-object v0, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_c
    if-eq v0, v5, :cond_f

    .line 287
    .line 288
    const/16 v2, 0x8

    .line 289
    .line 290
    if-ne v0, v2, :cond_d

    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_d
    if-ne v0, v8, :cond_e

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_e
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->peek()I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    invoke-static {v0}, Lkotlinx/io/Sink$-CC;->stringValueOf$2(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v0, v1, v7}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_f
    :goto_3
    if-ne v0, v5, :cond_10

    .line 313
    .line 314
    sget-object v0, Lcom/squareup/moshi/JsonUtf8Reader;->DOUBLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 315
    .line 316
    invoke-virtual {v1, v0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    goto :goto_4

    .line 321
    :cond_10
    sget-object v0, Lcom/squareup/moshi/JsonUtf8Reader;->SINGLE_QUOTE_OR_SLASH:Lokio/ByteString;

    .line 322
    .line 323
    invoke-virtual {v1, v0}, Lcom/squareup/moshi/JsonUtf8Reader;->nextQuotedValue(Lokio/ByteString;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    :goto_4
    iput-object v0, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 328
    .line 329
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 330
    .line 331
    .line 332
    move-result-wide v9

    .line 333
    iput v4, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 334
    .line 335
    iget-object v0, v1, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    .line 336
    .line 337
    iget v2, v1, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 338
    .line 339
    sub-int/2addr v2, v3

    .line 340
    aget v5, v0, v2

    .line 341
    .line 342
    add-int/2addr v5, v3

    .line 343
    aput v5, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .line 345
    move-wide v0, v9

    .line 346
    goto :goto_6

    .line 347
    :catch_0
    :goto_5
    iput v8, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 348
    .line 349
    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    .line 350
    .line 351
    iget-object v2, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 352
    .line 353
    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    .line 357
    .line 358
    .line 359
    move-result-wide v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    iput-object v6, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 361
    .line 362
    iput v4, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peeked:I

    .line 363
    .line 364
    iget-object v0, v1, Lcom/squareup/moshi/JsonUtf8Reader;->pathIndices:[I

    .line 365
    .line 366
    iget v1, v1, Lcom/squareup/moshi/JsonUtf8Reader;->stackSize:I

    .line 367
    .line 368
    sub-int/2addr v1, v3

    .line 369
    aget v2, v0, v1

    .line 370
    .line 371
    add-int/2addr v2, v3

    .line 372
    aput v2, v0, v1

    .line 373
    .line 374
    move-wide v0, v7

    .line 375
    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    goto :goto_7

    .line 380
    :catch_1
    iget-object v0, v1, Lcom/squareup/moshi/JsonUtf8Reader;->peekedString:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    invoke-static {v0, v1, v7}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :goto_7
    return-object v6

    .line 390
    :pswitch_a
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextInt()I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    return-object v0

    .line 399
    :pswitch_b
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextDouble()D

    .line 400
    .line 401
    .line 402
    move-result-wide v3

    .line 403
    double-to-float v0, v3

    .line 404
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-nez v3, :cond_11

    .line 409
    .line 410
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    return-object v0

    .line 415
    :cond_11
    new-instance v3, Lcom/squareup/moshi/JsonDataException;

    .line 416
    .line 417
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string v5, "JSON forbids NaN and infinities: "

    .line 424
    .line 425
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    throw v3

    .line 445
    :pswitch_c
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextDouble()D

    .line 446
    .line 447
    .line 448
    move-result-wide v0

    .line 449
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    return-object v0

    .line 454
    :pswitch_d
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-gt v5, v3, :cond_12

    .line 463
    .line 464
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    return-object v0

    .line 473
    :cond_12
    new-instance v3, Lcom/squareup/moshi/JsonDataException;

    .line 474
    .line 475
    const-string v4, "\""

    .line 476
    .line 477
    const/16 v5, 0x22

    .line 478
    .line 479
    invoke-static {v5, v4, v0}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->getPath()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    const-string v4, "Expected a char but was "

    .line 488
    .line 489
    invoke-static {v4, v0, v2, v1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    throw v3

    .line 497
    :pswitch_e
    const/16 v0, -0x80

    .line 498
    .line 499
    const/16 v2, 0xff

    .line 500
    .line 501
    const-string v3, "a byte"

    .line 502
    .line 503
    invoke-static {v1, v3, v0, v2}, Lcom/squareup/moshi/Types;->rangeCheckNextInt(Lcom/squareup/moshi/JsonUtf8Reader;Ljava/lang/String;II)I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    int-to-byte v0, v0

    .line 508
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    return-object v0

    .line 513
    :pswitch_f
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextString()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    return-object v0

    .line 518
    :pswitch_10
    invoke-virtual {v1}, Lcom/squareup/moshi/JsonUtf8Reader;->nextBoolean()Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    return-object v0

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x0
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

.method public final toJson(Lcom/squareup/moshi/JsonUtf8Writer;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget p0, p0, Lcom/squareup/moshi/StandardJsonAdapters$2;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Lcom/fsck/k9/mail/ServerSettings;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonUtf8Writer;->beginObject()Lcom/squareup/moshi/JsonUtf8Writer;

    .line 13
    .line 14
    .line 15
    iput-boolean v1, p1, Lcom/squareup/moshi/JsonUtf8Writer;->serializeNulls:Z

    .line 16
    .line 17
    const-string p0, "type"

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 20
    .line 21
    .line 22
    iget-object p0, p2, Lcom/fsck/k9/mail/ServerSettings;->type:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 25
    .line 26
    .line 27
    const-string p0, "host"

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 30
    .line 31
    .line 32
    iget-object p0, p2, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 35
    .line 36
    .line 37
    const-string p0, "port"

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 40
    .line 41
    .line 42
    iget p0, p2, Lcom/fsck/k9/mail/ServerSettings;->port:I

    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/Number;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 49
    .line 50
    .line 51
    const-string p0, "connectionSecurity"

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 54
    .line 55
    .line 56
    iget-object p0, p2, Lcom/fsck/k9/mail/ServerSettings;->connectionSecurity:Lcom/fsck/k9/mail/ConnectionSecurity;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 63
    .line 64
    .line 65
    const-string p0, "authenticationType"

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 68
    .line 69
    .line 70
    iget-object p0, p2, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 77
    .line 78
    .line 79
    const-string/jumbo p0, "username"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 83
    .line 84
    .line 85
    iget-object p0, p2, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 88
    .line 89
    .line 90
    const-string p0, "password"

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 93
    .line 94
    .line 95
    iget-object p0, p2, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 98
    .line 99
    .line 100
    const-string p0, "clientCertificateAlias"

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 103
    .line 104
    .line 105
    iget-object p0, p2, Lcom/fsck/k9/mail/ServerSettings;->clientCertificateAlias:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 108
    .line 109
    .line 110
    iget-object p0, p2, Lcom/fsck/k9/mail/ServerSettings;->extra:Ljava/util/Map;

    .line 111
    .line 112
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_0

    .line 125
    .line 126
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    check-cast p2, Ljava/util/Map$Entry;

    .line 131
    .line 132
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Ljava/lang/String;

    .line 137
    .line 138
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_0
    iput-boolean v0, p1, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 152
    .line 153
    const/4 p0, 0x5

    .line 154
    const/16 p2, 0x7d

    .line 155
    .line 156
    const/4 v0, 0x3

    .line 157
    invoke-virtual {p1, p2, v0, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->close(CII)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_1
    const-string p0, "Required value was null."

    .line 162
    .line 163
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_1
    return-void

    .line 167
    :pswitch_0
    check-cast p2, Ljava/lang/Short;

    .line 168
    .line 169
    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    int-to-long v0, p0

    .line 174
    invoke-virtual {p1, v0, v1}, Lcom/squareup/moshi/JsonUtf8Writer;->value(J)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 175
    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    .line 179
    .line 180
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 181
    .line 182
    .line 183
    move-result-wide v0

    .line 184
    invoke-virtual {p1, v0, v1}, Lcom/squareup/moshi/JsonUtf8Writer;->value(J)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result p0

    .line 194
    int-to-long v0, p0

    .line 195
    invoke-virtual {p1, v0, v1}, Lcom/squareup/moshi/JsonUtf8Writer;->value(J)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_3
    check-cast p2, Ljava/lang/Float;

    .line 200
    .line 201
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, p2}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/Number;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :pswitch_4
    check-cast p2, Ljava/lang/Double;

    .line 209
    .line 210
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    .line 211
    .line 212
    .line 213
    move-result-wide v2

    .line 214
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-nez p0, :cond_3

    .line 219
    .line 220
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-nez p0, :cond_3

    .line 225
    .line 226
    iget-boolean p0, p1, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 227
    .line 228
    if-eqz p0, :cond_2

    .line 229
    .line 230
    iput-boolean v0, p1, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 231
    .line 232
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p0

    .line 236
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->name(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_2
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonUtf8Writer;->writeDeferredName()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonUtf8Writer;->beforeValue()V

    .line 244
    .line 245
    .line 246
    iget-object p0, p1, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    .line 247
    .line 248
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {p0, p2}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p0, p1, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 256
    .line 257
    iget p1, p1, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 258
    .line 259
    sub-int/2addr p1, v1

    .line 260
    aget p2, p0, p1

    .line 261
    .line 262
    add-int/2addr p2, v1

    .line 263
    aput p2, p0, p1

    .line 264
    .line 265
    :goto_2
    return-void

    .line 266
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 267
    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string p2, "Numeric values must be finite, but was "

    .line 271
    .line 272
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw p0

    .line 286
    :pswitch_5
    check-cast p2, Ljava/lang/Character;

    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    invoke-virtual {p1, p0}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 293
    .line 294
    .line 295
    return-void

    .line 296
    :pswitch_6
    check-cast p2, Ljava/lang/Byte;

    .line 297
    .line 298
    invoke-virtual {p2}, Ljava/lang/Byte;->intValue()I

    .line 299
    .line 300
    .line 301
    move-result p0

    .line 302
    and-int/lit16 p0, p0, 0xff

    .line 303
    .line 304
    int-to-long v0, p0

    .line 305
    invoke-virtual {p1, v0, v1}, Lcom/squareup/moshi/JsonUtf8Writer;->value(J)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .line 310
    .line 311
    invoke-virtual {p1, p2}, Lcom/squareup/moshi/JsonUtf8Writer;->value(Ljava/lang/String;)Lcom/squareup/moshi/JsonUtf8Writer;

    .line 312
    .line 313
    .line 314
    return-void

    .line 315
    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    .line 316
    .line 317
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 318
    .line 319
    .line 320
    move-result p0

    .line 321
    iget-boolean p2, p1, Lcom/squareup/moshi/JsonUtf8Writer;->promoteValueToName:Z

    .line 322
    .line 323
    if-nez p2, :cond_5

    .line 324
    .line 325
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonUtf8Writer;->writeDeferredName()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonUtf8Writer;->beforeValue()V

    .line 329
    .line 330
    .line 331
    iget-object p2, p1, Lcom/squareup/moshi/JsonUtf8Writer;->sink:Lokio/Buffer;

    .line 332
    .line 333
    if-eqz p0, :cond_4

    .line 334
    .line 335
    const-string p0, "true"

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_4
    const-string p0, "false"

    .line 339
    .line 340
    :goto_3
    invoke-virtual {p2, p0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object p0, p1, Lcom/squareup/moshi/JsonUtf8Writer;->pathIndices:[I

    .line 344
    .line 345
    iget p1, p1, Lcom/squareup/moshi/JsonUtf8Writer;->stackSize:I

    .line 346
    .line 347
    sub-int/2addr p1, v1

    .line 348
    aget p2, p0, p1

    .line 349
    .line 350
    add-int/2addr p2, v1

    .line 351
    aput p2, p0, p1

    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/moshi/JsonUtf8Writer;->getPath()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    const-string p1, "Boolean cannot be used as a map key in JSON at path "

    .line 359
    .line 360
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    :goto_4
    return-void

    .line 368
    nop

    .line 369
    :pswitch_data_0
    .packed-switch 0x0
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

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/moshi/StandardJsonAdapters$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "JsonAdapter(Short)"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "JsonAdapter(Long)"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "JsonAdapter(Integer)"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "JsonAdapter(Float)"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "JsonAdapter(Double)"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "JsonAdapter(Character)"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "JsonAdapter(Byte)"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    const-string p0, "JsonAdapter(String)"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_8
    const-string p0, "JsonAdapter(Boolean)"

    .line 36
    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
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
