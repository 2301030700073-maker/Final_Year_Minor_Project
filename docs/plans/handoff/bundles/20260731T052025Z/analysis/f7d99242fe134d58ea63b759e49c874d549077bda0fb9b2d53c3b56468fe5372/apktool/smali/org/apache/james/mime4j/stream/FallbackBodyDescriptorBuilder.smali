.class public final Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public boundary:Ljava/lang/String;

.field public charset:Ljava/lang/String;

.field public contentLength:J

.field public mediaType:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public final monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

.field public final parentMimeType:Ljava/lang/String;

.field public subType:Ljava/lang/String;

.field public transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->parentMimeType:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p2, Lorg/apache/james/mime4j/codec/DecodeMonitor;->SILENT:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 10
    .line 11
    :goto_0
    iput-object p2, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    .line 25
    .line 26
    const-wide/16 p1, -0x1

    .line 27
    .line 28
    iput-wide p1, p0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final addField(Lorg/apache/james/mime4j/stream/RawField;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getNameLowerCase()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "content-transfer-encoding"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2f

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-lez v2, :cond_2f

    .line 42
    .line 43
    iput-object v1, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->transferEncoding:Ljava/lang/String;

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const-string v3, "content-length"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-wide v3, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J

    .line 55
    .line 56
    const-wide/16 v5, -0x1

    .line 57
    .line 58
    cmp-long v3, v3, v5

    .line 59
    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_2f

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    iput-wide v2, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    goto/16 :goto_17

    .line 83
    .line 84
    :catch_0
    iget-object v0, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->monitor:Lorg/apache/james/mime4j/codec/DecodeMonitor;

    .line 85
    .line 86
    instance-of v0, v0, Lorg/apache/james/mime4j/codec/DecodeMonitor$1;

    .line 87
    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    goto/16 :goto_17

    .line 91
    .line 92
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/MimeException;

    .line 93
    .line 94
    const-string v2, "Invalid Content-Length header: "

    .line 95
    .line 96
    invoke-static {v2, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_2
    const-string v3, "content-type"

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_2f

    .line 111
    .line 112
    iget-object v2, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 113
    .line 114
    if-nez v2, :cond_2f

    .line 115
    .line 116
    sget-object v2, Lorg/apache/james/mime4j/stream/RawFieldParser;->DEFAULT:Lorg/apache/james/mime4j/stream/RawFieldParser;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v2, v1, Lorg/apache/james/mime4j/stream/RawField;->raw:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v2, Lorg/apache/james/mime4j/util/ByteSequence;

    .line 124
    .line 125
    iget v3, v1, Lorg/apache/james/mime4j/stream/RawField;->delimiterIdx:I

    .line 126
    .line 127
    const/4 v4, 0x1

    .line 128
    add-int/2addr v3, v4

    .line 129
    const/4 v5, 0x0

    .line 130
    const/4 v6, 0x0

    .line 131
    if-nez v2, :cond_4

    .line 132
    .line 133
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/RawField;->getBody()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    if-nez v1, :cond_3

    .line 138
    .line 139
    new-instance v1, Lorg/jsoup/internal/SoftPool;

    .line 140
    .line 141
    const-string v2, ""

    .line 142
    .line 143
    invoke-direct {v1, v2, v5}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_13

    .line 147
    .line 148
    :cond_3
    invoke-static {v1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    move v3, v6

    .line 153
    :cond_4
    new-instance v1, Lorg/apache/james/mime4j/stream/MimeConfig;

    .line 154
    .line 155
    invoke-interface {v2}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    invoke-direct {v1, v3, v7}, Lorg/apache/james/mime4j/stream/MimeConfig;-><init>(II)V

    .line 160
    .line 161
    .line 162
    sget-object v3, Lorg/apache/james/mime4j/stream/RawFieldParser;->SEMICOLON:Ljava/util/BitSet;

    .line 163
    .line 164
    invoke-static {v2, v1, v3}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;Ljava/util/BitSet;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->atEnd()Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-eqz v8, :cond_5

    .line 173
    .line 174
    new-instance v1, Lorg/jsoup/internal/SoftPool;

    .line 175
    .line 176
    new-instance v2, Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-direct {v1, v7, v2}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_13

    .line 185
    .line 186
    :cond_5
    iget v8, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 187
    .line 188
    add-int/2addr v8, v4

    .line 189
    invoke-virtual {v1, v8}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 190
    .line 191
    .line 192
    new-instance v8, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-static {v2, v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 198
    .line 199
    .line 200
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->atEnd()Z

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-nez v9, :cond_25

    .line 205
    .line 206
    sget-object v9, Lorg/apache/james/mime4j/stream/RawFieldParser;->EQUAL_OR_SEMICOLON:Ljava/util/BitSet;

    .line 207
    .line 208
    invoke-static {v2, v1, v9}, Lorg/apache/james/mime4j/stream/RawFieldParser;->parseToken(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;Ljava/util/BitSet;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->atEnd()Z

    .line 213
    .line 214
    .line 215
    move-result v10

    .line 216
    if-eqz v10, :cond_6

    .line 217
    .line 218
    new-instance v10, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 219
    .line 220
    invoke-direct {v10, v9, v5}, Lorg/apache/james/mime4j/stream/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_12

    .line 224
    .line 225
    :cond_6
    iget v10, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 226
    .line 227
    invoke-interface {v2, v10}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 228
    .line 229
    .line 230
    move-result v10

    .line 231
    iget v11, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 232
    .line 233
    add-int/2addr v11, v4

    .line 234
    invoke-virtual {v1, v11}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 235
    .line 236
    .line 237
    const/16 v11, 0x3b

    .line 238
    .line 239
    if-ne v10, v11, :cond_7

    .line 240
    .line 241
    new-instance v10, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 242
    .line 243
    invoke-direct {v10, v9, v5}, Lorg/apache/james/mime4j/stream/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_12

    .line 247
    .line 248
    :cond_7
    sget-object v10, Lorg/apache/james/mime4j/stream/RawFieldParser;->DECODE_BUFFER:Lorg/jsoup/nodes/Entities$$ExternalSyntheticThreadLocal1;

    .line 249
    .line 250
    new-instance v11, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    move v12, v6

    .line 256
    :goto_1
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->atEnd()Z

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    if-nez v13, :cond_23

    .line 261
    .line 262
    iget v13, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 263
    .line 264
    invoke-interface {v2, v13}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 265
    .line 266
    .line 267
    move-result v13

    .line 268
    and-int/lit16 v13, v13, 0xff

    .line 269
    .line 270
    int-to-char v13, v13

    .line 271
    if-eqz v3, :cond_8

    .line 272
    .line 273
    invoke-virtual {v3, v13}, Ljava/util/BitSet;->get(I)Z

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    if-eqz v14, :cond_8

    .line 278
    .line 279
    goto/16 :goto_11

    .line 280
    .line 281
    :cond_8
    invoke-static {v13}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    if-eqz v14, :cond_9

    .line 286
    .line 287
    invoke-static {v2, v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipWhiteSpace(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 288
    .line 289
    .line 290
    move v12, v4

    .line 291
    :goto_2
    move-object/from16 v18, v10

    .line 292
    .line 293
    goto/16 :goto_10

    .line 294
    .line 295
    :cond_9
    const/16 v14, 0x28

    .line 296
    .line 297
    if-ne v13, v14, :cond_a

    .line 298
    .line 299
    invoke-static {v2, v1}, Lorg/apache/james/mime4j/stream/RawFieldParser;->skipComment(Lorg/apache/james/mime4j/util/ByteSequence;Lorg/apache/james/mime4j/stream/MimeConfig;)V

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_a
    const/16 v15, 0x20

    .line 304
    .line 305
    const/16 v5, 0x22

    .line 306
    .line 307
    iget v14, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderCount:I

    .line 308
    .line 309
    if-ne v13, v5, :cond_19

    .line 310
    .line 311
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 312
    .line 313
    .line 314
    move-result v13

    .line 315
    if-lez v13, :cond_b

    .line 316
    .line 317
    if-eqz v12, :cond_b

    .line 318
    .line 319
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    :cond_b
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->atEnd()Z

    .line 323
    .line 324
    .line 325
    move-result v12

    .line 326
    if-eqz v12, :cond_c

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_c
    iget v12, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 330
    .line 331
    invoke-interface {v2, v12}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    and-int/lit16 v13, v13, 0xff

    .line 336
    .line 337
    int-to-char v13, v13

    .line 338
    if-eq v13, v5, :cond_d

    .line 339
    .line 340
    :goto_3
    move-object/from16 v18, v10

    .line 341
    .line 342
    goto/16 :goto_a

    .line 343
    .line 344
    :cond_d
    add-int/lit8 v12, v12, 0x1

    .line 345
    .line 346
    invoke-virtual {v10}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v13

    .line 350
    check-cast v13, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 351
    .line 352
    iput v6, v13, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 353
    .line 354
    move/from16 v16, v6

    .line 355
    .line 356
    move v15, v12

    .line 357
    :goto_4
    if-ge v12, v14, :cond_13

    .line 358
    .line 359
    invoke-interface {v2, v12}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    and-int/lit16 v6, v4, 0xff

    .line 364
    .line 365
    int-to-char v6, v6

    .line 366
    move-object/from16 v18, v10

    .line 367
    .line 368
    const/16 v10, 0x5c

    .line 369
    .line 370
    if-eqz v16, :cond_f

    .line 371
    .line 372
    if-eq v6, v5, :cond_e

    .line 373
    .line 374
    if-eq v6, v10, :cond_e

    .line 375
    .line 376
    invoke-virtual {v13, v10}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 377
    .line 378
    .line 379
    :cond_e
    invoke-virtual {v13, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 380
    .line 381
    .line 382
    const/16 v16, 0x0

    .line 383
    .line 384
    goto :goto_5

    .line 385
    :cond_f
    if-ne v6, v5, :cond_10

    .line 386
    .line 387
    add-int/lit8 v15, v15, 0x1

    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_10
    if-ne v6, v10, :cond_11

    .line 391
    .line 392
    const/16 v16, 0x1

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_11
    const/16 v10, 0xd

    .line 396
    .line 397
    if-eq v6, v10, :cond_12

    .line 398
    .line 399
    const/16 v10, 0xa

    .line 400
    .line 401
    if-eq v6, v10, :cond_12

    .line 402
    .line 403
    invoke-virtual {v13, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 404
    .line 405
    .line 406
    :cond_12
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 407
    .line 408
    add-int/lit8 v15, v15, 0x1

    .line 409
    .line 410
    move-object/from16 v10, v18

    .line 411
    .line 412
    const/4 v4, 0x1

    .line 413
    const/4 v6, 0x0

    .line 414
    goto :goto_4

    .line 415
    :cond_13
    move-object/from16 v18, v10

    .line 416
    .line 417
    :goto_6
    const/4 v4, 0x0

    .line 418
    :goto_7
    iget v5, v13, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 419
    .line 420
    if-ge v4, v5, :cond_16

    .line 421
    .line 422
    invoke-virtual {v13, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    and-int/lit16 v5, v5, 0xff

    .line 427
    .line 428
    int-to-char v5, v5

    .line 429
    const v6, 0xff80

    .line 430
    .line 431
    .line 432
    and-int/2addr v5, v6

    .line 433
    if-nez v5, :cond_14

    .line 434
    .line 435
    add-int/lit8 v4, v4, 0x1

    .line 436
    .line 437
    goto :goto_7

    .line 438
    :cond_14
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 439
    .line 440
    sget v4, Lorg/apache/james/mime4j/util/ContentUtil;->$r8$clinit:I

    .line 441
    .line 442
    iget v4, v13, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 443
    .line 444
    const/4 v6, 0x0

    .line 445
    invoke-static {v13, v6, v4}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    const-string v5, "=?"

    .line 450
    .line 451
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-eqz v5, :cond_15

    .line 456
    .line 457
    invoke-static {v4}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v4

    .line 461
    :cond_15
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    goto :goto_9

    .line 465
    :cond_16
    const/4 v4, 0x1

    .line 466
    const/4 v6, 0x0

    .line 467
    if-le v5, v4, :cond_17

    .line 468
    .line 469
    invoke-virtual {v13, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    .line 470
    .line 471
    .line 472
    move-result v5

    .line 473
    const/16 v6, 0x3d

    .line 474
    .line 475
    if-ne v5, v6, :cond_17

    .line 476
    .line 477
    invoke-virtual {v13, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    .line 478
    .line 479
    .line 480
    move-result v5

    .line 481
    const/16 v4, 0x3f

    .line 482
    .line 483
    if-ne v5, v4, :cond_17

    .line 484
    .line 485
    invoke-static {v13}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v4

    .line 489
    invoke-static {v4}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v4

    .line 493
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    goto :goto_9

    .line 497
    :cond_17
    const/4 v4, 0x0

    .line 498
    :goto_8
    iget v5, v13, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 499
    .line 500
    if-ge v4, v5, :cond_18

    .line 501
    .line 502
    invoke-virtual {v13, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    .line 503
    .line 504
    .line 505
    move-result v5

    .line 506
    and-int/lit16 v5, v5, 0xff

    .line 507
    .line 508
    int-to-char v5, v5

    .line 509
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    add-int/lit8 v4, v4, 0x1

    .line 513
    .line 514
    goto :goto_8

    .line 515
    :cond_18
    :goto_9
    invoke-virtual {v1, v15}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 516
    .line 517
    .line 518
    :goto_a
    const/4 v12, 0x0

    .line 519
    goto/16 :goto_10

    .line 520
    .line 521
    :cond_19
    move-object/from16 v18, v10

    .line 522
    .line 523
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 524
    .line 525
    .line 526
    move-result v4

    .line 527
    if-lez v4, :cond_1a

    .line 528
    .line 529
    if-eqz v12, :cond_1a

    .line 530
    .line 531
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    :cond_1a
    iget v4, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 535
    .line 536
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    .line 537
    .line 538
    .line 539
    move-result v6

    .line 540
    move v10, v4

    .line 541
    move v12, v10

    .line 542
    :goto_b
    if-ge v10, v14, :cond_22

    .line 543
    .line 544
    invoke-interface {v2, v10}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 545
    .line 546
    .line 547
    move-result v13

    .line 548
    and-int/lit16 v15, v13, 0xff

    .line 549
    .line 550
    int-to-char v15, v15

    .line 551
    if-eqz v3, :cond_1b

    .line 552
    .line 553
    invoke-virtual {v3, v15}, Ljava/util/BitSet;->get(I)Z

    .line 554
    .line 555
    .line 556
    move-result v16

    .line 557
    if-nez v16, :cond_22

    .line 558
    .line 559
    :cond_1b
    invoke-static {v15}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 560
    .line 561
    .line 562
    move-result v16

    .line 563
    if-nez v16, :cond_22

    .line 564
    .line 565
    move/from16 v16, v4

    .line 566
    .line 567
    const/16 v4, 0x28

    .line 568
    .line 569
    if-eq v15, v4, :cond_22

    .line 570
    .line 571
    if-ne v15, v5, :cond_1c

    .line 572
    .line 573
    goto :goto_f

    .line 574
    :cond_1c
    add-int/lit8 v12, v12, 0x1

    .line 575
    .line 576
    if-gez v13, :cond_21

    .line 577
    .line 578
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v4

    .line 585
    check-cast v4, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    .line 586
    .line 587
    const/4 v6, 0x0

    .line 588
    iput v6, v4, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 589
    .line 590
    move/from16 v6, v16

    .line 591
    .line 592
    :goto_c
    if-gt v6, v10, :cond_1d

    .line 593
    .line 594
    invoke-interface {v2, v6}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 595
    .line 596
    .line 597
    move-result v13

    .line 598
    invoke-virtual {v4, v13}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 599
    .line 600
    .line 601
    add-int/lit8 v6, v6, 0x1

    .line 602
    .line 603
    goto :goto_c

    .line 604
    :cond_1d
    :goto_d
    add-int/lit8 v10, v10, 0x1

    .line 605
    .line 606
    if-ge v10, v14, :cond_20

    .line 607
    .line 608
    invoke-interface {v2, v10}, Lorg/apache/james/mime4j/util/ByteSequence;->byteAt(I)B

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    and-int/lit16 v13, v6, 0xff

    .line 613
    .line 614
    int-to-char v13, v13

    .line 615
    if-eqz v3, :cond_1e

    .line 616
    .line 617
    invoke-virtual {v3, v13}, Ljava/util/BitSet;->get(I)Z

    .line 618
    .line 619
    .line 620
    move-result v15

    .line 621
    if-nez v15, :cond_20

    .line 622
    .line 623
    :cond_1e
    invoke-static {v13}, Lokhttp3/Cookie$Companion;->isWhitespace(C)Z

    .line 624
    .line 625
    .line 626
    move-result v15

    .line 627
    if-nez v15, :cond_20

    .line 628
    .line 629
    const/16 v15, 0x28

    .line 630
    .line 631
    if-eq v13, v15, :cond_20

    .line 632
    .line 633
    if-ne v13, v5, :cond_1f

    .line 634
    .line 635
    goto :goto_e

    .line 636
    :cond_1f
    add-int/lit8 v12, v12, 0x1

    .line 637
    .line 638
    invoke-virtual {v4, v6}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append(I)V

    .line 639
    .line 640
    .line 641
    goto :goto_d

    .line 642
    :cond_20
    :goto_e
    invoke-virtual {v1, v12}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 643
    .line 644
    .line 645
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 646
    .line 647
    sget v5, Lorg/apache/james/mime4j/util/ContentUtil;->$r8$clinit:I

    .line 648
    .line 649
    iget v5, v4, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->len:I

    .line 650
    .line 651
    const/4 v6, 0x0

    .line 652
    invoke-static {v4, v6, v5}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    goto/16 :goto_a

    .line 660
    .line 661
    :cond_21
    const/16 v4, 0x28

    .line 662
    .line 663
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    add-int/lit8 v10, v10, 0x1

    .line 667
    .line 668
    move/from16 v4, v16

    .line 669
    .line 670
    goto/16 :goto_b

    .line 671
    .line 672
    :cond_22
    :goto_f
    invoke-virtual {v1, v12}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 673
    .line 674
    .line 675
    goto/16 :goto_a

    .line 676
    .line 677
    :goto_10
    move-object/from16 v10, v18

    .line 678
    .line 679
    const/4 v4, 0x1

    .line 680
    const/4 v5, 0x0

    .line 681
    const/4 v6, 0x0

    .line 682
    goto/16 :goto_1

    .line 683
    .line 684
    :cond_23
    :goto_11
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v4

    .line 688
    invoke-virtual {v1}, Lorg/apache/james/mime4j/stream/MimeConfig;->atEnd()Z

    .line 689
    .line 690
    .line 691
    move-result v5

    .line 692
    if-nez v5, :cond_24

    .line 693
    .line 694
    iget v5, v1, Lorg/apache/james/mime4j/stream/MimeConfig;->maxHeaderLen:I

    .line 695
    .line 696
    const/16 v17, 0x1

    .line 697
    .line 698
    add-int/lit8 v5, v5, 0x1

    .line 699
    .line 700
    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/stream/MimeConfig;->updatePos(I)V

    .line 701
    .line 702
    .line 703
    :cond_24
    new-instance v10, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 704
    .line 705
    invoke-direct {v10, v9, v4}, Lorg/apache/james/mime4j/stream/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    :goto_12
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    const/4 v4, 0x1

    .line 712
    const/4 v5, 0x0

    .line 713
    const/4 v6, 0x0

    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :cond_25
    new-instance v1, Lorg/jsoup/internal/SoftPool;

    .line 717
    .line 718
    invoke-direct {v1, v7, v8}, Lorg/jsoup/internal/SoftPool;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 719
    .line 720
    .line 721
    :goto_13
    iget-object v2, v1, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/Object;

    .line 722
    .line 723
    check-cast v2, Ljava/lang/String;

    .line 724
    .line 725
    new-instance v3, Ljava/util/HashMap;

    .line 726
    .line 727
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 728
    .line 729
    .line 730
    iget-object v1, v1, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/lang/Object;

    .line 731
    .line 732
    check-cast v1, Ljava/util/List;

    .line 733
    .line 734
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 739
    .line 740
    .line 741
    move-result v4

    .line 742
    if-eqz v4, :cond_26

    .line 743
    .line 744
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v4

    .line 748
    check-cast v4, Lorg/apache/james/mime4j/stream/NameValuePair;

    .line 749
    .line 750
    iget-object v5, v4, Lorg/apache/james/mime4j/stream/NameValuePair;->name:Ljava/lang/String;

    .line 751
    .line 752
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 753
    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    iget-object v4, v4, Lorg/apache/james/mime4j/stream/NameValuePair;->value:Ljava/lang/String;

    .line 759
    .line 760
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    goto :goto_14

    .line 764
    :cond_26
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v1

    .line 772
    const/16 v2, 0x2f

    .line 773
    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 775
    .line 776
    .line 777
    move-result v2

    .line 778
    const/4 v4, -0x1

    .line 779
    const/4 v6, 0x0

    .line 780
    if-eq v2, v4, :cond_28

    .line 781
    .line 782
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v4

    .line 786
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    const/16 v17, 0x1

    .line 791
    .line 792
    add-int/lit8 v2, v2, 0x1

    .line 793
    .line 794
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 795
    .line 796
    .line 797
    move-result-object v2

    .line 798
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v2

    .line 802
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 803
    .line 804
    .line 805
    move-result v5

    .line 806
    if-lez v5, :cond_27

    .line 807
    .line 808
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 809
    .line 810
    .line 811
    move-result v5

    .line 812
    if-lez v5, :cond_27

    .line 813
    .line 814
    const-string v1, "/"

    .line 815
    .line 816
    invoke-static {v4, v1, v2}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    move/from16 v5, v17

    .line 821
    .line 822
    goto :goto_15

    .line 823
    :cond_27
    move v5, v6

    .line 824
    goto :goto_15

    .line 825
    :cond_28
    const/16 v17, 0x1

    .line 826
    .line 827
    move v5, v6

    .line 828
    const/4 v2, 0x0

    .line 829
    const/4 v4, 0x0

    .line 830
    :goto_15
    if-nez v5, :cond_29

    .line 831
    .line 832
    const/4 v1, 0x0

    .line 833
    const/4 v2, 0x0

    .line 834
    const/4 v4, 0x0

    .line 835
    :cond_29
    const-string v5, "boundary"

    .line 836
    .line 837
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    check-cast v5, Ljava/lang/String;

    .line 842
    .line 843
    const-string v7, "multipart/"

    .line 844
    .line 845
    if-eqz v1, :cond_2a

    .line 846
    .line 847
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 848
    .line 849
    .line 850
    move-result v8

    .line 851
    if-eqz v8, :cond_2a

    .line 852
    .line 853
    goto :goto_16

    .line 854
    :cond_2a
    move/from16 v17, v6

    .line 855
    .line 856
    :goto_16
    if-eqz v17, :cond_2b

    .line 857
    .line 858
    if-nez v5, :cond_2c

    .line 859
    .line 860
    :cond_2b
    if-nez v17, :cond_2d

    .line 861
    .line 862
    :cond_2c
    iput-object v1, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 863
    .line 864
    iput-object v4, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mediaType:Ljava/lang/String;

    .line 865
    .line 866
    iput-object v2, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->subType:Ljava/lang/String;

    .line 867
    .line 868
    :cond_2d
    iget-object v1, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->mimeType:Ljava/lang/String;

    .line 869
    .line 870
    sget v2, Lorg/apache/james/mime4j/util/MimeUtil;->$r8$clinit:I

    .line 871
    .line 872
    if-eqz v1, :cond_2e

    .line 873
    .line 874
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 875
    .line 876
    .line 877
    move-result-object v1

    .line 878
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    if-eqz v1, :cond_2e

    .line 883
    .line 884
    iput-object v5, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->boundary:Ljava/lang/String;

    .line 885
    .line 886
    :cond_2e
    const-string v1, "charset"

    .line 887
    .line 888
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v1

    .line 892
    check-cast v1, Ljava/lang/String;

    .line 893
    .line 894
    const/4 v2, 0x0

    .line 895
    iput-object v2, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 896
    .line 897
    if-eqz v1, :cond_2f

    .line 898
    .line 899
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v1

    .line 903
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 904
    .line 905
    .line 906
    move-result v2

    .line 907
    if-lez v2, :cond_2f

    .line 908
    .line 909
    iput-object v1, v0, Lorg/apache/james/mime4j/stream/FallbackBodyDescriptorBuilder;->charset:Ljava/lang/String;

    .line 910
    .line 911
    :cond_2f
    :goto_17
    return-void
.end method
