.class public final Landroidx/datastore/preferences/protobuf/MapEntryLite;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Landroidx/datastore/preferences/PreferencesProto$Value;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 5
    .line 6
    invoke-direct {v0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;-><init>(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite;->metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 10
    .line 11
    return-void
.end method

.method public static computeSerializedSize(Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 8
    .line 9
    sget v4, Landroidx/datastore/preferences/protobuf/FieldSet;->$r8$clinit:I

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    sget-object v6, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->GROUP:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType$2;

    .line 17
    .line 18
    if-ne v3, v6, :cond_0

    .line 19
    .line 20
    mul-int/lit8 v5, v5, 0x2

    .line 21
    .line 22
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v7, 0x0

    .line 27
    const/16 v8, 0x3f

    .line 28
    .line 29
    const-string v9, "There is no way to get here, but the compiler thinks otherwise."

    .line 30
    .line 31
    const/16 v10, 0x8

    .line 32
    .line 33
    const/4 v11, 0x4

    .line 34
    const/4 v12, 0x0

    .line 35
    packed-switch v3, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    invoke-static {v9}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v7

    .line 42
    :pswitch_0
    check-cast v1, Ljava/lang/Long;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v13

    .line 48
    shl-long v15, v13, v4

    .line 49
    .line 50
    shr-long/2addr v13, v8

    .line 51
    xor-long/2addr v13, v15

    .line 52
    invoke-static {v13, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :pswitch_1
    check-cast v1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    shl-int/lit8 v3, v1, 0x1

    .line 65
    .line 66
    shr-int/lit8 v1, v1, 0x1f

    .line 67
    .line 68
    xor-int/2addr v1, v3

    .line 69
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :pswitch_2
    check-cast v1, Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    :goto_0
    move v1, v10

    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :pswitch_3
    check-cast v1, Ljava/lang/Integer;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    :goto_1
    move v1, v11

    .line 89
    goto/16 :goto_3

    .line 90
    .line 91
    :pswitch_4
    check-cast v1, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    int-to-long v13, v1

    .line 98
    invoke-static {v13, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :pswitch_5
    check-cast v1, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :pswitch_6
    instance-of v3, v1, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 117
    .line 118
    if-eqz v3, :cond_1

    .line 119
    .line 120
    check-cast v1, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    :goto_2
    add-int/2addr v1, v3

    .line 131
    goto/16 :goto_3

    .line 132
    .line 133
    :cond_1
    check-cast v1, [B

    .line 134
    .line 135
    array-length v1, v1

    .line 136
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    goto :goto_2

    .line 141
    :pswitch_7
    check-cast v1, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 142
    .line 143
    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 144
    .line 145
    invoke-virtual {v1, v12}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    goto :goto_2

    .line 154
    :pswitch_8
    check-cast v1, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 155
    .line 156
    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 157
    .line 158
    invoke-virtual {v1, v12}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    goto :goto_3

    .line 163
    :pswitch_9
    instance-of v3, v1, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 164
    .line 165
    if-eqz v3, :cond_2

    .line 166
    .line 167
    check-cast v1, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 168
    .line 169
    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    goto :goto_2

    .line 178
    :cond_2
    check-cast v1, Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    goto :goto_3

    .line 185
    :pswitch_a
    check-cast v1, Ljava/lang/Boolean;

    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    move v1, v4

    .line 191
    goto :goto_3

    .line 192
    :pswitch_b
    check-cast v1, Ljava/lang/Integer;

    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :pswitch_c
    check-cast v1, Ljava/lang/Long;

    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :pswitch_d
    check-cast v1, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    int-to-long v13, v1

    .line 211
    invoke-static {v13, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    goto :goto_3

    .line 216
    :pswitch_e
    check-cast v1, Ljava/lang/Long;

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 219
    .line 220
    .line 221
    move-result-wide v13

    .line 222
    invoke-static {v13, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    goto :goto_3

    .line 227
    :pswitch_f
    check-cast v1, Ljava/lang/Long;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 230
    .line 231
    .line 232
    move-result-wide v13

    .line 233
    invoke-static {v13, v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    goto :goto_3

    .line 238
    :pswitch_10
    check-cast v1, Ljava/lang/Float;

    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :pswitch_11
    check-cast v1, Ljava/lang/Double;

    .line 246
    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :goto_3
    add-int/2addr v1, v5

    .line 253
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 254
    .line 255
    const/4 v3, 0x2

    .line 256
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-ne v0, v6, :cond_3

    .line 261
    .line 262
    mul-int/lit8 v3, v3, 0x2

    .line 263
    .line 264
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    packed-switch v0, :pswitch_data_1

    .line 269
    .line 270
    .line 271
    invoke-static {v9}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return v7

    .line 275
    :pswitch_12
    move-object v0, v2

    .line 276
    check-cast v0, Ljava/lang/Long;

    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 279
    .line 280
    .line 281
    move-result-wide v5

    .line 282
    shl-long v9, v5, v4

    .line 283
    .line 284
    shr-long v4, v5, v8

    .line 285
    .line 286
    xor-long/2addr v4, v9

    .line 287
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    goto/16 :goto_7

    .line 292
    .line 293
    :pswitch_13
    move-object v0, v2

    .line 294
    check-cast v0, Ljava/lang/Integer;

    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    shl-int/lit8 v2, v0, 0x1

    .line 301
    .line 302
    shr-int/lit8 v0, v0, 0x1f

    .line 303
    .line 304
    xor-int/2addr v0, v2

    .line 305
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    goto/16 :goto_7

    .line 310
    .line 311
    :pswitch_14
    move-object v0, v2

    .line 312
    check-cast v0, Ljava/lang/Long;

    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    .line 316
    .line 317
    :goto_4
    move v4, v10

    .line 318
    goto/16 :goto_7

    .line 319
    .line 320
    :pswitch_15
    move-object v0, v2

    .line 321
    check-cast v0, Ljava/lang/Integer;

    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    :goto_5
    move v4, v11

    .line 327
    goto/16 :goto_7

    .line 328
    .line 329
    :pswitch_16
    move-object v0, v2

    .line 330
    check-cast v0, Ljava/lang/Integer;

    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    int-to-long v4, v0

    .line 337
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    goto/16 :goto_7

    .line 342
    .line 343
    :pswitch_17
    move-object v0, v2

    .line 344
    check-cast v0, Ljava/lang/Integer;

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    goto/16 :goto_7

    .line 355
    .line 356
    :pswitch_18
    instance-of v0, v2, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 357
    .line 358
    if-eqz v0, :cond_4

    .line 359
    .line 360
    move-object v0, v2

    .line 361
    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 362
    .line 363
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    :goto_6
    add-int v4, v2, v0

    .line 372
    .line 373
    goto/16 :goto_7

    .line 374
    .line 375
    :cond_4
    move-object v0, v2

    .line 376
    check-cast v0, [B

    .line 377
    .line 378
    array-length v0, v0

    .line 379
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    goto :goto_6

    .line 384
    :pswitch_19
    move-object v0, v2

    .line 385
    check-cast v0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 386
    .line 387
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 388
    .line 389
    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    goto :goto_6

    .line 398
    :pswitch_1a
    move-object v0, v2

    .line 399
    check-cast v0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 400
    .line 401
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 402
    .line 403
    invoke-virtual {v0, v12}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    goto :goto_7

    .line 408
    :pswitch_1b
    instance-of v0, v2, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 409
    .line 410
    if-eqz v0, :cond_5

    .line 411
    .line 412
    move-object v0, v2

    .line 413
    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 414
    .line 415
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    goto :goto_6

    .line 424
    :cond_5
    move-object v0, v2

    .line 425
    check-cast v0, Ljava/lang/String;

    .line 426
    .line 427
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    goto :goto_7

    .line 432
    :pswitch_1c
    move-object v0, v2

    .line 433
    check-cast v0, Ljava/lang/Boolean;

    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    goto :goto_7

    .line 439
    :pswitch_1d
    move-object v0, v2

    .line 440
    check-cast v0, Ljava/lang/Integer;

    .line 441
    .line 442
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 443
    .line 444
    .line 445
    goto :goto_5

    .line 446
    :pswitch_1e
    move-object v0, v2

    .line 447
    check-cast v0, Ljava/lang/Long;

    .line 448
    .line 449
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    .line 451
    .line 452
    goto/16 :goto_4

    .line 453
    .line 454
    :pswitch_1f
    move-object v0, v2

    .line 455
    check-cast v0, Ljava/lang/Integer;

    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    int-to-long v4, v0

    .line 462
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 463
    .line 464
    .line 465
    move-result v4

    .line 466
    goto :goto_7

    .line 467
    :pswitch_20
    move-object v0, v2

    .line 468
    check-cast v0, Ljava/lang/Long;

    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 471
    .line 472
    .line 473
    move-result-wide v4

    .line 474
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    goto :goto_7

    .line 479
    :pswitch_21
    move-object v0, v2

    .line 480
    check-cast v0, Ljava/lang/Long;

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 483
    .line 484
    .line 485
    move-result-wide v4

    .line 486
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    goto :goto_7

    .line 491
    :pswitch_22
    move-object v0, v2

    .line 492
    check-cast v0, Ljava/lang/Float;

    .line 493
    .line 494
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    goto/16 :goto_5

    .line 498
    .line 499
    :pswitch_23
    move-object v0, v2

    .line 500
    check-cast v0, Ljava/lang/Double;

    .line 501
    .line 502
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 503
    .line 504
    .line 505
    goto/16 :goto_4

    .line 506
    .line 507
    :goto_7
    add-int/2addr v4, v3

    .line 508
    add-int/2addr v4, v1

    .line 509
    return v4

    .line 510
    nop

    .line 511
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
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
    .line 550
    .line 551
    :pswitch_data_1
    .packed-switch 0x0
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
