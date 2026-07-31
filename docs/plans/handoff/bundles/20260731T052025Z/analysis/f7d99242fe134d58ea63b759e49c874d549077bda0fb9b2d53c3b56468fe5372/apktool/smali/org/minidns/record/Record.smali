.class public final Lorg/minidns/record/Record;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public transient bytes:[B

.field public final clazz:Lorg/minidns/record/Record$CLASS;

.field public final clazzValue:I

.field public transient hashCodeCache:Ljava/lang/Integer;

.field public final name:Lorg/minidns/dnsname/DnsName;

.field public final payloadData:Lorg/minidns/record/Data;

.field public final ttl:J

.field public final type:Lorg/minidns/record/Record$TYPE;


# direct methods
.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;IJLorg/minidns/record/Data;)V
    .locals 8

    .line 17
    sget-object v3, Lorg/minidns/record/Record$CLASS;->NONE:Lorg/minidns/record/Record$CLASS;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/Data;)V

    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/Data;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 9
    .line 10
    iput p4, p0, Lorg/minidns/record/Record;->clazzValue:I

    .line 11
    .line 12
    iput-wide p5, p0, Lorg/minidns/record/Record;->ttl:J

    .line 13
    .line 14
    iput-object p7, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 15
    .line 16
    return-void
.end method

.method public static filter(Ljava/util/AbstractCollection;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/minidns/record/Record;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/Record;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Lorg/minidns/record/Record$TYPE;->getType(I)Lorg/minidns/record/Record$TYPE;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    and-int/lit16 v3, v4, 0x7fff

    .line 20
    .line 21
    sget-object v5, Lorg/minidns/record/Record$CLASS;->INVERSE_LUT:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lorg/minidns/record/Record$CLASS;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    int-to-long v5, v5

    .line 38
    const/16 v7, 0x10

    .line 39
    .line 40
    shl-long/2addr v5, v7

    .line 41
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    int-to-long v8, v8

    .line 46
    add-long/2addr v5, v8

    .line 47
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 48
    .line 49
    .line 50
    move-result v8

    .line 51
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    const/4 v10, 0x4

    .line 56
    const/4 v11, 0x1

    .line 57
    if-eq v9, v11, :cond_19

    .line 58
    .line 59
    const/4 v12, 0x2

    .line 60
    if-eq v9, v12, :cond_18

    .line 61
    .line 62
    const/4 v12, 0x5

    .line 63
    if-eq v9, v12, :cond_17

    .line 64
    .line 65
    const-wide v12, 0xffffffffL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    const/4 v14, 0x6

    .line 71
    if-eq v9, v14, :cond_16

    .line 72
    .line 73
    const/16 v15, 0xc

    .line 74
    .line 75
    if-eq v9, v15, :cond_15

    .line 76
    .line 77
    const/16 v15, 0x1c

    .line 78
    .line 79
    if-eq v9, v15, :cond_14

    .line 80
    .line 81
    const/16 v15, 0x21

    .line 82
    .line 83
    if-eq v9, v15, :cond_13

    .line 84
    .line 85
    const/16 v15, 0x27

    .line 86
    .line 87
    if-eq v9, v15, :cond_12

    .line 88
    .line 89
    const/16 v15, 0x29

    .line 90
    .line 91
    if-eq v9, v15, :cond_d

    .line 92
    .line 93
    const/16 v11, 0x2b

    .line 94
    .line 95
    if-eq v9, v11, :cond_c

    .line 96
    .line 97
    const/16 v11, 0x3b

    .line 98
    .line 99
    if-eq v9, v11, :cond_b

    .line 100
    .line 101
    const/16 v11, 0x52

    .line 102
    .line 103
    if-eq v9, v11, :cond_a

    .line 104
    .line 105
    const/16 v11, 0xf

    .line 106
    .line 107
    if-eq v9, v11, :cond_9

    .line 108
    .line 109
    if-eq v9, v7, :cond_8

    .line 110
    .line 111
    packed-switch v9, :pswitch_data_0

    .line 112
    .line 113
    .line 114
    packed-switch v9, :pswitch_data_1

    .line 115
    .line 116
    .line 117
    new-instance v7, Lorg/minidns/record/UNKNOWN;

    .line 118
    .line 119
    invoke-direct {v7, v0, v8}, Lorg/minidns/record/UNKNOWN;-><init>(Ljava/io/DataInputStream;I)V

    .line 120
    .line 121
    .line 122
    goto/16 :goto_6

    .line 123
    .line 124
    :pswitch_0
    sget-object v7, Lorg/minidns/record/TLSA;->CERT_USAGE_LUT:Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 135
    .line 136
    .line 137
    move-result v10

    .line 138
    add-int/lit8 v8, v8, -0x3

    .line 139
    .line 140
    new-array v11, v8, [B

    .line 141
    .line 142
    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-ne v0, v8, :cond_0

    .line 147
    .line 148
    new-instance v0, Lorg/minidns/record/TLSA;

    .line 149
    .line 150
    invoke-direct {v0, v7, v9, v10, v11}, Lorg/minidns/record/TLSA;-><init>(BBB[B)V

    .line 151
    .line 152
    .line 153
    :goto_0
    move-object v7, v0

    .line 154
    goto/16 :goto_6

    .line 155
    .line 156
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 157
    .line 158
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :pswitch_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    new-array v11, v10, [B

    .line 179
    .line 180
    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eq v0, v10, :cond_2

    .line 185
    .line 186
    if-nez v10, :cond_1

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 190
    .line 191
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 192
    .line 193
    .line 194
    throw v0

    .line 195
    :cond_2
    :goto_1
    new-instance v0, Lorg/minidns/record/NSEC3PARAM;

    .line 196
    .line 197
    invoke-direct {v0, v7, v8, v9, v11}, Lorg/minidns/record/NSEC3PARAM;-><init>(BBI[B)V

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :pswitch_2
    sget-object v7, Lorg/minidns/record/NSEC3;->HASH_ALGORITHM_LUT:Ljava/util/HashMap;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 204
    .line 205
    .line 206
    move-result v16

    .line 207
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 208
    .line 209
    .line 210
    move-result v17

    .line 211
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 212
    .line 213
    .line 214
    move-result v18

    .line 215
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 216
    .line 217
    .line 218
    move-result v7

    .line 219
    new-array v9, v7, [B

    .line 220
    .line 221
    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    if-ne v10, v7, :cond_5

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    new-array v11, v10, [B

    .line 232
    .line 233
    invoke-virtual {v0, v11}, Ljava/io/DataInputStream;->read([B)I

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    if-ne v12, v10, :cond_4

    .line 238
    .line 239
    add-int/2addr v7, v14

    .line 240
    add-int/2addr v7, v10

    .line 241
    sub-int/2addr v8, v7

    .line 242
    new-array v7, v8, [B

    .line 243
    .line 244
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->read([B)I

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-ne v0, v8, :cond_3

    .line 249
    .line 250
    invoke-static {v7}, Lorg/minidns/record/NSEC;->readTypeBitMap([B)Ljava/util/ArrayList;

    .line 251
    .line 252
    .line 253
    move-result-object v21

    .line 254
    new-instance v15, Lorg/minidns/record/NSEC3;

    .line 255
    .line 256
    move-object/from16 v19, v9

    .line 257
    .line 258
    move-object/from16 v20, v11

    .line 259
    .line 260
    invoke-direct/range {v15 .. v21}, Lorg/minidns/record/NSEC3;-><init>(BBI[B[BLjava/util/ArrayList;)V

    .line 261
    .line 262
    .line 263
    move-object v7, v15

    .line 264
    goto/16 :goto_6

    .line 265
    .line 266
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 267
    .line 268
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 273
    .line 274
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 281
    .line 282
    .line 283
    throw v0

    .line 284
    :pswitch_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 289
    .line 290
    .line 291
    move-result v9

    .line 292
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 293
    .line 294
    .line 295
    move-result v11

    .line 296
    sub-int/2addr v8, v10

    .line 297
    new-array v8, v8, [B

    .line 298
    .line 299
    invoke-virtual {v0, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 300
    .line 301
    .line 302
    new-instance v0, Lorg/minidns/record/DNSKEY;

    .line 303
    .line 304
    invoke-direct {v0, v7, v9, v11, v8}, Lorg/minidns/record/DNSKEY;-><init>(SBB[B)V

    .line 305
    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :pswitch_4
    sget-object v7, Lorg/minidns/record/NSEC;->LOGGER:Ljava/util/logging/Logger;

    .line 310
    .line 311
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    invoke-virtual {v7}, Lorg/minidns/dnsname/DnsName;->size()I

    .line 316
    .line 317
    .line 318
    move-result v9

    .line 319
    sub-int/2addr v8, v9

    .line 320
    new-array v9, v8, [B

    .line 321
    .line 322
    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->read([B)I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-ne v0, v8, :cond_6

    .line 327
    .line 328
    invoke-static {v9}, Lorg/minidns/record/NSEC;->readTypeBitMap([B)Ljava/util/ArrayList;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    new-instance v8, Lorg/minidns/record/NSEC;

    .line 333
    .line 334
    invoke-direct {v8, v7, v0}, Lorg/minidns/record/NSEC;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/util/ArrayList;)V

    .line 335
    .line 336
    .line 337
    :goto_2
    move-object v7, v8

    .line 338
    goto/16 :goto_6

    .line 339
    .line 340
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 341
    .line 342
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :pswitch_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    invoke-static {v7}, Lorg/minidns/record/Record$TYPE;->getType(I)Lorg/minidns/record/Record$TYPE;

    .line 351
    .line 352
    .line 353
    move-result-object v15

    .line 354
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 355
    .line 356
    .line 357
    move-result v16

    .line 358
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    .line 359
    .line 360
    .line 361
    move-result v17

    .line 362
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    int-to-long v9, v7

    .line 367
    and-long v18, v9, v12

    .line 368
    .line 369
    new-instance v7, Ljava/util/Date;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 372
    .line 373
    .line 374
    move-result v9

    .line 375
    int-to-long v9, v9

    .line 376
    and-long/2addr v9, v12

    .line 377
    const-wide/16 v20, 0x3e8

    .line 378
    .line 379
    mul-long v9, v9, v20

    .line 380
    .line 381
    invoke-direct {v7, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 382
    .line 383
    .line 384
    new-instance v9, Ljava/util/Date;

    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 387
    .line 388
    .line 389
    move-result v10

    .line 390
    int-to-long v10, v10

    .line 391
    and-long/2addr v10, v12

    .line 392
    mul-long v10, v10, v20

    .line 393
    .line 394
    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 398
    .line 399
    .line 400
    move-result v22

    .line 401
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 402
    .line 403
    .line 404
    move-result-object v23

    .line 405
    invoke-virtual/range {v23 .. v23}, Lorg/minidns/dnsname/DnsName;->size()I

    .line 406
    .line 407
    .line 408
    move-result v10

    .line 409
    sub-int/2addr v8, v10

    .line 410
    add-int/lit8 v8, v8, -0x12

    .line 411
    .line 412
    new-array v10, v8, [B

    .line 413
    .line 414
    invoke-virtual {v0, v10}, Ljava/io/DataInputStream;->read([B)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-ne v0, v8, :cond_7

    .line 419
    .line 420
    new-instance v14, Lorg/minidns/record/RRSIG;

    .line 421
    .line 422
    move-object/from16 v20, v7

    .line 423
    .line 424
    move-object/from16 v21, v9

    .line 425
    .line 426
    move-object/from16 v24, v10

    .line 427
    .line 428
    invoke-direct/range {v14 .. v24}, Lorg/minidns/record/RRSIG;-><init>(Lorg/minidns/record/Record$TYPE;BBJLjava/util/Date;Ljava/util/Date;ILorg/minidns/dnsname/DnsName;[B)V

    .line 429
    .line 430
    .line 431
    move-object v7, v14

    .line 432
    goto/16 :goto_6

    .line 433
    .line 434
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 435
    .line 436
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 437
    .line 438
    .line 439
    throw v0

    .line 440
    :cond_8
    new-array v7, v8, [B

    .line 441
    .line 442
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 443
    .line 444
    .line 445
    new-instance v0, Lorg/minidns/record/TXT;

    .line 446
    .line 447
    invoke-direct {v0, v7}, Lorg/minidns/record/TXT;-><init>([B)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_0

    .line 451
    .line 452
    :cond_9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 453
    .line 454
    .line 455
    move-result v7

    .line 456
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    new-instance v8, Lorg/minidns/record/MX;

    .line 461
    .line 462
    invoke-direct {v8, v7, v0}, Lorg/minidns/record/MX;-><init>(ILorg/minidns/dnsname/DnsName;)V

    .line 463
    .line 464
    .line 465
    goto/16 :goto_2

    .line 466
    .line 467
    :cond_a
    invoke-static {v0, v8}, Lorg/minidns/record/DelegatingDnssecRR;->parseSharedData(Ljava/io/DataInputStream;I)Lorg/minidns/record/DelegatingDnssecRR$SharedData;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    new-instance v7, Lorg/minidns/record/DLV;

    .line 472
    .line 473
    iget v8, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->keyTag:I

    .line 474
    .line 475
    iget-byte v9, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->algorithm:B

    .line 476
    .line 477
    iget-byte v10, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digestType:B

    .line 478
    .line 479
    iget-object v0, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digest:[B

    .line 480
    .line 481
    invoke-direct {v7, v9, v10, v8, v0}, Lorg/minidns/record/DelegatingDnssecRR;-><init>(BBI[B)V

    .line 482
    .line 483
    .line 484
    goto/16 :goto_6

    .line 485
    .line 486
    :cond_b
    new-array v7, v8, [B

    .line 487
    .line 488
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 489
    .line 490
    .line 491
    new-instance v0, Lorg/minidns/record/OPENPGPKEY;

    .line 492
    .line 493
    invoke-direct {v0, v7}, Lorg/minidns/record/OPENPGPKEY;-><init>([B)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_0

    .line 497
    .line 498
    :cond_c
    invoke-static {v0, v8}, Lorg/minidns/record/DelegatingDnssecRR;->parseSharedData(Ljava/io/DataInputStream;I)Lorg/minidns/record/DelegatingDnssecRR$SharedData;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    new-instance v7, Lorg/minidns/record/DS;

    .line 503
    .line 504
    iget v8, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->keyTag:I

    .line 505
    .line 506
    iget-byte v9, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->algorithm:B

    .line 507
    .line 508
    iget-byte v10, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digestType:B

    .line 509
    .line 510
    iget-object v0, v0, Lorg/minidns/record/DelegatingDnssecRR$SharedData;->digest:[B

    .line 511
    .line 512
    invoke-direct {v7, v9, v10, v8, v0}, Lorg/minidns/record/DelegatingDnssecRR;-><init>(BBI[B)V

    .line 513
    .line 514
    .line 515
    goto/16 :goto_6

    .line 516
    .line 517
    :cond_d
    if-nez v8, :cond_e

    .line 518
    .line 519
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 520
    .line 521
    goto :goto_5

    .line 522
    :cond_e
    new-instance v7, Ljava/util/ArrayList;

    .line 523
    .line 524
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 525
    .line 526
    .line 527
    :goto_3
    if-lez v8, :cond_11

    .line 528
    .line 529
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 530
    .line 531
    .line 532
    move-result v9

    .line 533
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    new-array v12, v10, [B

    .line 538
    .line 539
    invoke-virtual {v0, v12}, Ljava/io/DataInputStream;->read([B)I

    .line 540
    .line 541
    .line 542
    sget-object v13, Lorg/minidns/edns/Edns$OptionCode;->INVERSE_LUT:Ljava/util/HashMap;

    .line 543
    .line 544
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v14

    .line 548
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v13

    .line 552
    check-cast v13, Lorg/minidns/edns/Edns$OptionCode;

    .line 553
    .line 554
    if-nez v13, :cond_f

    .line 555
    .line 556
    sget-object v13, Lorg/minidns/edns/Edns$OptionCode;->UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;

    .line 557
    .line 558
    :cond_f
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 559
    .line 560
    .line 561
    move-result v13

    .line 562
    if-eq v13, v11, :cond_10

    .line 563
    .line 564
    new-instance v13, Lorg/minidns/edns/UnknownEdnsOption;

    .line 565
    .line 566
    invoke-direct {v13, v9, v12}, Lorg/minidns/edns/EdnsOption;-><init>(I[B)V

    .line 567
    .line 568
    .line 569
    goto :goto_4

    .line 570
    :cond_10
    new-instance v13, Lorg/minidns/edns/Nsid;

    .line 571
    .line 572
    invoke-direct {v13, v12}, Lorg/minidns/edns/EdnsOption;-><init>([B)V

    .line 573
    .line 574
    .line 575
    :goto_4
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    add-int/lit8 v10, v10, 0x4

    .line 579
    .line 580
    sub-int/2addr v8, v10

    .line 581
    goto :goto_3

    .line 582
    :cond_11
    move-object v0, v7

    .line 583
    :goto_5
    new-instance v7, Lorg/minidns/record/OPT;

    .line 584
    .line 585
    invoke-direct {v7, v0}, Lorg/minidns/record/OPT;-><init>(Ljava/util/List;)V

    .line 586
    .line 587
    .line 588
    goto/16 :goto_6

    .line 589
    .line 590
    :cond_12
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    new-instance v7, Lorg/minidns/record/DNAME;

    .line 595
    .line 596
    invoke-direct {v7, v0}, Lorg/minidns/record/RRWithTarget;-><init>(Lorg/minidns/dnsname/DnsName;)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_6

    .line 600
    .line 601
    :cond_13
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 602
    .line 603
    .line 604
    move-result v7

    .line 605
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 606
    .line 607
    .line 608
    move-result v8

    .line 609
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 610
    .line 611
    .line 612
    move-result v9

    .line 613
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    new-instance v10, Lorg/minidns/record/SRV;

    .line 618
    .line 619
    invoke-direct {v10, v7, v8, v9, v0}, Lorg/minidns/record/SRV;-><init>(IIILorg/minidns/dnsname/DnsName;)V

    .line 620
    .line 621
    .line 622
    move-object v7, v10

    .line 623
    goto :goto_6

    .line 624
    :cond_14
    new-array v7, v7, [B

    .line 625
    .line 626
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 627
    .line 628
    .line 629
    new-instance v0, Lorg/minidns/record/AAAA;

    .line 630
    .line 631
    invoke-direct {v0, v7}, Lorg/minidns/record/InternetAddressRR;-><init>([B)V

    .line 632
    .line 633
    .line 634
    goto/16 :goto_0

    .line 635
    .line 636
    :cond_15
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    new-instance v7, Lorg/minidns/record/PTR;

    .line 641
    .line 642
    invoke-direct {v7, v0}, Lorg/minidns/record/RRWithTarget;-><init>(Lorg/minidns/dnsname/DnsName;)V

    .line 643
    .line 644
    .line 645
    goto :goto_6

    .line 646
    :cond_16
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 647
    .line 648
    .line 649
    move-result-object v9

    .line 650
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 651
    .line 652
    .line 653
    move-result-object v10

    .line 654
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 655
    .line 656
    .line 657
    move-result v7

    .line 658
    int-to-long v7, v7

    .line 659
    and-long/2addr v7, v12

    .line 660
    move-wide v11, v12

    .line 661
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 662
    .line 663
    .line 664
    move-result v13

    .line 665
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 666
    .line 667
    .line 668
    move-result v14

    .line 669
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 670
    .line 671
    .line 672
    move-result v15

    .line 673
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 674
    .line 675
    .line 676
    move-result v0

    .line 677
    move-wide/from16 v16, v11

    .line 678
    .line 679
    int-to-long v11, v0

    .line 680
    and-long v16, v11, v16

    .line 681
    .line 682
    move-wide v11, v7

    .line 683
    new-instance v8, Lorg/minidns/record/SOA;

    .line 684
    .line 685
    invoke-direct/range {v8 .. v17}, Lorg/minidns/record/SOA;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;JIIIJ)V

    .line 686
    .line 687
    .line 688
    goto/16 :goto_2

    .line 689
    .line 690
    :cond_17
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    new-instance v7, Lorg/minidns/record/CNAME;

    .line 695
    .line 696
    invoke-direct {v7, v0}, Lorg/minidns/record/RRWithTarget;-><init>(Lorg/minidns/dnsname/DnsName;)V

    .line 697
    .line 698
    .line 699
    goto :goto_6

    .line 700
    :cond_18
    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    new-instance v7, Lorg/minidns/record/NS;

    .line 705
    .line 706
    invoke-direct {v7, v0}, Lorg/minidns/record/RRWithTarget;-><init>(Lorg/minidns/dnsname/DnsName;)V

    .line 707
    .line 708
    .line 709
    goto :goto_6

    .line 710
    :cond_19
    new-array v7, v10, [B

    .line 711
    .line 712
    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 713
    .line 714
    .line 715
    new-instance v0, Lorg/minidns/record/A;

    .line 716
    .line 717
    invoke-direct {v0, v7}, Lorg/minidns/record/InternetAddressRR;-><init>([B)V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_0

    .line 721
    .line 722
    :goto_6
    new-instance v0, Lorg/minidns/record/Record;

    .line 723
    .line 724
    invoke-direct/range {v0 .. v7}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/Data;)V

    .line 725
    .line 726
    .line 727
    return-object v0

    .line 728
    nop

    .line 729
    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

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
    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final as(Ljava/lang/Class;)Lorg/minidns/record/Record;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "The instance "

    .line 17
    .line 18
    const-string v1, " can not be cast to a Record with"

    .line 19
    .line 20
    invoke-static {v0, p0, v1, p1}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lorg/minidns/record/Record;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, p0, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    check-cast p1, Lorg/minidns/record/Record;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 14
    .line 15
    iget-object v3, p1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    iget-object v2, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 25
    .line 26
    iget-object v3, p1, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 27
    .line 28
    if-eq v2, v3, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget-object v2, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 32
    .line 33
    iget-object v3, p1, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget-object p0, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 39
    .line 40
    iget-object p1, p1, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lorg/minidns/record/Data;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_5

    .line 47
    .line 48
    return v1

    .line 49
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/minidns/record/Record;->hashCodeCache:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0x25

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x25

    .line 14
    .line 15
    iget-object v1, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x25

    .line 23
    .line 24
    iget-object v0, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x25

    .line 32
    .line 33
    iget-object v1, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/minidns/record/Data;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v1, v0

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lorg/minidns/record/Record;->hashCodeCache:Ljava/lang/Integer;

    .line 45
    .line 46
    :cond_0
    iget-object p0, p0, Lorg/minidns/record/Record;->hashCodeCache:Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0
.end method

.method public final ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/minidns/record/Record$TYPE;->dataClass:Ljava/lang/Class;

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final isAnswer(Lorg/minidns/dnsmessage/Question;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lorg/minidns/record/Record$TYPE;->ANY:Lorg/minidns/record/Record$TYPE;

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p1, Lorg/minidns/dnsmessage/Question;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 12
    .line 13
    iget-object v1, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 14
    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    sget-object v1, Lorg/minidns/record/Record$CLASS;->ANY:Lorg/minidns/record/Record$CLASS;

    .line 18
    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    :cond_1
    iget-object p1, p1, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    .line 22
    .line 23
    iget-object p0, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final toByteArray()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/minidns/record/Record;->bytes:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/lit8 v0, v0, 0xa

    .line 12
    .line 13
    iget-object v1, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/minidns/record/Data;->setBytes()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v1, Lorg/minidns/record/Data;->bytes:[B

    .line 19
    .line 20
    array-length v1, v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/io/DataOutputStream;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/minidns/record/Record;->toOutputStream(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lorg/minidns/record/Record;->bytes:[B

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_0
    :goto_0
    iget-object p0, p0, Lorg/minidns/record/Record;->bytes:[B

    .line 49
    .line 50
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, [B

    .line 55
    .line 56
    return-object p0
.end method

.method public final toOutputStream(Ljava/io/DataOutputStream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/io/DataOutputStream;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 16
    .line 17
    iget p1, p1, Lorg/minidns/record/Record$TYPE;->value:I

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 20
    .line 21
    .line 22
    iget p1, p0, Lorg/minidns/record/Record;->clazzValue:I

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 25
    .line 26
    .line 27
    iget-wide p0, p0, Lorg/minidns/record/Record;->ttl:J

    .line 28
    .line 29
    long-to-int p0, p0

    .line 30
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/minidns/record/Data;->setBytes()V

    .line 34
    .line 35
    .line 36
    iget-object p0, v0, Lorg/minidns/record/Data;->bytes:[B

    .line 37
    .line 38
    array-length p0, p0

    .line 39
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/minidns/record/Data;->setBytes()V

    .line 43
    .line 44
    .line 45
    iget-object p0, v0, Lorg/minidns/record/Data;->bytes:[B

    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    const-string p0, "Empty Record has no byte representation"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 18
    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ".\t"

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v5, p0, Lorg/minidns/record/Record;->ttl:J

    .line 37
    .line 38
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, "\t"

    .line 42
    .line 43
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {v4, v1, p0, v2, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0
.end method
