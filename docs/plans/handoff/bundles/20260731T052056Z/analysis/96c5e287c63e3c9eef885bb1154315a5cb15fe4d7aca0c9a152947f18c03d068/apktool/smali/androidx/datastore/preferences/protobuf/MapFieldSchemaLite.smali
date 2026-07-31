.class public final Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    check-cast v1, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move v2, v3

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_7

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static/range {p0 .. p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    iget-object v7, v1, Landroidx/datastore/preferences/protobuf/MapEntryLite;->metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 54
    .line 55
    iget-object v8, v7, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 56
    .line 57
    sget v9, Landroidx/datastore/preferences/protobuf/FieldSet;->$r8$clinit:I

    .line 58
    .line 59
    const/4 v9, 0x1

    .line 60
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    sget-object v11, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->GROUP:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 65
    .line 66
    if-ne v8, v11, :cond_1

    .line 67
    .line 68
    mul-int/lit8 v10, v10, 0x2

    .line 69
    .line 70
    :cond_1
    sget-object v12, Landroidx/datastore/preferences/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    aget v8, v12, v8

    .line 77
    .line 78
    const/16 v13, 0x3f

    .line 79
    .line 80
    const-string v14, "There is no way to get here, but the compiler thinks otherwise."

    .line 81
    .line 82
    const/16 v15, 0x8

    .line 83
    .line 84
    const/16 v16, 0x4

    .line 85
    .line 86
    packed-switch v8, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    invoke-static {v14}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return v3

    .line 93
    :pswitch_0
    check-cast v5, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    goto/16 :goto_4

    .line 104
    .line 105
    :pswitch_1
    check-cast v5, Ljava/lang/Long;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v17

    .line 111
    shl-long v19, v17, v9

    .line 112
    .line 113
    shr-long v17, v17, v13

    .line 114
    .line 115
    xor-long v17, v19, v17

    .line 116
    .line 117
    invoke-static/range {v17 .. v18}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :pswitch_2
    check-cast v5, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    shl-int/lit8 v8, v5, 0x1

    .line 130
    .line 131
    shr-int/lit8 v5, v5, 0x1f

    .line 132
    .line 133
    xor-int/2addr v5, v8

    .line 134
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :pswitch_3
    check-cast v5, Ljava/lang/Long;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    :goto_1
    move v5, v15

    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :pswitch_4
    check-cast v5, Ljava/lang/Integer;

    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    :goto_2
    move/from16 v5, v16

    .line 154
    .line 155
    goto/16 :goto_4

    .line 156
    .line 157
    :pswitch_5
    check-cast v5, Ljava/lang/Integer;

    .line 158
    .line 159
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :pswitch_6
    instance-of v8, v5, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 170
    .line 171
    if-eqz v8, :cond_2

    .line 172
    .line 173
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 174
    .line 175
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 180
    .line 181
    .line 182
    move-result v8

    .line 183
    :goto_3
    add-int/2addr v5, v8

    .line 184
    goto/16 :goto_4

    .line 185
    .line 186
    :cond_2
    check-cast v5, [B

    .line 187
    .line 188
    array-length v5, v5

    .line 189
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    goto :goto_3

    .line 194
    :pswitch_7
    instance-of v8, v5, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 195
    .line 196
    if-eqz v8, :cond_3

    .line 197
    .line 198
    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 199
    .line 200
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    goto :goto_3

    .line 209
    :cond_3
    check-cast v5, Ljava/lang/String;

    .line 210
    .line 211
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    goto :goto_4

    .line 216
    :pswitch_8
    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 217
    .line 218
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize()I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    goto :goto_3

    .line 227
    :pswitch_9
    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 228
    .line 229
    invoke-virtual {v5}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize()I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    goto :goto_4

    .line 234
    :pswitch_a
    check-cast v5, Ljava/lang/Boolean;

    .line 235
    .line 236
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    move v5, v9

    .line 240
    goto :goto_4

    .line 241
    :pswitch_b
    check-cast v5, Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :pswitch_c
    check-cast v5, Ljava/lang/Long;

    .line 248
    .line 249
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :pswitch_d
    check-cast v5, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    goto :goto_4

    .line 264
    :pswitch_e
    check-cast v5, Ljava/lang/Long;

    .line 265
    .line 266
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 267
    .line 268
    .line 269
    move-result-wide v17

    .line 270
    invoke-static/range {v17 .. v18}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    goto :goto_4

    .line 275
    :pswitch_f
    check-cast v5, Ljava/lang/Long;

    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 278
    .line 279
    .line 280
    move-result-wide v17

    .line 281
    invoke-static/range {v17 .. v18}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    goto :goto_4

    .line 286
    :pswitch_10
    check-cast v5, Ljava/lang/Float;

    .line 287
    .line 288
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :pswitch_11
    check-cast v5, Ljava/lang/Double;

    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    goto/16 :goto_1

    .line 299
    .line 300
    :goto_4
    add-int/2addr v5, v10

    .line 301
    iget-object v7, v7, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 302
    .line 303
    const/4 v8, 0x2

    .line 304
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 305
    .line 306
    .line 307
    move-result v8

    .line 308
    if-ne v7, v11, :cond_4

    .line 309
    .line 310
    mul-int/lit8 v8, v8, 0x2

    .line 311
    .line 312
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 313
    .line 314
    .line 315
    move-result v7

    .line 316
    aget v7, v12, v7

    .line 317
    .line 318
    packed-switch v7, :pswitch_data_1

    .line 319
    .line 320
    .line 321
    invoke-static {v14}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return v3

    .line 325
    :pswitch_12
    check-cast v4, Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 332
    .line 333
    .line 334
    move-result v9

    .line 335
    goto/16 :goto_8

    .line 336
    .line 337
    :pswitch_13
    check-cast v4, Ljava/lang/Long;

    .line 338
    .line 339
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 340
    .line 341
    .line 342
    move-result-wide v10

    .line 343
    shl-long v14, v10, v9

    .line 344
    .line 345
    shr-long v9, v10, v13

    .line 346
    .line 347
    xor-long/2addr v9, v14

    .line 348
    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    goto/16 :goto_8

    .line 353
    .line 354
    :pswitch_14
    check-cast v4, Ljava/lang/Integer;

    .line 355
    .line 356
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    shl-int/lit8 v7, v4, 0x1

    .line 361
    .line 362
    shr-int/lit8 v4, v4, 0x1f

    .line 363
    .line 364
    xor-int/2addr v4, v7

    .line 365
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    goto/16 :goto_8

    .line 370
    .line 371
    :pswitch_15
    check-cast v4, Ljava/lang/Long;

    .line 372
    .line 373
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    .line 375
    .line 376
    :goto_5
    move v9, v15

    .line 377
    goto/16 :goto_8

    .line 378
    .line 379
    :pswitch_16
    check-cast v4, Ljava/lang/Integer;

    .line 380
    .line 381
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    :goto_6
    move/from16 v9, v16

    .line 385
    .line 386
    goto/16 :goto_8

    .line 387
    .line 388
    :pswitch_17
    check-cast v4, Ljava/lang/Integer;

    .line 389
    .line 390
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v4

    .line 394
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 395
    .line 396
    .line 397
    move-result v9

    .line 398
    goto/16 :goto_8

    .line 399
    .line 400
    :pswitch_18
    instance-of v7, v4, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 401
    .line 402
    if-eqz v7, :cond_5

    .line 403
    .line 404
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 405
    .line 406
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    :goto_7
    add-int v9, v7, v4

    .line 415
    .line 416
    goto/16 :goto_8

    .line 417
    .line 418
    :cond_5
    check-cast v4, [B

    .line 419
    .line 420
    array-length v4, v4

    .line 421
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 422
    .line 423
    .line 424
    move-result v7

    .line 425
    goto :goto_7

    .line 426
    :pswitch_19
    instance-of v7, v4, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 427
    .line 428
    if-eqz v7, :cond_6

    .line 429
    .line 430
    check-cast v4, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 431
    .line 432
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    goto :goto_7

    .line 441
    :cond_6
    check-cast v4, Ljava/lang/String;

    .line 442
    .line 443
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    goto :goto_8

    .line 448
    :pswitch_1a
    check-cast v4, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 449
    .line 450
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize()I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    goto :goto_7

    .line 459
    :pswitch_1b
    check-cast v4, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 460
    .line 461
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize()I

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    goto :goto_8

    .line 466
    :pswitch_1c
    check-cast v4, Ljava/lang/Boolean;

    .line 467
    .line 468
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    goto :goto_8

    .line 472
    :pswitch_1d
    check-cast v4, Ljava/lang/Integer;

    .line 473
    .line 474
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    .line 476
    .line 477
    goto :goto_6

    .line 478
    :pswitch_1e
    check-cast v4, Ljava/lang/Long;

    .line 479
    .line 480
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 481
    .line 482
    .line 483
    goto :goto_5

    .line 484
    :pswitch_1f
    check-cast v4, Ljava/lang/Integer;

    .line 485
    .line 486
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 491
    .line 492
    .line 493
    move-result v9

    .line 494
    goto :goto_8

    .line 495
    :pswitch_20
    check-cast v4, Ljava/lang/Long;

    .line 496
    .line 497
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 498
    .line 499
    .line 500
    move-result-wide v9

    .line 501
    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 502
    .line 503
    .line 504
    move-result v9

    .line 505
    goto :goto_8

    .line 506
    :pswitch_21
    check-cast v4, Ljava/lang/Long;

    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 509
    .line 510
    .line 511
    move-result-wide v9

    .line 512
    invoke-static {v9, v10}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 513
    .line 514
    .line 515
    move-result v9

    .line 516
    goto :goto_8

    .line 517
    :pswitch_22
    check-cast v4, Ljava/lang/Float;

    .line 518
    .line 519
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    goto/16 :goto_6

    .line 523
    .line 524
    :pswitch_23
    check-cast v4, Ljava/lang/Double;

    .line 525
    .line 526
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    goto/16 :goto_5

    .line 530
    .line 531
    :goto_8
    add-int/2addr v9, v8

    .line 532
    add-int/2addr v9, v5

    .line 533
    invoke-static {v9, v9, v6, v2}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 534
    .line 535
    .line 536
    move-result v2

    .line 537
    goto/16 :goto_0

    .line 538
    .line 539
    :cond_7
    return v2

    .line 540
    nop

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
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

    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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
    .end packed-switch
.end method

.method public static mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;
    .locals 1

    .line 1
    check-cast p0, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 2
    .line 3
    check-cast p1, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MapFieldLite;->isMutable:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->mutableCopy()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->ensureMutable()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p0
.end method
