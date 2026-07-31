.class public final synthetic Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 9
    iput p1, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/wikipedia/WikipediaApp;)V
    .locals 0

    .line 1
    const/16 p1, 0x1c

    .line 2
    .line 3
    iput p1, p0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v0, v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 6
    .line 7
    const/16 v2, 0x9

    .line 8
    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    const/4 v4, 0x7

    .line 12
    const/4 v5, 0x6

    .line 13
    const/4 v6, 0x5

    .line 14
    const/4 v7, 0x4

    .line 15
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x3

    .line 19
    const/4 v11, 0x2

    .line 20
    const/4 v12, 0x1

    .line 21
    const/4 v13, 0x0

    .line 22
    packed-switch v0, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    move-object v0, v1

    .line 26
    check-cast v0, Landroidx/sqlite/SQLiteConnection;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v1, "SELECT * FROM Category"

    .line 32
    .line 33
    invoke-interface {v0, v1}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :try_start_0
    const-string/jumbo v0, "year"

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v0}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const-string v2, "month"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const-string v3, "title"

    .line 51
    .line 52
    invoke-static {v1, v3}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    const-string v4, "lang"

    .line 57
    .line 58
    invoke-static {v1, v4}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const-string v5, "count"

    .line 63
    .line 64
    invoke-static {v1, v5}, Lkotlin/UnsignedKt;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_0

    .line 78
    .line 79
    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    long-to-int v10, v7

    .line 84
    invoke-interface {v1, v2}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v7

    .line 88
    long-to-int v11, v7

    .line 89
    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v13

    .line 93
    invoke-interface {v1, v4}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    invoke-interface {v1, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 98
    .line 99
    .line 100
    move-result-wide v7

    .line 101
    long-to-int v12, v7

    .line 102
    new-instance v9, Lorg/wikipedia/categories/db/Category;

    .line 103
    .line 104
    invoke-direct/range {v9 .. v14}, Lorg/wikipedia/categories/db/Category;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto :goto_1

    .line 113
    :cond_0
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 114
    .line 115
    .line 116
    return-object v6

    .line 117
    :goto_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :pswitch_0
    move-object v0, v1

    .line 122
    check-cast v0, Ljava/lang/Throwable;

    .line 123
    .line 124
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->resetAfterLogOut()V

    .line 125
    .line 126
    .line 127
    return-object v8

    .line 128
    :pswitch_1
    move-object v0, v1

    .line 129
    check-cast v0, Lokio/internal/ZipEntry;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 132
    .line 133
    .line 134
    sget-object v1, Lokio/internal/ResourceFileSystem;->ROOT:Lokio/Path;

    .line 135
    .line 136
    iget-object v0, v0, Lokio/internal/ZipEntry;->canonicalPath:Lokio/Path;

    .line 137
    .line 138
    invoke-static {v0}, Lokio/internal/ZipFilesKt;->keepPath(Lokio/Path;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0

    .line 147
    :pswitch_2
    move-object v0, v1

    .line 148
    check-cast v0, Lokhttp3/tls/internal/der/PrivateKeyInfo;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    iget-wide v1, v0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->version:J

    .line 154
    .line 155
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget-object v2, v0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->algorithmIdentifier:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 160
    .line 161
    iget-object v0, v0, Lokhttp3/tls/internal/der/PrivateKeyInfo;->privateKey:Lokio/ByteString;

    .line 162
    .line 163
    new-array v3, v10, [Ljava/lang/Object;

    .line 164
    .line 165
    aput-object v1, v3, v13

    .line 166
    .line 167
    aput-object v2, v3, v12

    .line 168
    .line 169
    aput-object v0, v3, v11

    .line 170
    .line 171
    invoke-static {v3}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    return-object v0

    .line 176
    :pswitch_3
    move-object v0, v1

    .line 177
    check-cast v0, Ljava/util/List;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v1, Lokhttp3/tls/internal/der/Certificate;

    .line 183
    .line 184
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    check-cast v2, Lokhttp3/tls/internal/der/TbsCertificate;

    .line 192
    .line 193
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    check-cast v3, Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 201
    .line 202
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    check-cast v0, Lokhttp3/tls/internal/der/BitString;

    .line 210
    .line 211
    invoke-direct {v1, v2, v3, v0}, Lokhttp3/tls/internal/der/Certificate;-><init>(Lokhttp3/tls/internal/der/TbsCertificate;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)V

    .line 212
    .line 213
    .line 214
    return-object v1

    .line 215
    :pswitch_4
    move-object v0, v1

    .line 216
    check-cast v0, Lokhttp3/tls/internal/der/Certificate;

    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    iget-object v1, v0, Lokhttp3/tls/internal/der/Certificate;->tbsCertificate:Lokhttp3/tls/internal/der/TbsCertificate;

    .line 222
    .line 223
    iget-object v2, v0, Lokhttp3/tls/internal/der/Certificate;->signatureAlgorithm:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 224
    .line 225
    iget-object v0, v0, Lokhttp3/tls/internal/der/Certificate;->signatureValue:Lokhttp3/tls/internal/der/BitString;

    .line 226
    .line 227
    new-array v3, v10, [Ljava/lang/Object;

    .line 228
    .line 229
    aput-object v1, v3, v13

    .line 230
    .line 231
    aput-object v2, v3, v12

    .line 232
    .line 233
    aput-object v0, v3, v11

    .line 234
    .line 235
    invoke-static {v3}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    return-object v0

    .line 240
    :pswitch_5
    move-object v0, v1

    .line 241
    check-cast v0, Ljava/util/List;

    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    new-instance v14, Lokhttp3/tls/internal/der/TbsCertificate;

    .line 247
    .line 248
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    check-cast v1, Ljava/lang/Long;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 258
    .line 259
    .line 260
    move-result-wide v15

    .line 261
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    move-object/from16 v17, v1

    .line 269
    .line 270
    check-cast v17, Ljava/math/BigInteger;

    .line 271
    .line 272
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    move-object/from16 v18, v1

    .line 280
    .line 281
    check-cast v18, Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 282
    .line 283
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    check-cast v1, Lkotlin/Pair;

    .line 291
    .line 292
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    move-object/from16 v19, v1

    .line 298
    .line 299
    check-cast v19, Ljava/util/List;

    .line 300
    .line 301
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    move-object/from16 v20, v1

    .line 309
    .line 310
    check-cast v20, Lokhttp3/tls/internal/der/Validity;

    .line 311
    .line 312
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    check-cast v1, Lkotlin/Pair;

    .line 320
    .line 321
    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    move-object/from16 v21, v1

    .line 327
    .line 328
    check-cast v21, Ljava/util/List;

    .line 329
    .line 330
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    move-object/from16 v22, v1

    .line 338
    .line 339
    check-cast v22, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 340
    .line 341
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    move-object/from16 v23, v1

    .line 346
    .line 347
    check-cast v23, Lokhttp3/tls/internal/der/BitString;

    .line 348
    .line 349
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    move-object/from16 v24, v1

    .line 354
    .line 355
    check-cast v24, Lokhttp3/tls/internal/der/BitString;

    .line 356
    .line 357
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    move-object/from16 v25, v0

    .line 365
    .line 366
    check-cast v25, Ljava/util/List;

    .line 367
    .line 368
    invoke-direct/range {v14 .. v25}, Lokhttp3/tls/internal/der/TbsCertificate;-><init>(JLjava/math/BigInteger;Lokhttp3/tls/internal/der/AlgorithmIdentifier;Ljava/util/List;Lokhttp3/tls/internal/der/Validity;Ljava/util/List;Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;Lokhttp3/tls/internal/der/BitString;Lokhttp3/tls/internal/der/BitString;Ljava/util/List;)V

    .line 369
    .line 370
    .line 371
    return-object v14

    .line 372
    :pswitch_6
    move-object v0, v1

    .line 373
    check-cast v0, Lokhttp3/tls/internal/der/TbsCertificate;

    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    iget-wide v8, v0, Lokhttp3/tls/internal/der/TbsCertificate;->version:J

    .line 379
    .line 380
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    iget-object v8, v0, Lokhttp3/tls/internal/der/TbsCertificate;->serialNumber:Ljava/math/BigInteger;

    .line 385
    .line 386
    iget-object v9, v0, Lokhttp3/tls/internal/der/TbsCertificate;->signature:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 387
    .line 388
    sget-object v14, Lokhttp3/tls/internal/der/CertificateAdapters;->rdnSequence:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 389
    .line 390
    iget-object v15, v0, Lokhttp3/tls/internal/der/TbsCertificate;->issuer:Ljava/util/List;

    .line 391
    .line 392
    move/from16 p0, v2

    .line 393
    .line 394
    new-instance v2, Lkotlin/Pair;

    .line 395
    .line 396
    invoke-direct {v2, v14, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    iget-object v15, v0, Lokhttp3/tls/internal/der/TbsCertificate;->validity:Lokhttp3/tls/internal/der/Validity;

    .line 400
    .line 401
    move/from16 v16, v3

    .line 402
    .line 403
    iget-object v3, v0, Lokhttp3/tls/internal/der/TbsCertificate;->subject:Ljava/util/List;

    .line 404
    .line 405
    move/from16 v17, v4

    .line 406
    .line 407
    new-instance v4, Lkotlin/Pair;

    .line 408
    .line 409
    invoke-direct {v4, v14, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    iget-object v3, v0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectPublicKeyInfo:Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 413
    .line 414
    iget-object v14, v0, Lokhttp3/tls/internal/der/TbsCertificate;->issuerUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 415
    .line 416
    move/from16 v18, v5

    .line 417
    .line 418
    iget-object v5, v0, Lokhttp3/tls/internal/der/TbsCertificate;->subjectUniqueID:Lokhttp3/tls/internal/der/BitString;

    .line 419
    .line 420
    iget-object v0, v0, Lokhttp3/tls/internal/der/TbsCertificate;->extensions:Ljava/util/List;

    .line 421
    .line 422
    move/from16 v19, v6

    .line 423
    .line 424
    const/16 v6, 0xa

    .line 425
    .line 426
    new-array v6, v6, [Ljava/lang/Object;

    .line 427
    .line 428
    aput-object v1, v6, v13

    .line 429
    .line 430
    aput-object v8, v6, v12

    .line 431
    .line 432
    aput-object v9, v6, v11

    .line 433
    .line 434
    aput-object v2, v6, v10

    .line 435
    .line 436
    aput-object v15, v6, v7

    .line 437
    .line 438
    aput-object v4, v6, v19

    .line 439
    .line 440
    aput-object v3, v6, v18

    .line 441
    .line 442
    aput-object v14, v6, v17

    .line 443
    .line 444
    aput-object v5, v6, v16

    .line 445
    .line 446
    aput-object v0, v6, p0

    .line 447
    .line 448
    invoke-static {v6}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    return-object v0

    .line 453
    :pswitch_7
    move-object v0, v1

    .line 454
    check-cast v0, Ljava/util/List;

    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    new-instance v1, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 460
    .line 461
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 466
    .line 467
    .line 468
    check-cast v2, Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 469
    .line 470
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    check-cast v0, Lokhttp3/tls/internal/der/BitString;

    .line 478
    .line 479
    invoke-direct {v1, v2, v0}, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;-><init>(Lokhttp3/tls/internal/der/AlgorithmIdentifier;Lokhttp3/tls/internal/der/BitString;)V

    .line 480
    .line 481
    .line 482
    return-object v1

    .line 483
    :pswitch_8
    move-object v0, v1

    .line 484
    check-cast v0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    iget-object v1, v0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->algorithm:Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 490
    .line 491
    iget-object v0, v0, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->subjectPublicKey:Lokhttp3/tls/internal/der/BitString;

    .line 492
    .line 493
    new-array v2, v11, [Ljava/lang/Object;

    .line 494
    .line 495
    aput-object v1, v2, v13

    .line 496
    .line 497
    aput-object v0, v2, v12

    .line 498
    .line 499
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    return-object v0

    .line 504
    :pswitch_9
    move-object v0, v1

    .line 505
    check-cast v0, Ljava/util/List;

    .line 506
    .line 507
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    new-instance v1, Lokhttp3/tls/internal/der/AttributeTypeAndValue;

    .line 511
    .line 512
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    check-cast v2, Ljava/lang/String;

    .line 520
    .line 521
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-direct {v1, v2, v0}, Lokhttp3/tls/internal/der/AttributeTypeAndValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    return-object v1

    .line 529
    :pswitch_a
    move-object v0, v1

    .line 530
    check-cast v0, Lokhttp3/tls/internal/der/AttributeTypeAndValue;

    .line 531
    .line 532
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    iget-object v1, v0, Lokhttp3/tls/internal/der/AttributeTypeAndValue;->type:Ljava/lang/String;

    .line 536
    .line 537
    iget-object v0, v0, Lokhttp3/tls/internal/der/AttributeTypeAndValue;->value:Ljava/lang/Object;

    .line 538
    .line 539
    new-array v2, v11, [Ljava/lang/Object;

    .line 540
    .line 541
    aput-object v1, v2, v13

    .line 542
    .line 543
    aput-object v0, v2, v12

    .line 544
    .line 545
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    return-object v0

    .line 550
    :pswitch_b
    move-object v0, v1

    .line 551
    check-cast v0, Ljava/util/List;

    .line 552
    .line 553
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 554
    .line 555
    .line 556
    new-instance v1, Lokhttp3/tls/internal/der/Extension;

    .line 557
    .line 558
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 563
    .line 564
    .line 565
    check-cast v2, Ljava/lang/String;

    .line 566
    .line 567
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v3

    .line 571
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    .line 573
    .line 574
    check-cast v3, Ljava/lang/Boolean;

    .line 575
    .line 576
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 577
    .line 578
    .line 579
    move-result v3

    .line 580
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-direct {v1, v2, v3, v0}, Lokhttp3/tls/internal/der/Extension;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    .line 585
    .line 586
    .line 587
    return-object v1

    .line 588
    :pswitch_c
    move-object v0, v1

    .line 589
    check-cast v0, Lokhttp3/tls/internal/der/Extension;

    .line 590
    .line 591
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 592
    .line 593
    .line 594
    iget-object v1, v0, Lokhttp3/tls/internal/der/Extension;->id:Ljava/lang/String;

    .line 595
    .line 596
    iget-boolean v2, v0, Lokhttp3/tls/internal/der/Extension;->critical:Z

    .line 597
    .line 598
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    iget-object v0, v0, Lokhttp3/tls/internal/der/Extension;->value:Ljava/lang/Object;

    .line 603
    .line 604
    new-array v3, v10, [Ljava/lang/Object;

    .line 605
    .line 606
    aput-object v1, v3, v13

    .line 607
    .line 608
    aput-object v2, v3, v12

    .line 609
    .line 610
    aput-object v0, v3, v11

    .line 611
    .line 612
    invoke-static {v3}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    return-object v0

    .line 617
    :pswitch_d
    const-string v0, "2.5.29.17"

    .line 618
    .line 619
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-eqz v0, :cond_1

    .line 624
    .line 625
    sget-object v9, Lokhttp3/tls/internal/der/CertificateAdapters;->subjectAlternativeName:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 626
    .line 627
    goto :goto_2

    .line 628
    :cond_1
    const-string v0, "2.5.29.19"

    .line 629
    .line 630
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-eqz v0, :cond_2

    .line 635
    .line 636
    sget-object v9, Lokhttp3/tls/internal/der/CertificateAdapters;->basicConstraints:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 637
    .line 638
    :cond_2
    :goto_2
    return-object v9

    .line 639
    :pswitch_e
    move-object v0, v1

    .line 640
    check-cast v0, Ljava/util/List;

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    new-instance v1, Lokhttp3/tls/internal/der/BasicConstraints;

    .line 646
    .line 647
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    check-cast v2, Ljava/lang/Boolean;

    .line 655
    .line 656
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    check-cast v0, Ljava/lang/Long;

    .line 665
    .line 666
    invoke-direct {v1, v2, v0}, Lokhttp3/tls/internal/der/BasicConstraints;-><init>(ZLjava/lang/Long;)V

    .line 667
    .line 668
    .line 669
    return-object v1

    .line 670
    :pswitch_f
    move-object v0, v1

    .line 671
    check-cast v0, Lokhttp3/tls/internal/der/BasicConstraints;

    .line 672
    .line 673
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    .line 675
    .line 676
    iget-boolean v1, v0, Lokhttp3/tls/internal/der/BasicConstraints;->ca:Z

    .line 677
    .line 678
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    iget-object v0, v0, Lokhttp3/tls/internal/der/BasicConstraints;->maxIntermediateCas:Ljava/lang/Long;

    .line 683
    .line 684
    new-array v2, v11, [Ljava/lang/Object;

    .line 685
    .line 686
    aput-object v1, v2, v13

    .line 687
    .line 688
    aput-object v0, v2, v12

    .line 689
    .line 690
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    return-object v0

    .line 695
    :pswitch_10
    move-object v0, v1

    .line 696
    check-cast v0, Ljava/util/List;

    .line 697
    .line 698
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 699
    .line 700
    .line 701
    new-instance v1, Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 702
    .line 703
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 708
    .line 709
    .line 710
    check-cast v2, Ljava/lang/String;

    .line 711
    .line 712
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-direct {v1, v2, v0}, Lokhttp3/tls/internal/der/AlgorithmIdentifier;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    return-object v1

    .line 720
    :pswitch_11
    move-object v0, v1

    .line 721
    check-cast v0, Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 722
    .line 723
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    iget-object v1, v0, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    .line 727
    .line 728
    iget-object v0, v0, Lokhttp3/tls/internal/der/AlgorithmIdentifier;->parameters:Ljava/lang/Object;

    .line 729
    .line 730
    new-array v2, v11, [Ljava/lang/Object;

    .line 731
    .line 732
    aput-object v1, v2, v13

    .line 733
    .line 734
    aput-object v0, v2, v12

    .line 735
    .line 736
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    return-object v0

    .line 741
    :pswitch_12
    const-string v0, "1.2.840.113549.1.1.11"

    .line 742
    .line 743
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    if-eqz v0, :cond_3

    .line 748
    .line 749
    sget-object v9, Lokhttp3/tls/internal/der/Adapters;->NULL:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 750
    .line 751
    goto :goto_3

    .line 752
    :cond_3
    const-string v0, "1.2.840.113549.1.1.1"

    .line 753
    .line 754
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    if-eqz v0, :cond_4

    .line 759
    .line 760
    sget-object v9, Lokhttp3/tls/internal/der/Adapters;->NULL:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 761
    .line 762
    goto :goto_3

    .line 763
    :cond_4
    const-string v0, "1.2.840.10045.2.1"

    .line 764
    .line 765
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    if-eqz v0, :cond_5

    .line 770
    .line 771
    sget-object v9, Lokhttp3/tls/internal/der/Adapters;->OBJECT_IDENTIFIER:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 772
    .line 773
    :cond_5
    :goto_3
    return-object v9

    .line 774
    :pswitch_13
    move-object v0, v1

    .line 775
    check-cast v0, Ljava/util/List;

    .line 776
    .line 777
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 778
    .line 779
    .line 780
    new-instance v1, Lokhttp3/tls/internal/der/Validity;

    .line 781
    .line 782
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    .line 788
    .line 789
    check-cast v2, Ljava/lang/Long;

    .line 790
    .line 791
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 792
    .line 793
    .line 794
    move-result-wide v2

    .line 795
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    check-cast v0, Ljava/lang/Long;

    .line 803
    .line 804
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 805
    .line 806
    .line 807
    move-result-wide v4

    .line 808
    invoke-direct {v1, v2, v3, v4, v5}, Lokhttp3/tls/internal/der/Validity;-><init>(JJ)V

    .line 809
    .line 810
    .line 811
    return-object v1

    .line 812
    :pswitch_14
    move-object v0, v1

    .line 813
    check-cast v0, Ljava/util/List;

    .line 814
    .line 815
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    .line 817
    .line 818
    new-instance v1, Lokhttp3/tls/internal/der/PrivateKeyInfo;

    .line 819
    .line 820
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 825
    .line 826
    .line 827
    check-cast v2, Ljava/lang/Long;

    .line 828
    .line 829
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 830
    .line 831
    .line 832
    move-result-wide v2

    .line 833
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    move-result-object v4

    .line 837
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    check-cast v4, Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    .line 841
    .line 842
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 847
    .line 848
    .line 849
    check-cast v0, Lokio/ByteString;

    .line 850
    .line 851
    invoke-direct {v1, v2, v3, v4, v0}, Lokhttp3/tls/internal/der/PrivateKeyInfo;-><init>(JLokhttp3/tls/internal/der/AlgorithmIdentifier;Lokio/ByteString;)V

    .line 852
    .line 853
    .line 854
    return-object v1

    .line 855
    :pswitch_15
    move-object v0, v1

    .line 856
    check-cast v0, Lokhttp3/tls/internal/der/Validity;

    .line 857
    .line 858
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 859
    .line 860
    .line 861
    iget-wide v1, v0, Lokhttp3/tls/internal/der/Validity;->notBefore:J

    .line 862
    .line 863
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    iget-wide v2, v0, Lokhttp3/tls/internal/der/Validity;->notAfter:J

    .line 868
    .line 869
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    new-array v2, v11, [Ljava/lang/Long;

    .line 874
    .line 875
    aput-object v1, v2, v13

    .line 876
    .line 877
    aput-object v0, v2, v12

    .line 878
    .line 879
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    return-object v0

    .line 884
    :pswitch_16
    move-object v0, v1

    .line 885
    check-cast v0, Lokhttp3/internal/LinkedTags;

    .line 886
    .line 887
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    .line 889
    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    .line 891
    .line 892
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    .line 894
    .line 895
    iget-object v2, v0, Lokhttp3/internal/LinkedTags;->key:Lkotlin/reflect/KClass;

    .line 896
    .line 897
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const/16 v2, 0x3d

    .line 901
    .line 902
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    iget-object v0, v0, Lokhttp3/internal/LinkedTags;->value:Ljava/lang/Object;

    .line 906
    .line 907
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    return-object v0

    .line 915
    :pswitch_17
    move-object v0, v1

    .line 916
    check-cast v0, Lokhttp3/internal/LinkedTags;

    .line 917
    .line 918
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 919
    .line 920
    .line 921
    iget-object v0, v0, Lokhttp3/internal/LinkedTags;->next:Lokio/Okio__OkioKt;

    .line 922
    .line 923
    instance-of v1, v0, Lokhttp3/internal/LinkedTags;

    .line 924
    .line 925
    if-eqz v1, :cond_6

    .line 926
    .line 927
    move-object v9, v0

    .line 928
    check-cast v9, Lokhttp3/internal/LinkedTags;

    .line 929
    .line 930
    :cond_6
    return-object v9

    .line 931
    :pswitch_18
    move-object v0, v1

    .line 932
    check-cast v0, Ljava/util/Map$Entry;

    .line 933
    .line 934
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 935
    .line 936
    .line 937
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v1

    .line 941
    check-cast v1, Ljava/lang/String;

    .line 942
    .line 943
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    .line 948
    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    .line 950
    .line 951
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .line 953
    .line 954
    invoke-static {v2, v1}, Lkotlinx/serialization/json/internal/StringOpsKt;->printQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    const/16 v1, 0x3a

    .line 958
    .line 959
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    return-object v0

    .line 970
    :pswitch_19
    move-object v0, v1

    .line 971
    check-cast v0, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 972
    .line 973
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    .line 975
    .line 976
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 977
    .line 978
    const/16 v2, 0xb

    .line 979
    .line 980
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 981
    .line 982
    .line 983
    new-instance v2, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 984
    .line 985
    invoke-direct {v2, v1}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 986
    .line 987
    .line 988
    const-string v1, "JsonPrimitive"

    .line 989
    .line 990
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 991
    .line 992
    .line 993
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 994
    .line 995
    const/16 v2, 0xc

    .line 996
    .line 997
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 998
    .line 999
    .line 1000
    new-instance v2, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 1001
    .line 1002
    invoke-direct {v2, v1}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1003
    .line 1004
    .line 1005
    const-string v1, "JsonNull"

    .line 1006
    .line 1007
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 1008
    .line 1009
    .line 1010
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 1011
    .line 1012
    const/16 v2, 0xd

    .line 1013
    .line 1014
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1015
    .line 1016
    .line 1017
    new-instance v2, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 1018
    .line 1019
    invoke-direct {v2, v1}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1020
    .line 1021
    .line 1022
    const-string v1, "JsonLiteral"

    .line 1023
    .line 1024
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 1025
    .line 1026
    .line 1027
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 1028
    .line 1029
    const/16 v2, 0xe

    .line 1030
    .line 1031
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1032
    .line 1033
    .line 1034
    new-instance v2, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 1035
    .line 1036
    invoke-direct {v2, v1}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1037
    .line 1038
    .line 1039
    const-string v1, "JsonObject"

    .line 1040
    .line 1041
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 1042
    .line 1043
    .line 1044
    new-instance v1, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 1045
    .line 1046
    const/16 v2, 0xf

    .line 1047
    .line 1048
    invoke-direct {v1, v2}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1049
    .line 1050
    .line 1051
    new-instance v2, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;

    .line 1052
    .line 1053
    invoke-direct {v2, v1}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 1054
    .line 1055
    .line 1056
    const-string v1, "JsonArray"

    .line 1057
    .line 1058
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 1059
    .line 1060
    .line 1061
    return-object v8

    .line 1062
    :pswitch_1a
    move-object v0, v1

    .line 1063
    check-cast v0, Lkotlin/reflect/KClass;

    .line 1064
    .line 1065
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1066
    .line 1067
    .line 1068
    invoke-static {v0}, Lkotlin/TuplesKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    if-nez v1, :cond_8

    .line 1073
    .line 1074
    invoke-static {v0}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v1

    .line 1078
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 1079
    .line 1080
    .line 1081
    move-result v1

    .line 1082
    if-eqz v1, :cond_7

    .line 1083
    .line 1084
    new-instance v1, Lkotlinx/serialization/PolymorphicSerializer;

    .line 1085
    .line 1086
    invoke-direct {v1, v0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    .line 1087
    .line 1088
    .line 1089
    goto :goto_4

    .line 1090
    :cond_7
    move-object v1, v9

    .line 1091
    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 1092
    .line 1093
    invoke-static {v1}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v9

    .line 1097
    :cond_9
    return-object v9

    .line 1098
    :pswitch_1b
    move-object v0, v1

    .line 1099
    check-cast v0, Lkotlin/reflect/KClass;

    .line 1100
    .line 1101
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1102
    .line 1103
    .line 1104
    invoke-static {v0}, Lkotlin/TuplesKt;->serializerOrNull(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v1

    .line 1108
    if-nez v1, :cond_a

    .line 1109
    .line 1110
    invoke-static {v0}, Lkotlin/UnsignedKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v1

    .line 1114
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    .line 1115
    .line 1116
    .line 1117
    move-result v1

    .line 1118
    if-eqz v1, :cond_b

    .line 1119
    .line 1120
    new-instance v9, Lkotlinx/serialization/PolymorphicSerializer;

    .line 1121
    .line 1122
    invoke-direct {v9, v0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    .line 1123
    .line 1124
    .line 1125
    goto :goto_5

    .line 1126
    :cond_a
    move-object v9, v1

    .line 1127
    :cond_b
    :goto_5
    return-object v9

    .line 1128
    :pswitch_1c
    move-object v0, v1

    .line 1129
    check-cast v0, Lokio/internal/ZipEntry;

    .line 1130
    .line 1131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1132
    .line 1133
    .line 1134
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1135
    .line 1136
    return-object v0

    .line 1137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
