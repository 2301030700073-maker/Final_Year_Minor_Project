.class public final Landroidx/datastore/preferences/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Schema;


# static fields
.field public static final EMPTY_INT_ARRAY:[I

.field public static final UNSAFE:Lsun/misc/Unsafe;


# instance fields
.field public final buffer:[I

.field public final checkInitializedCount:I

.field public final defaultInstance:Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

.field public final intArray:[I

.field public final listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

.field public final lite:Z

.field public final mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

.field public final maxFieldNumber:I

.field public final minFieldNumber:I

.field public final newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;

.field public final objects:[Ljava/lang/Object;

.field public final proto3:Z

.field public final repeatedFieldOffsetStart:I

.field public final unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil$1;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/AbstractMessageLite;Z[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    .line 11
    .line 12
    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 13
    .line 14
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->lite:Z

    .line 15
    .line 16
    iput-boolean p6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 17
    .line 18
    iput-object p7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 19
    .line 20
    iput p8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 21
    .line 22
    iput p9, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 23
    .line 24
    iput-object p10, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;

    .line 25
    .line 26
    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 27
    .line 28
    iput-object p12, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 29
    .line 30
    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 31
    .line 32
    iput-object p14, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 33
    .line 34
    return-void
.end method

.method public static newSchema(Landroidx/datastore/preferences/protobuf/RawMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;

    .line 4
    .line 5
    if-eqz v1, :cond_35

    .line 6
    .line 7
    iget v1, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->flags:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    and-int/2addr v1, v2

    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    sget-object v1, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO2:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 17
    .line 18
    :goto_0
    sget-object v3, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO3:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    move v11, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v11, v4

    .line 26
    :goto_1
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const v7, 0xd800

    .line 37
    .line 38
    .line 39
    if-lt v5, v7, :cond_3

    .line 40
    .line 41
    and-int/lit16 v5, v5, 0x1fff

    .line 42
    .line 43
    move v8, v2

    .line 44
    const/16 v9, 0xd

    .line 45
    .line 46
    :goto_2
    add-int/lit8 v10, v8, 0x1

    .line 47
    .line 48
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-lt v8, v7, :cond_2

    .line 53
    .line 54
    and-int/lit16 v8, v8, 0x1fff

    .line 55
    .line 56
    shl-int/2addr v8, v9

    .line 57
    or-int/2addr v5, v8

    .line 58
    add-int/lit8 v9, v9, 0xd

    .line 59
    .line 60
    move v8, v10

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    shl-int/2addr v8, v9

    .line 63
    or-int/2addr v5, v8

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    move v10, v2

    .line 66
    :goto_3
    add-int/lit8 v8, v10, 0x1

    .line 67
    .line 68
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-lt v9, v7, :cond_5

    .line 73
    .line 74
    and-int/lit16 v9, v9, 0x1fff

    .line 75
    .line 76
    const/16 v10, 0xd

    .line 77
    .line 78
    :goto_4
    add-int/lit8 v12, v8, 0x1

    .line 79
    .line 80
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-lt v8, v7, :cond_4

    .line 85
    .line 86
    and-int/lit16 v8, v8, 0x1fff

    .line 87
    .line 88
    shl-int/2addr v8, v10

    .line 89
    or-int/2addr v9, v8

    .line 90
    add-int/lit8 v10, v10, 0xd

    .line 91
    .line 92
    move v8, v12

    .line 93
    goto :goto_4

    .line 94
    :cond_4
    shl-int/2addr v8, v10

    .line 95
    or-int/2addr v9, v8

    .line 96
    move v8, v12

    .line 97
    :cond_5
    if-nez v9, :cond_6

    .line 98
    .line 99
    sget-object v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->EMPTY_INT_ARRAY:[I

    .line 100
    .line 101
    move v6, v4

    .line 102
    move v10, v6

    .line 103
    move v13, v10

    .line 104
    move v14, v13

    .line 105
    move v15, v14

    .line 106
    move-object v12, v9

    .line 107
    move v9, v15

    .line 108
    goto/16 :goto_e

    .line 109
    .line 110
    :cond_6
    add-int/lit8 v9, v8, 0x1

    .line 111
    .line 112
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-lt v8, v7, :cond_8

    .line 117
    .line 118
    and-int/lit16 v8, v8, 0x1fff

    .line 119
    .line 120
    const/16 v10, 0xd

    .line 121
    .line 122
    :goto_5
    add-int/lit8 v12, v9, 0x1

    .line 123
    .line 124
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    if-lt v9, v7, :cond_7

    .line 129
    .line 130
    and-int/lit16 v9, v9, 0x1fff

    .line 131
    .line 132
    shl-int/2addr v9, v10

    .line 133
    or-int/2addr v8, v9

    .line 134
    add-int/lit8 v10, v10, 0xd

    .line 135
    .line 136
    move v9, v12

    .line 137
    goto :goto_5

    .line 138
    :cond_7
    shl-int/2addr v9, v10

    .line 139
    or-int/2addr v8, v9

    .line 140
    move v9, v12

    .line 141
    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 142
    .line 143
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-lt v9, v7, :cond_a

    .line 148
    .line 149
    and-int/lit16 v9, v9, 0x1fff

    .line 150
    .line 151
    const/16 v12, 0xd

    .line 152
    .line 153
    :goto_6
    add-int/lit8 v13, v10, 0x1

    .line 154
    .line 155
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 156
    .line 157
    .line 158
    move-result v10

    .line 159
    if-lt v10, v7, :cond_9

    .line 160
    .line 161
    and-int/lit16 v10, v10, 0x1fff

    .line 162
    .line 163
    shl-int/2addr v10, v12

    .line 164
    or-int/2addr v9, v10

    .line 165
    add-int/lit8 v12, v12, 0xd

    .line 166
    .line 167
    move v10, v13

    .line 168
    goto :goto_6

    .line 169
    :cond_9
    shl-int/2addr v10, v12

    .line 170
    or-int/2addr v9, v10

    .line 171
    move v10, v13

    .line 172
    :cond_a
    add-int/lit8 v12, v10, 0x1

    .line 173
    .line 174
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    if-lt v10, v7, :cond_c

    .line 179
    .line 180
    and-int/lit16 v10, v10, 0x1fff

    .line 181
    .line 182
    const/16 v13, 0xd

    .line 183
    .line 184
    :goto_7
    add-int/lit8 v14, v12, 0x1

    .line 185
    .line 186
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 187
    .line 188
    .line 189
    move-result v12

    .line 190
    if-lt v12, v7, :cond_b

    .line 191
    .line 192
    and-int/lit16 v12, v12, 0x1fff

    .line 193
    .line 194
    shl-int/2addr v12, v13

    .line 195
    or-int/2addr v10, v12

    .line 196
    add-int/lit8 v13, v13, 0xd

    .line 197
    .line 198
    move v12, v14

    .line 199
    goto :goto_7

    .line 200
    :cond_b
    shl-int/2addr v12, v13

    .line 201
    or-int/2addr v10, v12

    .line 202
    move v12, v14

    .line 203
    :cond_c
    add-int/lit8 v13, v12, 0x1

    .line 204
    .line 205
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    if-lt v12, v7, :cond_e

    .line 210
    .line 211
    and-int/lit16 v12, v12, 0x1fff

    .line 212
    .line 213
    const/16 v14, 0xd

    .line 214
    .line 215
    :goto_8
    add-int/lit8 v15, v13, 0x1

    .line 216
    .line 217
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 218
    .line 219
    .line 220
    move-result v13

    .line 221
    if-lt v13, v7, :cond_d

    .line 222
    .line 223
    and-int/lit16 v13, v13, 0x1fff

    .line 224
    .line 225
    shl-int/2addr v13, v14

    .line 226
    or-int/2addr v12, v13

    .line 227
    add-int/lit8 v14, v14, 0xd

    .line 228
    .line 229
    move v13, v15

    .line 230
    goto :goto_8

    .line 231
    :cond_d
    shl-int/2addr v13, v14

    .line 232
    or-int/2addr v12, v13

    .line 233
    move v13, v15

    .line 234
    :cond_e
    add-int/lit8 v14, v13, 0x1

    .line 235
    .line 236
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    .line 237
    .line 238
    .line 239
    move-result v13

    .line 240
    if-lt v13, v7, :cond_10

    .line 241
    .line 242
    and-int/lit16 v13, v13, 0x1fff

    .line 243
    .line 244
    const/16 v15, 0xd

    .line 245
    .line 246
    :goto_9
    add-int/lit8 v16, v14, 0x1

    .line 247
    .line 248
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 249
    .line 250
    .line 251
    move-result v14

    .line 252
    if-lt v14, v7, :cond_f

    .line 253
    .line 254
    and-int/lit16 v14, v14, 0x1fff

    .line 255
    .line 256
    shl-int/2addr v14, v15

    .line 257
    or-int/2addr v13, v14

    .line 258
    add-int/lit8 v15, v15, 0xd

    .line 259
    .line 260
    move/from16 v14, v16

    .line 261
    .line 262
    goto :goto_9

    .line 263
    :cond_f
    shl-int/2addr v14, v15

    .line 264
    or-int/2addr v13, v14

    .line 265
    move/from16 v14, v16

    .line 266
    .line 267
    :cond_10
    add-int/lit8 v15, v14, 0x1

    .line 268
    .line 269
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    if-lt v14, v7, :cond_12

    .line 274
    .line 275
    and-int/lit16 v14, v14, 0x1fff

    .line 276
    .line 277
    const/16 v16, 0xd

    .line 278
    .line 279
    :goto_a
    add-int/lit8 v17, v15, 0x1

    .line 280
    .line 281
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 282
    .line 283
    .line 284
    move-result v15

    .line 285
    if-lt v15, v7, :cond_11

    .line 286
    .line 287
    and-int/lit16 v15, v15, 0x1fff

    .line 288
    .line 289
    shl-int v15, v15, v16

    .line 290
    .line 291
    or-int/2addr v14, v15

    .line 292
    add-int/lit8 v16, v16, 0xd

    .line 293
    .line 294
    move/from16 v15, v17

    .line 295
    .line 296
    goto :goto_a

    .line 297
    :cond_11
    shl-int v15, v15, v16

    .line 298
    .line 299
    or-int/2addr v14, v15

    .line 300
    move/from16 v15, v17

    .line 301
    .line 302
    :cond_12
    add-int/lit8 v16, v15, 0x1

    .line 303
    .line 304
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    .line 305
    .line 306
    .line 307
    move-result v15

    .line 308
    if-lt v15, v7, :cond_14

    .line 309
    .line 310
    and-int/lit16 v15, v15, 0x1fff

    .line 311
    .line 312
    move/from16 v4, v16

    .line 313
    .line 314
    const/16 v16, 0xd

    .line 315
    .line 316
    :goto_b
    add-int/lit8 v18, v4, 0x1

    .line 317
    .line 318
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-lt v4, v7, :cond_13

    .line 323
    .line 324
    and-int/lit16 v4, v4, 0x1fff

    .line 325
    .line 326
    shl-int v4, v4, v16

    .line 327
    .line 328
    or-int/2addr v15, v4

    .line 329
    add-int/lit8 v16, v16, 0xd

    .line 330
    .line 331
    move/from16 v4, v18

    .line 332
    .line 333
    goto :goto_b

    .line 334
    :cond_13
    shl-int v4, v4, v16

    .line 335
    .line 336
    or-int/2addr v15, v4

    .line 337
    move/from16 v4, v18

    .line 338
    .line 339
    goto :goto_c

    .line 340
    :cond_14
    move/from16 v4, v16

    .line 341
    .line 342
    :goto_c
    add-int/lit8 v16, v4, 0x1

    .line 343
    .line 344
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    if-lt v4, v7, :cond_16

    .line 349
    .line 350
    and-int/lit16 v4, v4, 0x1fff

    .line 351
    .line 352
    move/from16 v6, v16

    .line 353
    .line 354
    const/16 v16, 0xd

    .line 355
    .line 356
    :goto_d
    add-int/lit8 v19, v6, 0x1

    .line 357
    .line 358
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-lt v6, v7, :cond_15

    .line 363
    .line 364
    and-int/lit16 v6, v6, 0x1fff

    .line 365
    .line 366
    shl-int v6, v6, v16

    .line 367
    .line 368
    or-int/2addr v4, v6

    .line 369
    add-int/lit8 v16, v16, 0xd

    .line 370
    .line 371
    move/from16 v6, v19

    .line 372
    .line 373
    goto :goto_d

    .line 374
    :cond_15
    shl-int v6, v6, v16

    .line 375
    .line 376
    or-int/2addr v4, v6

    .line 377
    move/from16 v16, v19

    .line 378
    .line 379
    :cond_16
    add-int v6, v4, v14

    .line 380
    .line 381
    add-int/2addr v6, v15

    .line 382
    new-array v6, v6, [I

    .line 383
    .line 384
    mul-int/lit8 v15, v8, 0x2

    .line 385
    .line 386
    add-int/2addr v15, v9

    .line 387
    move v9, v12

    .line 388
    move-object v12, v6

    .line 389
    move v6, v13

    .line 390
    move v13, v4

    .line 391
    move v4, v8

    .line 392
    move/from16 v8, v16

    .line 393
    .line 394
    :goto_e
    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    .line 395
    .line 396
    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 397
    .line 398
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    move-result-object v7

    .line 402
    move-object/from16 v20, v2

    .line 403
    .line 404
    mul-int/lit8 v2, v6, 0x3

    .line 405
    .line 406
    new-array v2, v2, [I

    .line 407
    .line 408
    mul-int/lit8 v6, v6, 0x2

    .line 409
    .line 410
    new-array v6, v6, [Ljava/lang/Object;

    .line 411
    .line 412
    add-int/2addr v14, v13

    .line 413
    move/from16 v23, v13

    .line 414
    .line 415
    move/from16 v24, v14

    .line 416
    .line 417
    const/16 v21, 0x0

    .line 418
    .line 419
    const/16 v22, 0x0

    .line 420
    .line 421
    :goto_f
    if-ge v8, v3, :cond_34

    .line 422
    .line 423
    add-int/lit8 v25, v8, 0x1

    .line 424
    .line 425
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    move-object/from16 v26, v2

    .line 430
    .line 431
    const v2, 0xd800

    .line 432
    .line 433
    .line 434
    if-lt v8, v2, :cond_18

    .line 435
    .line 436
    and-int/lit16 v8, v8, 0x1fff

    .line 437
    .line 438
    move/from16 v2, v25

    .line 439
    .line 440
    const/16 v25, 0xd

    .line 441
    .line 442
    :goto_10
    add-int/lit8 v27, v2, 0x1

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    move/from16 v28, v3

    .line 449
    .line 450
    const v3, 0xd800

    .line 451
    .line 452
    .line 453
    if-lt v2, v3, :cond_17

    .line 454
    .line 455
    and-int/lit16 v2, v2, 0x1fff

    .line 456
    .line 457
    shl-int v2, v2, v25

    .line 458
    .line 459
    or-int/2addr v8, v2

    .line 460
    add-int/lit8 v25, v25, 0xd

    .line 461
    .line 462
    move/from16 v2, v27

    .line 463
    .line 464
    move/from16 v3, v28

    .line 465
    .line 466
    goto :goto_10

    .line 467
    :cond_17
    shl-int v2, v2, v25

    .line 468
    .line 469
    or-int/2addr v8, v2

    .line 470
    move/from16 v2, v27

    .line 471
    .line 472
    goto :goto_11

    .line 473
    :cond_18
    move/from16 v28, v3

    .line 474
    .line 475
    move/from16 v2, v25

    .line 476
    .line 477
    :goto_11
    add-int/lit8 v3, v2, 0x1

    .line 478
    .line 479
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    move/from16 v25, v3

    .line 484
    .line 485
    const v3, 0xd800

    .line 486
    .line 487
    .line 488
    if-lt v2, v3, :cond_1a

    .line 489
    .line 490
    and-int/lit16 v2, v2, 0x1fff

    .line 491
    .line 492
    move/from16 v3, v25

    .line 493
    .line 494
    const/16 v25, 0xd

    .line 495
    .line 496
    :goto_12
    add-int/lit8 v27, v3, 0x1

    .line 497
    .line 498
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    move/from16 v29, v2

    .line 503
    .line 504
    const v2, 0xd800

    .line 505
    .line 506
    .line 507
    if-lt v3, v2, :cond_19

    .line 508
    .line 509
    and-int/lit16 v2, v3, 0x1fff

    .line 510
    .line 511
    shl-int v2, v2, v25

    .line 512
    .line 513
    or-int v2, v29, v2

    .line 514
    .line 515
    add-int/lit8 v25, v25, 0xd

    .line 516
    .line 517
    move/from16 v3, v27

    .line 518
    .line 519
    goto :goto_12

    .line 520
    :cond_19
    shl-int v2, v3, v25

    .line 521
    .line 522
    or-int v2, v29, v2

    .line 523
    .line 524
    move/from16 v3, v27

    .line 525
    .line 526
    goto :goto_13

    .line 527
    :cond_1a
    move/from16 v3, v25

    .line 528
    .line 529
    :goto_13
    move/from16 v25, v4

    .line 530
    .line 531
    and-int/lit16 v4, v2, 0xff

    .line 532
    .line 533
    move/from16 v27, v5

    .line 534
    .line 535
    and-int/lit16 v5, v2, 0x400

    .line 536
    .line 537
    if-eqz v5, :cond_1b

    .line 538
    .line 539
    add-int/lit8 v5, v21, 0x1

    .line 540
    .line 541
    aput v22, v12, v21

    .line 542
    .line 543
    move/from16 v21, v5

    .line 544
    .line 545
    :cond_1b
    const/16 v5, 0x33

    .line 546
    .line 547
    move-object/from16 v30, v6

    .line 548
    .line 549
    sget-object v6, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 550
    .line 551
    if-lt v4, v5, :cond_23

    .line 552
    .line 553
    add-int/lit8 v5, v3, 0x1

    .line 554
    .line 555
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 556
    .line 557
    .line 558
    move-result v3

    .line 559
    move/from16 v31, v5

    .line 560
    .line 561
    const v5, 0xd800

    .line 562
    .line 563
    .line 564
    if-lt v3, v5, :cond_1d

    .line 565
    .line 566
    and-int/lit16 v3, v3, 0x1fff

    .line 567
    .line 568
    move/from16 v5, v31

    .line 569
    .line 570
    const/16 v31, 0xd

    .line 571
    .line 572
    :goto_14
    add-int/lit8 v32, v5, 0x1

    .line 573
    .line 574
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    .line 575
    .line 576
    .line 577
    move-result v5

    .line 578
    move/from16 v33, v3

    .line 579
    .line 580
    const v3, 0xd800

    .line 581
    .line 582
    .line 583
    if-lt v5, v3, :cond_1c

    .line 584
    .line 585
    and-int/lit16 v3, v5, 0x1fff

    .line 586
    .line 587
    shl-int v3, v3, v31

    .line 588
    .line 589
    or-int v3, v33, v3

    .line 590
    .line 591
    add-int/lit8 v31, v31, 0xd

    .line 592
    .line 593
    move/from16 v5, v32

    .line 594
    .line 595
    goto :goto_14

    .line 596
    :cond_1c
    shl-int v3, v5, v31

    .line 597
    .line 598
    or-int v3, v33, v3

    .line 599
    .line 600
    move/from16 v5, v32

    .line 601
    .line 602
    goto :goto_15

    .line 603
    :cond_1d
    move/from16 v5, v31

    .line 604
    .line 605
    :goto_15
    move/from16 v31, v3

    .line 606
    .line 607
    add-int/lit8 v3, v4, -0x33

    .line 608
    .line 609
    move/from16 v32, v5

    .line 610
    .line 611
    const/16 v5, 0x9

    .line 612
    .line 613
    if-eq v3, v5, :cond_1f

    .line 614
    .line 615
    const/16 v5, 0x11

    .line 616
    .line 617
    if-ne v3, v5, :cond_1e

    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_1e
    const/16 v5, 0xc

    .line 621
    .line 622
    if-ne v3, v5, :cond_20

    .line 623
    .line 624
    and-int/lit8 v3, v27, 0x1

    .line 625
    .line 626
    const/4 v5, 0x1

    .line 627
    if-ne v3, v5, :cond_20

    .line 628
    .line 629
    div-int/lit8 v3, v22, 0x3

    .line 630
    .line 631
    mul-int/lit8 v3, v3, 0x2

    .line 632
    .line 633
    add-int/2addr v3, v5

    .line 634
    add-int/lit8 v5, v15, 0x1

    .line 635
    .line 636
    aget-object v15, v20, v15

    .line 637
    .line 638
    aput-object v15, v30, v3

    .line 639
    .line 640
    :goto_16
    move v15, v5

    .line 641
    goto :goto_18

    .line 642
    :cond_1f
    :goto_17
    div-int/lit8 v3, v22, 0x3

    .line 643
    .line 644
    mul-int/lit8 v3, v3, 0x2

    .line 645
    .line 646
    const/16 v16, 0x1

    .line 647
    .line 648
    add-int/lit8 v3, v3, 0x1

    .line 649
    .line 650
    add-int/lit8 v5, v15, 0x1

    .line 651
    .line 652
    aget-object v15, v20, v15

    .line 653
    .line 654
    aput-object v15, v30, v3

    .line 655
    .line 656
    goto :goto_16

    .line 657
    :cond_20
    :goto_18
    mul-int/lit8 v3, v31, 0x2

    .line 658
    .line 659
    aget-object v5, v20, v3

    .line 660
    .line 661
    move/from16 v29, v3

    .line 662
    .line 663
    instance-of v3, v5, Ljava/lang/reflect/Field;

    .line 664
    .line 665
    if-eqz v3, :cond_21

    .line 666
    .line 667
    check-cast v5, Ljava/lang/reflect/Field;

    .line 668
    .line 669
    :goto_19
    move/from16 v33, v8

    .line 670
    .line 671
    move/from16 v31, v9

    .line 672
    .line 673
    goto :goto_1a

    .line 674
    :cond_21
    check-cast v5, Ljava/lang/String;

    .line 675
    .line 676
    invoke-static {v7, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 677
    .line 678
    .line 679
    move-result-object v5

    .line 680
    aput-object v5, v20, v29

    .line 681
    .line 682
    goto :goto_19

    .line 683
    :goto_1a
    invoke-virtual {v6, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 684
    .line 685
    .line 686
    move-result-wide v8

    .line 687
    long-to-int v3, v8

    .line 688
    add-int/lit8 v5, v29, 0x1

    .line 689
    .line 690
    aget-object v8, v20, v5

    .line 691
    .line 692
    instance-of v9, v8, Ljava/lang/reflect/Field;

    .line 693
    .line 694
    if-eqz v9, :cond_22

    .line 695
    .line 696
    check-cast v8, Ljava/lang/reflect/Field;

    .line 697
    .line 698
    goto :goto_1b

    .line 699
    :cond_22
    check-cast v8, Ljava/lang/String;

    .line 700
    .line 701
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 702
    .line 703
    .line 704
    move-result-object v8

    .line 705
    aput-object v8, v20, v5

    .line 706
    .line 707
    :goto_1b
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 708
    .line 709
    .line 710
    move-result-wide v5

    .line 711
    long-to-int v5, v5

    .line 712
    move v6, v5

    .line 713
    move/from16 v29, v15

    .line 714
    .line 715
    move/from16 v8, v32

    .line 716
    .line 717
    const/4 v5, 0x0

    .line 718
    const v15, 0xd800

    .line 719
    .line 720
    .line 721
    goto/16 :goto_26

    .line 722
    .line 723
    :cond_23
    move/from16 v33, v8

    .line 724
    .line 725
    move/from16 v31, v9

    .line 726
    .line 727
    add-int/lit8 v5, v15, 0x1

    .line 728
    .line 729
    aget-object v8, v20, v15

    .line 730
    .line 731
    check-cast v8, Ljava/lang/String;

    .line 732
    .line 733
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 734
    .line 735
    .line 736
    move-result-object v8

    .line 737
    const/16 v9, 0x9

    .line 738
    .line 739
    if-eq v4, v9, :cond_24

    .line 740
    .line 741
    const/16 v9, 0x11

    .line 742
    .line 743
    if-ne v4, v9, :cond_25

    .line 744
    .line 745
    :cond_24
    move/from16 v29, v5

    .line 746
    .line 747
    const/4 v5, 0x1

    .line 748
    goto :goto_20

    .line 749
    :cond_25
    const/16 v9, 0x1b

    .line 750
    .line 751
    if-eq v4, v9, :cond_26

    .line 752
    .line 753
    const/16 v9, 0x31

    .line 754
    .line 755
    if-ne v4, v9, :cond_27

    .line 756
    .line 757
    :cond_26
    move/from16 v29, v5

    .line 758
    .line 759
    const/4 v5, 0x1

    .line 760
    goto :goto_1f

    .line 761
    :cond_27
    const/16 v9, 0xc

    .line 762
    .line 763
    if-eq v4, v9, :cond_2b

    .line 764
    .line 765
    const/16 v9, 0x1e

    .line 766
    .line 767
    if-eq v4, v9, :cond_2b

    .line 768
    .line 769
    const/16 v9, 0x2c

    .line 770
    .line 771
    if-ne v4, v9, :cond_28

    .line 772
    .line 773
    goto :goto_1d

    .line 774
    :cond_28
    const/16 v9, 0x32

    .line 775
    .line 776
    if-ne v4, v9, :cond_2a

    .line 777
    .line 778
    add-int/lit8 v9, v23, 0x1

    .line 779
    .line 780
    aput v22, v12, v23

    .line 781
    .line 782
    div-int/lit8 v23, v22, 0x3

    .line 783
    .line 784
    mul-int/lit8 v23, v23, 0x2

    .line 785
    .line 786
    add-int/lit8 v29, v15, 0x2

    .line 787
    .line 788
    aget-object v5, v20, v5

    .line 789
    .line 790
    aput-object v5, v30, v23

    .line 791
    .line 792
    and-int/lit16 v5, v2, 0x800

    .line 793
    .line 794
    if-eqz v5, :cond_29

    .line 795
    .line 796
    add-int/lit8 v23, v23, 0x1

    .line 797
    .line 798
    add-int/lit8 v5, v15, 0x3

    .line 799
    .line 800
    aget-object v15, v20, v29

    .line 801
    .line 802
    aput-object v15, v30, v23

    .line 803
    .line 804
    move/from16 v29, v5

    .line 805
    .line 806
    :cond_29
    move/from16 v23, v9

    .line 807
    .line 808
    :goto_1c
    const/4 v5, 0x1

    .line 809
    goto :goto_21

    .line 810
    :cond_2a
    move/from16 v29, v5

    .line 811
    .line 812
    goto :goto_1c

    .line 813
    :cond_2b
    :goto_1d
    and-int/lit8 v9, v27, 0x1

    .line 814
    .line 815
    move/from16 v29, v5

    .line 816
    .line 817
    const/4 v5, 0x1

    .line 818
    if-ne v9, v5, :cond_2c

    .line 819
    .line 820
    div-int/lit8 v9, v22, 0x3

    .line 821
    .line 822
    mul-int/lit8 v9, v9, 0x2

    .line 823
    .line 824
    add-int/2addr v9, v5

    .line 825
    add-int/lit8 v15, v15, 0x2

    .line 826
    .line 827
    aget-object v16, v20, v29

    .line 828
    .line 829
    aput-object v16, v30, v9

    .line 830
    .line 831
    :goto_1e
    move/from16 v29, v15

    .line 832
    .line 833
    goto :goto_21

    .line 834
    :goto_1f
    div-int/lit8 v9, v22, 0x3

    .line 835
    .line 836
    mul-int/lit8 v9, v9, 0x2

    .line 837
    .line 838
    add-int/2addr v9, v5

    .line 839
    add-int/lit8 v15, v15, 0x2

    .line 840
    .line 841
    aget-object v16, v20, v29

    .line 842
    .line 843
    aput-object v16, v30, v9

    .line 844
    .line 845
    goto :goto_1e

    .line 846
    :goto_20
    div-int/lit8 v9, v22, 0x3

    .line 847
    .line 848
    mul-int/lit8 v9, v9, 0x2

    .line 849
    .line 850
    add-int/2addr v9, v5

    .line 851
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 852
    .line 853
    .line 854
    move-result-object v15

    .line 855
    aput-object v15, v30, v9

    .line 856
    .line 857
    :cond_2c
    :goto_21
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 858
    .line 859
    .line 860
    move-result-wide v8

    .line 861
    long-to-int v8, v8

    .line 862
    and-int/lit8 v9, v27, 0x1

    .line 863
    .line 864
    if-ne v9, v5, :cond_30

    .line 865
    .line 866
    const/16 v9, 0x11

    .line 867
    .line 868
    if-gt v4, v9, :cond_30

    .line 869
    .line 870
    add-int/lit8 v9, v3, 0x1

    .line 871
    .line 872
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 873
    .line 874
    .line 875
    move-result v3

    .line 876
    const v15, 0xd800

    .line 877
    .line 878
    .line 879
    if-lt v3, v15, :cond_2e

    .line 880
    .line 881
    and-int/lit16 v3, v3, 0x1fff

    .line 882
    .line 883
    const/16 v16, 0xd

    .line 884
    .line 885
    :goto_22
    add-int/lit8 v19, v9, 0x1

    .line 886
    .line 887
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 888
    .line 889
    .line 890
    move-result v9

    .line 891
    if-lt v9, v15, :cond_2d

    .line 892
    .line 893
    and-int/lit16 v9, v9, 0x1fff

    .line 894
    .line 895
    shl-int v9, v9, v16

    .line 896
    .line 897
    or-int/2addr v3, v9

    .line 898
    add-int/lit8 v16, v16, 0xd

    .line 899
    .line 900
    move/from16 v9, v19

    .line 901
    .line 902
    goto :goto_22

    .line 903
    :cond_2d
    shl-int v9, v9, v16

    .line 904
    .line 905
    or-int/2addr v3, v9

    .line 906
    goto :goto_23

    .line 907
    :cond_2e
    move/from16 v19, v9

    .line 908
    .line 909
    :goto_23
    mul-int/lit8 v9, v25, 0x2

    .line 910
    .line 911
    div-int/lit8 v16, v3, 0x20

    .line 912
    .line 913
    add-int v16, v16, v9

    .line 914
    .line 915
    aget-object v9, v20, v16

    .line 916
    .line 917
    instance-of v5, v9, Ljava/lang/reflect/Field;

    .line 918
    .line 919
    if-eqz v5, :cond_2f

    .line 920
    .line 921
    check-cast v9, Ljava/lang/reflect/Field;

    .line 922
    .line 923
    goto :goto_24

    .line 924
    :cond_2f
    check-cast v9, Ljava/lang/String;

    .line 925
    .line 926
    invoke-static {v7, v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 927
    .line 928
    .line 929
    move-result-object v9

    .line 930
    aput-object v9, v20, v16

    .line 931
    .line 932
    :goto_24
    invoke-virtual {v6, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 933
    .line 934
    .line 935
    move-result-wide v5

    .line 936
    long-to-int v5, v5

    .line 937
    rem-int/lit8 v3, v3, 0x20

    .line 938
    .line 939
    goto :goto_25

    .line 940
    :cond_30
    const v15, 0xd800

    .line 941
    .line 942
    .line 943
    move/from16 v19, v3

    .line 944
    .line 945
    const/4 v3, 0x0

    .line 946
    const/4 v5, 0x0

    .line 947
    :goto_25
    const/16 v6, 0x12

    .line 948
    .line 949
    if-lt v4, v6, :cond_31

    .line 950
    .line 951
    const/16 v9, 0x31

    .line 952
    .line 953
    if-gt v4, v9, :cond_31

    .line 954
    .line 955
    add-int/lit8 v6, v24, 0x1

    .line 956
    .line 957
    aput v8, v12, v24

    .line 958
    .line 959
    move/from16 v24, v6

    .line 960
    .line 961
    :cond_31
    move v6, v5

    .line 962
    move v5, v3

    .line 963
    move v3, v8

    .line 964
    move/from16 v8, v19

    .line 965
    .line 966
    :goto_26
    add-int/lit8 v9, v22, 0x1

    .line 967
    .line 968
    aput v33, v26, v22

    .line 969
    .line 970
    add-int/lit8 v16, v22, 0x2

    .line 971
    .line 972
    and-int/lit16 v15, v2, 0x200

    .line 973
    .line 974
    if-eqz v15, :cond_32

    .line 975
    .line 976
    const/high16 v15, 0x20000000

    .line 977
    .line 978
    goto :goto_27

    .line 979
    :cond_32
    const/4 v15, 0x0

    .line 980
    :goto_27
    and-int/lit16 v2, v2, 0x100

    .line 981
    .line 982
    if-eqz v2, :cond_33

    .line 983
    .line 984
    const/high16 v2, 0x10000000

    .line 985
    .line 986
    goto :goto_28

    .line 987
    :cond_33
    const/4 v2, 0x0

    .line 988
    :goto_28
    or-int/2addr v2, v15

    .line 989
    shl-int/lit8 v4, v4, 0x14

    .line 990
    .line 991
    or-int/2addr v2, v4

    .line 992
    or-int/2addr v2, v3

    .line 993
    aput v2, v26, v9

    .line 994
    .line 995
    add-int/lit8 v22, v22, 0x3

    .line 996
    .line 997
    shl-int/lit8 v2, v5, 0x14

    .line 998
    .line 999
    or-int/2addr v2, v6

    .line 1000
    aput v2, v26, v16

    .line 1001
    .line 1002
    move/from16 v4, v25

    .line 1003
    .line 1004
    move-object/from16 v2, v26

    .line 1005
    .line 1006
    move/from16 v5, v27

    .line 1007
    .line 1008
    move/from16 v3, v28

    .line 1009
    .line 1010
    move/from16 v15, v29

    .line 1011
    .line 1012
    move-object/from16 v6, v30

    .line 1013
    .line 1014
    move/from16 v9, v31

    .line 1015
    .line 1016
    goto/16 :goto_f

    .line 1017
    .line 1018
    :cond_34
    move-object/from16 v26, v2

    .line 1019
    .line 1020
    move-object/from16 v30, v6

    .line 1021
    .line 1022
    move/from16 v31, v9

    .line 1023
    .line 1024
    new-instance v5, Landroidx/datastore/preferences/protobuf/MessageSchema;

    .line 1025
    .line 1026
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->defaultInstance:Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 1027
    .line 1028
    move-object/from16 v15, p1

    .line 1029
    .line 1030
    move-object/from16 v16, p2

    .line 1031
    .line 1032
    move-object/from16 v17, p3

    .line 1033
    .line 1034
    move-object/from16 v18, p4

    .line 1035
    .line 1036
    move-object/from16 v19, p5

    .line 1037
    .line 1038
    move v8, v10

    .line 1039
    move-object/from16 v6, v26

    .line 1040
    .line 1041
    move-object/from16 v7, v30

    .line 1042
    .line 1043
    move-object v10, v0

    .line 1044
    invoke-direct/range {v5 .. v19}, Landroidx/datastore/preferences/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/AbstractMessageLite;Z[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;)V

    .line 1045
    .line 1046
    .line 1047
    return-object v5

    .line 1048
    :cond_35
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 1049
    .line 1050
    .line 1051
    const/4 v0, 0x0

    .line 1052
    return-object v0
.end method

.method public static offset(I)J
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    int-to-long v0, p0

    .line 6
    return-wide v0
.end method

.method public static oneofIntAt(JLjava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static oneofLongAt(JLjava/lang/Object;)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Long;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public static reflectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string v2, "Field "

    .line 33
    .line 34
    const-string v3, " for "

    .line 35
    .line 36
    invoke-static {v2, p1, v3}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " not found. Known fields are "

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public static type(I)I
    .locals 1

    .line 1
    const/high16 v0, 0xff00000

    .line 2
    .line 3
    and-int/2addr p0, v0

    .line 4
    ushr-int/lit8 p0, p0, 0x14

    .line 5
    .line 6
    return p0
.end method

.method public static writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object p2, p2, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;

    .line 10
    .line 11
    invoke-virtual {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeString(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 16
    .line 17
    invoke-virtual {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p3, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-ne p1, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final equals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Z
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    int-to-long v7, v7

    .line 19
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    packed-switch v5, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    .line 29
    .line 30
    aget v5, v0, v5

    .line 31
    .line 32
    and-int/2addr v5, v6

    .line 33
    int-to-long v5, v5

    .line 34
    invoke-static {v5, v6, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    invoke-static {v5, v6, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-ne v9, v5, :cond_0

    .line 43
    .line 44
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_0

    .line 57
    .line 58
    goto/16 :goto_1

    .line 59
    .line 60
    :cond_0
    move v4, v2

    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :pswitch_1
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :pswitch_2
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_0

    .line 96
    .line 97
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_0

    .line 110
    .line 111
    goto/16 :goto_1

    .line 112
    .line 113
    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_0

    .line 118
    .line 119
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v7

    .line 127
    cmp-long v5, v5, v7

    .line 128
    .line 129
    if-nez v5, :cond_0

    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_0

    .line 138
    .line 139
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-ne v5, v6, :cond_0

    .line 148
    .line 149
    goto/16 :goto_1

    .line 150
    .line 151
    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    if-eqz v5, :cond_0

    .line 156
    .line 157
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v5

    .line 161
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 162
    .line 163
    .line 164
    move-result-wide v7

    .line 165
    cmp-long v5, v5, v7

    .line 166
    .line 167
    if-nez v5, :cond_0

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_0

    .line 176
    .line 177
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-ne v5, v6, :cond_0

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-eqz v5, :cond_0

    .line 194
    .line 195
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    if-ne v5, v6, :cond_0

    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_0

    .line 212
    .line 213
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-ne v5, v6, :cond_0

    .line 222
    .line 223
    goto/16 :goto_1

    .line 224
    .line 225
    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_0

    .line 230
    .line 231
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v5

    .line 243
    if-eqz v5, :cond_0

    .line 244
    .line 245
    goto/16 :goto_1

    .line 246
    .line 247
    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 248
    .line 249
    .line 250
    move-result v5

    .line 251
    if-eqz v5, :cond_0

    .line 252
    .line 253
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-eqz v5, :cond_0

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    if-eqz v5, :cond_0

    .line 274
    .line 275
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_0

    .line 288
    .line 289
    goto/16 :goto_1

    .line 290
    .line 291
    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_0

    .line 296
    .line 297
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 298
    .line 299
    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-ne v6, v5, :cond_0

    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_0

    .line 316
    .line 317
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 318
    .line 319
    .line 320
    move-result v5

    .line 321
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 322
    .line 323
    .line 324
    move-result v6

    .line 325
    if-ne v5, v6, :cond_0

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    if-eqz v5, :cond_0

    .line 334
    .line 335
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 336
    .line 337
    .line 338
    move-result-wide v5

    .line 339
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 340
    .line 341
    .line 342
    move-result-wide v7

    .line 343
    cmp-long v5, v5, v7

    .line 344
    .line 345
    if-nez v5, :cond_0

    .line 346
    .line 347
    goto/16 :goto_1

    .line 348
    .line 349
    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-eqz v5, :cond_0

    .line 354
    .line 355
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-ne v5, v6, :cond_0

    .line 364
    .line 365
    goto :goto_1

    .line 366
    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-eqz v5, :cond_0

    .line 371
    .line 372
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 373
    .line 374
    .line 375
    move-result-wide v5

    .line 376
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 377
    .line 378
    .line 379
    move-result-wide v7

    .line 380
    cmp-long v5, v5, v7

    .line 381
    .line 382
    if-nez v5, :cond_0

    .line 383
    .line 384
    goto :goto_1

    .line 385
    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_0

    .line 390
    .line 391
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 392
    .line 393
    .line 394
    move-result-wide v5

    .line 395
    invoke-static {v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 396
    .line 397
    .line 398
    move-result-wide v7

    .line 399
    cmp-long v5, v5, v7

    .line 400
    .line 401
    if-nez v5, :cond_0

    .line 402
    .line 403
    goto :goto_1

    .line 404
    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-eqz v5, :cond_0

    .line 409
    .line 410
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 411
    .line 412
    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    if-ne v6, v5, :cond_0

    .line 429
    .line 430
    goto :goto_1

    .line 431
    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->arePresentForEquals(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)Z

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    if-eqz v5, :cond_0

    .line 436
    .line 437
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 438
    .line 439
    invoke-virtual {v5, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 440
    .line 441
    .line 442
    move-result-wide v9

    .line 443
    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 444
    .line 445
    .line 446
    move-result-wide v9

    .line 447
    invoke-virtual {v5, v7, v8, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 448
    .line 449
    .line 450
    move-result-wide v5

    .line 451
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 452
    .line 453
    .line 454
    move-result-wide v5

    .line 455
    cmp-long v5, v9, v5

    .line 456
    .line 457
    if-nez v5, :cond_0

    .line 458
    .line 459
    :goto_1
    if-nez v4, :cond_1

    .line 460
    .line 461
    goto :goto_2

    .line 462
    :cond_1
    add-int/lit8 v3, v3, 0x3

    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :cond_2
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 467
    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 469
    .line 470
    .line 471
    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 472
    .line 473
    iget-object p1, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 474
    .line 475
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result p0

    .line 479
    if-nez p0, :cond_3

    .line 480
    .line 481
    :goto_2
    return v2

    .line 482
    :cond_3
    return v4

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    aget p3, p3, p1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    const v0, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr p3, v0

    .line 13
    int-to-long v0, p3

    .line 14
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getEnumFieldVerifier(I)V
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 8
    .line 9
    aget-object p0, p0, p1

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final getMapFieldDefaultEntry(I)Ljava/lang/Object;
    .locals 0

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object p0, p0, p1

    .line 8
    .line 9
    return-object p0
.end method

.method public final getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;
    .locals 2

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->objects:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v0, p0, p1

    .line 8
    .line 9
    check-cast v0, Landroidx/datastore/preferences/protobuf/Schema;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 15
    .line 16
    add-int/lit8 v1, p1, 0x1

    .line 17
    .line 18
    aget-object v1, p0, v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    aput-object v0, p0, p1

    .line 27
    .line 28
    return-object v0
.end method

.method public final getSerializedSize(Landroidx/datastore/preferences/protobuf/AbstractMessageLite;)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v3, 0x4

    .line 6
    const/16 v4, 0x8

    .line 7
    .line 8
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 9
    .line 10
    iget-object v6, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 11
    .line 12
    const v7, 0xfffff

    .line 13
    .line 14
    .line 15
    sget-object v9, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 16
    .line 17
    const/4 v10, 0x1

    .line 18
    iget-boolean v11, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 19
    .line 20
    iget-object v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 21
    .line 22
    if-eqz v11, :cond_8

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    const/4 v13, 0x0

    .line 26
    :goto_0
    array-length v14, v12

    .line 27
    if-ge v11, v14, :cond_7

    .line 28
    .line 29
    invoke-virtual {v0, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 30
    .line 31
    .line 32
    move-result v14

    .line 33
    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 34
    .line 35
    .line 36
    move-result v15

    .line 37
    const/16 v16, 0x3f

    .line 38
    .line 39
    aget v2, v12, v11

    .line 40
    .line 41
    and-int/2addr v14, v7

    .line 42
    move/from16 v17, v7

    .line 43
    .line 44
    int-to-long v7, v14

    .line 45
    sget-object v14, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 46
    .line 47
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    .line 48
    .line 49
    .line 50
    move-result v14

    .line 51
    if-lt v15, v14, :cond_0

    .line 52
    .line 53
    sget-object v14, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 54
    .line 55
    invoke-virtual {v14}, Landroidx/datastore/preferences/protobuf/FieldType;->id()I

    .line 56
    .line 57
    .line 58
    move-result v14

    .line 59
    if-gt v15, v14, :cond_0

    .line 60
    .line 61
    add-int/lit8 v14, v11, 0x2

    .line 62
    .line 63
    aget v14, v12, v14

    .line 64
    .line 65
    :cond_0
    packed-switch v15, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :pswitch_0
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    if-eqz v14, :cond_6

    .line 75
    .line 76
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 81
    .line 82
    invoke-virtual {v0, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v2, v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/AbstractMessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    :goto_1
    add-int/2addr v13, v2

    .line 91
    goto/16 :goto_7

    .line 92
    .line 93
    :pswitch_1
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v14

    .line 97
    if-eqz v14, :cond_6

    .line 98
    .line 99
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    shl-long v14, v7, v10

    .line 108
    .line 109
    shr-long v7, v7, v16

    .line 110
    .line 111
    xor-long/2addr v7, v14

    .line 112
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    :goto_2
    add-int/2addr v7, v2

    .line 117
    add-int/2addr v13, v7

    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :pswitch_2
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    if-eqz v14, :cond_6

    .line 125
    .line 126
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    shl-int/lit8 v8, v7, 0x1

    .line 135
    .line 136
    shr-int/lit8 v7, v7, 0x1f

    .line 137
    .line 138
    xor-int/2addr v7, v8

    .line 139
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    goto :goto_2

    .line 144
    :pswitch_3
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_6

    .line 149
    .line 150
    invoke-static {v2, v4, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 151
    .line 152
    .line 153
    move-result v13

    .line 154
    goto/16 :goto_7

    .line 155
    .line 156
    :pswitch_4
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_6

    .line 161
    .line 162
    invoke-static {v2, v3, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    goto/16 :goto_7

    .line 167
    .line 168
    :pswitch_5
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v14

    .line 172
    if-eqz v14, :cond_6

    .line 173
    .line 174
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    goto :goto_2

    .line 187
    :pswitch_6
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    if-eqz v14, :cond_6

    .line 192
    .line 193
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    goto :goto_2

    .line 206
    :pswitch_7
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    if-eqz v14, :cond_6

    .line 211
    .line 212
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 217
    .line 218
    invoke-static {v2, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :pswitch_8
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v14

    .line 228
    if-eqz v14, :cond_6

    .line 229
    .line 230
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-virtual {v0, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    sget-object v14, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 239
    .line 240
    check-cast v7, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 241
    .line 242
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-virtual {v7, v8}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-static {v7, v7, v2, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 251
    .line 252
    .line 253
    move-result v13

    .line 254
    goto/16 :goto_7

    .line 255
    .line 256
    :pswitch_9
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v14

    .line 260
    if-eqz v14, :cond_6

    .line 261
    .line 262
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    instance-of v8, v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 267
    .line 268
    if-eqz v8, :cond_1

    .line 269
    .line 270
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 271
    .line 272
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 277
    .line 278
    .line 279
    move-result v7

    .line 280
    invoke-static {v7, v7, v2, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    :goto_3
    move v13, v2

    .line 285
    goto/16 :goto_7

    .line 286
    .line 287
    :cond_1
    check-cast v7, Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    :goto_4
    add-int/2addr v7, v2

    .line 298
    add-int/2addr v7, v13

    .line 299
    move v13, v7

    .line 300
    goto/16 :goto_7

    .line 301
    .line 302
    :pswitch_a
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v7

    .line 306
    if-eqz v7, :cond_6

    .line 307
    .line 308
    invoke-static {v2, v10, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 309
    .line 310
    .line 311
    move-result v13

    .line 312
    goto/16 :goto_7

    .line 313
    .line 314
    :pswitch_b
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    if-eqz v7, :cond_6

    .line 319
    .line 320
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeFixed32Size(I)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :pswitch_c
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-eqz v7, :cond_6

    .line 331
    .line 332
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeFixed64Size(I)I

    .line 333
    .line 334
    .line 335
    move-result v2

    .line 336
    goto/16 :goto_1

    .line 337
    .line 338
    :pswitch_d
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v14

    .line 342
    if-eqz v14, :cond_6

    .line 343
    .line 344
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    goto/16 :goto_2

    .line 357
    .line 358
    :pswitch_e
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    if-eqz v14, :cond_6

    .line 363
    .line 364
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 365
    .line 366
    .line 367
    move-result-wide v7

    .line 368
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    goto/16 :goto_2

    .line 377
    .line 378
    :pswitch_f
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v14

    .line 382
    if-eqz v14, :cond_6

    .line 383
    .line 384
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 385
    .line 386
    .line 387
    move-result-wide v7

    .line 388
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 389
    .line 390
    .line 391
    move-result v2

    .line 392
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 393
    .line 394
    .line 395
    move-result v7

    .line 396
    goto/16 :goto_2

    .line 397
    .line 398
    :pswitch_10
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    move-result v7

    .line 402
    if-eqz v7, :cond_6

    .line 403
    .line 404
    invoke-static {v2, v3, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 405
    .line 406
    .line 407
    move-result v13

    .line 408
    goto/16 :goto_7

    .line 409
    .line 410
    :pswitch_11
    invoke-virtual {v0, v2, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v7

    .line 414
    if-eqz v7, :cond_6

    .line 415
    .line 416
    invoke-static {v2, v4, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 417
    .line 418
    .line 419
    move-result v13

    .line 420
    goto/16 :goto_7

    .line 421
    .line 422
    :pswitch_12
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    invoke-virtual {v0, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v8

    .line 430
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    invoke-static {v2, v7, v8}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    goto/16 :goto_1

    .line 438
    .line 439
    :pswitch_13
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v7

    .line 443
    check-cast v7, Ljava/util/List;

    .line 444
    .line 445
    invoke-virtual {v0, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    sget-object v14, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 450
    .line 451
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 452
    .line 453
    .line 454
    move-result v14

    .line 455
    if-nez v14, :cond_3

    .line 456
    .line 457
    const/16 v18, 0x0

    .line 458
    .line 459
    :cond_2
    move/from16 v20, v10

    .line 460
    .line 461
    goto :goto_6

    .line 462
    :cond_3
    const/4 v15, 0x0

    .line 463
    const/16 v18, 0x0

    .line 464
    .line 465
    :goto_5
    if-ge v15, v14, :cond_2

    .line 466
    .line 467
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v19

    .line 471
    move/from16 v20, v10

    .line 472
    .line 473
    move-object/from16 v10, v19

    .line 474
    .line 475
    check-cast v10, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 476
    .line 477
    invoke-static {v2, v10, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/AbstractMessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 478
    .line 479
    .line 480
    move-result v10

    .line 481
    add-int v18, v10, v18

    .line 482
    .line 483
    add-int/lit8 v15, v15, 0x1

    .line 484
    .line 485
    move/from16 v10, v20

    .line 486
    .line 487
    goto :goto_5

    .line 488
    :goto_6
    add-int v13, v18, v13

    .line 489
    .line 490
    goto/16 :goto_7

    .line 491
    .line 492
    :pswitch_14
    move/from16 v20, v10

    .line 493
    .line 494
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v7

    .line 498
    check-cast v7, Ljava/util/List;

    .line 499
    .line 500
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 501
    .line 502
    .line 503
    move-result v7

    .line 504
    if-lez v7, :cond_6

    .line 505
    .line 506
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 507
    .line 508
    .line 509
    move-result v2

    .line 510
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 511
    .line 512
    .line 513
    move-result v13

    .line 514
    goto/16 :goto_7

    .line 515
    .line 516
    :pswitch_15
    move/from16 v20, v10

    .line 517
    .line 518
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    check-cast v7, Ljava/util/List;

    .line 523
    .line 524
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 525
    .line 526
    .line 527
    move-result v7

    .line 528
    if-lez v7, :cond_6

    .line 529
    .line 530
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 535
    .line 536
    .line 537
    move-result v13

    .line 538
    goto/16 :goto_7

    .line 539
    .line 540
    :pswitch_16
    move/from16 v20, v10

    .line 541
    .line 542
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    check-cast v7, Ljava/util/List;

    .line 547
    .line 548
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 549
    .line 550
    .line 551
    move-result v7

    .line 552
    if-lez v7, :cond_6

    .line 553
    .line 554
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 559
    .line 560
    .line 561
    move-result v13

    .line 562
    goto/16 :goto_7

    .line 563
    .line 564
    :pswitch_17
    move/from16 v20, v10

    .line 565
    .line 566
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v7

    .line 570
    check-cast v7, Ljava/util/List;

    .line 571
    .line 572
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 573
    .line 574
    .line 575
    move-result v7

    .line 576
    if-lez v7, :cond_6

    .line 577
    .line 578
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 579
    .line 580
    .line 581
    move-result v2

    .line 582
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 583
    .line 584
    .line 585
    move-result v13

    .line 586
    goto/16 :goto_7

    .line 587
    .line 588
    :pswitch_18
    move/from16 v20, v10

    .line 589
    .line 590
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v7

    .line 594
    check-cast v7, Ljava/util/List;

    .line 595
    .line 596
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 597
    .line 598
    .line 599
    move-result v7

    .line 600
    if-lez v7, :cond_6

    .line 601
    .line 602
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 603
    .line 604
    .line 605
    move-result v2

    .line 606
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 607
    .line 608
    .line 609
    move-result v13

    .line 610
    goto/16 :goto_7

    .line 611
    .line 612
    :pswitch_19
    move/from16 v20, v10

    .line 613
    .line 614
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v7

    .line 618
    check-cast v7, Ljava/util/List;

    .line 619
    .line 620
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    if-lez v7, :cond_6

    .line 625
    .line 626
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 627
    .line 628
    .line 629
    move-result v2

    .line 630
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 631
    .line 632
    .line 633
    move-result v13

    .line 634
    goto/16 :goto_7

    .line 635
    .line 636
    :pswitch_1a
    move/from16 v20, v10

    .line 637
    .line 638
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v7

    .line 642
    check-cast v7, Ljava/util/List;

    .line 643
    .line 644
    sget-object v8, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 645
    .line 646
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 647
    .line 648
    .line 649
    move-result v7

    .line 650
    if-lez v7, :cond_6

    .line 651
    .line 652
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 657
    .line 658
    .line 659
    move-result v13

    .line 660
    goto/16 :goto_7

    .line 661
    .line 662
    :pswitch_1b
    move/from16 v20, v10

    .line 663
    .line 664
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    check-cast v7, Ljava/util/List;

    .line 669
    .line 670
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 671
    .line 672
    .line 673
    move-result v7

    .line 674
    if-lez v7, :cond_6

    .line 675
    .line 676
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 677
    .line 678
    .line 679
    move-result v2

    .line 680
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 681
    .line 682
    .line 683
    move-result v13

    .line 684
    goto/16 :goto_7

    .line 685
    .line 686
    :pswitch_1c
    move/from16 v20, v10

    .line 687
    .line 688
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v7

    .line 692
    check-cast v7, Ljava/util/List;

    .line 693
    .line 694
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 695
    .line 696
    .line 697
    move-result v7

    .line 698
    if-lez v7, :cond_6

    .line 699
    .line 700
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 705
    .line 706
    .line 707
    move-result v13

    .line 708
    goto/16 :goto_7

    .line 709
    .line 710
    :pswitch_1d
    move/from16 v20, v10

    .line 711
    .line 712
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v7

    .line 716
    check-cast v7, Ljava/util/List;

    .line 717
    .line 718
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 719
    .line 720
    .line 721
    move-result v7

    .line 722
    if-lez v7, :cond_6

    .line 723
    .line 724
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 725
    .line 726
    .line 727
    move-result v2

    .line 728
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 729
    .line 730
    .line 731
    move-result v13

    .line 732
    goto/16 :goto_7

    .line 733
    .line 734
    :pswitch_1e
    move/from16 v20, v10

    .line 735
    .line 736
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v7

    .line 740
    check-cast v7, Ljava/util/List;

    .line 741
    .line 742
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 743
    .line 744
    .line 745
    move-result v7

    .line 746
    if-lez v7, :cond_6

    .line 747
    .line 748
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 749
    .line 750
    .line 751
    move-result v2

    .line 752
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 753
    .line 754
    .line 755
    move-result v13

    .line 756
    goto/16 :goto_7

    .line 757
    .line 758
    :pswitch_1f
    move/from16 v20, v10

    .line 759
    .line 760
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v7

    .line 764
    check-cast v7, Ljava/util/List;

    .line 765
    .line 766
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 767
    .line 768
    .line 769
    move-result v7

    .line 770
    if-lez v7, :cond_6

    .line 771
    .line 772
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 773
    .line 774
    .line 775
    move-result v2

    .line 776
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 777
    .line 778
    .line 779
    move-result v13

    .line 780
    goto/16 :goto_7

    .line 781
    .line 782
    :pswitch_20
    move/from16 v20, v10

    .line 783
    .line 784
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v7

    .line 788
    check-cast v7, Ljava/util/List;

    .line 789
    .line 790
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 791
    .line 792
    .line 793
    move-result v7

    .line 794
    if-lez v7, :cond_6

    .line 795
    .line 796
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 797
    .line 798
    .line 799
    move-result v2

    .line 800
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 801
    .line 802
    .line 803
    move-result v13

    .line 804
    goto/16 :goto_7

    .line 805
    .line 806
    :pswitch_21
    move/from16 v20, v10

    .line 807
    .line 808
    invoke-virtual {v9, v1, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v7

    .line 812
    check-cast v7, Ljava/util/List;

    .line 813
    .line 814
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 815
    .line 816
    .line 817
    move-result v7

    .line 818
    if-lez v7, :cond_6

    .line 819
    .line 820
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    invoke-static {v7, v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 825
    .line 826
    .line 827
    move-result v13

    .line 828
    goto/16 :goto_7

    .line 829
    .line 830
    :pswitch_22
    move/from16 v20, v10

    .line 831
    .line 832
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v7

    .line 836
    check-cast v7, Ljava/util/List;

    .line 837
    .line 838
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64List(Ljava/util/List;I)I

    .line 839
    .line 840
    .line 841
    move-result v2

    .line 842
    goto/16 :goto_1

    .line 843
    .line 844
    :pswitch_23
    move/from16 v20, v10

    .line 845
    .line 846
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v7

    .line 850
    check-cast v7, Ljava/util/List;

    .line 851
    .line 852
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32List(Ljava/util/List;I)I

    .line 853
    .line 854
    .line 855
    move-result v2

    .line 856
    goto/16 :goto_1

    .line 857
    .line 858
    :pswitch_24
    move/from16 v20, v10

    .line 859
    .line 860
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v7

    .line 864
    check-cast v7, Ljava/util/List;

    .line 865
    .line 866
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 867
    .line 868
    .line 869
    move-result v2

    .line 870
    goto/16 :goto_1

    .line 871
    .line 872
    :pswitch_25
    move/from16 v20, v10

    .line 873
    .line 874
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    move-result-object v7

    .line 878
    check-cast v7, Ljava/util/List;

    .line 879
    .line 880
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 881
    .line 882
    .line 883
    move-result v2

    .line 884
    goto/16 :goto_1

    .line 885
    .line 886
    :pswitch_26
    move/from16 v20, v10

    .line 887
    .line 888
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v7

    .line 892
    check-cast v7, Ljava/util/List;

    .line 893
    .line 894
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumList(Ljava/util/List;I)I

    .line 895
    .line 896
    .line 897
    move-result v2

    .line 898
    goto/16 :goto_1

    .line 899
    .line 900
    :pswitch_27
    move/from16 v20, v10

    .line 901
    .line 902
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v7

    .line 906
    check-cast v7, Ljava/util/List;

    .line 907
    .line 908
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32List(Ljava/util/List;I)I

    .line 909
    .line 910
    .line 911
    move-result v2

    .line 912
    goto/16 :goto_1

    .line 913
    .line 914
    :pswitch_28
    move/from16 v20, v10

    .line 915
    .line 916
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v7

    .line 920
    check-cast v7, Ljava/util/List;

    .line 921
    .line 922
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeByteStringList(Ljava/util/List;I)I

    .line 923
    .line 924
    .line 925
    move-result v2

    .line 926
    goto/16 :goto_1

    .line 927
    .line 928
    :pswitch_29
    move/from16 v20, v10

    .line 929
    .line 930
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v7

    .line 934
    check-cast v7, Ljava/util/List;

    .line 935
    .line 936
    invoke-virtual {v0, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 937
    .line 938
    .line 939
    move-result-object v8

    .line 940
    invoke-static {v2, v7, v8}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 941
    .line 942
    .line 943
    move-result v2

    .line 944
    goto/16 :goto_1

    .line 945
    .line 946
    :pswitch_2a
    move/from16 v20, v10

    .line 947
    .line 948
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v7

    .line 952
    check-cast v7, Ljava/util/List;

    .line 953
    .line 954
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeStringList(Ljava/util/List;I)I

    .line 955
    .line 956
    .line 957
    move-result v2

    .line 958
    goto/16 :goto_1

    .line 959
    .line 960
    :pswitch_2b
    move/from16 v20, v10

    .line 961
    .line 962
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v7

    .line 966
    check-cast v7, Ljava/util/List;

    .line 967
    .line 968
    sget-object v8, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 969
    .line 970
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 971
    .line 972
    .line 973
    move-result v7

    .line 974
    if-nez v7, :cond_4

    .line 975
    .line 976
    const/4 v2, 0x0

    .line 977
    goto/16 :goto_1

    .line 978
    .line 979
    :cond_4
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 980
    .line 981
    .line 982
    move-result v2

    .line 983
    add-int/lit8 v2, v2, 0x1

    .line 984
    .line 985
    mul-int/2addr v2, v7

    .line 986
    goto/16 :goto_1

    .line 987
    .line 988
    :pswitch_2c
    move/from16 v20, v10

    .line 989
    .line 990
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v7

    .line 994
    check-cast v7, Ljava/util/List;

    .line 995
    .line 996
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 997
    .line 998
    .line 999
    move-result v2

    .line 1000
    goto/16 :goto_1

    .line 1001
    .line 1002
    :pswitch_2d
    move/from16 v20, v10

    .line 1003
    .line 1004
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v7

    .line 1008
    check-cast v7, Ljava/util/List;

    .line 1009
    .line 1010
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 1011
    .line 1012
    .line 1013
    move-result v2

    .line 1014
    goto/16 :goto_1

    .line 1015
    .line 1016
    :pswitch_2e
    move/from16 v20, v10

    .line 1017
    .line 1018
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v7

    .line 1022
    check-cast v7, Ljava/util/List;

    .line 1023
    .line 1024
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32List(Ljava/util/List;I)I

    .line 1025
    .line 1026
    .line 1027
    move-result v2

    .line 1028
    goto/16 :goto_1

    .line 1029
    .line 1030
    :pswitch_2f
    move/from16 v20, v10

    .line 1031
    .line 1032
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v7

    .line 1036
    check-cast v7, Ljava/util/List;

    .line 1037
    .line 1038
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64List(Ljava/util/List;I)I

    .line 1039
    .line 1040
    .line 1041
    move-result v2

    .line 1042
    goto/16 :goto_1

    .line 1043
    .line 1044
    :pswitch_30
    move/from16 v20, v10

    .line 1045
    .line 1046
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v7

    .line 1050
    check-cast v7, Ljava/util/List;

    .line 1051
    .line 1052
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64List(Ljava/util/List;I)I

    .line 1053
    .line 1054
    .line 1055
    move-result v2

    .line 1056
    goto/16 :goto_1

    .line 1057
    .line 1058
    :pswitch_31
    move/from16 v20, v10

    .line 1059
    .line 1060
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v7

    .line 1064
    check-cast v7, Ljava/util/List;

    .line 1065
    .line 1066
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 1067
    .line 1068
    .line 1069
    move-result v2

    .line 1070
    goto/16 :goto_1

    .line 1071
    .line 1072
    :pswitch_32
    move/from16 v20, v10

    .line 1073
    .line 1074
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v7

    .line 1078
    check-cast v7, Ljava/util/List;

    .line 1079
    .line 1080
    invoke-static {v7, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 1081
    .line 1082
    .line 1083
    move-result v2

    .line 1084
    goto/16 :goto_1

    .line 1085
    .line 1086
    :pswitch_33
    move/from16 v20, v10

    .line 1087
    .line 1088
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v10

    .line 1092
    if-eqz v10, :cond_6

    .line 1093
    .line 1094
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v7

    .line 1098
    check-cast v7, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 1099
    .line 1100
    invoke-virtual {v0, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v8

    .line 1104
    invoke-static {v2, v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/AbstractMessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1105
    .line 1106
    .line 1107
    move-result v2

    .line 1108
    goto/16 :goto_1

    .line 1109
    .line 1110
    :pswitch_34
    move/from16 v20, v10

    .line 1111
    .line 1112
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1113
    .line 1114
    .line 1115
    move-result v10

    .line 1116
    if-eqz v10, :cond_6

    .line 1117
    .line 1118
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1119
    .line 1120
    .line 1121
    move-result-wide v7

    .line 1122
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1123
    .line 1124
    .line 1125
    move-result v2

    .line 1126
    shl-long v14, v7, v20

    .line 1127
    .line 1128
    shr-long v7, v7, v16

    .line 1129
    .line 1130
    xor-long/2addr v7, v14

    .line 1131
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1132
    .line 1133
    .line 1134
    move-result v7

    .line 1135
    goto/16 :goto_2

    .line 1136
    .line 1137
    :pswitch_35
    move/from16 v20, v10

    .line 1138
    .line 1139
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v10

    .line 1143
    if-eqz v10, :cond_6

    .line 1144
    .line 1145
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1146
    .line 1147
    .line 1148
    move-result v7

    .line 1149
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1150
    .line 1151
    .line 1152
    move-result v2

    .line 1153
    shl-int/lit8 v8, v7, 0x1

    .line 1154
    .line 1155
    shr-int/lit8 v7, v7, 0x1f

    .line 1156
    .line 1157
    xor-int/2addr v7, v8

    .line 1158
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1159
    .line 1160
    .line 1161
    move-result v7

    .line 1162
    goto/16 :goto_2

    .line 1163
    .line 1164
    :pswitch_36
    move/from16 v20, v10

    .line 1165
    .line 1166
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1167
    .line 1168
    .line 1169
    move-result v7

    .line 1170
    if-eqz v7, :cond_6

    .line 1171
    .line 1172
    invoke-static {v2, v4, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1173
    .line 1174
    .line 1175
    move-result v13

    .line 1176
    goto/16 :goto_7

    .line 1177
    .line 1178
    :pswitch_37
    move/from16 v20, v10

    .line 1179
    .line 1180
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v7

    .line 1184
    if-eqz v7, :cond_6

    .line 1185
    .line 1186
    invoke-static {v2, v3, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1187
    .line 1188
    .line 1189
    move-result v13

    .line 1190
    goto/16 :goto_7

    .line 1191
    .line 1192
    :pswitch_38
    move/from16 v20, v10

    .line 1193
    .line 1194
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v10

    .line 1198
    if-eqz v10, :cond_6

    .line 1199
    .line 1200
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1201
    .line 1202
    .line 1203
    move-result v7

    .line 1204
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1205
    .line 1206
    .line 1207
    move-result v2

    .line 1208
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 1209
    .line 1210
    .line 1211
    move-result v7

    .line 1212
    goto/16 :goto_2

    .line 1213
    .line 1214
    :pswitch_39
    move/from16 v20, v10

    .line 1215
    .line 1216
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1217
    .line 1218
    .line 1219
    move-result v10

    .line 1220
    if-eqz v10, :cond_6

    .line 1221
    .line 1222
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1223
    .line 1224
    .line 1225
    move-result v7

    .line 1226
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1227
    .line 1228
    .line 1229
    move-result v2

    .line 1230
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1231
    .line 1232
    .line 1233
    move-result v7

    .line 1234
    goto/16 :goto_2

    .line 1235
    .line 1236
    :pswitch_3a
    move/from16 v20, v10

    .line 1237
    .line 1238
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v10

    .line 1242
    if-eqz v10, :cond_6

    .line 1243
    .line 1244
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v7

    .line 1248
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1249
    .line 1250
    invoke-static {v2, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)I

    .line 1251
    .line 1252
    .line 1253
    move-result v2

    .line 1254
    goto/16 :goto_1

    .line 1255
    .line 1256
    :pswitch_3b
    move/from16 v20, v10

    .line 1257
    .line 1258
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v10

    .line 1262
    if-eqz v10, :cond_6

    .line 1263
    .line 1264
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v7

    .line 1268
    invoke-virtual {v0, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v8

    .line 1272
    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1273
    .line 1274
    check-cast v7, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 1275
    .line 1276
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1277
    .line 1278
    .line 1279
    move-result v2

    .line 1280
    invoke-virtual {v7, v8}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1281
    .line 1282
    .line 1283
    move-result v7

    .line 1284
    invoke-static {v7, v7, v2, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 1285
    .line 1286
    .line 1287
    move-result v13

    .line 1288
    goto/16 :goto_7

    .line 1289
    .line 1290
    :pswitch_3c
    move/from16 v20, v10

    .line 1291
    .line 1292
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1293
    .line 1294
    .line 1295
    move-result v10

    .line 1296
    if-eqz v10, :cond_6

    .line 1297
    .line 1298
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v7

    .line 1302
    instance-of v8, v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1303
    .line 1304
    if-eqz v8, :cond_5

    .line 1305
    .line 1306
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1307
    .line 1308
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1309
    .line 1310
    .line 1311
    move-result v2

    .line 1312
    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 1313
    .line 1314
    .line 1315
    move-result v7

    .line 1316
    invoke-static {v7, v7, v2, v13}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 1317
    .line 1318
    .line 1319
    move-result v2

    .line 1320
    goto/16 :goto_3

    .line 1321
    .line 1322
    :cond_5
    check-cast v7, Ljava/lang/String;

    .line 1323
    .line 1324
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1325
    .line 1326
    .line 1327
    move-result v2

    .line 1328
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 1329
    .line 1330
    .line 1331
    move-result v7

    .line 1332
    goto/16 :goto_4

    .line 1333
    .line 1334
    :pswitch_3d
    move/from16 v20, v10

    .line 1335
    .line 1336
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1337
    .line 1338
    .line 1339
    move-result v7

    .line 1340
    if-eqz v7, :cond_6

    .line 1341
    .line 1342
    move/from16 v7, v20

    .line 1343
    .line 1344
    invoke-static {v2, v7, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1345
    .line 1346
    .line 1347
    move-result v13

    .line 1348
    goto :goto_7

    .line 1349
    :pswitch_3e
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1350
    .line 1351
    .line 1352
    move-result v7

    .line 1353
    if-eqz v7, :cond_6

    .line 1354
    .line 1355
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeFixed32Size(I)I

    .line 1356
    .line 1357
    .line 1358
    move-result v2

    .line 1359
    goto/16 :goto_1

    .line 1360
    .line 1361
    :pswitch_3f
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1362
    .line 1363
    .line 1364
    move-result v7

    .line 1365
    if-eqz v7, :cond_6

    .line 1366
    .line 1367
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeFixed64Size(I)I

    .line 1368
    .line 1369
    .line 1370
    move-result v2

    .line 1371
    goto/16 :goto_1

    .line 1372
    .line 1373
    :pswitch_40
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v10

    .line 1377
    if-eqz v10, :cond_6

    .line 1378
    .line 1379
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1380
    .line 1381
    .line 1382
    move-result v7

    .line 1383
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1384
    .line 1385
    .line 1386
    move-result v2

    .line 1387
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 1388
    .line 1389
    .line 1390
    move-result v7

    .line 1391
    goto/16 :goto_2

    .line 1392
    .line 1393
    :pswitch_41
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1394
    .line 1395
    .line 1396
    move-result v10

    .line 1397
    if-eqz v10, :cond_6

    .line 1398
    .line 1399
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1400
    .line 1401
    .line 1402
    move-result-wide v7

    .line 1403
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1404
    .line 1405
    .line 1406
    move-result v2

    .line 1407
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1408
    .line 1409
    .line 1410
    move-result v7

    .line 1411
    goto/16 :goto_2

    .line 1412
    .line 1413
    :pswitch_42
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1414
    .line 1415
    .line 1416
    move-result v10

    .line 1417
    if-eqz v10, :cond_6

    .line 1418
    .line 1419
    invoke-static {v7, v8, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1420
    .line 1421
    .line 1422
    move-result-wide v7

    .line 1423
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1424
    .line 1425
    .line 1426
    move-result v2

    .line 1427
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1428
    .line 1429
    .line 1430
    move-result v7

    .line 1431
    goto/16 :goto_2

    .line 1432
    .line 1433
    :pswitch_43
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1434
    .line 1435
    .line 1436
    move-result v7

    .line 1437
    if-eqz v7, :cond_6

    .line 1438
    .line 1439
    invoke-static {v2, v3, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1440
    .line 1441
    .line 1442
    move-result v13

    .line 1443
    goto :goto_7

    .line 1444
    :pswitch_44
    invoke-virtual {v0, v11, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1445
    .line 1446
    .line 1447
    move-result v7

    .line 1448
    if-eqz v7, :cond_6

    .line 1449
    .line 1450
    invoke-static {v2, v4, v13}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1451
    .line 1452
    .line 1453
    move-result v13

    .line 1454
    :cond_6
    :goto_7
    add-int/lit8 v11, v11, 0x3

    .line 1455
    .line 1456
    move/from16 v7, v17

    .line 1457
    .line 1458
    const/4 v10, 0x1

    .line 1459
    goto/16 :goto_0

    .line 1460
    .line 1461
    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1462
    .line 1463
    .line 1464
    move-object v0, v1

    .line 1465
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 1466
    .line 1467
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1468
    .line 1469
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    .line 1470
    .line 1471
    .line 1472
    move-result v0

    .line 1473
    add-int/2addr v0, v13

    .line 1474
    return v0

    .line 1475
    :cond_8
    move/from16 v17, v7

    .line 1476
    .line 1477
    const/16 v16, 0x3f

    .line 1478
    .line 1479
    const/4 v2, -0x1

    .line 1480
    const/4 v7, 0x0

    .line 1481
    const/4 v8, 0x0

    .line 1482
    const/4 v10, 0x0

    .line 1483
    :goto_8
    array-length v11, v12

    .line 1484
    if-ge v7, v11, :cond_13

    .line 1485
    .line 1486
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 1487
    .line 1488
    .line 1489
    move-result v11

    .line 1490
    aget v13, v12, v7

    .line 1491
    .line 1492
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 1493
    .line 1494
    .line 1495
    move-result v14

    .line 1496
    const/16 v15, 0x11

    .line 1497
    .line 1498
    if-gt v14, v15, :cond_9

    .line 1499
    .line 1500
    add-int/lit8 v15, v7, 0x2

    .line 1501
    .line 1502
    aget v15, v12, v15

    .line 1503
    .line 1504
    and-int v3, v15, v17

    .line 1505
    .line 1506
    ushr-int/lit8 v15, v15, 0x14

    .line 1507
    .line 1508
    const/16 v20, 0x1

    .line 1509
    .line 1510
    shl-int v15, v20, v15

    .line 1511
    .line 1512
    move-object/from16 v21, v5

    .line 1513
    .line 1514
    if-eq v3, v2, :cond_a

    .line 1515
    .line 1516
    int-to-long v4, v3

    .line 1517
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1518
    .line 1519
    .line 1520
    move-result v10

    .line 1521
    move v2, v3

    .line 1522
    goto :goto_9

    .line 1523
    :cond_9
    move-object/from16 v21, v5

    .line 1524
    .line 1525
    const/4 v15, 0x0

    .line 1526
    :cond_a
    :goto_9
    and-int v3, v11, v17

    .line 1527
    .line 1528
    int-to-long v3, v3

    .line 1529
    packed-switch v14, :pswitch_data_1

    .line 1530
    .line 1531
    .line 1532
    goto :goto_b

    .line 1533
    :pswitch_45
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1534
    .line 1535
    .line 1536
    move-result v5

    .line 1537
    if-eqz v5, :cond_b

    .line 1538
    .line 1539
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v3

    .line 1543
    check-cast v3, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 1544
    .line 1545
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v4

    .line 1549
    invoke-static {v13, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/AbstractMessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1550
    .line 1551
    .line 1552
    move-result v3

    .line 1553
    :goto_a
    add-int/2addr v8, v3

    .line 1554
    :cond_b
    :goto_b
    const/4 v3, 0x4

    .line 1555
    :goto_c
    const/16 v4, 0x8

    .line 1556
    .line 1557
    :goto_d
    const/4 v5, 0x1

    .line 1558
    goto/16 :goto_19

    .line 1559
    .line 1560
    :pswitch_46
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1561
    .line 1562
    .line 1563
    move-result v5

    .line 1564
    if-eqz v5, :cond_b

    .line 1565
    .line 1566
    invoke-static {v3, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1567
    .line 1568
    .line 1569
    move-result-wide v3

    .line 1570
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1571
    .line 1572
    .line 1573
    move-result v5

    .line 1574
    const/16 v20, 0x1

    .line 1575
    .line 1576
    shl-long v13, v3, v20

    .line 1577
    .line 1578
    shr-long v3, v3, v16

    .line 1579
    .line 1580
    xor-long/2addr v3, v13

    .line 1581
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1582
    .line 1583
    .line 1584
    move-result v3

    .line 1585
    :goto_e
    add-int/2addr v3, v5

    .line 1586
    goto :goto_a

    .line 1587
    :pswitch_47
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1588
    .line 1589
    .line 1590
    move-result v5

    .line 1591
    if-eqz v5, :cond_b

    .line 1592
    .line 1593
    invoke-static {v3, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1594
    .line 1595
    .line 1596
    move-result v3

    .line 1597
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1598
    .line 1599
    .line 1600
    move-result v4

    .line 1601
    shl-int/lit8 v5, v3, 0x1

    .line 1602
    .line 1603
    shr-int/lit8 v3, v3, 0x1f

    .line 1604
    .line 1605
    xor-int/2addr v3, v5

    .line 1606
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1607
    .line 1608
    .line 1609
    move-result v3

    .line 1610
    :goto_f
    add-int/2addr v3, v4

    .line 1611
    goto :goto_a

    .line 1612
    :pswitch_48
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1613
    .line 1614
    .line 1615
    move-result v3

    .line 1616
    if-eqz v3, :cond_b

    .line 1617
    .line 1618
    const/16 v3, 0x8

    .line 1619
    .line 1620
    invoke-static {v13, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1621
    .line 1622
    .line 1623
    move-result v8

    .line 1624
    :goto_10
    move v4, v3

    .line 1625
    const/4 v3, 0x4

    .line 1626
    goto :goto_d

    .line 1627
    :pswitch_49
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1628
    .line 1629
    .line 1630
    move-result v3

    .line 1631
    if-eqz v3, :cond_b

    .line 1632
    .line 1633
    const/4 v3, 0x4

    .line 1634
    invoke-static {v13, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1635
    .line 1636
    .line 1637
    move-result v8

    .line 1638
    goto :goto_c

    .line 1639
    :pswitch_4a
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1640
    .line 1641
    .line 1642
    move-result v5

    .line 1643
    if-eqz v5, :cond_b

    .line 1644
    .line 1645
    invoke-static {v3, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1646
    .line 1647
    .line 1648
    move-result v3

    .line 1649
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1650
    .line 1651
    .line 1652
    move-result v4

    .line 1653
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 1654
    .line 1655
    .line 1656
    move-result v3

    .line 1657
    goto :goto_f

    .line 1658
    :pswitch_4b
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1659
    .line 1660
    .line 1661
    move-result v5

    .line 1662
    if-eqz v5, :cond_b

    .line 1663
    .line 1664
    invoke-static {v3, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1665
    .line 1666
    .line 1667
    move-result v3

    .line 1668
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1669
    .line 1670
    .line 1671
    move-result v4

    .line 1672
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 1673
    .line 1674
    .line 1675
    move-result v3

    .line 1676
    goto :goto_f

    .line 1677
    :pswitch_4c
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1678
    .line 1679
    .line 1680
    move-result v5

    .line 1681
    if-eqz v5, :cond_b

    .line 1682
    .line 1683
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v3

    .line 1687
    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1688
    .line 1689
    invoke-static {v13, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)I

    .line 1690
    .line 1691
    .line 1692
    move-result v3

    .line 1693
    goto/16 :goto_a

    .line 1694
    .line 1695
    :pswitch_4d
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1696
    .line 1697
    .line 1698
    move-result v5

    .line 1699
    if-eqz v5, :cond_b

    .line 1700
    .line 1701
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1702
    .line 1703
    .line 1704
    move-result-object v3

    .line 1705
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v4

    .line 1709
    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1710
    .line 1711
    check-cast v3, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 1712
    .line 1713
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1714
    .line 1715
    .line 1716
    move-result v5

    .line 1717
    invoke-virtual {v3, v4}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1718
    .line 1719
    .line 1720
    move-result v3

    .line 1721
    invoke-static {v3, v3, v5, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 1722
    .line 1723
    .line 1724
    move-result v8

    .line 1725
    goto/16 :goto_b

    .line 1726
    .line 1727
    :pswitch_4e
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1728
    .line 1729
    .line 1730
    move-result v5

    .line 1731
    if-eqz v5, :cond_b

    .line 1732
    .line 1733
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v3

    .line 1737
    instance-of v4, v3, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1738
    .line 1739
    if-eqz v4, :cond_c

    .line 1740
    .line 1741
    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1742
    .line 1743
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1744
    .line 1745
    .line 1746
    move-result v4

    .line 1747
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 1748
    .line 1749
    .line 1750
    move-result v3

    .line 1751
    invoke-static {v3, v3, v4, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 1752
    .line 1753
    .line 1754
    move-result v3

    .line 1755
    :goto_11
    move v8, v3

    .line 1756
    goto/16 :goto_b

    .line 1757
    .line 1758
    :cond_c
    check-cast v3, Ljava/lang/String;

    .line 1759
    .line 1760
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1761
    .line 1762
    .line 1763
    move-result v4

    .line 1764
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 1765
    .line 1766
    .line 1767
    move-result v3

    .line 1768
    add-int/2addr v3, v4

    .line 1769
    add-int/2addr v3, v8

    .line 1770
    goto :goto_11

    .line 1771
    :pswitch_4f
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1772
    .line 1773
    .line 1774
    move-result v3

    .line 1775
    if-eqz v3, :cond_b

    .line 1776
    .line 1777
    const/4 v3, 0x1

    .line 1778
    invoke-static {v13, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1779
    .line 1780
    .line 1781
    move-result v8

    .line 1782
    move v5, v3

    .line 1783
    :cond_d
    :goto_12
    const/4 v3, 0x4

    .line 1784
    :cond_e
    :goto_13
    const/16 v4, 0x8

    .line 1785
    .line 1786
    goto/16 :goto_19

    .line 1787
    .line 1788
    :pswitch_50
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1789
    .line 1790
    .line 1791
    move-result v3

    .line 1792
    if-eqz v3, :cond_b

    .line 1793
    .line 1794
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeFixed32Size(I)I

    .line 1795
    .line 1796
    .line 1797
    move-result v3

    .line 1798
    goto/16 :goto_a

    .line 1799
    .line 1800
    :pswitch_51
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1801
    .line 1802
    .line 1803
    move-result v3

    .line 1804
    if-eqz v3, :cond_b

    .line 1805
    .line 1806
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeFixed64Size(I)I

    .line 1807
    .line 1808
    .line 1809
    move-result v3

    .line 1810
    goto/16 :goto_a

    .line 1811
    .line 1812
    :pswitch_52
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1813
    .line 1814
    .line 1815
    move-result v5

    .line 1816
    if-eqz v5, :cond_b

    .line 1817
    .line 1818
    invoke-static {v3, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1819
    .line 1820
    .line 1821
    move-result v3

    .line 1822
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1823
    .line 1824
    .line 1825
    move-result v4

    .line 1826
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 1827
    .line 1828
    .line 1829
    move-result v3

    .line 1830
    goto/16 :goto_f

    .line 1831
    .line 1832
    :pswitch_53
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1833
    .line 1834
    .line 1835
    move-result v5

    .line 1836
    if-eqz v5, :cond_b

    .line 1837
    .line 1838
    invoke-static {v3, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1839
    .line 1840
    .line 1841
    move-result-wide v3

    .line 1842
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1843
    .line 1844
    .line 1845
    move-result v5

    .line 1846
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1847
    .line 1848
    .line 1849
    move-result v3

    .line 1850
    goto/16 :goto_e

    .line 1851
    .line 1852
    :pswitch_54
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1853
    .line 1854
    .line 1855
    move-result v5

    .line 1856
    if-eqz v5, :cond_b

    .line 1857
    .line 1858
    invoke-static {v3, v4, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1859
    .line 1860
    .line 1861
    move-result-wide v3

    .line 1862
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1863
    .line 1864
    .line 1865
    move-result v5

    .line 1866
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 1867
    .line 1868
    .line 1869
    move-result v3

    .line 1870
    goto/16 :goto_e

    .line 1871
    .line 1872
    :pswitch_55
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1873
    .line 1874
    .line 1875
    move-result v3

    .line 1876
    if-eqz v3, :cond_b

    .line 1877
    .line 1878
    const/4 v3, 0x4

    .line 1879
    invoke-static {v13, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1880
    .line 1881
    .line 1882
    move-result v8

    .line 1883
    goto/16 :goto_c

    .line 1884
    .line 1885
    :pswitch_56
    invoke-virtual {v0, v13, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1886
    .line 1887
    .line 1888
    move-result v3

    .line 1889
    if-eqz v3, :cond_b

    .line 1890
    .line 1891
    const/16 v3, 0x8

    .line 1892
    .line 1893
    invoke-static {v13, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 1894
    .line 1895
    .line 1896
    move-result v8

    .line 1897
    goto/16 :goto_10

    .line 1898
    .line 1899
    :pswitch_57
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1900
    .line 1901
    .line 1902
    move-result-object v3

    .line 1903
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v4

    .line 1907
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1908
    .line 1909
    .line 1910
    invoke-static {v13, v3, v4}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->getSerializedSize(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 1911
    .line 1912
    .line 1913
    move-result v3

    .line 1914
    goto/16 :goto_a

    .line 1915
    .line 1916
    :pswitch_58
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1917
    .line 1918
    .line 1919
    move-result-object v3

    .line 1920
    check-cast v3, Ljava/util/List;

    .line 1921
    .line 1922
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1923
    .line 1924
    .line 1925
    move-result-object v4

    .line 1926
    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1927
    .line 1928
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1929
    .line 1930
    .line 1931
    move-result v5

    .line 1932
    if-nez v5, :cond_f

    .line 1933
    .line 1934
    const/4 v14, 0x0

    .line 1935
    goto :goto_15

    .line 1936
    :cond_f
    const/4 v11, 0x0

    .line 1937
    const/4 v14, 0x0

    .line 1938
    :goto_14
    if-ge v11, v5, :cond_10

    .line 1939
    .line 1940
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v15

    .line 1944
    check-cast v15, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 1945
    .line 1946
    invoke-static {v13, v15, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/AbstractMessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 1947
    .line 1948
    .line 1949
    move-result v15

    .line 1950
    add-int/2addr v14, v15

    .line 1951
    add-int/lit8 v11, v11, 0x1

    .line 1952
    .line 1953
    goto :goto_14

    .line 1954
    :cond_10
    :goto_15
    add-int/2addr v8, v14

    .line 1955
    goto/16 :goto_b

    .line 1956
    .line 1957
    :pswitch_59
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v3

    .line 1961
    check-cast v3, Ljava/util/List;

    .line 1962
    .line 1963
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    .line 1964
    .line 1965
    .line 1966
    move-result v3

    .line 1967
    if-lez v3, :cond_b

    .line 1968
    .line 1969
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1970
    .line 1971
    .line 1972
    move-result v4

    .line 1973
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 1974
    .line 1975
    .line 1976
    move-result v8

    .line 1977
    goto/16 :goto_b

    .line 1978
    .line 1979
    :pswitch_5a
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1980
    .line 1981
    .line 1982
    move-result-object v3

    .line 1983
    check-cast v3, Ljava/util/List;

    .line 1984
    .line 1985
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    .line 1986
    .line 1987
    .line 1988
    move-result v3

    .line 1989
    if-lez v3, :cond_b

    .line 1990
    .line 1991
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 1992
    .line 1993
    .line 1994
    move-result v4

    .line 1995
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 1996
    .line 1997
    .line 1998
    move-result v8

    .line 1999
    goto/16 :goto_b

    .line 2000
    .line 2001
    :pswitch_5b
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v3

    .line 2005
    check-cast v3, Ljava/util/List;

    .line 2006
    .line 2007
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 2008
    .line 2009
    .line 2010
    move-result v3

    .line 2011
    if-lez v3, :cond_b

    .line 2012
    .line 2013
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2014
    .line 2015
    .line 2016
    move-result v4

    .line 2017
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2018
    .line 2019
    .line 2020
    move-result v8

    .line 2021
    goto/16 :goto_b

    .line 2022
    .line 2023
    :pswitch_5c
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2024
    .line 2025
    .line 2026
    move-result-object v3

    .line 2027
    check-cast v3, Ljava/util/List;

    .line 2028
    .line 2029
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 2030
    .line 2031
    .line 2032
    move-result v3

    .line 2033
    if-lez v3, :cond_b

    .line 2034
    .line 2035
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2036
    .line 2037
    .line 2038
    move-result v4

    .line 2039
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2040
    .line 2041
    .line 2042
    move-result v8

    .line 2043
    goto/16 :goto_b

    .line 2044
    .line 2045
    :pswitch_5d
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2046
    .line 2047
    .line 2048
    move-result-object v3

    .line 2049
    check-cast v3, Ljava/util/List;

    .line 2050
    .line 2051
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    .line 2052
    .line 2053
    .line 2054
    move-result v3

    .line 2055
    if-lez v3, :cond_b

    .line 2056
    .line 2057
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2058
    .line 2059
    .line 2060
    move-result v4

    .line 2061
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2062
    .line 2063
    .line 2064
    move-result v8

    .line 2065
    goto/16 :goto_b

    .line 2066
    .line 2067
    :pswitch_5e
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2068
    .line 2069
    .line 2070
    move-result-object v3

    .line 2071
    check-cast v3, Ljava/util/List;

    .line 2072
    .line 2073
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    .line 2074
    .line 2075
    .line 2076
    move-result v3

    .line 2077
    if-lez v3, :cond_b

    .line 2078
    .line 2079
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2080
    .line 2081
    .line 2082
    move-result v4

    .line 2083
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2084
    .line 2085
    .line 2086
    move-result v8

    .line 2087
    goto/16 :goto_b

    .line 2088
    .line 2089
    :pswitch_5f
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v3

    .line 2093
    check-cast v3, Ljava/util/List;

    .line 2094
    .line 2095
    sget-object v4, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 2096
    .line 2097
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2098
    .line 2099
    .line 2100
    move-result v3

    .line 2101
    if-lez v3, :cond_b

    .line 2102
    .line 2103
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2104
    .line 2105
    .line 2106
    move-result v4

    .line 2107
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2108
    .line 2109
    .line 2110
    move-result v8

    .line 2111
    goto/16 :goto_b

    .line 2112
    .line 2113
    :pswitch_60
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2114
    .line 2115
    .line 2116
    move-result-object v3

    .line 2117
    check-cast v3, Ljava/util/List;

    .line 2118
    .line 2119
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 2120
    .line 2121
    .line 2122
    move-result v3

    .line 2123
    if-lez v3, :cond_b

    .line 2124
    .line 2125
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2126
    .line 2127
    .line 2128
    move-result v4

    .line 2129
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2130
    .line 2131
    .line 2132
    move-result v8

    .line 2133
    goto/16 :goto_b

    .line 2134
    .line 2135
    :pswitch_61
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v3

    .line 2139
    check-cast v3, Ljava/util/List;

    .line 2140
    .line 2141
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 2142
    .line 2143
    .line 2144
    move-result v3

    .line 2145
    if-lez v3, :cond_b

    .line 2146
    .line 2147
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2148
    .line 2149
    .line 2150
    move-result v4

    .line 2151
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2152
    .line 2153
    .line 2154
    move-result v8

    .line 2155
    goto/16 :goto_b

    .line 2156
    .line 2157
    :pswitch_62
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2158
    .line 2159
    .line 2160
    move-result-object v3

    .line 2161
    check-cast v3, Ljava/util/List;

    .line 2162
    .line 2163
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    .line 2164
    .line 2165
    .line 2166
    move-result v3

    .line 2167
    if-lez v3, :cond_b

    .line 2168
    .line 2169
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2170
    .line 2171
    .line 2172
    move-result v4

    .line 2173
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2174
    .line 2175
    .line 2176
    move-result v8

    .line 2177
    goto/16 :goto_b

    .line 2178
    .line 2179
    :pswitch_63
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2180
    .line 2181
    .line 2182
    move-result-object v3

    .line 2183
    check-cast v3, Ljava/util/List;

    .line 2184
    .line 2185
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    .line 2186
    .line 2187
    .line 2188
    move-result v3

    .line 2189
    if-lez v3, :cond_b

    .line 2190
    .line 2191
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2192
    .line 2193
    .line 2194
    move-result v4

    .line 2195
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2196
    .line 2197
    .line 2198
    move-result v8

    .line 2199
    goto/16 :goto_b

    .line 2200
    .line 2201
    :pswitch_64
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2202
    .line 2203
    .line 2204
    move-result-object v3

    .line 2205
    check-cast v3, Ljava/util/List;

    .line 2206
    .line 2207
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    .line 2208
    .line 2209
    .line 2210
    move-result v3

    .line 2211
    if-lez v3, :cond_b

    .line 2212
    .line 2213
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2214
    .line 2215
    .line 2216
    move-result v4

    .line 2217
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2218
    .line 2219
    .line 2220
    move-result v8

    .line 2221
    goto/16 :goto_b

    .line 2222
    .line 2223
    :pswitch_65
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2224
    .line 2225
    .line 2226
    move-result-object v3

    .line 2227
    check-cast v3, Ljava/util/List;

    .line 2228
    .line 2229
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32ListNoTag(Ljava/util/List;)I

    .line 2230
    .line 2231
    .line 2232
    move-result v3

    .line 2233
    if-lez v3, :cond_b

    .line 2234
    .line 2235
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2236
    .line 2237
    .line 2238
    move-result v4

    .line 2239
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2240
    .line 2241
    .line 2242
    move-result v8

    .line 2243
    goto/16 :goto_b

    .line 2244
    .line 2245
    :pswitch_66
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v3

    .line 2249
    check-cast v3, Ljava/util/List;

    .line 2250
    .line 2251
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64ListNoTag(Ljava/util/List;)I

    .line 2252
    .line 2253
    .line 2254
    move-result v3

    .line 2255
    if-lez v3, :cond_b

    .line 2256
    .line 2257
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2258
    .line 2259
    .line 2260
    move-result v4

    .line 2261
    invoke-static {v3, v4, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2262
    .line 2263
    .line 2264
    move-result v8

    .line 2265
    goto/16 :goto_b

    .line 2266
    .line 2267
    :pswitch_67
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2268
    .line 2269
    .line 2270
    move-result-object v3

    .line 2271
    check-cast v3, Ljava/util/List;

    .line 2272
    .line 2273
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64List(Ljava/util/List;I)I

    .line 2274
    .line 2275
    .line 2276
    move-result v3

    .line 2277
    goto/16 :goto_a

    .line 2278
    .line 2279
    :pswitch_68
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v3

    .line 2283
    check-cast v3, Ljava/util/List;

    .line 2284
    .line 2285
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32List(Ljava/util/List;I)I

    .line 2286
    .line 2287
    .line 2288
    move-result v3

    .line 2289
    goto/16 :goto_a

    .line 2290
    .line 2291
    :pswitch_69
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2292
    .line 2293
    .line 2294
    move-result-object v3

    .line 2295
    check-cast v3, Ljava/util/List;

    .line 2296
    .line 2297
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 2298
    .line 2299
    .line 2300
    move-result v3

    .line 2301
    goto/16 :goto_a

    .line 2302
    .line 2303
    :pswitch_6a
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2304
    .line 2305
    .line 2306
    move-result-object v3

    .line 2307
    check-cast v3, Ljava/util/List;

    .line 2308
    .line 2309
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 2310
    .line 2311
    .line 2312
    move-result v3

    .line 2313
    goto/16 :goto_a

    .line 2314
    .line 2315
    :pswitch_6b
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v3

    .line 2319
    check-cast v3, Ljava/util/List;

    .line 2320
    .line 2321
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumList(Ljava/util/List;I)I

    .line 2322
    .line 2323
    .line 2324
    move-result v3

    .line 2325
    goto/16 :goto_a

    .line 2326
    .line 2327
    :pswitch_6c
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2328
    .line 2329
    .line 2330
    move-result-object v3

    .line 2331
    check-cast v3, Ljava/util/List;

    .line 2332
    .line 2333
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32List(Ljava/util/List;I)I

    .line 2334
    .line 2335
    .line 2336
    move-result v3

    .line 2337
    goto/16 :goto_a

    .line 2338
    .line 2339
    :pswitch_6d
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v3

    .line 2343
    check-cast v3, Ljava/util/List;

    .line 2344
    .line 2345
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeByteStringList(Ljava/util/List;I)I

    .line 2346
    .line 2347
    .line 2348
    move-result v3

    .line 2349
    goto/16 :goto_a

    .line 2350
    .line 2351
    :pswitch_6e
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2352
    .line 2353
    .line 2354
    move-result-object v3

    .line 2355
    check-cast v3, Ljava/util/List;

    .line 2356
    .line 2357
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 2358
    .line 2359
    .line 2360
    move-result-object v4

    .line 2361
    invoke-static {v13, v3, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 2362
    .line 2363
    .line 2364
    move-result v3

    .line 2365
    goto/16 :goto_a

    .line 2366
    .line 2367
    :pswitch_6f
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v3

    .line 2371
    check-cast v3, Ljava/util/List;

    .line 2372
    .line 2373
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeStringList(Ljava/util/List;I)I

    .line 2374
    .line 2375
    .line 2376
    move-result v3

    .line 2377
    goto/16 :goto_a

    .line 2378
    .line 2379
    :pswitch_70
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v3

    .line 2383
    check-cast v3, Ljava/util/List;

    .line 2384
    .line 2385
    sget-object v4, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 2386
    .line 2387
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 2388
    .line 2389
    .line 2390
    move-result v3

    .line 2391
    if-nez v3, :cond_11

    .line 2392
    .line 2393
    const/4 v4, 0x0

    .line 2394
    goto :goto_16

    .line 2395
    :cond_11
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2396
    .line 2397
    .line 2398
    move-result v4

    .line 2399
    const/16 v20, 0x1

    .line 2400
    .line 2401
    add-int/lit8 v4, v4, 0x1

    .line 2402
    .line 2403
    mul-int/2addr v4, v3

    .line 2404
    :goto_16
    add-int/2addr v8, v4

    .line 2405
    goto/16 :goto_b

    .line 2406
    .line 2407
    :pswitch_71
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2408
    .line 2409
    .line 2410
    move-result-object v3

    .line 2411
    check-cast v3, Ljava/util/List;

    .line 2412
    .line 2413
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 2414
    .line 2415
    .line 2416
    move-result v3

    .line 2417
    goto/16 :goto_a

    .line 2418
    .line 2419
    :pswitch_72
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2420
    .line 2421
    .line 2422
    move-result-object v3

    .line 2423
    check-cast v3, Ljava/util/List;

    .line 2424
    .line 2425
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 2426
    .line 2427
    .line 2428
    move-result v3

    .line 2429
    goto/16 :goto_a

    .line 2430
    .line 2431
    :pswitch_73
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2432
    .line 2433
    .line 2434
    move-result-object v3

    .line 2435
    check-cast v3, Ljava/util/List;

    .line 2436
    .line 2437
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32List(Ljava/util/List;I)I

    .line 2438
    .line 2439
    .line 2440
    move-result v3

    .line 2441
    goto/16 :goto_a

    .line 2442
    .line 2443
    :pswitch_74
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2444
    .line 2445
    .line 2446
    move-result-object v3

    .line 2447
    check-cast v3, Ljava/util/List;

    .line 2448
    .line 2449
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64List(Ljava/util/List;I)I

    .line 2450
    .line 2451
    .line 2452
    move-result v3

    .line 2453
    goto/16 :goto_a

    .line 2454
    .line 2455
    :pswitch_75
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2456
    .line 2457
    .line 2458
    move-result-object v3

    .line 2459
    check-cast v3, Ljava/util/List;

    .line 2460
    .line 2461
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64List(Ljava/util/List;I)I

    .line 2462
    .line 2463
    .line 2464
    move-result v3

    .line 2465
    goto/16 :goto_a

    .line 2466
    .line 2467
    :pswitch_76
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2468
    .line 2469
    .line 2470
    move-result-object v3

    .line 2471
    check-cast v3, Ljava/util/List;

    .line 2472
    .line 2473
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed32List(Ljava/util/List;I)I

    .line 2474
    .line 2475
    .line 2476
    move-result v3

    .line 2477
    goto/16 :goto_a

    .line 2478
    .line 2479
    :pswitch_77
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v3

    .line 2483
    check-cast v3, Ljava/util/List;

    .line 2484
    .line 2485
    invoke-static {v3, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeFixed64List(Ljava/util/List;I)I

    .line 2486
    .line 2487
    .line 2488
    move-result v3

    .line 2489
    goto/16 :goto_a

    .line 2490
    .line 2491
    :pswitch_78
    and-int v5, v10, v15

    .line 2492
    .line 2493
    if-eqz v5, :cond_b

    .line 2494
    .line 2495
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2496
    .line 2497
    .line 2498
    move-result-object v3

    .line 2499
    check-cast v3, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 2500
    .line 2501
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 2502
    .line 2503
    .line 2504
    move-result-object v4

    .line 2505
    invoke-static {v13, v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/AbstractMessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 2506
    .line 2507
    .line 2508
    move-result v3

    .line 2509
    goto/16 :goto_a

    .line 2510
    .line 2511
    :pswitch_79
    and-int v5, v10, v15

    .line 2512
    .line 2513
    if-eqz v5, :cond_b

    .line 2514
    .line 2515
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2516
    .line 2517
    .line 2518
    move-result-wide v3

    .line 2519
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2520
    .line 2521
    .line 2522
    move-result v5

    .line 2523
    const/16 v20, 0x1

    .line 2524
    .line 2525
    shl-long v13, v3, v20

    .line 2526
    .line 2527
    shr-long v3, v3, v16

    .line 2528
    .line 2529
    xor-long/2addr v3, v13

    .line 2530
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 2531
    .line 2532
    .line 2533
    move-result v3

    .line 2534
    goto/16 :goto_e

    .line 2535
    .line 2536
    :pswitch_7a
    and-int v5, v10, v15

    .line 2537
    .line 2538
    if-eqz v5, :cond_b

    .line 2539
    .line 2540
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2541
    .line 2542
    .line 2543
    move-result v3

    .line 2544
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2545
    .line 2546
    .line 2547
    move-result v4

    .line 2548
    shl-int/lit8 v5, v3, 0x1

    .line 2549
    .line 2550
    shr-int/lit8 v3, v3, 0x1f

    .line 2551
    .line 2552
    xor-int/2addr v3, v5

    .line 2553
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 2554
    .line 2555
    .line 2556
    move-result v3

    .line 2557
    goto/16 :goto_f

    .line 2558
    .line 2559
    :pswitch_7b
    and-int v3, v10, v15

    .line 2560
    .line 2561
    if-eqz v3, :cond_b

    .line 2562
    .line 2563
    const/16 v3, 0x8

    .line 2564
    .line 2565
    invoke-static {v13, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 2566
    .line 2567
    .line 2568
    move-result v8

    .line 2569
    goto/16 :goto_10

    .line 2570
    .line 2571
    :pswitch_7c
    and-int v3, v10, v15

    .line 2572
    .line 2573
    if-eqz v3, :cond_b

    .line 2574
    .line 2575
    const/4 v3, 0x4

    .line 2576
    invoke-static {v13, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 2577
    .line 2578
    .line 2579
    move-result v8

    .line 2580
    goto/16 :goto_c

    .line 2581
    .line 2582
    :pswitch_7d
    and-int v5, v10, v15

    .line 2583
    .line 2584
    if-eqz v5, :cond_b

    .line 2585
    .line 2586
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2587
    .line 2588
    .line 2589
    move-result v3

    .line 2590
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2591
    .line 2592
    .line 2593
    move-result v4

    .line 2594
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 2595
    .line 2596
    .line 2597
    move-result v3

    .line 2598
    goto/16 :goto_f

    .line 2599
    .line 2600
    :pswitch_7e
    and-int v5, v10, v15

    .line 2601
    .line 2602
    if-eqz v5, :cond_b

    .line 2603
    .line 2604
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2605
    .line 2606
    .line 2607
    move-result v3

    .line 2608
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2609
    .line 2610
    .line 2611
    move-result v4

    .line 2612
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 2613
    .line 2614
    .line 2615
    move-result v3

    .line 2616
    goto/16 :goto_f

    .line 2617
    .line 2618
    :pswitch_7f
    and-int v5, v10, v15

    .line 2619
    .line 2620
    if-eqz v5, :cond_b

    .line 2621
    .line 2622
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2623
    .line 2624
    .line 2625
    move-result-object v3

    .line 2626
    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 2627
    .line 2628
    invoke-static {v13, v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeBytesSize(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)I

    .line 2629
    .line 2630
    .line 2631
    move-result v3

    .line 2632
    goto/16 :goto_a

    .line 2633
    .line 2634
    :pswitch_80
    and-int v5, v10, v15

    .line 2635
    .line 2636
    if-eqz v5, :cond_b

    .line 2637
    .line 2638
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2639
    .line 2640
    .line 2641
    move-result-object v3

    .line 2642
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 2643
    .line 2644
    .line 2645
    move-result-object v4

    .line 2646
    sget-object v5, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 2647
    .line 2648
    check-cast v3, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 2649
    .line 2650
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2651
    .line 2652
    .line 2653
    move-result v5

    .line 2654
    invoke-virtual {v3, v4}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize(Landroidx/datastore/preferences/protobuf/Schema;)I

    .line 2655
    .line 2656
    .line 2657
    move-result v3

    .line 2658
    invoke-static {v3, v3, v5, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2659
    .line 2660
    .line 2661
    move-result v8

    .line 2662
    goto/16 :goto_b

    .line 2663
    .line 2664
    :pswitch_81
    and-int v5, v10, v15

    .line 2665
    .line 2666
    if-eqz v5, :cond_b

    .line 2667
    .line 2668
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2669
    .line 2670
    .line 2671
    move-result-object v3

    .line 2672
    instance-of v4, v3, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 2673
    .line 2674
    if-eqz v4, :cond_12

    .line 2675
    .line 2676
    check-cast v3, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 2677
    .line 2678
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2679
    .line 2680
    .line 2681
    move-result v4

    .line 2682
    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 2683
    .line 2684
    .line 2685
    move-result v3

    .line 2686
    invoke-static {v3, v3, v4, v8}, Landroidx/compose/ui/Modifier$-CC;->m(IIII)I

    .line 2687
    .line 2688
    .line 2689
    move-result v3

    .line 2690
    goto/16 :goto_11

    .line 2691
    .line 2692
    :cond_12
    check-cast v3, Ljava/lang/String;

    .line 2693
    .line 2694
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2695
    .line 2696
    .line 2697
    move-result v4

    .line 2698
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 2699
    .line 2700
    .line 2701
    move-result v3

    .line 2702
    add-int/2addr v3, v4

    .line 2703
    add-int/2addr v3, v8

    .line 2704
    goto/16 :goto_11

    .line 2705
    .line 2706
    :pswitch_82
    and-int v3, v10, v15

    .line 2707
    .line 2708
    const/4 v5, 0x1

    .line 2709
    if-eqz v3, :cond_d

    .line 2710
    .line 2711
    invoke-static {v13, v5, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 2712
    .line 2713
    .line 2714
    move-result v8

    .line 2715
    goto/16 :goto_12

    .line 2716
    .line 2717
    :pswitch_83
    const/4 v5, 0x1

    .line 2718
    and-int v3, v10, v15

    .line 2719
    .line 2720
    if-eqz v3, :cond_d

    .line 2721
    .line 2722
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeFixed32Size(I)I

    .line 2723
    .line 2724
    .line 2725
    move-result v3

    .line 2726
    :goto_17
    add-int/2addr v8, v3

    .line 2727
    goto/16 :goto_12

    .line 2728
    .line 2729
    :pswitch_84
    const/4 v5, 0x1

    .line 2730
    and-int v3, v10, v15

    .line 2731
    .line 2732
    if-eqz v3, :cond_d

    .line 2733
    .line 2734
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeFixed64Size(I)I

    .line 2735
    .line 2736
    .line 2737
    move-result v3

    .line 2738
    goto :goto_17

    .line 2739
    :pswitch_85
    const/4 v5, 0x1

    .line 2740
    and-int v11, v10, v15

    .line 2741
    .line 2742
    if-eqz v11, :cond_d

    .line 2743
    .line 2744
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 2745
    .line 2746
    .line 2747
    move-result v3

    .line 2748
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2749
    .line 2750
    .line 2751
    move-result v4

    .line 2752
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 2753
    .line 2754
    .line 2755
    move-result v3

    .line 2756
    add-int/2addr v3, v4

    .line 2757
    goto :goto_17

    .line 2758
    :pswitch_86
    const/4 v5, 0x1

    .line 2759
    and-int v11, v10, v15

    .line 2760
    .line 2761
    if-eqz v11, :cond_d

    .line 2762
    .line 2763
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2764
    .line 2765
    .line 2766
    move-result-wide v3

    .line 2767
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2768
    .line 2769
    .line 2770
    move-result v11

    .line 2771
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 2772
    .line 2773
    .line 2774
    move-result v3

    .line 2775
    :goto_18
    add-int/2addr v3, v11

    .line 2776
    goto :goto_17

    .line 2777
    :pswitch_87
    const/4 v5, 0x1

    .line 2778
    and-int v11, v10, v15

    .line 2779
    .line 2780
    if-eqz v11, :cond_d

    .line 2781
    .line 2782
    invoke-virtual {v9, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 2783
    .line 2784
    .line 2785
    move-result-wide v3

    .line 2786
    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 2787
    .line 2788
    .line 2789
    move-result v11

    .line 2790
    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 2791
    .line 2792
    .line 2793
    move-result v3

    .line 2794
    goto :goto_18

    .line 2795
    :pswitch_88
    const/4 v5, 0x1

    .line 2796
    and-int v3, v10, v15

    .line 2797
    .line 2798
    if-eqz v3, :cond_d

    .line 2799
    .line 2800
    const/4 v3, 0x4

    .line 2801
    invoke-static {v13, v3, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 2802
    .line 2803
    .line 2804
    move-result v8

    .line 2805
    goto/16 :goto_13

    .line 2806
    .line 2807
    :pswitch_89
    const/4 v3, 0x4

    .line 2808
    const/4 v5, 0x1

    .line 2809
    and-int v4, v10, v15

    .line 2810
    .line 2811
    if-eqz v4, :cond_e

    .line 2812
    .line 2813
    const/16 v4, 0x8

    .line 2814
    .line 2815
    invoke-static {v13, v4, v8}, Landroidx/compose/ui/Modifier$-CC;->m(III)I

    .line 2816
    .line 2817
    .line 2818
    move-result v8

    .line 2819
    :goto_19
    add-int/lit8 v7, v7, 0x3

    .line 2820
    .line 2821
    move-object/from16 v5, v21

    .line 2822
    .line 2823
    goto/16 :goto_8

    .line 2824
    .line 2825
    :cond_13
    move-object/from16 v21, v5

    .line 2826
    .line 2827
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2828
    .line 2829
    .line 2830
    move-object v0, v1

    .line 2831
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 2832
    .line 2833
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 2834
    .line 2835
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->getSerializedSize()I

    .line 2836
    .line 2837
    .line 2838
    move-result v0

    .line 2839
    add-int/2addr v0, v8

    .line 2840
    return v0

    .line 2841
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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

    .line 2842
    .line 2843
    .line 2844
    .line 2845
    .line 2846
    .line 2847
    .line 2848
    .line 2849
    .line 2850
    .line 2851
    .line 2852
    .line 2853
    .line 2854
    .line 2855
    .line 2856
    .line 2857
    .line 2858
    .line 2859
    .line 2860
    .line 2861
    .line 2862
    .line 2863
    .line 2864
    .line 2865
    .line 2866
    .line 2867
    .line 2868
    .line 2869
    .line 2870
    .line 2871
    .line 2872
    .line 2873
    .line 2874
    .line 2875
    .line 2876
    .line 2877
    .line 2878
    .line 2879
    .line 2880
    .line 2881
    .line 2882
    .line 2883
    .line 2884
    .line 2885
    .line 2886
    .line 2887
    .line 2888
    .line 2889
    .line 2890
    .line 2891
    .line 2892
    .line 2893
    .line 2894
    .line 2895
    .line 2896
    .line 2897
    .line 2898
    .line 2899
    .line 2900
    .line 2901
    .line 2902
    .line 2903
    .line 2904
    .line 2905
    .line 2906
    .line 2907
    .line 2908
    .line 2909
    .line 2910
    .line 2911
    .line 2912
    .line 2913
    .line 2914
    .line 2915
    .line 2916
    .line 2917
    .line 2918
    .line 2919
    .line 2920
    .line 2921
    .line 2922
    .line 2923
    .line 2924
    .line 2925
    .line 2926
    .line 2927
    .line 2928
    .line 2929
    .line 2930
    .line 2931
    .line 2932
    .line 2933
    .line 2934
    .line 2935
    .line 2936
    .line 2937
    .line 2938
    .line 2939
    .line 2940
    .line 2941
    .line 2942
    .line 2943
    .line 2944
    .line 2945
    .line 2946
    .line 2947
    .line 2948
    .line 2949
    .line 2950
    .line 2951
    .line 2952
    .line 2953
    .line 2954
    .line 2955
    .line 2956
    .line 2957
    .line 2958
    .line 2959
    .line 2960
    .line 2961
    .line 2962
    .line 2963
    .line 2964
    .line 2965
    .line 2966
    .line 2967
    .line 2968
    .line 2969
    .line 2970
    .line 2971
    .line 2972
    .line 2973
    .line 2974
    .line 2975
    .line 2976
    .line 2977
    .line 2978
    .line 2979
    .line 2980
    .line 2981
    .line 2982
    .line 2983
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final hashCode(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)I
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/16 v8, 0x4d5

    .line 24
    .line 25
    const/16 v9, 0x4cf

    .line 26
    .line 27
    const/16 v10, 0x25

    .line 28
    .line 29
    packed-switch v4, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_4

    .line 33
    .line 34
    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    mul-int/lit8 v3, v3, 0x35

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    :goto_1
    add-int/2addr v4, v3

    .line 51
    move v3, v4

    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_2

    .line 59
    .line 60
    mul-int/lit8 v3, v3, 0x35

    .line 61
    .line 62
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    goto :goto_1

    .line 71
    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    mul-int/lit8 v3, v3, 0x35

    .line 78
    .line 79
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    goto :goto_1

    .line 84
    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    mul-int/lit8 v3, v3, 0x35

    .line 91
    .line 92
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 93
    .line 94
    .line 95
    move-result-wide v4

    .line 96
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    goto :goto_1

    .line 101
    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-eqz v4, :cond_2

    .line 106
    .line 107
    mul-int/lit8 v3, v3, 0x35

    .line 108
    .line 109
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    goto :goto_1

    .line 114
    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_2

    .line 119
    .line 120
    mul-int/lit8 v3, v3, 0x35

    .line 121
    .line 122
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    goto :goto_1

    .line 127
    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    mul-int/lit8 v3, v3, 0x35

    .line 134
    .line 135
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    goto :goto_1

    .line 140
    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_2

    .line 145
    .line 146
    mul-int/lit8 v3, v3, 0x35

    .line 147
    .line 148
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    goto :goto_1

    .line 157
    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    if-eqz v4, :cond_2

    .line 162
    .line 163
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    mul-int/lit8 v3, v3, 0x35

    .line 168
    .line 169
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    goto :goto_1

    .line 174
    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-eqz v4, :cond_2

    .line 179
    .line 180
    mul-int/lit8 v3, v3, 0x35

    .line 181
    .line 182
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    check-cast v4, Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v4

    .line 192
    goto/16 :goto_1

    .line 193
    .line 194
    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    if-eqz v4, :cond_2

    .line 199
    .line 200
    mul-int/lit8 v3, v3, 0x35

    .line 201
    .line 202
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    check-cast v4, Ljava/lang/Boolean;

    .line 207
    .line 208
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    sget-object v5, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 213
    .line 214
    if-eqz v4, :cond_0

    .line 215
    .line 216
    :goto_2
    move v8, v9

    .line 217
    :cond_0
    add-int/2addr v8, v3

    .line 218
    move v3, v8

    .line 219
    goto/16 :goto_4

    .line 220
    .line 221
    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_2

    .line 226
    .line 227
    mul-int/lit8 v3, v3, 0x35

    .line 228
    .line 229
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    goto/16 :goto_1

    .line 234
    .line 235
    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    if-eqz v4, :cond_2

    .line 240
    .line 241
    mul-int/lit8 v3, v3, 0x35

    .line 242
    .line 243
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 244
    .line 245
    .line 246
    move-result-wide v4

    .line 247
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_2

    .line 258
    .line 259
    mul-int/lit8 v3, v3, 0x35

    .line 260
    .line 261
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    goto/16 :goto_1

    .line 266
    .line 267
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_2

    .line 272
    .line 273
    mul-int/lit8 v3, v3, 0x35

    .line 274
    .line 275
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 276
    .line 277
    .line 278
    move-result-wide v4

    .line 279
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    goto/16 :goto_1

    .line 284
    .line 285
    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-eqz v4, :cond_2

    .line 290
    .line 291
    mul-int/lit8 v3, v3, 0x35

    .line 292
    .line 293
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 294
    .line 295
    .line 296
    move-result-wide v4

    .line 297
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-eqz v4, :cond_2

    .line 308
    .line 309
    mul-int/lit8 v3, v3, 0x35

    .line 310
    .line 311
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    check-cast v4, Ljava/lang/Float;

    .line 316
    .line 317
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_2

    .line 332
    .line 333
    mul-int/lit8 v3, v3, 0x35

    .line 334
    .line 335
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    check-cast v4, Ljava/lang/Double;

    .line 340
    .line 341
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 342
    .line 343
    .line 344
    move-result-wide v4

    .line 345
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 346
    .line 347
    .line 348
    move-result-wide v4

    .line 349
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    goto/16 :goto_1

    .line 354
    .line 355
    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    .line 356
    .line 357
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 368
    .line 369
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 374
    .line 375
    .line 376
    move-result v4

    .line 377
    goto/16 :goto_1

    .line 378
    .line 379
    :pswitch_14
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    if-eqz v4, :cond_1

    .line 384
    .line 385
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    :cond_1
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    .line 390
    .line 391
    add-int/2addr v3, v10

    .line 392
    goto/16 :goto_4

    .line 393
    .line 394
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 395
    .line 396
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 397
    .line 398
    .line 399
    move-result-wide v4

    .line 400
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 401
    .line 402
    .line 403
    move-result v4

    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 407
    .line 408
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 415
    .line 416
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 417
    .line 418
    .line 419
    move-result-wide v4

    .line 420
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    goto/16 :goto_1

    .line 425
    .line 426
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 427
    .line 428
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 429
    .line 430
    .line 431
    move-result v4

    .line 432
    goto/16 :goto_1

    .line 433
    .line 434
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 435
    .line 436
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    goto/16 :goto_1

    .line 441
    .line 442
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 443
    .line 444
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 445
    .line 446
    .line 447
    move-result v4

    .line 448
    goto/16 :goto_1

    .line 449
    .line 450
    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    .line 451
    .line 452
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    goto/16 :goto_1

    .line 461
    .line 462
    :pswitch_1c
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v4

    .line 466
    if-eqz v4, :cond_1

    .line 467
    .line 468
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 469
    .line 470
    .line 471
    move-result v10

    .line 472
    goto :goto_3

    .line 473
    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    .line 474
    .line 475
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    check-cast v4, Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 482
    .line 483
    .line 484
    move-result v4

    .line 485
    goto/16 :goto_1

    .line 486
    .line 487
    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    .line 488
    .line 489
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 490
    .line 491
    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    sget-object v5, Landroidx/datastore/preferences/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    .line 496
    .line 497
    if-eqz v4, :cond_0

    .line 498
    .line 499
    goto/16 :goto_2

    .line 500
    .line 501
    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    .line 502
    .line 503
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    goto/16 :goto_1

    .line 508
    .line 509
    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    .line 510
    .line 511
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 512
    .line 513
    .line 514
    move-result-wide v4

    .line 515
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    goto/16 :goto_1

    .line 520
    .line 521
    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    .line 522
    .line 523
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 524
    .line 525
    .line 526
    move-result v4

    .line 527
    goto/16 :goto_1

    .line 528
    .line 529
    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    .line 530
    .line 531
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 532
    .line 533
    .line 534
    move-result-wide v4

    .line 535
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    goto/16 :goto_1

    .line 540
    .line 541
    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    .line 542
    .line 543
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 544
    .line 545
    .line 546
    move-result-wide v4

    .line 547
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 548
    .line 549
    .line 550
    move-result v4

    .line 551
    goto/16 :goto_1

    .line 552
    .line 553
    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    .line 554
    .line 555
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 556
    .line 557
    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 558
    .line 559
    .line 560
    move-result v4

    .line 561
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    goto/16 :goto_1

    .line 566
    .line 567
    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    .line 568
    .line 569
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 570
    .line 571
    invoke-virtual {v4, v6, v7, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 572
    .line 573
    .line 574
    move-result-wide v4

    .line 575
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 576
    .line 577
    .line 578
    move-result-wide v4

    .line 579
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->hashLong(J)I

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    goto/16 :goto_1

    .line 584
    .line 585
    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :cond_3
    mul-int/lit8 v3, v3, 0x35

    .line 590
    .line 591
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 592
    .line 593
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 597
    .line 598
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->hashCode()I

    .line 599
    .line 600
    .line 601
    move-result p0

    .line 602
    add-int/2addr p0, v3

    .line 603
    return p0

    .line 604
    nop

    .line 605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
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
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
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

.method public final isFieldPresent(ILjava/lang/Object;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 2
    .line 3
    const v1, 0xfffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    and-int p1, p0, v1

    .line 15
    .line 16
    int-to-long v0, p1

    .line 17
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    packed-switch p0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :pswitch_0
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :pswitch_1
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    cmp-long p0, p0, v4

    .line 43
    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    goto/16 :goto_0

    .line 47
    .line 48
    :pswitch_2
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_3

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :pswitch_3
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 57
    .line 58
    .line 59
    move-result-wide p0

    .line 60
    cmp-long p0, p0, v4

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_4
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :pswitch_5
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :pswitch_6
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :pswitch_7
    sget-object p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 91
    .line 92
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    xor-int/2addr p0, v3

    .line 101
    return p0

    .line 102
    :pswitch_8
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    if-eqz p0, :cond_3

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :pswitch_9
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    instance-of p1, p0, Ljava/lang/String;

    .line 115
    .line 116
    if-eqz p1, :cond_0

    .line 117
    .line 118
    check-cast p0, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    xor-int/2addr p0, v3

    .line 125
    return p0

    .line 126
    :cond_0
    instance-of p1, p0, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 127
    .line 128
    if-eqz p1, :cond_1

    .line 129
    .line 130
    sget-object p1, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->EMPTY:Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    xor-int/2addr p0, v3

    .line 137
    return p0

    .line 138
    :cond_1
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 139
    .line 140
    .line 141
    return v2

    .line 142
    :pswitch_a
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 143
    .line 144
    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    return p0

    .line 149
    :pswitch_b
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_3

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :pswitch_c
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 157
    .line 158
    .line 159
    move-result-wide p0

    .line 160
    cmp-long p0, p0, v4

    .line 161
    .line 162
    if-eqz p0, :cond_3

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :pswitch_d
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 166
    .line 167
    .line 168
    move-result p0

    .line 169
    if-eqz p0, :cond_3

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :pswitch_e
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 173
    .line 174
    .line 175
    move-result-wide p0

    .line 176
    cmp-long p0, p0, v4

    .line 177
    .line 178
    if-eqz p0, :cond_3

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :pswitch_f
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 182
    .line 183
    .line 184
    move-result-wide p0

    .line 185
    cmp-long p0, p0, v4

    .line 186
    .line 187
    if-eqz p0, :cond_3

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :pswitch_10
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 191
    .line 192
    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    const/4 p1, 0x0

    .line 197
    cmpl-float p0, p0, p1

    .line 198
    .line 199
    if-eqz p0, :cond_3

    .line 200
    .line 201
    goto :goto_0

    .line 202
    :pswitch_11
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 203
    .line 204
    invoke-virtual {p0, v0, v1, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 205
    .line 206
    .line 207
    move-result-wide p0

    .line 208
    const-wide/16 v0, 0x0

    .line 209
    .line 210
    cmpl-double p0, p0, v0

    .line 211
    .line 212
    if-eqz p0, :cond_3

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_2
    add-int/lit8 p1, p1, 0x2

    .line 216
    .line 217
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 218
    .line 219
    aget p0, p0, p1

    .line 220
    .line 221
    ushr-int/lit8 p1, p0, 0x14

    .line 222
    .line 223
    shl-int p1, v3, p1

    .line 224
    .line 225
    and-int/2addr p0, v1

    .line 226
    int-to-long v0, p0

    .line 227
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 228
    .line 229
    .line 230
    move-result p0

    .line 231
    and-int/2addr p0, p1

    .line 232
    if-eqz p0, :cond_3

    .line 233
    .line 234
    :goto_0
    return v3

    .line 235
    :cond_3
    return v2

    .line 236
    nop

    .line 237
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
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 14

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    iget v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    if-ge v2, v4, :cond_12

    .line 9
    .line 10
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 11
    .line 12
    aget v4, v4, v2

    .line 13
    .line 14
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 15
    .line 16
    aget v7, v6, v4

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    iget-boolean v9, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 23
    .line 24
    const v10, 0xfffff

    .line 25
    .line 26
    .line 27
    if-nez v9, :cond_0

    .line 28
    .line 29
    add-int/lit8 v11, v4, 0x2

    .line 30
    .line 31
    aget v6, v6, v11

    .line 32
    .line 33
    and-int v11, v6, v10

    .line 34
    .line 35
    ushr-int/lit8 v6, v6, 0x14

    .line 36
    .line 37
    shl-int v6, v5, v6

    .line 38
    .line 39
    if-eq v11, v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 42
    .line 43
    int-to-long v12, v11

    .line 44
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    move v0, v11

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v6, v1

    .line 51
    :cond_1
    :goto_1
    const/high16 v11, 0x10000000

    .line 52
    .line 53
    and-int/2addr v11, v8

    .line 54
    if-eqz v11, :cond_4

    .line 55
    .line 56
    if-eqz v9, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    and-int v11, v3, v6

    .line 64
    .line 65
    if-eqz v11, :cond_3

    .line 66
    .line 67
    move v11, v5

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move v11, v1

    .line 70
    :goto_2
    if-nez v11, :cond_4

    .line 71
    .line 72
    goto/16 :goto_5

    .line 73
    .line 74
    :cond_4
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    const/16 v12, 0x9

    .line 79
    .line 80
    if-eq v11, v12, :cond_e

    .line 81
    .line 82
    const/16 v12, 0x11

    .line 83
    .line 84
    if-eq v11, v12, :cond_e

    .line 85
    .line 86
    const/16 v5, 0x1b

    .line 87
    .line 88
    if-eq v11, v5, :cond_b

    .line 89
    .line 90
    const/16 v5, 0x3c

    .line 91
    .line 92
    if-eq v11, v5, :cond_a

    .line 93
    .line 94
    const/16 v5, 0x44

    .line 95
    .line 96
    if-eq v11, v5, :cond_a

    .line 97
    .line 98
    const/16 v5, 0x31

    .line 99
    .line 100
    if-eq v11, v5, :cond_b

    .line 101
    .line 102
    const/16 v5, 0x32

    .line 103
    .line 104
    if-eq v11, v5, :cond_5

    .line 105
    .line 106
    goto/16 :goto_6

    .line 107
    .line 108
    :cond_5
    and-int v5, v8, v10

    .line 109
    .line 110
    int-to-long v5, v5

    .line 111
    invoke-static {v5, v6, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 116
    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    check-cast v5, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-eqz v6, :cond_6

    .line 127
    .line 128
    goto/16 :goto_6

    .line 129
    .line 130
    :cond_6
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    .line 135
    .line 136
    iget-object v4, v4, Landroidx/datastore/preferences/protobuf/MapEntryLite;->metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 137
    .line 138
    iget-object v4, v4, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 139
    .line 140
    invoke-virtual {v4}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->getJavaType()Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    sget-object v6, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    .line 145
    .line 146
    if-eq v4, v6, :cond_7

    .line 147
    .line 148
    goto/16 :goto_6

    .line 149
    .line 150
    :cond_7
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    const/4 v5, 0x0

    .line 159
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-eqz v6, :cond_11

    .line 164
    .line 165
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    if-nez v5, :cond_9

    .line 170
    .line 171
    sget-object v5, Landroidx/datastore/preferences/protobuf/Protobuf;->INSTANCE:Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v5, v7}, Landroidx/datastore/preferences/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    :cond_9
    invoke-interface {v5, v6}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-nez v6, :cond_8

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_a
    invoke-virtual {p0, v7, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v5

    .line 192
    if-eqz v5, :cond_11

    .line 193
    .line 194
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    and-int v5, v8, v10

    .line 199
    .line 200
    int-to-long v5, v5

    .line 201
    invoke-static {v5, v6, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_11

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_b
    and-int v5, v8, v10

    .line 213
    .line 214
    int-to-long v5, v5

    .line 215
    invoke-static {v5, v6, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    check-cast v5, Ljava/util/List;

    .line 220
    .line 221
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_c

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_c
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    move v6, v1

    .line 233
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-ge v6, v7, :cond_11

    .line 238
    .line 239
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    invoke-interface {v4, v7}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v7

    .line 247
    if-nez v7, :cond_d

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_d
    add-int/lit8 v6, v6, 0x1

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_e
    if-eqz v9, :cond_f

    .line 254
    .line 255
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    goto :goto_4

    .line 260
    :cond_f
    and-int/2addr v6, v3

    .line 261
    if-eqz v6, :cond_10

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_10
    move v5, v1

    .line 265
    :goto_4
    if-eqz v5, :cond_11

    .line 266
    .line 267
    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    and-int v5, v8, v10

    .line 272
    .line 273
    int-to-long v5, v5

    .line 274
    invoke-static {v5, v6, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    if-nez v4, :cond_11

    .line 283
    .line 284
    :goto_5
    return v1

    .line 285
    :cond_11
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_12
    return v5
.end method

.method public final isOneofPresent(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {v0, v1, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-ne p0, p1, :cond_0

    .line 17
    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final makeImmutable(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 5
    .line 6
    iget v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 7
    .line 8
    if-ge v0, v3, :cond_1

    .line 9
    .line 10
    aget v2, v2, v0

    .line 11
    .line 12
    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const v3, 0xfffff

    .line 17
    .line 18
    .line 19
    and-int/2addr v2, v3

    .line 20
    int-to-long v2, v2

    .line 21
    invoke-static {v2, v3, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v5, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-object v5, v4

    .line 34
    check-cast v5, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 35
    .line 36
    iput-boolean v1, v5, Landroidx/datastore/preferences/protobuf/MapFieldLite;->isMutable:Z

    .line 37
    .line 38
    invoke-static {p1, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    array-length v0, v2

    .line 45
    :goto_2
    if-ge v3, v0, :cond_2

    .line 46
    .line 47
    aget v4, v2, v3

    .line 48
    .line 49
    int-to-long v4, v4

    .line 50
    iget-object v6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 51
    .line 52
    invoke-virtual {v6, v4, v5, p1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->makeImmutableListAt(JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 64
    .line 65
    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 66
    .line 67
    iput-boolean v1, p0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->isMutable:Z

    .line 68
    .line 69
    return-void
.end method

.method public final mergeFrom(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V
    .locals 10

    .line 1787
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1788
    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1789
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    .line 1790
    aget v1, v1, v0

    .line 1791
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1792
    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeOneofMessage(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    .line 1793
    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1794
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1795
    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_1

    .line 1796
    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeOneofMessage(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)V

    goto :goto_1

    .line 1797
    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1798
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1799
    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    goto :goto_1

    .line 1800
    :pswitch_4
    sget-object v1, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 1801
    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1802
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object v1

    .line 1803
    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 1804
    :pswitch_5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    invoke-virtual {v1, p1, p2, v6, v7}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mergeListsAt(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;J)V

    goto :goto_1

    .line 1805
    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeMessage(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)V

    goto :goto_1

    .line 1806
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1807
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1808
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    .line 1809
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1810
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1811
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    .line 1812
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1813
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1814
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto :goto_1

    .line 1815
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1816
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1817
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1818
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1819
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1820
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1821
    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1822
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1823
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1824
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1825
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1826
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1827
    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeMessage(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 1828
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1829
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1830
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1831
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1832
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    move-result v2

    .line 1833
    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1834
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1835
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1836
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1837
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1838
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1839
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1840
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1841
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1842
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1843
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1844
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1845
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1846
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1847
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1848
    invoke-static {v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v6, v7, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1849
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1850
    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1851
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    move-result v2

    .line 1852
    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 1853
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1854
    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1855
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p2}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    .line 1856
    invoke-virtual/range {v4 .. v9}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 1857
    invoke-virtual {p0, v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_1
    move-object v5, p1

    .line 1858
    iget-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    if-nez p1, :cond_2

    .line 1859
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    invoke-static {p0, v5, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->mergeUnknownFields(Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final mergeFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move-object/from16 v5, p3

    .line 8
    .line 9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v7, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 13
    .line 14
    iget-object v8, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->intArray:[I

    .line 15
    .line 16
    iget v9, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->repeatedFieldOffsetStart:I

    .line 17
    .line 18
    iget v10, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->checkInitializedCount:I

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    move-object v11, v0

    .line 22
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->getFieldNumber()I

    .line 23
    .line 24
    .line 25
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 26
    :try_start_1
    iget v3, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->minFieldNumber:I

    .line 27
    .line 28
    const/4 v12, 0x1

    .line 29
    if-lt v0, v3, :cond_2

    .line 30
    .line 31
    iget v3, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->maxFieldNumber:I

    .line 32
    .line 33
    if-gt v0, v3, :cond_2

    .line 34
    .line 35
    iget-object v3, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 36
    .line 37
    array-length v13, v3

    .line 38
    div-int/lit8 v13, v13, 0x3

    .line 39
    .line 40
    sub-int/2addr v13, v12

    .line 41
    const/4 v14, 0x0

    .line 42
    :goto_1
    if-gt v14, v13, :cond_2

    .line 43
    .line 44
    add-int v15, v13, v14

    .line 45
    .line 46
    ushr-int/2addr v15, v12

    .line 47
    mul-int/lit8 v16, v15, 0x3

    .line 48
    .line 49
    aget v6, v3, v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 50
    .line 51
    if-ne v0, v6, :cond_0

    .line 52
    .line 53
    :goto_2
    move/from16 v3, v16

    .line 54
    .line 55
    goto :goto_4

    .line 56
    :cond_0
    if-ge v0, v6, :cond_1

    .line 57
    .line 58
    add-int/lit8 v15, v15, -0x1

    .line 59
    .line 60
    move v13, v15

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v14, v15, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_3
    move-object v6, v1

    .line 66
    move-object v14, v7

    .line 67
    move v15, v10

    .line 68
    move-object/from16 v16, v11

    .line 69
    .line 70
    goto/16 :goto_17

    .line 71
    .line 72
    :cond_2
    const/16 v16, -0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_4
    sget-object v13, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->DEFAULT_INSTANCE:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 76
    .line 77
    if-gez v3, :cond_9

    .line 78
    .line 79
    const v3, 0x7fffffff

    .line 80
    .line 81
    .line 82
    if-ne v0, v3, :cond_4

    .line 83
    .line 84
    :goto_5
    if-ge v10, v9, :cond_3

    .line 85
    .line 86
    aget v0, v8, v10

    .line 87
    .line 88
    invoke-virtual {v1, v0, v2, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v10, v10, 0x1

    .line 92
    .line 93
    goto :goto_5

    .line 94
    :cond_3
    if-eqz v11, :cond_15

    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    goto/16 :goto_d

    .line 100
    .line 101
    :cond_4
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    if-nez v11, :cond_6

    .line 105
    .line 106
    move-object v0, v2

    .line 107
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 108
    .line 109
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 110
    .line 111
    if-ne v3, v13, :cond_5

    .line 112
    .line 113
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->newInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 118
    .line 119
    :cond_5
    move-object v11, v3

    .line 120
    goto :goto_8

    .line 121
    :goto_6
    move-object v6, v1

    .line 122
    move-object v14, v7

    .line 123
    :goto_7
    move v15, v10

    .line 124
    goto/16 :goto_1f

    .line 125
    .line 126
    :cond_6
    :goto_8
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;)Z

    .line 127
    .line 128
    .line 129
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_7
    :goto_9
    if-ge v10, v9, :cond_8

    .line 134
    .line 135
    aget v0, v8, v10

    .line 136
    .line 137
    invoke-virtual {v1, v0, v2, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    add-int/lit8 v10, v10, 0x1

    .line 141
    .line 142
    goto :goto_9

    .line 143
    :cond_8
    if-eqz v11, :cond_15

    .line 144
    .line 145
    goto :goto_d

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto :goto_6

    .line 148
    :cond_9
    :try_start_3
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 149
    .line 150
    .line 151
    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 152
    :try_start_4
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 153
    .line 154
    .line 155
    move-result v14
    :try_end_4
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 156
    const v16, 0xfffff

    .line 157
    .line 158
    .line 159
    iget-object v15, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 160
    .line 161
    packed-switch v14, :pswitch_data_0

    .line 162
    .line 163
    .line 164
    if-nez v11, :cond_a

    .line 165
    .line 166
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->newInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    move-object v11, v0

    .line 174
    goto :goto_b

    .line 175
    :catch_0
    move-object v6, v1

    .line 176
    move-object v14, v7

    .line 177
    move v15, v10

    .line 178
    :goto_a
    move-object v7, v4

    .line 179
    goto/16 :goto_1b

    .line 180
    .line 181
    :cond_a
    :goto_b
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-static {v11, v4}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;)Z

    .line 185
    .line 186
    .line 187
    move-result v0
    :try_end_5
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    if-nez v0, :cond_c

    .line 189
    .line 190
    :goto_c
    if-ge v10, v9, :cond_b

    .line 191
    .line 192
    aget v0, v8, v10

    .line 193
    .line 194
    invoke-virtual {v1, v0, v2, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    add-int/lit8 v10, v10, 0x1

    .line 198
    .line 199
    goto :goto_c

    .line 200
    :cond_b
    :goto_d
    move-object v0, v2

    .line 201
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 202
    .line 203
    iput-object v11, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 204
    .line 205
    goto/16 :goto_1d

    .line 206
    .line 207
    :cond_c
    move-object v6, v1

    .line 208
    move-object v14, v7

    .line 209
    move v15, v10

    .line 210
    move-object v7, v4

    .line 211
    goto/16 :goto_1e

    .line 212
    .line 213
    :pswitch_0
    and-int v6, v6, v16

    .line 214
    .line 215
    int-to-long v14, v6

    .line 216
    :try_start_6
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-virtual {v4, v6, v5}, Landroidx/compose/ui/text/input/GapBuffer;->readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    :goto_e
    move-object v6, v1

    .line 231
    move-object v14, v7

    .line 232
    move v15, v10

    .line 233
    move-object/from16 v16, v11

    .line 234
    .line 235
    move-object v7, v4

    .line 236
    goto/16 :goto_1a

    .line 237
    .line 238
    :pswitch_1
    and-int v6, v6, v16

    .line 239
    .line 240
    int-to-long v14, v6

    .line 241
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt64()J

    .line 242
    .line 243
    .line 244
    move-result-wide v16

    .line 245
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    goto :goto_e

    .line 256
    :pswitch_2
    and-int v6, v6, v16

    .line 257
    .line 258
    int-to-long v14, v6

    .line 259
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt32()I

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto :goto_e

    .line 274
    :pswitch_3
    and-int v6, v6, v16

    .line 275
    .line 276
    int-to-long v14, v6

    .line 277
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed64()J

    .line 278
    .line 279
    .line 280
    move-result-wide v16

    .line 281
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    goto :goto_e

    .line 292
    :pswitch_4
    and-int v6, v6, v16

    .line 293
    .line 294
    int-to-long v14, v6

    .line 295
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed32()I

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    goto :goto_e

    .line 310
    :pswitch_5
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readEnum()I

    .line 311
    .line 312
    .line 313
    move-result v12

    .line 314
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 315
    .line 316
    .line 317
    and-int v6, v6, v16

    .line 318
    .line 319
    int-to-long v14, v6

    .line 320
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    goto :goto_e

    .line 331
    :pswitch_6
    and-int v6, v6, v16

    .line 332
    .line 333
    int-to-long v14, v6

    .line 334
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt32()I

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    goto :goto_e

    .line 349
    :pswitch_7
    and-int v6, v6, v16

    .line 350
    .line 351
    int-to-long v14, v6

    .line 352
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 353
    .line 354
    .line 355
    move-result-object v6

    .line 356
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    goto/16 :goto_e

    .line 363
    .line 364
    :pswitch_8
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v12

    .line 368
    if-eqz v12, :cond_d

    .line 369
    .line 370
    and-int v6, v6, v16

    .line 371
    .line 372
    int-to-long v14, v6

    .line 373
    invoke-static {v14, v15, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 378
    .line 379
    .line 380
    move-result-object v12

    .line 381
    invoke-virtual {v4, v12, v5}, Landroidx/compose/ui/text/input/GapBuffer;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v12

    .line 385
    invoke-static {v6, v12}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    goto :goto_f

    .line 393
    :cond_d
    and-int v6, v6, v16

    .line 394
    .line 395
    int-to-long v14, v6

    .line 396
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-virtual {v4, v6, v5}, Landroidx/compose/ui/text/input/GapBuffer;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    :goto_f
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_e

    .line 414
    .line 415
    :pswitch_9
    invoke-virtual {v1, v6, v4, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readString(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_e

    .line 422
    .line 423
    :pswitch_a
    and-int v6, v6, v16

    .line 424
    .line 425
    int-to-long v14, v6

    .line 426
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readBool()Z

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_e

    .line 441
    .line 442
    :pswitch_b
    and-int v6, v6, v16

    .line 443
    .line 444
    int-to-long v14, v6

    .line 445
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed32()I

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v6

    .line 453
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_e

    .line 460
    .line 461
    :pswitch_c
    and-int v6, v6, v16

    .line 462
    .line 463
    int-to-long v14, v6

    .line 464
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed64()J

    .line 465
    .line 466
    .line 467
    move-result-wide v16

    .line 468
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 469
    .line 470
    .line 471
    move-result-object v6

    .line 472
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    goto/16 :goto_e

    .line 479
    .line 480
    :pswitch_d
    and-int v6, v6, v16

    .line 481
    .line 482
    int-to-long v14, v6

    .line 483
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readInt32()I

    .line 484
    .line 485
    .line 486
    move-result v6

    .line 487
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_e

    .line 498
    .line 499
    :pswitch_e
    and-int v6, v6, v16

    .line 500
    .line 501
    int-to-long v14, v6

    .line 502
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt64()J

    .line 503
    .line 504
    .line 505
    move-result-wide v16

    .line 506
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 507
    .line 508
    .line 509
    move-result-object v6

    .line 510
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_e

    .line 517
    .line 518
    :pswitch_f
    and-int v6, v6, v16

    .line 519
    .line 520
    int-to-long v14, v6

    .line 521
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readInt64()J

    .line 522
    .line 523
    .line 524
    move-result-wide v16

    .line 525
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 526
    .line 527
    .line 528
    move-result-object v6

    .line 529
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_e

    .line 536
    .line 537
    :pswitch_10
    and-int v6, v6, v16

    .line 538
    .line 539
    int-to-long v14, v6

    .line 540
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readFloat()F

    .line 541
    .line 542
    .line 543
    move-result v6

    .line 544
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_e

    .line 555
    .line 556
    :pswitch_11
    and-int v6, v6, v16

    .line 557
    .line 558
    int-to-long v14, v6

    .line 559
    invoke-virtual {v4}, Landroidx/compose/ui/text/input/GapBuffer;->readDouble()D

    .line 560
    .line 561
    .line 562
    move-result-wide v16

    .line 563
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    invoke-static {v2, v14, v15, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1, v0, v3, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V
    :try_end_6
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 571
    .line 572
    .line 573
    goto/16 :goto_e

    .line 574
    .line 575
    :pswitch_12
    :try_start_7
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v4
    :try_end_7
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 579
    move-object/from16 v6, p2

    .line 580
    .line 581
    :try_start_8
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->mergeMap(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/compose/ui/text/input/GapBuffer;)V
    :try_end_8
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 582
    .line 583
    .line 584
    move-object v4, v6

    .line 585
    goto/16 :goto_e

    .line 586
    .line 587
    :catch_1
    move-object v14, v7

    .line 588
    move v15, v10

    .line 589
    move-object v7, v6

    .line 590
    move-object v6, v1

    .line 591
    goto/16 :goto_1b

    .line 592
    .line 593
    :catch_2
    move-object v6, v1

    .line 594
    move-object v14, v7

    .line 595
    move v15, v10

    .line 596
    move-object/from16 v7, p2

    .line 597
    .line 598
    goto/16 :goto_1b

    .line 599
    .line 600
    :pswitch_13
    move v12, v3

    .line 601
    and-int v0, v6, v16

    .line 602
    .line 603
    move-object v14, v7

    .line 604
    int-to-long v6, v0

    .line 605
    :try_start_9
    invoke-virtual {v1, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    invoke-virtual {v4, v3, v0, v5}, Landroidx/compose/ui/text/input/GapBuffer;->readGroupList(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    .line 614
    .line 615
    .line 616
    :goto_10
    move-object v6, v1

    .line 617
    move-object v7, v4

    .line 618
    :goto_11
    move v15, v10

    .line 619
    move-object/from16 v16, v11

    .line 620
    .line 621
    goto/16 :goto_1a

    .line 622
    .line 623
    :goto_12
    move-object v6, v1

    .line 624
    goto/16 :goto_7

    .line 625
    .line 626
    :catch_3
    :goto_13
    move-object v6, v1

    .line 627
    move-object v7, v4

    .line 628
    :catch_4
    :goto_14
    move v15, v10

    .line 629
    goto/16 :goto_1b

    .line 630
    .line 631
    :catchall_1
    move-exception v0

    .line 632
    goto :goto_12

    .line 633
    :pswitch_14
    move-object v14, v7

    .line 634
    and-int v0, v6, v16

    .line 635
    .line 636
    int-to-long v6, v0

    .line 637
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt64List(Ljava/util/List;)V

    .line 642
    .line 643
    .line 644
    goto :goto_10

    .line 645
    :pswitch_15
    move-object v14, v7

    .line 646
    and-int v0, v6, v16

    .line 647
    .line 648
    int-to-long v6, v0

    .line 649
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt32List(Ljava/util/List;)V

    .line 654
    .line 655
    .line 656
    goto :goto_10

    .line 657
    :pswitch_16
    move-object v14, v7

    .line 658
    and-int v0, v6, v16

    .line 659
    .line 660
    int-to-long v6, v0

    .line 661
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed64List(Ljava/util/List;)V

    .line 666
    .line 667
    .line 668
    goto :goto_10

    .line 669
    :pswitch_17
    move-object v14, v7

    .line 670
    and-int v0, v6, v16

    .line 671
    .line 672
    int-to-long v6, v0

    .line 673
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed32List(Ljava/util/List;)V

    .line 678
    .line 679
    .line 680
    goto :goto_10

    .line 681
    :pswitch_18
    move v12, v3

    .line 682
    move-object v14, v7

    .line 683
    and-int v0, v6, v16

    .line 684
    .line 685
    int-to-long v6, v0

    .line 686
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readEnumList(Ljava/util/List;)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v1, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 694
    .line 695
    .line 696
    sget-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 697
    .line 698
    :goto_15
    move-object v6, v1

    .line 699
    move-object v7, v4

    .line 700
    move v15, v10

    .line 701
    goto/16 :goto_1e

    .line 702
    .line 703
    :pswitch_19
    move-object v14, v7

    .line 704
    and-int v0, v6, v16

    .line 705
    .line 706
    int-to-long v6, v0

    .line 707
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt32List(Ljava/util/List;)V

    .line 712
    .line 713
    .line 714
    goto :goto_10

    .line 715
    :pswitch_1a
    move-object v14, v7

    .line 716
    and-int v0, v6, v16

    .line 717
    .line 718
    int-to-long v6, v0

    .line 719
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readBoolList(Ljava/util/List;)V

    .line 724
    .line 725
    .line 726
    goto :goto_10

    .line 727
    :pswitch_1b
    move-object v14, v7

    .line 728
    and-int v0, v6, v16

    .line 729
    .line 730
    int-to-long v6, v0

    .line 731
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed32List(Ljava/util/List;)V

    .line 736
    .line 737
    .line 738
    goto :goto_10

    .line 739
    :pswitch_1c
    move-object v14, v7

    .line 740
    and-int v0, v6, v16

    .line 741
    .line 742
    int-to-long v6, v0

    .line 743
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 744
    .line 745
    .line 746
    move-result-object v0

    .line 747
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed64List(Ljava/util/List;)V

    .line 748
    .line 749
    .line 750
    goto/16 :goto_10

    .line 751
    .line 752
    :pswitch_1d
    move-object v14, v7

    .line 753
    and-int v0, v6, v16

    .line 754
    .line 755
    int-to-long v6, v0

    .line 756
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readInt32List(Ljava/util/List;)V

    .line 761
    .line 762
    .line 763
    goto/16 :goto_10

    .line 764
    .line 765
    :pswitch_1e
    move-object v14, v7

    .line 766
    and-int v0, v6, v16

    .line 767
    .line 768
    int-to-long v6, v0

    .line 769
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt64List(Ljava/util/List;)V

    .line 774
    .line 775
    .line 776
    goto/16 :goto_10

    .line 777
    .line 778
    :pswitch_1f
    move-object v14, v7

    .line 779
    and-int v0, v6, v16

    .line 780
    .line 781
    int-to-long v6, v0

    .line 782
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readInt64List(Ljava/util/List;)V

    .line 787
    .line 788
    .line 789
    goto/16 :goto_10

    .line 790
    .line 791
    :pswitch_20
    move-object v14, v7

    .line 792
    and-int v0, v6, v16

    .line 793
    .line 794
    int-to-long v6, v0

    .line 795
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readFloatList(Ljava/util/List;)V

    .line 800
    .line 801
    .line 802
    goto/16 :goto_10

    .line 803
    .line 804
    :pswitch_21
    move-object v14, v7

    .line 805
    and-int v0, v6, v16

    .line 806
    .line 807
    int-to-long v6, v0

    .line 808
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readDoubleList(Ljava/util/List;)V

    .line 813
    .line 814
    .line 815
    goto/16 :goto_10

    .line 816
    .line 817
    :pswitch_22
    move-object v14, v7

    .line 818
    and-int v0, v6, v16

    .line 819
    .line 820
    int-to-long v6, v0

    .line 821
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt64List(Ljava/util/List;)V

    .line 826
    .line 827
    .line 828
    goto/16 :goto_10

    .line 829
    .line 830
    :pswitch_23
    move-object v14, v7

    .line 831
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 832
    .line 833
    .line 834
    move-result-wide v6

    .line 835
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt32List(Ljava/util/List;)V

    .line 840
    .line 841
    .line 842
    goto/16 :goto_10

    .line 843
    .line 844
    :pswitch_24
    move-object v14, v7

    .line 845
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 846
    .line 847
    .line 848
    move-result-wide v6

    .line 849
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed64List(Ljava/util/List;)V

    .line 854
    .line 855
    .line 856
    goto/16 :goto_10

    .line 857
    .line 858
    :pswitch_25
    move-object v14, v7

    .line 859
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 860
    .line 861
    .line 862
    move-result-wide v6

    .line 863
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed32List(Ljava/util/List;)V

    .line 868
    .line 869
    .line 870
    goto/16 :goto_10

    .line 871
    .line 872
    :pswitch_26
    move v12, v3

    .line 873
    move-object v14, v7

    .line 874
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 875
    .line 876
    .line 877
    move-result-wide v6

    .line 878
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readEnumList(Ljava/util/List;)V

    .line 883
    .line 884
    .line 885
    invoke-virtual {v1, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 886
    .line 887
    .line 888
    sget-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 889
    .line 890
    goto/16 :goto_15

    .line 891
    .line 892
    :pswitch_27
    move-object v14, v7

    .line 893
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 894
    .line 895
    .line 896
    move-result-wide v6

    .line 897
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt32List(Ljava/util/List;)V

    .line 902
    .line 903
    .line 904
    goto/16 :goto_10

    .line 905
    .line 906
    :pswitch_28
    move-object v14, v7

    .line 907
    invoke-static {v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 908
    .line 909
    .line 910
    move-result-wide v6

    .line 911
    invoke-virtual {v15, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 912
    .line 913
    .line 914
    move-result-object v0

    .line 915
    invoke-virtual {v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readBytesList(Ljava/util/List;)V
    :try_end_9
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 916
    .line 917
    .line 918
    goto/16 :goto_10

    .line 919
    .line 920
    :pswitch_29
    move v12, v3

    .line 921
    move-object v14, v7

    .line 922
    :try_start_a
    invoke-virtual {v1, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 923
    .line 924
    .line 925
    move-result-object v5
    :try_end_a
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 926
    move v3, v6

    .line 927
    move-object/from16 v6, p3

    .line 928
    .line 929
    :try_start_b
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readMessageList(Ljava/lang/Object;ILandroidx/compose/ui/text/input/GapBuffer;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    :try_end_b
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 930
    .line 931
    .line 932
    move-object v7, v4

    .line 933
    move-object v0, v6

    .line 934
    move-object v6, v1

    .line 935
    goto/16 :goto_11

    .line 936
    .line 937
    :catch_5
    move-object v7, v4

    .line 938
    move-object v0, v6

    .line 939
    move-object v6, v1

    .line 940
    goto/16 :goto_14

    .line 941
    .line 942
    :catch_6
    move-object/from16 v0, p3

    .line 943
    .line 944
    goto/16 :goto_13

    .line 945
    .line 946
    :pswitch_2a
    move-object v0, v5

    .line 947
    move v3, v6

    .line 948
    move-object v14, v7

    .line 949
    move-object v6, v1

    .line 950
    move-object v7, v4

    .line 951
    const/high16 v1, 0x20000000

    .line 952
    .line 953
    and-int/2addr v1, v3

    .line 954
    if-eqz v1, :cond_e

    .line 955
    .line 956
    move v1, v12

    .line 957
    goto :goto_16

    .line 958
    :cond_e
    const/4 v1, 0x0

    .line 959
    :goto_16
    if-eqz v1, :cond_f

    .line 960
    .line 961
    and-int v1, v3, v16

    .line 962
    .line 963
    int-to-long v3, v1

    .line 964
    :try_start_c
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    invoke-virtual {v7, v1, v12}, Landroidx/compose/ui/text/input/GapBuffer;->readStringListInternal(Ljava/util/List;Z)V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_11

    .line 972
    .line 973
    :cond_f
    and-int v1, v3, v16

    .line 974
    .line 975
    int-to-long v3, v1

    .line 976
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 977
    .line 978
    .line 979
    move-result-object v1

    .line 980
    const/4 v3, 0x0

    .line 981
    invoke-virtual {v7, v1, v3}, Landroidx/compose/ui/text/input/GapBuffer;->readStringListInternal(Ljava/util/List;Z)V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_11

    .line 985
    .line 986
    :pswitch_2b
    move-object v0, v5

    .line 987
    move v3, v6

    .line 988
    move-object v14, v7

    .line 989
    move-object v6, v1

    .line 990
    move-object v7, v4

    .line 991
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 992
    .line 993
    .line 994
    move-result-wide v3

    .line 995
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    invoke-virtual {v7, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readBoolList(Ljava/util/List;)V

    .line 1000
    .line 1001
    .line 1002
    goto/16 :goto_11

    .line 1003
    .line 1004
    :catchall_2
    move-exception v0

    .line 1005
    goto/16 :goto_7

    .line 1006
    .line 1007
    :pswitch_2c
    move-object v0, v5

    .line 1008
    move v3, v6

    .line 1009
    move-object v14, v7

    .line 1010
    move-object v6, v1

    .line 1011
    move-object v7, v4

    .line 1012
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1013
    .line 1014
    .line 1015
    move-result-wide v3

    .line 1016
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1017
    .line 1018
    .line 1019
    move-result-object v1

    .line 1020
    invoke-virtual {v7, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed32List(Ljava/util/List;)V

    .line 1021
    .line 1022
    .line 1023
    goto/16 :goto_11

    .line 1024
    .line 1025
    :pswitch_2d
    move-object v0, v5

    .line 1026
    move v3, v6

    .line 1027
    move-object v14, v7

    .line 1028
    move-object v6, v1

    .line 1029
    move-object v7, v4

    .line 1030
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v3

    .line 1034
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v1

    .line 1038
    invoke-virtual {v7, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed64List(Ljava/util/List;)V

    .line 1039
    .line 1040
    .line 1041
    goto/16 :goto_11

    .line 1042
    .line 1043
    :pswitch_2e
    move-object v0, v5

    .line 1044
    move v3, v6

    .line 1045
    move-object v14, v7

    .line 1046
    move-object v6, v1

    .line 1047
    move-object v7, v4

    .line 1048
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1049
    .line 1050
    .line 1051
    move-result-wide v3

    .line 1052
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v1

    .line 1056
    invoke-virtual {v7, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readInt32List(Ljava/util/List;)V

    .line 1057
    .line 1058
    .line 1059
    goto/16 :goto_11

    .line 1060
    .line 1061
    :pswitch_2f
    move-object v0, v5

    .line 1062
    move v3, v6

    .line 1063
    move-object v14, v7

    .line 1064
    move-object v6, v1

    .line 1065
    move-object v7, v4

    .line 1066
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1067
    .line 1068
    .line 1069
    move-result-wide v3

    .line 1070
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v1

    .line 1074
    invoke-virtual {v7, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt64List(Ljava/util/List;)V

    .line 1075
    .line 1076
    .line 1077
    goto/16 :goto_11

    .line 1078
    .line 1079
    :pswitch_30
    move-object v0, v5

    .line 1080
    move v3, v6

    .line 1081
    move-object v14, v7

    .line 1082
    move-object v6, v1

    .line 1083
    move-object v7, v4

    .line 1084
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v3

    .line 1088
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    invoke-virtual {v7, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readInt64List(Ljava/util/List;)V

    .line 1093
    .line 1094
    .line 1095
    goto/16 :goto_11

    .line 1096
    .line 1097
    :pswitch_31
    move-object v0, v5

    .line 1098
    move v3, v6

    .line 1099
    move-object v14, v7

    .line 1100
    move-object v6, v1

    .line 1101
    move-object v7, v4

    .line 1102
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1103
    .line 1104
    .line 1105
    move-result-wide v3

    .line 1106
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    invoke-virtual {v7, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readFloatList(Ljava/util/List;)V

    .line 1111
    .line 1112
    .line 1113
    goto/16 :goto_11

    .line 1114
    .line 1115
    :pswitch_32
    move-object v0, v5

    .line 1116
    move v3, v6

    .line 1117
    move-object v14, v7

    .line 1118
    move-object v6, v1

    .line 1119
    move-object v7, v4

    .line 1120
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1121
    .line 1122
    .line 1123
    move-result-wide v3

    .line 1124
    invoke-virtual {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v1

    .line 1128
    invoke-virtual {v7, v1}, Landroidx/compose/ui/text/input/GapBuffer;->readDoubleList(Ljava/util/List;)V

    .line 1129
    .line 1130
    .line 1131
    goto/16 :goto_11

    .line 1132
    .line 1133
    :pswitch_33
    move v12, v3

    .line 1134
    move-object v0, v5

    .line 1135
    move v3, v6

    .line 1136
    move-object v14, v7

    .line 1137
    move-object v6, v1

    .line 1138
    move-object v7, v4

    .line 1139
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1140
    .line 1141
    .line 1142
    move-result v1

    .line 1143
    if-eqz v1, :cond_10

    .line 1144
    .line 1145
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1146
    .line 1147
    .line 1148
    move-result-wide v4

    .line 1149
    invoke-static {v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v1

    .line 1153
    invoke-virtual {v6, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v4

    .line 1157
    invoke-virtual {v7, v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v4

    .line 1161
    invoke-static {v1, v4}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1166
    .line 1167
    .line 1168
    move-result-wide v3

    .line 1169
    invoke-static {v2, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1170
    .line 1171
    .line 1172
    goto/16 :goto_11

    .line 1173
    .line 1174
    :cond_10
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1175
    .line 1176
    .line 1177
    move-result-wide v3

    .line 1178
    invoke-virtual {v6, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readGroupBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v1

    .line 1186
    invoke-static {v2, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V
    :try_end_c
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1190
    .line 1191
    .line 1192
    goto/16 :goto_11

    .line 1193
    .line 1194
    :pswitch_34
    move v12, v3

    .line 1195
    move-object v0, v5

    .line 1196
    move v3, v6

    .line 1197
    move-object v14, v7

    .line 1198
    move-object v6, v1

    .line 1199
    move-object v7, v4

    .line 1200
    :try_start_d
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1201
    .line 1202
    .line 1203
    move-result-wide v3
    :try_end_d
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1204
    move v15, v10

    .line 1205
    move-object/from16 v16, v11

    .line 1206
    .line 1207
    :try_start_e
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt64()J

    .line 1208
    .line 1209
    .line 1210
    move-result-wide v10

    .line 1211
    invoke-static {v2, v3, v4, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1215
    .line 1216
    .line 1217
    goto/16 :goto_1a

    .line 1218
    .line 1219
    :catchall_3
    move-exception v0

    .line 1220
    :goto_17
    move-object/from16 v11, v16

    .line 1221
    .line 1222
    goto/16 :goto_1f

    .line 1223
    .line 1224
    :catch_7
    :goto_18
    move-object/from16 v11, v16

    .line 1225
    .line 1226
    goto/16 :goto_1b

    .line 1227
    .line 1228
    :catchall_4
    move-exception v0

    .line 1229
    :goto_19
    move v15, v10

    .line 1230
    move-object/from16 v16, v11

    .line 1231
    .line 1232
    goto/16 :goto_1f

    .line 1233
    .line 1234
    :catch_8
    move v15, v10

    .line 1235
    move-object/from16 v16, v11

    .line 1236
    .line 1237
    goto/16 :goto_1b

    .line 1238
    .line 1239
    :pswitch_35
    move v12, v3

    .line 1240
    move-object v0, v5

    .line 1241
    move v3, v6

    .line 1242
    move-object v14, v7

    .line 1243
    move v15, v10

    .line 1244
    move-object/from16 v16, v11

    .line 1245
    .line 1246
    move-object v6, v1

    .line 1247
    move-object v7, v4

    .line 1248
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1249
    .line 1250
    .line 1251
    move-result-wide v3

    .line 1252
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readSInt32()I

    .line 1253
    .line 1254
    .line 1255
    move-result v1

    .line 1256
    invoke-static {v1, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1260
    .line 1261
    .line 1262
    goto/16 :goto_1a

    .line 1263
    .line 1264
    :pswitch_36
    move v12, v3

    .line 1265
    move-object v0, v5

    .line 1266
    move v3, v6

    .line 1267
    move-object v14, v7

    .line 1268
    move v15, v10

    .line 1269
    move-object/from16 v16, v11

    .line 1270
    .line 1271
    move-object v6, v1

    .line 1272
    move-object v7, v4

    .line 1273
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1274
    .line 1275
    .line 1276
    move-result-wide v3

    .line 1277
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed64()J

    .line 1278
    .line 1279
    .line 1280
    move-result-wide v10

    .line 1281
    invoke-static {v2, v3, v4, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1285
    .line 1286
    .line 1287
    goto/16 :goto_1a

    .line 1288
    .line 1289
    :pswitch_37
    move v12, v3

    .line 1290
    move-object v0, v5

    .line 1291
    move v3, v6

    .line 1292
    move-object v14, v7

    .line 1293
    move v15, v10

    .line 1294
    move-object/from16 v16, v11

    .line 1295
    .line 1296
    move-object v6, v1

    .line 1297
    move-object v7, v4

    .line 1298
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1299
    .line 1300
    .line 1301
    move-result-wide v3

    .line 1302
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readSFixed32()I

    .line 1303
    .line 1304
    .line 1305
    move-result v1

    .line 1306
    invoke-static {v1, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1307
    .line 1308
    .line 1309
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1310
    .line 1311
    .line 1312
    goto/16 :goto_1a

    .line 1313
    .line 1314
    :pswitch_38
    move v12, v3

    .line 1315
    move-object v0, v5

    .line 1316
    move v3, v6

    .line 1317
    move-object v14, v7

    .line 1318
    move v15, v10

    .line 1319
    move-object/from16 v16, v11

    .line 1320
    .line 1321
    move-object v6, v1

    .line 1322
    move-object v7, v4

    .line 1323
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readEnum()I

    .line 1324
    .line 1325
    .line 1326
    move-result v1

    .line 1327
    invoke-virtual {v6, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getEnumFieldVerifier(I)V

    .line 1328
    .line 1329
    .line 1330
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1331
    .line 1332
    .line 1333
    move-result-wide v3

    .line 1334
    invoke-static {v1, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1338
    .line 1339
    .line 1340
    goto/16 :goto_1a

    .line 1341
    .line 1342
    :pswitch_39
    move v12, v3

    .line 1343
    move-object v0, v5

    .line 1344
    move v3, v6

    .line 1345
    move-object v14, v7

    .line 1346
    move v15, v10

    .line 1347
    move-object/from16 v16, v11

    .line 1348
    .line 1349
    move-object v6, v1

    .line 1350
    move-object v7, v4

    .line 1351
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1352
    .line 1353
    .line 1354
    move-result-wide v3

    .line 1355
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt32()I

    .line 1356
    .line 1357
    .line 1358
    move-result v1

    .line 1359
    invoke-static {v1, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1363
    .line 1364
    .line 1365
    goto/16 :goto_1a

    .line 1366
    .line 1367
    :pswitch_3a
    move v12, v3

    .line 1368
    move-object v0, v5

    .line 1369
    move v3, v6

    .line 1370
    move-object v14, v7

    .line 1371
    move v15, v10

    .line 1372
    move-object/from16 v16, v11

    .line 1373
    .line 1374
    move-object v6, v1

    .line 1375
    move-object v7, v4

    .line 1376
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1377
    .line 1378
    .line 1379
    move-result-wide v3

    .line 1380
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v1

    .line 1384
    invoke-static {v2, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1388
    .line 1389
    .line 1390
    goto/16 :goto_1a

    .line 1391
    .line 1392
    :pswitch_3b
    move v12, v3

    .line 1393
    move-object v0, v5

    .line 1394
    move v3, v6

    .line 1395
    move-object v14, v7

    .line 1396
    move v15, v10

    .line 1397
    move-object/from16 v16, v11

    .line 1398
    .line 1399
    move-object v6, v1

    .line 1400
    move-object v7, v4

    .line 1401
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v1

    .line 1405
    if-eqz v1, :cond_11

    .line 1406
    .line 1407
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1408
    .line 1409
    .line 1410
    move-result-wide v4

    .line 1411
    invoke-static {v4, v5, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v1

    .line 1415
    invoke-virtual {v6, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v4

    .line 1419
    invoke-virtual {v7, v4, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v4

    .line 1423
    invoke-static {v1, v4}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v1

    .line 1427
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1428
    .line 1429
    .line 1430
    move-result-wide v3

    .line 1431
    invoke-static {v2, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1432
    .line 1433
    .line 1434
    goto/16 :goto_1a

    .line 1435
    .line 1436
    :cond_11
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1437
    .line 1438
    .line 1439
    move-result-wide v3

    .line 1440
    invoke-virtual {v6, v12}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v1

    .line 1444
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/text/input/GapBuffer;->readMessageBySchemaWithCheck(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v1

    .line 1448
    invoke-static {v2, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1452
    .line 1453
    .line 1454
    goto/16 :goto_1a

    .line 1455
    .line 1456
    :pswitch_3c
    move v12, v3

    .line 1457
    move-object v0, v5

    .line 1458
    move v3, v6

    .line 1459
    move-object v14, v7

    .line 1460
    move v15, v10

    .line 1461
    move-object/from16 v16, v11

    .line 1462
    .line 1463
    move-object v6, v1

    .line 1464
    move-object v7, v4

    .line 1465
    invoke-virtual {v6, v3, v7, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->readString(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)V

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1469
    .line 1470
    .line 1471
    goto/16 :goto_1a

    .line 1472
    .line 1473
    :pswitch_3d
    move v12, v3

    .line 1474
    move-object v0, v5

    .line 1475
    move v3, v6

    .line 1476
    move-object v14, v7

    .line 1477
    move v15, v10

    .line 1478
    move-object/from16 v16, v11

    .line 1479
    .line 1480
    move-object v6, v1

    .line 1481
    move-object v7, v4

    .line 1482
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1483
    .line 1484
    .line 1485
    move-result-wide v3

    .line 1486
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readBool()Z

    .line 1487
    .line 1488
    .line 1489
    move-result v1

    .line 1490
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1491
    .line 1492
    invoke-virtual {v5, v2, v3, v4, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1496
    .line 1497
    .line 1498
    goto/16 :goto_1a

    .line 1499
    .line 1500
    :pswitch_3e
    move v12, v3

    .line 1501
    move-object v0, v5

    .line 1502
    move v3, v6

    .line 1503
    move-object v14, v7

    .line 1504
    move v15, v10

    .line 1505
    move-object/from16 v16, v11

    .line 1506
    .line 1507
    move-object v6, v1

    .line 1508
    move-object v7, v4

    .line 1509
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1510
    .line 1511
    .line 1512
    move-result-wide v3

    .line 1513
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed32()I

    .line 1514
    .line 1515
    .line 1516
    move-result v1

    .line 1517
    invoke-static {v1, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1518
    .line 1519
    .line 1520
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1521
    .line 1522
    .line 1523
    goto/16 :goto_1a

    .line 1524
    .line 1525
    :pswitch_3f
    move v12, v3

    .line 1526
    move-object v0, v5

    .line 1527
    move v3, v6

    .line 1528
    move-object v14, v7

    .line 1529
    move v15, v10

    .line 1530
    move-object/from16 v16, v11

    .line 1531
    .line 1532
    move-object v6, v1

    .line 1533
    move-object v7, v4

    .line 1534
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1535
    .line 1536
    .line 1537
    move-result-wide v3

    .line 1538
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readFixed64()J

    .line 1539
    .line 1540
    .line 1541
    move-result-wide v10

    .line 1542
    invoke-static {v2, v3, v4, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1546
    .line 1547
    .line 1548
    goto/16 :goto_1a

    .line 1549
    .line 1550
    :pswitch_40
    move v12, v3

    .line 1551
    move-object v0, v5

    .line 1552
    move v3, v6

    .line 1553
    move-object v14, v7

    .line 1554
    move v15, v10

    .line 1555
    move-object/from16 v16, v11

    .line 1556
    .line 1557
    move-object v6, v1

    .line 1558
    move-object v7, v4

    .line 1559
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1560
    .line 1561
    .line 1562
    move-result-wide v3

    .line 1563
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readInt32()I

    .line 1564
    .line 1565
    .line 1566
    move-result v1

    .line 1567
    invoke-static {v1, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 1568
    .line 1569
    .line 1570
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1571
    .line 1572
    .line 1573
    goto/16 :goto_1a

    .line 1574
    .line 1575
    :pswitch_41
    move v12, v3

    .line 1576
    move-object v0, v5

    .line 1577
    move v3, v6

    .line 1578
    move-object v14, v7

    .line 1579
    move v15, v10

    .line 1580
    move-object/from16 v16, v11

    .line 1581
    .line 1582
    move-object v6, v1

    .line 1583
    move-object v7, v4

    .line 1584
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1585
    .line 1586
    .line 1587
    move-result-wide v3

    .line 1588
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readUInt64()J

    .line 1589
    .line 1590
    .line 1591
    move-result-wide v10

    .line 1592
    invoke-static {v2, v3, v4, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1596
    .line 1597
    .line 1598
    goto/16 :goto_1a

    .line 1599
    .line 1600
    :pswitch_42
    move v12, v3

    .line 1601
    move-object v0, v5

    .line 1602
    move v3, v6

    .line 1603
    move-object v14, v7

    .line 1604
    move v15, v10

    .line 1605
    move-object/from16 v16, v11

    .line 1606
    .line 1607
    move-object v6, v1

    .line 1608
    move-object v7, v4

    .line 1609
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1610
    .line 1611
    .line 1612
    move-result-wide v3

    .line 1613
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readInt64()J

    .line 1614
    .line 1615
    .line 1616
    move-result-wide v10

    .line 1617
    invoke-static {v2, v3, v4, v10, v11}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1618
    .line 1619
    .line 1620
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1621
    .line 1622
    .line 1623
    goto :goto_1a

    .line 1624
    :pswitch_43
    move v12, v3

    .line 1625
    move-object v0, v5

    .line 1626
    move v3, v6

    .line 1627
    move-object v14, v7

    .line 1628
    move v15, v10

    .line 1629
    move-object/from16 v16, v11

    .line 1630
    .line 1631
    move-object v6, v1

    .line 1632
    move-object v7, v4

    .line 1633
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1634
    .line 1635
    .line 1636
    move-result-wide v3

    .line 1637
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readFloat()F

    .line 1638
    .line 1639
    .line 1640
    move-result v1

    .line 1641
    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1642
    .line 1643
    invoke-virtual {v5, v2, v3, v4, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 1644
    .line 1645
    .line 1646
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 1647
    .line 1648
    .line 1649
    goto :goto_1a

    .line 1650
    :pswitch_44
    move v12, v3

    .line 1651
    move-object v0, v5

    .line 1652
    move v3, v6

    .line 1653
    move-object v14, v7

    .line 1654
    move v15, v10

    .line 1655
    move-object/from16 v16, v11

    .line 1656
    .line 1657
    move-object v6, v1

    .line 1658
    move-object v7, v4

    .line 1659
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->offset(I)J

    .line 1660
    .line 1661
    .line 1662
    move-result-wide v3
    :try_end_e
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1663
    move-wide v2, v3

    .line 1664
    :try_start_f
    invoke-virtual {v7}, Landroidx/compose/ui/text/input/GapBuffer;->readDouble()D

    .line 1665
    .line 1666
    .line 1667
    move-result-wide v4

    .line 1668
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;
    :try_end_f
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_f .. :try_end_f} :catch_a
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1669
    .line 1670
    move-object/from16 v1, p1

    .line 1671
    .line 1672
    :try_start_10
    invoke-virtual/range {v0 .. v5}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V
    :try_end_10
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 1673
    .line 1674
    .line 1675
    move-object v2, v1

    .line 1676
    :try_start_11
    invoke-virtual {v6, v12, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V
    :try_end_11
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1677
    .line 1678
    .line 1679
    :goto_1a
    move-object/from16 v11, v16

    .line 1680
    .line 1681
    goto :goto_1e

    .line 1682
    :catchall_5
    move-exception v0

    .line 1683
    move-object v2, v1

    .line 1684
    goto/16 :goto_17

    .line 1685
    .line 1686
    :catch_9
    move-object v2, v1

    .line 1687
    goto/16 :goto_18

    .line 1688
    .line 1689
    :catchall_6
    move-exception v0

    .line 1690
    move-object/from16 v2, p1

    .line 1691
    .line 1692
    goto/16 :goto_17

    .line 1693
    .line 1694
    :catch_a
    move-object/from16 v2, p1

    .line 1695
    .line 1696
    goto/16 :goto_18

    .line 1697
    .line 1698
    :catchall_7
    move-exception v0

    .line 1699
    move-object v6, v1

    .line 1700
    move-object v14, v7

    .line 1701
    goto/16 :goto_19

    .line 1702
    .line 1703
    :catch_b
    move-object v6, v1

    .line 1704
    move-object v14, v7

    .line 1705
    move v15, v10

    .line 1706
    move-object/from16 v16, v11

    .line 1707
    .line 1708
    goto/16 :goto_a

    .line 1709
    .line 1710
    :goto_1b
    :try_start_12
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1711
    .line 1712
    .line 1713
    if-nez v11, :cond_13

    .line 1714
    .line 1715
    move-object v0, v2

    .line 1716
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 1717
    .line 1718
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1719
    .line 1720
    if-ne v1, v13, :cond_12

    .line 1721
    .line 1722
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->newInstance()Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v1

    .line 1726
    iput-object v1, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1727
    .line 1728
    :cond_12
    move-object v11, v1

    .line 1729
    :cond_13
    invoke-static {v11, v7}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;->mergeOneFieldFrom(Ljava/lang/Object;Landroidx/compose/ui/text/input/GapBuffer;)Z

    .line 1730
    .line 1731
    .line 1732
    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 1733
    if-nez v0, :cond_16

    .line 1734
    .line 1735
    move v10, v15

    .line 1736
    :goto_1c
    if-ge v10, v9, :cond_14

    .line 1737
    .line 1738
    aget v0, v8, v10

    .line 1739
    .line 1740
    invoke-virtual {v6, v0, v2, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1741
    .line 1742
    .line 1743
    add-int/lit8 v10, v10, 0x1

    .line 1744
    .line 1745
    goto :goto_1c

    .line 1746
    :cond_14
    if-eqz v11, :cond_15

    .line 1747
    .line 1748
    goto/16 :goto_d

    .line 1749
    .line 1750
    :cond_15
    :goto_1d
    return-void

    .line 1751
    :cond_16
    :goto_1e
    move-object/from16 v5, p3

    .line 1752
    .line 1753
    move-object v1, v6

    .line 1754
    move-object v4, v7

    .line 1755
    move-object v7, v14

    .line 1756
    move v10, v15

    .line 1757
    goto/16 :goto_0

    .line 1758
    .line 1759
    :catchall_8
    move-exception v0

    .line 1760
    goto :goto_1f

    .line 1761
    :catchall_9
    move-exception v0

    .line 1762
    goto/16 :goto_3

    .line 1763
    .line 1764
    :goto_1f
    move v10, v15

    .line 1765
    :goto_20
    if-ge v10, v9, :cond_17

    .line 1766
    .line 1767
    aget v1, v8, v10

    .line 1768
    .line 1769
    invoke-virtual {v6, v1, v2, v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->filterMapUnknownEnumValues(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1770
    .line 1771
    .line 1772
    add-int/lit8 v10, v10, 0x1

    .line 1773
    .line 1774
    goto :goto_20

    .line 1775
    :cond_17
    if-eqz v11, :cond_18

    .line 1776
    .line 1777
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1778
    .line 1779
    .line 1780
    move-object v1, v2

    .line 1781
    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 1782
    .line 1783
    iput-object v11, v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1784
    .line 1785
    :cond_18
    throw v0

    .line 1786
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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

.method public final mergeMap(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/compose/ui/text/input/GapBuffer;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const v0, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p2, v0

    .line 9
    int-to-long v0, p2

    .line 10
    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object p2, Landroidx/datastore/preferences/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->mutableCopy()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-object v2, p2

    .line 35
    check-cast v2, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 36
    .line 37
    iget-boolean v2, v2, Landroidx/datastore/preferences/protobuf/MapFieldLite;->isMutable:Z

    .line 38
    .line 39
    if-nez v2, :cond_1

    .line 40
    .line 41
    sget-object v2, Landroidx/datastore/preferences/protobuf/MapFieldLite;->EMPTY_MAP_FIELD:Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->mutableCopy()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object p2, v2

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    check-cast p2, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 58
    .line 59
    check-cast p3, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    .line 60
    .line 61
    iget-object p0, p3, Landroidx/datastore/preferences/protobuf/MapEntryLite;->metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 62
    .line 63
    const/4 p1, 0x2

    .line 64
    invoke-virtual {p5, p1}, Landroidx/compose/ui/text/input/GapBuffer;->requireWireType$1(I)V

    .line 65
    .line 66
    .line 67
    iget-object p3, p5, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p3, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 70
    .line 71
    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readUInt32()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->pushLimit(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 80
    .line 81
    const-string v2, ""

    .line 82
    .line 83
    move-object v3, v1

    .line 84
    :goto_1
    :try_start_0
    invoke-virtual {p5}, Landroidx/compose/ui/text/input/GapBuffer;->getFieldNumber()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const v5, 0x7fffffff

    .line 89
    .line 90
    .line 91
    if-eq v4, v5, :cond_7

    .line 92
    .line 93
    invoke-virtual {p3}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    .line 94
    .line 95
    .line 96
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v5, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const/4 v5, 0x1

    .line 101
    const-string v6, "Unable to parse map entry."

    .line 102
    .line 103
    if-eq v4, v5, :cond_5

    .line 104
    .line 105
    if-eq v4, p1, :cond_4

    .line 106
    .line 107
    :try_start_1
    invoke-virtual {p5}, Landroidx/compose/ui/text/input/GapBuffer;->skipField()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_3
    new-instance v4, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 115
    .line 116
    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v4

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {p5, v4, v5, p4}, Landroidx/compose/ui/text/input/GapBuffer;->readField$1(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    goto :goto_1

    .line 133
    :cond_5
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    invoke-virtual {p5, v4, v5, v5}, Landroidx/compose/ui/text/input/GapBuffer;->readField$1(Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2
    :try_end_1
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    goto :goto_1

    .line 141
    :catch_0
    :try_start_2
    invoke-virtual {p5}, Landroidx/compose/ui/text/input/GapBuffer;->skipField()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_6

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    new-instance p0, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;

    .line 149
    .line 150
    invoke-direct {p0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_7
    :goto_2
    invoke-virtual {p2, v2, v3}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :goto_3
    invoke-virtual {p3, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->popLimit(I)V

    .line 162
    .line 163
    .line 164
    throw p0
.end method

.method public final mergeMessage(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xfffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    int-to-long v0, v0

    .line 10
    invoke-virtual {p0, p3, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    invoke-static {v2, p2}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-static {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setFieldPresent(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public final mergeOneofMessage(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 6
    .line 7
    aget v1, v1, p3

    .line 8
    .line 9
    const v2, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v2

    .line 13
    int-to-long v2, v0

    .line 14
    invoke-virtual {p0, v1, p3, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v2, v3, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v2, v3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    if-eqz p2, :cond_1

    .line 32
    .line 33
    invoke-static {v0, p2}, Landroidx/datastore/preferences/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p1, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-static {p1, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->setOneofPresent(IILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->newInstanceSchema:Landroidx/datastore/preferences/protobuf/NewInstanceSchemaLite;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->defaultInstance:Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 7
    .line 8
    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 9
    .line 10
    sget-object v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->dynamicMethod(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final readMessageList(Ljava/lang/Object;ILandroidx/compose/ui/text/input/GapBuffer;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 2

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p2, v0

    .line 5
    int-to-long v0, p2

    .line 6
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->listFieldSchema:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->mutableListAt(JLjava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget-object p1, p3, Landroidx/compose/ui/text/input/GapBuffer;->buffer:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;

    .line 15
    .line 16
    iget p2, p3, Landroidx/compose/ui/text/input/GapBuffer;->capacity:I

    .line 17
    .line 18
    and-int/lit8 v0, p2, 0x7

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p3, p4, p5}, Landroidx/compose/ui/text/input/GapBuffer;->readMessage$1(Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->isAtEnd()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget v0, p3, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/CodedInputStream$StreamDecoder;->readTag()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eq v0, p2, :cond_0

    .line 46
    .line 47
    iput v0, p3, Landroidx/compose/ui/text/input/GapBuffer;->gapEnd:I

    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void

    .line 50
    :cond_3
    invoke-static {}, Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;->invalidWireType()Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    throw p0
.end method

.method public final readString(ILandroidx/compose/ui/text/input/GapBuffer;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/high16 v0, 0x20000000

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const v1, 0xfffff

    .line 5
    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    and-int p0, p1, v1

    .line 10
    .line 11
    int-to-long p0, p0

    .line 12
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/GapBuffer;->readStringRequireUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p3, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->lite:Z

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    and-int p0, p1, v1

    .line 25
    .line 26
    int-to-long p0, p0

    .line 27
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/GapBuffer;->readString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-static {p3, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    and-int p0, p1, v1

    .line 36
    .line 37
    int-to-long p0, p0

    .line 38
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/GapBuffer;->readBytes()Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p3, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final setFieldPresent(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 9
    .line 10
    aget p0, p0, p1

    .line 11
    .line 12
    ushr-int/lit8 p1, p0, 0x14

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    shl-int p1, v0, p1

    .line 16
    .line 17
    const v0, 0xfffff

    .line 18
    .line 19
    .line 20
    and-int/2addr p0, v0

    .line 21
    int-to-long v0, p0

    .line 22
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    or-int/2addr p0, p1

    .line 27
    invoke-static {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final setOneofPresent(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p2

    .line 6
    .line 7
    const p2, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p0, p2

    .line 11
    int-to-long v0, p0

    .line 12
    invoke-static {p1, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final typeAndOffsetAt(I)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 4
    .line 5
    aget p0, p0, p1

    .line 6
    .line 7
    return p0
.end method

.method public final writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V
    .locals 18

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
    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    const/4 v5, -0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    const/4 v8, 0x0

    .line 13
    :goto_0
    if-ge v7, v4, :cond_4

    .line 14
    .line 15
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    aget v10, v3, v7

    .line 20
    .line 21
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    iget-boolean v12, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 26
    .line 27
    const/4 v14, 0x1

    .line 28
    sget-object v15, Landroidx/datastore/preferences/protobuf/MessageSchema;->UNSAFE:Lsun/misc/Unsafe;

    .line 29
    .line 30
    if-nez v12, :cond_1

    .line 31
    .line 32
    const/16 v12, 0x11

    .line 33
    .line 34
    if-gt v11, v12, :cond_1

    .line 35
    .line 36
    add-int/lit8 v12, v7, 0x2

    .line 37
    .line 38
    aget v12, v3, v12

    .line 39
    .line 40
    const v16, 0xfffff

    .line 41
    .line 42
    .line 43
    and-int v13, v12, v16

    .line 44
    .line 45
    move/from16 v17, v7

    .line 46
    .line 47
    if-eq v13, v5, :cond_0

    .line 48
    .line 49
    int-to-long v6, v13

    .line 50
    invoke-virtual {v15, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    move v5, v13

    .line 55
    :cond_0
    ushr-int/lit8 v6, v12, 0x14

    .line 56
    .line 57
    shl-int v6, v14, v6

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move/from16 v17, v7

    .line 61
    .line 62
    const v16, 0xfffff

    .line 63
    .line 64
    .line 65
    const/4 v6, 0x0

    .line 66
    :goto_1
    and-int v7, v9, v16

    .line 67
    .line 68
    int-to-long v12, v7

    .line 69
    packed-switch v11, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    move/from16 v7, v17

    .line 73
    .line 74
    :cond_2
    :goto_2
    const/4 v11, 0x0

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :pswitch_0
    move/from16 v7, v17

    .line 78
    .line 79
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_2

    .line 84
    .line 85
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v2, v10, v6, v9}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :pswitch_1
    move/from16 v7, v17

    .line 98
    .line 99
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-eqz v6, :cond_2

    .line 104
    .line 105
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v11

    .line 109
    invoke-virtual {v2, v11, v12, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt64(JI)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :pswitch_2
    move/from16 v7, v17

    .line 114
    .line 115
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_2

    .line 120
    .line 121
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt32(II)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_3
    move/from16 v7, v17

    .line 130
    .line 131
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    if-eqz v6, :cond_2

    .line 136
    .line 137
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v11

    .line 141
    invoke-virtual {v2, v11, v12, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed64(JI)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :pswitch_4
    move/from16 v7, v17

    .line 146
    .line 147
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-eqz v6, :cond_2

    .line 152
    .line 153
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed32(II)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :pswitch_5
    move/from16 v7, v17

    .line 162
    .line 163
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_2

    .line 168
    .line 169
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeEnum(II)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :pswitch_6
    move/from16 v7, v17

    .line 178
    .line 179
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_2

    .line 184
    .line 185
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt32(II)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :pswitch_7
    move/from16 v7, v17

    .line 194
    .line 195
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-eqz v6, :cond_2

    .line 200
    .line 201
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 206
    .line 207
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_2

    .line 211
    .line 212
    :pswitch_8
    move/from16 v7, v17

    .line 213
    .line 214
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    if-eqz v6, :cond_2

    .line 219
    .line 220
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    invoke-virtual {v2, v10, v6, v9}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_2

    .line 232
    .line 233
    :pswitch_9
    move/from16 v7, v17

    .line 234
    .line 235
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_2

    .line 240
    .line 241
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-static {v10, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 246
    .line 247
    .line 248
    goto/16 :goto_2

    .line 249
    .line 250
    :pswitch_a
    move/from16 v7, v17

    .line 251
    .line 252
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eqz v6, :cond_2

    .line 257
    .line 258
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    check-cast v6, Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBool(IZ)V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_2

    .line 272
    .line 273
    :pswitch_b
    move/from16 v7, v17

    .line 274
    .line 275
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v6

    .line 279
    if-eqz v6, :cond_2

    .line 280
    .line 281
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 282
    .line 283
    .line 284
    move-result v6

    .line 285
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed32(II)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :pswitch_c
    move/from16 v7, v17

    .line 291
    .line 292
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-eqz v6, :cond_2

    .line 297
    .line 298
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 299
    .line 300
    .line 301
    move-result-wide v11

    .line 302
    invoke-virtual {v2, v11, v12, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed64(JI)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :pswitch_d
    move/from16 v7, v17

    .line 308
    .line 309
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v6

    .line 313
    if-eqz v6, :cond_2

    .line 314
    .line 315
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt32(II)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_2

    .line 323
    .line 324
    :pswitch_e
    move/from16 v7, v17

    .line 325
    .line 326
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    if-eqz v6, :cond_2

    .line 331
    .line 332
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 333
    .line 334
    .line 335
    move-result-wide v11

    .line 336
    invoke-virtual {v2, v11, v12, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt64(JI)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_2

    .line 340
    .line 341
    :pswitch_f
    move/from16 v7, v17

    .line 342
    .line 343
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    if-eqz v6, :cond_2

    .line 348
    .line 349
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 350
    .line 351
    .line 352
    move-result-wide v11

    .line 353
    invoke-virtual {v2, v11, v12, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt64(JI)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_2

    .line 357
    .line 358
    :pswitch_10
    move/from16 v7, v17

    .line 359
    .line 360
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    if-eqz v6, :cond_2

    .line 365
    .line 366
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    check-cast v6, Ljava/lang/Float;

    .line 371
    .line 372
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFloat(IF)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_2

    .line 380
    .line 381
    :pswitch_11
    move/from16 v7, v17

    .line 382
    .line 383
    invoke-virtual {v0, v10, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v6

    .line 387
    if-eqz v6, :cond_2

    .line 388
    .line 389
    invoke-static {v12, v13, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    check-cast v6, Ljava/lang/Double;

    .line 394
    .line 395
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 396
    .line 397
    .line 398
    move-result-wide v11

    .line 399
    invoke-virtual {v2, v11, v12, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeDouble(DI)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_2

    .line 403
    .line 404
    :pswitch_12
    move/from16 v7, v17

    .line 405
    .line 406
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    invoke-virtual {v0, v2, v10, v6, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeMapHelper(Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;ILjava/lang/Object;I)V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_2

    .line 414
    .line 415
    :pswitch_13
    move/from16 v7, v17

    .line 416
    .line 417
    aget v6, v3, v7

    .line 418
    .line 419
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    check-cast v9, Ljava/util/List;

    .line 424
    .line 425
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 426
    .line 427
    .line 428
    move-result-object v10

    .line 429
    invoke-static {v6, v9, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 430
    .line 431
    .line 432
    goto/16 :goto_2

    .line 433
    .line 434
    :pswitch_14
    move/from16 v7, v17

    .line 435
    .line 436
    aget v6, v3, v7

    .line 437
    .line 438
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v9

    .line 442
    check-cast v9, Ljava/util/List;

    .line 443
    .line 444
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 445
    .line 446
    .line 447
    goto/16 :goto_2

    .line 448
    .line 449
    :pswitch_15
    move/from16 v7, v17

    .line 450
    .line 451
    aget v6, v3, v7

    .line 452
    .line 453
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    check-cast v9, Ljava/util/List;

    .line 458
    .line 459
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_2

    .line 463
    .line 464
    :pswitch_16
    move/from16 v7, v17

    .line 465
    .line 466
    aget v6, v3, v7

    .line 467
    .line 468
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v9

    .line 472
    check-cast v9, Ljava/util/List;

    .line 473
    .line 474
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_2

    .line 478
    .line 479
    :pswitch_17
    move/from16 v7, v17

    .line 480
    .line 481
    aget v6, v3, v7

    .line 482
    .line 483
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v9

    .line 487
    check-cast v9, Ljava/util/List;

    .line 488
    .line 489
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 490
    .line 491
    .line 492
    goto/16 :goto_2

    .line 493
    .line 494
    :pswitch_18
    move/from16 v7, v17

    .line 495
    .line 496
    aget v6, v3, v7

    .line 497
    .line 498
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v9

    .line 502
    check-cast v9, Ljava/util/List;

    .line 503
    .line 504
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_2

    .line 508
    .line 509
    :pswitch_19
    move/from16 v7, v17

    .line 510
    .line 511
    aget v6, v3, v7

    .line 512
    .line 513
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v9

    .line 517
    check-cast v9, Ljava/util/List;

    .line 518
    .line 519
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_2

    .line 523
    .line 524
    :pswitch_1a
    move/from16 v7, v17

    .line 525
    .line 526
    aget v6, v3, v7

    .line 527
    .line 528
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    check-cast v9, Ljava/util/List;

    .line 533
    .line 534
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_2

    .line 538
    .line 539
    :pswitch_1b
    move/from16 v7, v17

    .line 540
    .line 541
    aget v6, v3, v7

    .line 542
    .line 543
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v9

    .line 547
    check-cast v9, Ljava/util/List;

    .line 548
    .line 549
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_2

    .line 553
    .line 554
    :pswitch_1c
    move/from16 v7, v17

    .line 555
    .line 556
    aget v6, v3, v7

    .line 557
    .line 558
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v9

    .line 562
    check-cast v9, Ljava/util/List;

    .line 563
    .line 564
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_2

    .line 568
    .line 569
    :pswitch_1d
    move/from16 v7, v17

    .line 570
    .line 571
    aget v6, v3, v7

    .line 572
    .line 573
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v9

    .line 577
    check-cast v9, Ljava/util/List;

    .line 578
    .line 579
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_2

    .line 583
    .line 584
    :pswitch_1e
    move/from16 v7, v17

    .line 585
    .line 586
    aget v6, v3, v7

    .line 587
    .line 588
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v9

    .line 592
    check-cast v9, Ljava/util/List;

    .line 593
    .line 594
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_2

    .line 598
    .line 599
    :pswitch_1f
    move/from16 v7, v17

    .line 600
    .line 601
    aget v6, v3, v7

    .line 602
    .line 603
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v9

    .line 607
    check-cast v9, Ljava/util/List;

    .line 608
    .line 609
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 610
    .line 611
    .line 612
    goto/16 :goto_2

    .line 613
    .line 614
    :pswitch_20
    move/from16 v7, v17

    .line 615
    .line 616
    aget v6, v3, v7

    .line 617
    .line 618
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v9

    .line 622
    check-cast v9, Ljava/util/List;

    .line 623
    .line 624
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 625
    .line 626
    .line 627
    goto/16 :goto_2

    .line 628
    .line 629
    :pswitch_21
    move/from16 v7, v17

    .line 630
    .line 631
    aget v6, v3, v7

    .line 632
    .line 633
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v9

    .line 637
    check-cast v9, Ljava/util/List;

    .line 638
    .line 639
    invoke-static {v6, v9, v2, v14}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 640
    .line 641
    .line 642
    goto/16 :goto_2

    .line 643
    .line 644
    :pswitch_22
    move/from16 v7, v17

    .line 645
    .line 646
    aget v6, v3, v7

    .line 647
    .line 648
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v9

    .line 652
    check-cast v9, Ljava/util/List;

    .line 653
    .line 654
    const/4 v10, 0x0

    .line 655
    invoke-static {v6, v9, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 656
    .line 657
    .line 658
    :goto_3
    move v11, v10

    .line 659
    goto/16 :goto_4

    .line 660
    .line 661
    :pswitch_23
    move/from16 v7, v17

    .line 662
    .line 663
    const/4 v10, 0x0

    .line 664
    aget v6, v3, v7

    .line 665
    .line 666
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v9

    .line 670
    check-cast v9, Ljava/util/List;

    .line 671
    .line 672
    invoke-static {v6, v9, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 673
    .line 674
    .line 675
    goto :goto_3

    .line 676
    :pswitch_24
    move/from16 v7, v17

    .line 677
    .line 678
    const/4 v10, 0x0

    .line 679
    aget v6, v3, v7

    .line 680
    .line 681
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v9

    .line 685
    check-cast v9, Ljava/util/List;

    .line 686
    .line 687
    invoke-static {v6, v9, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 688
    .line 689
    .line 690
    goto :goto_3

    .line 691
    :pswitch_25
    move/from16 v7, v17

    .line 692
    .line 693
    const/4 v10, 0x0

    .line 694
    aget v6, v3, v7

    .line 695
    .line 696
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v9

    .line 700
    check-cast v9, Ljava/util/List;

    .line 701
    .line 702
    invoke-static {v6, v9, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 703
    .line 704
    .line 705
    goto :goto_3

    .line 706
    :pswitch_26
    move/from16 v7, v17

    .line 707
    .line 708
    const/4 v10, 0x0

    .line 709
    aget v6, v3, v7

    .line 710
    .line 711
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v9

    .line 715
    check-cast v9, Ljava/util/List;

    .line 716
    .line 717
    invoke-static {v6, v9, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 718
    .line 719
    .line 720
    goto :goto_3

    .line 721
    :pswitch_27
    move/from16 v7, v17

    .line 722
    .line 723
    const/4 v10, 0x0

    .line 724
    aget v6, v3, v7

    .line 725
    .line 726
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v9

    .line 730
    check-cast v9, Ljava/util/List;

    .line 731
    .line 732
    invoke-static {v6, v9, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 733
    .line 734
    .line 735
    goto :goto_3

    .line 736
    :pswitch_28
    move/from16 v7, v17

    .line 737
    .line 738
    aget v6, v3, v7

    .line 739
    .line 740
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v9

    .line 744
    check-cast v9, Ljava/util/List;

    .line 745
    .line 746
    invoke-static {v6, v9, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 747
    .line 748
    .line 749
    goto/16 :goto_2

    .line 750
    .line 751
    :pswitch_29
    move/from16 v7, v17

    .line 752
    .line 753
    aget v6, v3, v7

    .line 754
    .line 755
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v9

    .line 759
    check-cast v9, Ljava/util/List;

    .line 760
    .line 761
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 762
    .line 763
    .line 764
    move-result-object v10

    .line 765
    invoke-static {v6, v9, v2, v10}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 766
    .line 767
    .line 768
    goto/16 :goto_2

    .line 769
    .line 770
    :pswitch_2a
    move/from16 v7, v17

    .line 771
    .line 772
    aget v6, v3, v7

    .line 773
    .line 774
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v9

    .line 778
    check-cast v9, Ljava/util/List;

    .line 779
    .line 780
    invoke-static {v6, v9, v2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 781
    .line 782
    .line 783
    goto/16 :goto_2

    .line 784
    .line 785
    :pswitch_2b
    move/from16 v7, v17

    .line 786
    .line 787
    aget v6, v3, v7

    .line 788
    .line 789
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object v9

    .line 793
    check-cast v9, Ljava/util/List;

    .line 794
    .line 795
    const/4 v11, 0x0

    .line 796
    invoke-static {v6, v9, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 797
    .line 798
    .line 799
    goto/16 :goto_4

    .line 800
    .line 801
    :pswitch_2c
    move/from16 v7, v17

    .line 802
    .line 803
    const/4 v11, 0x0

    .line 804
    aget v6, v3, v7

    .line 805
    .line 806
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v9

    .line 810
    check-cast v9, Ljava/util/List;

    .line 811
    .line 812
    invoke-static {v6, v9, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 813
    .line 814
    .line 815
    goto/16 :goto_4

    .line 816
    .line 817
    :pswitch_2d
    move/from16 v7, v17

    .line 818
    .line 819
    const/4 v11, 0x0

    .line 820
    aget v6, v3, v7

    .line 821
    .line 822
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v9

    .line 826
    check-cast v9, Ljava/util/List;

    .line 827
    .line 828
    invoke-static {v6, v9, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_4

    .line 832
    .line 833
    :pswitch_2e
    move/from16 v7, v17

    .line 834
    .line 835
    const/4 v11, 0x0

    .line 836
    aget v6, v3, v7

    .line 837
    .line 838
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v9

    .line 842
    check-cast v9, Ljava/util/List;

    .line 843
    .line 844
    invoke-static {v6, v9, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_4

    .line 848
    .line 849
    :pswitch_2f
    move/from16 v7, v17

    .line 850
    .line 851
    const/4 v11, 0x0

    .line 852
    aget v6, v3, v7

    .line 853
    .line 854
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v9

    .line 858
    check-cast v9, Ljava/util/List;

    .line 859
    .line 860
    invoke-static {v6, v9, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 861
    .line 862
    .line 863
    goto/16 :goto_4

    .line 864
    .line 865
    :pswitch_30
    move/from16 v7, v17

    .line 866
    .line 867
    const/4 v11, 0x0

    .line 868
    aget v6, v3, v7

    .line 869
    .line 870
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v9

    .line 874
    check-cast v9, Ljava/util/List;

    .line 875
    .line 876
    invoke-static {v6, v9, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 877
    .line 878
    .line 879
    goto/16 :goto_4

    .line 880
    .line 881
    :pswitch_31
    move/from16 v7, v17

    .line 882
    .line 883
    const/4 v11, 0x0

    .line 884
    aget v6, v3, v7

    .line 885
    .line 886
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v9

    .line 890
    check-cast v9, Ljava/util/List;

    .line 891
    .line 892
    invoke-static {v6, v9, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 893
    .line 894
    .line 895
    goto/16 :goto_4

    .line 896
    .line 897
    :pswitch_32
    move/from16 v7, v17

    .line 898
    .line 899
    const/4 v11, 0x0

    .line 900
    aget v6, v3, v7

    .line 901
    .line 902
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object v9

    .line 906
    check-cast v9, Ljava/util/List;

    .line 907
    .line 908
    invoke-static {v6, v9, v2, v11}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 909
    .line 910
    .line 911
    goto/16 :goto_4

    .line 912
    .line 913
    :pswitch_33
    move/from16 v7, v17

    .line 914
    .line 915
    const/4 v11, 0x0

    .line 916
    and-int/2addr v6, v8

    .line 917
    if-eqz v6, :cond_3

    .line 918
    .line 919
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object v6

    .line 923
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 924
    .line 925
    .line 926
    move-result-object v9

    .line 927
    invoke-virtual {v2, v10, v6, v9}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 928
    .line 929
    .line 930
    goto/16 :goto_4

    .line 931
    .line 932
    :pswitch_34
    move/from16 v7, v17

    .line 933
    .line 934
    const/4 v11, 0x0

    .line 935
    and-int/2addr v6, v8

    .line 936
    if-eqz v6, :cond_3

    .line 937
    .line 938
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 939
    .line 940
    .line 941
    move-result-wide v12

    .line 942
    invoke-virtual {v2, v12, v13, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt64(JI)V

    .line 943
    .line 944
    .line 945
    goto/16 :goto_4

    .line 946
    .line 947
    :pswitch_35
    move/from16 v7, v17

    .line 948
    .line 949
    const/4 v11, 0x0

    .line 950
    and-int/2addr v6, v8

    .line 951
    if-eqz v6, :cond_3

    .line 952
    .line 953
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 954
    .line 955
    .line 956
    move-result v6

    .line 957
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt32(II)V

    .line 958
    .line 959
    .line 960
    goto/16 :goto_4

    .line 961
    .line 962
    :pswitch_36
    move/from16 v7, v17

    .line 963
    .line 964
    const/4 v11, 0x0

    .line 965
    and-int/2addr v6, v8

    .line 966
    if-eqz v6, :cond_3

    .line 967
    .line 968
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 969
    .line 970
    .line 971
    move-result-wide v12

    .line 972
    invoke-virtual {v2, v12, v13, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed64(JI)V

    .line 973
    .line 974
    .line 975
    goto/16 :goto_4

    .line 976
    .line 977
    :pswitch_37
    move/from16 v7, v17

    .line 978
    .line 979
    const/4 v11, 0x0

    .line 980
    and-int/2addr v6, v8

    .line 981
    if-eqz v6, :cond_3

    .line 982
    .line 983
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 984
    .line 985
    .line 986
    move-result v6

    .line 987
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed32(II)V

    .line 988
    .line 989
    .line 990
    goto/16 :goto_4

    .line 991
    .line 992
    :pswitch_38
    move/from16 v7, v17

    .line 993
    .line 994
    const/4 v11, 0x0

    .line 995
    and-int/2addr v6, v8

    .line 996
    if-eqz v6, :cond_3

    .line 997
    .line 998
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 999
    .line 1000
    .line 1001
    move-result v6

    .line 1002
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeEnum(II)V

    .line 1003
    .line 1004
    .line 1005
    goto/16 :goto_4

    .line 1006
    .line 1007
    :pswitch_39
    move/from16 v7, v17

    .line 1008
    .line 1009
    const/4 v11, 0x0

    .line 1010
    and-int/2addr v6, v8

    .line 1011
    if-eqz v6, :cond_3

    .line 1012
    .line 1013
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1014
    .line 1015
    .line 1016
    move-result v6

    .line 1017
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt32(II)V

    .line 1018
    .line 1019
    .line 1020
    goto/16 :goto_4

    .line 1021
    .line 1022
    :pswitch_3a
    move/from16 v7, v17

    .line 1023
    .line 1024
    const/4 v11, 0x0

    .line 1025
    and-int/2addr v6, v8

    .line 1026
    if-eqz v6, :cond_3

    .line 1027
    .line 1028
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v6

    .line 1032
    check-cast v6, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1033
    .line 1034
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)V

    .line 1035
    .line 1036
    .line 1037
    goto/16 :goto_4

    .line 1038
    .line 1039
    :pswitch_3b
    move/from16 v7, v17

    .line 1040
    .line 1041
    const/4 v11, 0x0

    .line 1042
    and-int/2addr v6, v8

    .line 1043
    if-eqz v6, :cond_3

    .line 1044
    .line 1045
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v6

    .line 1049
    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v9

    .line 1053
    invoke-virtual {v2, v10, v6, v9}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1054
    .line 1055
    .line 1056
    goto/16 :goto_4

    .line 1057
    .line 1058
    :pswitch_3c
    move/from16 v7, v17

    .line 1059
    .line 1060
    const/4 v11, 0x0

    .line 1061
    and-int/2addr v6, v8

    .line 1062
    if-eqz v6, :cond_3

    .line 1063
    .line 1064
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v6

    .line 1068
    invoke-static {v10, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 1069
    .line 1070
    .line 1071
    goto/16 :goto_4

    .line 1072
    .line 1073
    :pswitch_3d
    move/from16 v7, v17

    .line 1074
    .line 1075
    const/4 v11, 0x0

    .line 1076
    and-int/2addr v6, v8

    .line 1077
    if-eqz v6, :cond_3

    .line 1078
    .line 1079
    sget-object v6, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1080
    .line 1081
    invoke-virtual {v6, v12, v13, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result v6

    .line 1085
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBool(IZ)V

    .line 1086
    .line 1087
    .line 1088
    goto/16 :goto_4

    .line 1089
    .line 1090
    :pswitch_3e
    move/from16 v7, v17

    .line 1091
    .line 1092
    const/4 v11, 0x0

    .line 1093
    and-int/2addr v6, v8

    .line 1094
    if-eqz v6, :cond_3

    .line 1095
    .line 1096
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1097
    .line 1098
    .line 1099
    move-result v6

    .line 1100
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed32(II)V

    .line 1101
    .line 1102
    .line 1103
    goto :goto_4

    .line 1104
    :pswitch_3f
    move/from16 v7, v17

    .line 1105
    .line 1106
    const/4 v11, 0x0

    .line 1107
    and-int/2addr v6, v8

    .line 1108
    if-eqz v6, :cond_3

    .line 1109
    .line 1110
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1111
    .line 1112
    .line 1113
    move-result-wide v12

    .line 1114
    invoke-virtual {v2, v12, v13, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed64(JI)V

    .line 1115
    .line 1116
    .line 1117
    goto :goto_4

    .line 1118
    :pswitch_40
    move/from16 v7, v17

    .line 1119
    .line 1120
    const/4 v11, 0x0

    .line 1121
    and-int/2addr v6, v8

    .line 1122
    if-eqz v6, :cond_3

    .line 1123
    .line 1124
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1125
    .line 1126
    .line 1127
    move-result v6

    .line 1128
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt32(II)V

    .line 1129
    .line 1130
    .line 1131
    goto :goto_4

    .line 1132
    :pswitch_41
    move/from16 v7, v17

    .line 1133
    .line 1134
    const/4 v11, 0x0

    .line 1135
    and-int/2addr v6, v8

    .line 1136
    if-eqz v6, :cond_3

    .line 1137
    .line 1138
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1139
    .line 1140
    .line 1141
    move-result-wide v12

    .line 1142
    invoke-virtual {v2, v12, v13, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt64(JI)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_4

    .line 1146
    :pswitch_42
    move/from16 v7, v17

    .line 1147
    .line 1148
    const/4 v11, 0x0

    .line 1149
    and-int/2addr v6, v8

    .line 1150
    if-eqz v6, :cond_3

    .line 1151
    .line 1152
    invoke-virtual {v15, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1153
    .line 1154
    .line 1155
    move-result-wide v12

    .line 1156
    invoke-virtual {v2, v12, v13, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt64(JI)V

    .line 1157
    .line 1158
    .line 1159
    goto :goto_4

    .line 1160
    :pswitch_43
    move/from16 v7, v17

    .line 1161
    .line 1162
    const/4 v11, 0x0

    .line 1163
    and-int/2addr v6, v8

    .line 1164
    if-eqz v6, :cond_3

    .line 1165
    .line 1166
    sget-object v6, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1167
    .line 1168
    invoke-virtual {v6, v12, v13, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 1169
    .line 1170
    .line 1171
    move-result v6

    .line 1172
    invoke-virtual {v2, v10, v6}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFloat(IF)V

    .line 1173
    .line 1174
    .line 1175
    goto :goto_4

    .line 1176
    :pswitch_44
    move/from16 v7, v17

    .line 1177
    .line 1178
    const/4 v11, 0x0

    .line 1179
    and-int/2addr v6, v8

    .line 1180
    if-eqz v6, :cond_3

    .line 1181
    .line 1182
    sget-object v6, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1183
    .line 1184
    invoke-virtual {v6, v12, v13, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 1185
    .line 1186
    .line 1187
    move-result-wide v12

    .line 1188
    invoke-virtual {v2, v12, v13, v10}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeDouble(DI)V

    .line 1189
    .line 1190
    .line 1191
    :cond_3
    :goto_4
    add-int/lit8 v7, v7, 0x3

    .line 1192
    .line 1193
    goto/16 :goto_0

    .line 1194
    .line 1195
    :cond_4
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 1196
    .line 1197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1198
    .line 1199
    .line 1200
    move-object v0, v1

    .line 1201
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 1202
    .line 1203
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 1204
    .line 1205
    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 1206
    .line 1207
    .line 1208
    return-void

    .line 1209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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

.method public final writeMapHelper(Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;ILjava/lang/Object;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p3, :cond_6

    .line 4
    .line 5
    move/from16 v1, p4

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMapFieldDefaultEntry(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->mapFieldSchema:Landroidx/datastore/preferences/protobuf/MapFieldSchemaLite;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast v1, Landroidx/datastore/preferences/protobuf/MapEntryLite;

    .line 17
    .line 18
    iget-object v0, v1, Landroidx/datastore/preferences/protobuf/MapEntryLite;->metadata:Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    .line 19
    .line 20
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->valueType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->keyType:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 23
    .line 24
    move-object/from16 v2, p3

    .line 25
    .line 26
    check-cast v2, Landroidx/datastore/preferences/protobuf/MapFieldLite;

    .line 27
    .line 28
    move-object/from16 v3, p1

    .line 29
    .line 30
    iget-object v3, v3, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->messageInfoFactory:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;

    .line 33
    .line 34
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_6

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/util/Map$Entry;

    .line 53
    .line 54
    const/4 v5, 0x2

    .line 55
    move/from16 v6, p2

    .line 56
    .line 57
    invoke-virtual {v3, v6, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeTag(II)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    sget v9, Landroidx/datastore/preferences/protobuf/FieldSet;->$r8$clinit:I

    .line 69
    .line 70
    const/4 v9, 0x1

    .line 71
    invoke-static {v9}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 72
    .line 73
    .line 74
    move-result v10

    .line 75
    sget-object v11, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->GROUP:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    .line 76
    .line 77
    if-ne v0, v11, :cond_0

    .line 78
    .line 79
    mul-int/lit8 v10, v10, 0x2

    .line 80
    .line 81
    :cond_0
    sget-object v12, Landroidx/datastore/preferences/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    aget v13, v12, v13

    .line 88
    .line 89
    const/16 v14, 0x3f

    .line 90
    .line 91
    const-string v15, "There is no way to get here, but the compiler thinks otherwise."

    .line 92
    .line 93
    const/16 v16, 0x8

    .line 94
    .line 95
    const/16 v17, 0x4

    .line 96
    .line 97
    packed-switch v13, :pswitch_data_0

    .line 98
    .line 99
    .line 100
    invoke-static {v15}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_0
    check-cast v7, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :pswitch_1
    check-cast v7, Ljava/lang/Long;

    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 119
    .line 120
    .line 121
    move-result-wide v18

    .line 122
    shl-long v20, v18, v9

    .line 123
    .line 124
    shr-long v18, v18, v14

    .line 125
    .line 126
    xor-long v18, v20, v18

    .line 127
    .line 128
    invoke-static/range {v18 .. v19}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    goto/16 :goto_4

    .line 133
    .line 134
    :pswitch_2
    check-cast v7, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    shl-int/lit8 v13, v7, 0x1

    .line 141
    .line 142
    shr-int/lit8 v7, v7, 0x1f

    .line 143
    .line 144
    xor-int/2addr v7, v13

    .line 145
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    goto/16 :goto_4

    .line 150
    .line 151
    :pswitch_3
    check-cast v7, Ljava/lang/Long;

    .line 152
    .line 153
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    :goto_1
    move/from16 v7, v16

    .line 157
    .line 158
    goto/16 :goto_4

    .line 159
    .line 160
    :pswitch_4
    check-cast v7, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    :goto_2
    move/from16 v7, v17

    .line 166
    .line 167
    goto/16 :goto_4

    .line 168
    .line 169
    :pswitch_5
    check-cast v7, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :pswitch_6
    instance-of v13, v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 182
    .line 183
    if-eqz v13, :cond_1

    .line 184
    .line 185
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 186
    .line 187
    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 188
    .line 189
    .line 190
    move-result v7

    .line 191
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 192
    .line 193
    .line 194
    move-result v13

    .line 195
    :goto_3
    add-int/2addr v7, v13

    .line 196
    goto/16 :goto_4

    .line 197
    .line 198
    :cond_1
    check-cast v7, [B

    .line 199
    .line 200
    array-length v7, v7

    .line 201
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    goto :goto_3

    .line 206
    :pswitch_7
    instance-of v13, v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 207
    .line 208
    if-eqz v13, :cond_2

    .line 209
    .line 210
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 211
    .line 212
    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 217
    .line 218
    .line 219
    move-result v13

    .line 220
    goto :goto_3

    .line 221
    :cond_2
    check-cast v7, Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    goto :goto_4

    .line 228
    :pswitch_8
    check-cast v7, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 229
    .line 230
    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize()I

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    goto :goto_3

    .line 239
    :pswitch_9
    check-cast v7, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 240
    .line 241
    invoke-virtual {v7}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    goto :goto_4

    .line 246
    :pswitch_a
    check-cast v7, Ljava/lang/Boolean;

    .line 247
    .line 248
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    move v7, v9

    .line 252
    goto :goto_4

    .line 253
    :pswitch_b
    check-cast v7, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :pswitch_c
    check-cast v7, Ljava/lang/Long;

    .line 260
    .line 261
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    goto :goto_1

    .line 265
    :pswitch_d
    check-cast v7, Ljava/lang/Integer;

    .line 266
    .line 267
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 272
    .line 273
    .line 274
    move-result v7

    .line 275
    goto :goto_4

    .line 276
    :pswitch_e
    check-cast v7, Ljava/lang/Long;

    .line 277
    .line 278
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 279
    .line 280
    .line 281
    move-result-wide v18

    .line 282
    invoke-static/range {v18 .. v19}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 283
    .line 284
    .line 285
    move-result v7

    .line 286
    goto :goto_4

    .line 287
    :pswitch_f
    check-cast v7, Ljava/lang/Long;

    .line 288
    .line 289
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 290
    .line 291
    .line 292
    move-result-wide v18

    .line 293
    invoke-static/range {v18 .. v19}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 294
    .line 295
    .line 296
    move-result v7

    .line 297
    goto :goto_4

    .line 298
    :pswitch_10
    check-cast v7, Ljava/lang/Float;

    .line 299
    .line 300
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    goto/16 :goto_2

    .line 304
    .line 305
    :pswitch_11
    check-cast v7, Ljava/lang/Double;

    .line 306
    .line 307
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :goto_4
    add-int/2addr v7, v10

    .line 313
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeTagSize(I)I

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    if-ne v1, v11, :cond_3

    .line 318
    .line 319
    mul-int/lit8 v10, v10, 0x2

    .line 320
    .line 321
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 322
    .line 323
    .line 324
    move-result v11

    .line 325
    aget v11, v12, v11

    .line 326
    .line 327
    packed-switch v11, :pswitch_data_1

    .line 328
    .line 329
    .line 330
    invoke-static {v15}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :pswitch_12
    check-cast v8, Ljava/lang/Integer;

    .line 335
    .line 336
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 337
    .line 338
    .line 339
    move-result v8

    .line 340
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 341
    .line 342
    .line 343
    move-result v16

    .line 344
    goto/16 :goto_7

    .line 345
    .line 346
    :pswitch_13
    check-cast v8, Ljava/lang/Long;

    .line 347
    .line 348
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 349
    .line 350
    .line 351
    move-result-wide v11

    .line 352
    shl-long v15, v11, v9

    .line 353
    .line 354
    shr-long/2addr v11, v14

    .line 355
    xor-long/2addr v11, v15

    .line 356
    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 357
    .line 358
    .line 359
    move-result v16

    .line 360
    goto/16 :goto_7

    .line 361
    .line 362
    :pswitch_14
    check-cast v8, Ljava/lang/Integer;

    .line 363
    .line 364
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    shl-int/lit8 v11, v8, 0x1

    .line 369
    .line 370
    shr-int/lit8 v8, v8, 0x1f

    .line 371
    .line 372
    xor-int/2addr v8, v11

    .line 373
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 374
    .line 375
    .line 376
    move-result v16

    .line 377
    goto/16 :goto_7

    .line 378
    .line 379
    :pswitch_15
    check-cast v8, Ljava/lang/Long;

    .line 380
    .line 381
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    goto/16 :goto_7

    .line 385
    .line 386
    :pswitch_16
    check-cast v8, Ljava/lang/Integer;

    .line 387
    .line 388
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    :goto_5
    move/from16 v16, v17

    .line 392
    .line 393
    goto/16 :goto_7

    .line 394
    .line 395
    :pswitch_17
    check-cast v8, Ljava/lang/Integer;

    .line 396
    .line 397
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 402
    .line 403
    .line 404
    move-result v16

    .line 405
    goto/16 :goto_7

    .line 406
    .line 407
    :pswitch_18
    instance-of v11, v8, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 408
    .line 409
    if-eqz v11, :cond_4

    .line 410
    .line 411
    check-cast v8, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 412
    .line 413
    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 418
    .line 419
    .line 420
    move-result v11

    .line 421
    :goto_6
    add-int v16, v11, v8

    .line 422
    .line 423
    goto/16 :goto_7

    .line 424
    .line 425
    :cond_4
    check-cast v8, [B

    .line 426
    .line 427
    array-length v8, v8

    .line 428
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 429
    .line 430
    .line 431
    move-result v11

    .line 432
    goto :goto_6

    .line 433
    :pswitch_19
    instance-of v11, v8, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 434
    .line 435
    if-eqz v11, :cond_5

    .line 436
    .line 437
    check-cast v8, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 438
    .line 439
    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;->size()I

    .line 440
    .line 441
    .line 442
    move-result v8

    .line 443
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 444
    .line 445
    .line 446
    move-result v11

    .line 447
    goto :goto_6

    .line 448
    :cond_5
    check-cast v8, Ljava/lang/String;

    .line 449
    .line 450
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move-result v16

    .line 454
    goto :goto_7

    .line 455
    :pswitch_1a
    check-cast v8, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 456
    .line 457
    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize()I

    .line 458
    .line 459
    .line 460
    move-result v8

    .line 461
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt32SizeNoTag(I)I

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    goto :goto_6

    .line 466
    :pswitch_1b
    check-cast v8, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    .line 467
    .line 468
    invoke-virtual {v8}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->getSerializedSize()I

    .line 469
    .line 470
    .line 471
    move-result v16

    .line 472
    goto :goto_7

    .line 473
    :pswitch_1c
    check-cast v8, Ljava/lang/Boolean;

    .line 474
    .line 475
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    move/from16 v16, v9

    .line 479
    .line 480
    goto :goto_7

    .line 481
    :pswitch_1d
    check-cast v8, Ljava/lang/Integer;

    .line 482
    .line 483
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    goto :goto_5

    .line 487
    :pswitch_1e
    check-cast v8, Ljava/lang/Long;

    .line 488
    .line 489
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    goto :goto_7

    .line 493
    :pswitch_1f
    check-cast v8, Ljava/lang/Integer;

    .line 494
    .line 495
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v8

    .line 499
    invoke-static {v8}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeInt32SizeNoTag(I)I

    .line 500
    .line 501
    .line 502
    move-result v16

    .line 503
    goto :goto_7

    .line 504
    :pswitch_20
    check-cast v8, Ljava/lang/Long;

    .line 505
    .line 506
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 507
    .line 508
    .line 509
    move-result-wide v11

    .line 510
    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 511
    .line 512
    .line 513
    move-result v16

    .line 514
    goto :goto_7

    .line 515
    :pswitch_21
    check-cast v8, Ljava/lang/Long;

    .line 516
    .line 517
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 518
    .line 519
    .line 520
    move-result-wide v11

    .line 521
    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->computeUInt64SizeNoTag(J)I

    .line 522
    .line 523
    .line 524
    move-result v16

    .line 525
    goto :goto_7

    .line 526
    :pswitch_22
    check-cast v8, Ljava/lang/Float;

    .line 527
    .line 528
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    goto/16 :goto_5

    .line 532
    .line 533
    :pswitch_23
    check-cast v8, Ljava/lang/Double;

    .line 534
    .line 535
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    :goto_7
    add-int v16, v16, v10

    .line 539
    .line 540
    add-int v7, v16, v7

    .line 541
    .line 542
    invoke-virtual {v3, v7}, Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;->writeUInt32NoTag(I)V

    .line 543
    .line 544
    .line 545
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    invoke-static {v3, v0, v9, v7}, Landroidx/datastore/preferences/protobuf/FieldSet;->writeElement(Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    invoke-static {v3, v1, v5, v4}, Landroidx/datastore/preferences/protobuf/FieldSet;->writeElement(Landroidx/datastore/preferences/protobuf/CodedOutputStream$OutputStreamEncoder;Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_0

    .line 560
    .line 561
    :cond_6
    return-void

    .line 562
    nop

    .line 563
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
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
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

.method public final writeTo(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->ASCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    .line 5
    .line 6
    sget-object v1, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->DESCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->buffer:[I

    .line 9
    .line 10
    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->unknownFieldSchema:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    .line 11
    .line 12
    const v4, 0xfffff

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 26
    .line 27
    invoke-virtual {v0, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 28
    .line 29
    .line 30
    array-length v0, v2

    .line 31
    add-int/lit8 v0, v0, -0x3

    .line 32
    .line 33
    :goto_0
    if-ltz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    aget v3, v2, v0

    .line 40
    .line 41
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    packed-switch v7, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :pswitch_0
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-eqz v7, :cond_0

    .line 55
    .line 56
    and-int/2addr v1, v4

    .line 57
    int-to-long v7, v1

    .line 58
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {p2, v3, v1, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :pswitch_1
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_0

    .line 76
    .line 77
    and-int/2addr v1, v4

    .line 78
    int-to-long v7, v1

    .line 79
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt64(JI)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :pswitch_2
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_0

    .line 93
    .line 94
    and-int/2addr v1, v4

    .line 95
    int-to-long v7, v1

    .line 96
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt32(II)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :pswitch_3
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_0

    .line 110
    .line 111
    and-int/2addr v1, v4

    .line 112
    int-to-long v7, v1

    .line 113
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 114
    .line 115
    .line 116
    move-result-wide v7

    .line 117
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed64(JI)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_1

    .line 121
    .line 122
    :pswitch_4
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_0

    .line 127
    .line 128
    and-int/2addr v1, v4

    .line 129
    int-to-long v7, v1

    .line 130
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed32(II)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_1

    .line 138
    .line 139
    :pswitch_5
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_0

    .line 144
    .line 145
    and-int/2addr v1, v4

    .line 146
    int-to-long v7, v1

    .line 147
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeEnum(II)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :pswitch_6
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-eqz v7, :cond_0

    .line 161
    .line 162
    and-int/2addr v1, v4

    .line 163
    int-to-long v7, v1

    .line 164
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt32(II)V

    .line 169
    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :pswitch_7
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-eqz v7, :cond_0

    .line 178
    .line 179
    and-int/2addr v1, v4

    .line 180
    int-to-long v7, v1

    .line 181
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 186
    .line 187
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :pswitch_8
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_0

    .line 197
    .line 198
    and-int/2addr v1, v4

    .line 199
    int-to-long v7, v1

    .line 200
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {p2, v3, v1, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :pswitch_9
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-eqz v7, :cond_0

    .line 218
    .line 219
    and-int/2addr v1, v4

    .line 220
    int-to-long v7, v1

    .line 221
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v3, v1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_1

    .line 229
    .line 230
    :pswitch_a
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v7

    .line 234
    if-eqz v7, :cond_0

    .line 235
    .line 236
    and-int/2addr v1, v4

    .line 237
    int-to-long v7, v1

    .line 238
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBool(IZ)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :pswitch_b
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-eqz v7, :cond_0

    .line 258
    .line 259
    and-int/2addr v1, v4

    .line 260
    int-to-long v7, v1

    .line 261
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed32(II)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :pswitch_c
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    if-eqz v7, :cond_0

    .line 275
    .line 276
    and-int/2addr v1, v4

    .line 277
    int-to-long v7, v1

    .line 278
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 279
    .line 280
    .line 281
    move-result-wide v7

    .line 282
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed64(JI)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :pswitch_d
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v7

    .line 291
    if-eqz v7, :cond_0

    .line 292
    .line 293
    and-int/2addr v1, v4

    .line 294
    int-to-long v7, v1

    .line 295
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt32(II)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :pswitch_e
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    if-eqz v7, :cond_0

    .line 309
    .line 310
    and-int/2addr v1, v4

    .line 311
    int-to-long v7, v1

    .line 312
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 313
    .line 314
    .line 315
    move-result-wide v7

    .line 316
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt64(JI)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :pswitch_f
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    if-eqz v7, :cond_0

    .line 326
    .line 327
    and-int/2addr v1, v4

    .line 328
    int-to-long v7, v1

    .line 329
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 330
    .line 331
    .line 332
    move-result-wide v7

    .line 333
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt64(JI)V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_1

    .line 337
    .line 338
    :pswitch_10
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    if-eqz v7, :cond_0

    .line 343
    .line 344
    and-int/2addr v1, v4

    .line 345
    int-to-long v7, v1

    .line 346
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Ljava/lang/Float;

    .line 351
    .line 352
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFloat(IF)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_1

    .line 360
    .line 361
    :pswitch_11
    invoke-virtual {p0, v3, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v7

    .line 365
    if-eqz v7, :cond_0

    .line 366
    .line 367
    and-int/2addr v1, v4

    .line 368
    int-to-long v7, v1

    .line 369
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    check-cast v1, Ljava/lang/Double;

    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 376
    .line 377
    .line 378
    move-result-wide v7

    .line 379
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeDouble(DI)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_1

    .line 383
    .line 384
    :pswitch_12
    and-int/2addr v1, v4

    .line 385
    int-to-long v7, v1

    .line 386
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {p0, p2, v3, v1, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeMapHelper(Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;ILjava/lang/Object;I)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :pswitch_13
    aget v3, v2, v0

    .line 396
    .line 397
    and-int/2addr v1, v4

    .line 398
    int-to-long v7, v1

    .line 399
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    check-cast v1, Ljava/util/List;

    .line 404
    .line 405
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    invoke-static {v3, v1, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :pswitch_14
    aget v3, v2, v0

    .line 415
    .line 416
    and-int/2addr v1, v4

    .line 417
    int-to-long v7, v1

    .line 418
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    check-cast v1, Ljava/util/List;

    .line 423
    .line 424
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 425
    .line 426
    .line 427
    goto/16 :goto_1

    .line 428
    .line 429
    :pswitch_15
    aget v3, v2, v0

    .line 430
    .line 431
    and-int/2addr v1, v4

    .line 432
    int-to-long v7, v1

    .line 433
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    check-cast v1, Ljava/util/List;

    .line 438
    .line 439
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_1

    .line 443
    .line 444
    :pswitch_16
    aget v3, v2, v0

    .line 445
    .line 446
    and-int/2addr v1, v4

    .line 447
    int-to-long v7, v1

    .line 448
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    check-cast v1, Ljava/util/List;

    .line 453
    .line 454
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_1

    .line 458
    .line 459
    :pswitch_17
    aget v3, v2, v0

    .line 460
    .line 461
    and-int/2addr v1, v4

    .line 462
    int-to-long v7, v1

    .line 463
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Ljava/util/List;

    .line 468
    .line 469
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_1

    .line 473
    .line 474
    :pswitch_18
    aget v3, v2, v0

    .line 475
    .line 476
    and-int/2addr v1, v4

    .line 477
    int-to-long v7, v1

    .line 478
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    check-cast v1, Ljava/util/List;

    .line 483
    .line 484
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_1

    .line 488
    .line 489
    :pswitch_19
    aget v3, v2, v0

    .line 490
    .line 491
    and-int/2addr v1, v4

    .line 492
    int-to-long v7, v1

    .line 493
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v1

    .line 497
    check-cast v1, Ljava/util/List;

    .line 498
    .line 499
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 500
    .line 501
    .line 502
    goto/16 :goto_1

    .line 503
    .line 504
    :pswitch_1a
    aget v3, v2, v0

    .line 505
    .line 506
    and-int/2addr v1, v4

    .line 507
    int-to-long v7, v1

    .line 508
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    check-cast v1, Ljava/util/List;

    .line 513
    .line 514
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 515
    .line 516
    .line 517
    goto/16 :goto_1

    .line 518
    .line 519
    :pswitch_1b
    aget v3, v2, v0

    .line 520
    .line 521
    and-int/2addr v1, v4

    .line 522
    int-to-long v7, v1

    .line 523
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    check-cast v1, Ljava/util/List;

    .line 528
    .line 529
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 530
    .line 531
    .line 532
    goto/16 :goto_1

    .line 533
    .line 534
    :pswitch_1c
    aget v3, v2, v0

    .line 535
    .line 536
    and-int/2addr v1, v4

    .line 537
    int-to-long v7, v1

    .line 538
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    check-cast v1, Ljava/util/List;

    .line 543
    .line 544
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_1

    .line 548
    .line 549
    :pswitch_1d
    aget v3, v2, v0

    .line 550
    .line 551
    and-int/2addr v1, v4

    .line 552
    int-to-long v7, v1

    .line 553
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    check-cast v1, Ljava/util/List;

    .line 558
    .line 559
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_1

    .line 563
    .line 564
    :pswitch_1e
    aget v3, v2, v0

    .line 565
    .line 566
    and-int/2addr v1, v4

    .line 567
    int-to-long v7, v1

    .line 568
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    check-cast v1, Ljava/util/List;

    .line 573
    .line 574
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 575
    .line 576
    .line 577
    goto/16 :goto_1

    .line 578
    .line 579
    :pswitch_1f
    aget v3, v2, v0

    .line 580
    .line 581
    and-int/2addr v1, v4

    .line 582
    int-to-long v7, v1

    .line 583
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    check-cast v1, Ljava/util/List;

    .line 588
    .line 589
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 590
    .line 591
    .line 592
    goto/16 :goto_1

    .line 593
    .line 594
    :pswitch_20
    aget v3, v2, v0

    .line 595
    .line 596
    and-int/2addr v1, v4

    .line 597
    int-to-long v7, v1

    .line 598
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    check-cast v1, Ljava/util/List;

    .line 603
    .line 604
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_1

    .line 608
    .line 609
    :pswitch_21
    aget v3, v2, v0

    .line 610
    .line 611
    and-int/2addr v1, v4

    .line 612
    int-to-long v7, v1

    .line 613
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    check-cast v1, Ljava/util/List;

    .line 618
    .line 619
    invoke-static {v3, v1, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_1

    .line 623
    .line 624
    :pswitch_22
    aget v3, v2, v0

    .line 625
    .line 626
    and-int/2addr v1, v4

    .line 627
    int-to-long v7, v1

    .line 628
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    check-cast v1, Ljava/util/List;

    .line 633
    .line 634
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 635
    .line 636
    .line 637
    goto/16 :goto_1

    .line 638
    .line 639
    :pswitch_23
    aget v3, v2, v0

    .line 640
    .line 641
    and-int/2addr v1, v4

    .line 642
    int-to-long v7, v1

    .line 643
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v1

    .line 647
    check-cast v1, Ljava/util/List;

    .line 648
    .line 649
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 650
    .line 651
    .line 652
    goto/16 :goto_1

    .line 653
    .line 654
    :pswitch_24
    aget v3, v2, v0

    .line 655
    .line 656
    and-int/2addr v1, v4

    .line 657
    int-to-long v7, v1

    .line 658
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    check-cast v1, Ljava/util/List;

    .line 663
    .line 664
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 665
    .line 666
    .line 667
    goto/16 :goto_1

    .line 668
    .line 669
    :pswitch_25
    aget v3, v2, v0

    .line 670
    .line 671
    and-int/2addr v1, v4

    .line 672
    int-to-long v7, v1

    .line 673
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    check-cast v1, Ljava/util/List;

    .line 678
    .line 679
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_1

    .line 683
    .line 684
    :pswitch_26
    aget v3, v2, v0

    .line 685
    .line 686
    and-int/2addr v1, v4

    .line 687
    int-to-long v7, v1

    .line 688
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    check-cast v1, Ljava/util/List;

    .line 693
    .line 694
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_1

    .line 698
    .line 699
    :pswitch_27
    aget v3, v2, v0

    .line 700
    .line 701
    and-int/2addr v1, v4

    .line 702
    int-to-long v7, v1

    .line 703
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    check-cast v1, Ljava/util/List;

    .line 708
    .line 709
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 710
    .line 711
    .line 712
    goto/16 :goto_1

    .line 713
    .line 714
    :pswitch_28
    aget v3, v2, v0

    .line 715
    .line 716
    and-int/2addr v1, v4

    .line 717
    int-to-long v7, v1

    .line 718
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    check-cast v1, Ljava/util/List;

    .line 723
    .line 724
    invoke-static {v3, v1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 725
    .line 726
    .line 727
    goto/16 :goto_1

    .line 728
    .line 729
    :pswitch_29
    aget v3, v2, v0

    .line 730
    .line 731
    and-int/2addr v1, v4

    .line 732
    int-to-long v7, v1

    .line 733
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    check-cast v1, Ljava/util/List;

    .line 738
    .line 739
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 740
    .line 741
    .line 742
    move-result-object v7

    .line 743
    invoke-static {v3, v1, p2, v7}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_1

    .line 747
    .line 748
    :pswitch_2a
    aget v3, v2, v0

    .line 749
    .line 750
    and-int/2addr v1, v4

    .line 751
    int-to-long v7, v1

    .line 752
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    check-cast v1, Ljava/util/List;

    .line 757
    .line 758
    invoke-static {v3, v1, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_1

    .line 762
    .line 763
    :pswitch_2b
    aget v3, v2, v0

    .line 764
    .line 765
    and-int/2addr v1, v4

    .line 766
    int-to-long v7, v1

    .line 767
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    check-cast v1, Ljava/util/List;

    .line 772
    .line 773
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 774
    .line 775
    .line 776
    goto/16 :goto_1

    .line 777
    .line 778
    :pswitch_2c
    aget v3, v2, v0

    .line 779
    .line 780
    and-int/2addr v1, v4

    .line 781
    int-to-long v7, v1

    .line 782
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    check-cast v1, Ljava/util/List;

    .line 787
    .line 788
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 789
    .line 790
    .line 791
    goto/16 :goto_1

    .line 792
    .line 793
    :pswitch_2d
    aget v3, v2, v0

    .line 794
    .line 795
    and-int/2addr v1, v4

    .line 796
    int-to-long v7, v1

    .line 797
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v1

    .line 801
    check-cast v1, Ljava/util/List;

    .line 802
    .line 803
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 804
    .line 805
    .line 806
    goto/16 :goto_1

    .line 807
    .line 808
    :pswitch_2e
    aget v3, v2, v0

    .line 809
    .line 810
    and-int/2addr v1, v4

    .line 811
    int-to-long v7, v1

    .line 812
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    check-cast v1, Ljava/util/List;

    .line 817
    .line 818
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 819
    .line 820
    .line 821
    goto/16 :goto_1

    .line 822
    .line 823
    :pswitch_2f
    aget v3, v2, v0

    .line 824
    .line 825
    and-int/2addr v1, v4

    .line 826
    int-to-long v7, v1

    .line 827
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    check-cast v1, Ljava/util/List;

    .line 832
    .line 833
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 834
    .line 835
    .line 836
    goto/16 :goto_1

    .line 837
    .line 838
    :pswitch_30
    aget v3, v2, v0

    .line 839
    .line 840
    and-int/2addr v1, v4

    .line 841
    int-to-long v7, v1

    .line 842
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    check-cast v1, Ljava/util/List;

    .line 847
    .line 848
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 849
    .line 850
    .line 851
    goto/16 :goto_1

    .line 852
    .line 853
    :pswitch_31
    aget v3, v2, v0

    .line 854
    .line 855
    and-int/2addr v1, v4

    .line 856
    int-to-long v7, v1

    .line 857
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    check-cast v1, Ljava/util/List;

    .line 862
    .line 863
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 864
    .line 865
    .line 866
    goto/16 :goto_1

    .line 867
    .line 868
    :pswitch_32
    aget v3, v2, v0

    .line 869
    .line 870
    and-int/2addr v1, v4

    .line 871
    int-to-long v7, v1

    .line 872
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    move-result-object v1

    .line 876
    check-cast v1, Ljava/util/List;

    .line 877
    .line 878
    invoke-static {v3, v1, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 879
    .line 880
    .line 881
    goto/16 :goto_1

    .line 882
    .line 883
    :pswitch_33
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v7

    .line 887
    if-eqz v7, :cond_0

    .line 888
    .line 889
    and-int/2addr v1, v4

    .line 890
    int-to-long v7, v1

    .line 891
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v1

    .line 895
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 896
    .line 897
    .line 898
    move-result-object v7

    .line 899
    invoke-virtual {p2, v3, v1, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 900
    .line 901
    .line 902
    goto/16 :goto_1

    .line 903
    .line 904
    :pswitch_34
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 905
    .line 906
    .line 907
    move-result v7

    .line 908
    if-eqz v7, :cond_0

    .line 909
    .line 910
    and-int/2addr v1, v4

    .line 911
    int-to-long v7, v1

    .line 912
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 913
    .line 914
    .line 915
    move-result-wide v7

    .line 916
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt64(JI)V

    .line 917
    .line 918
    .line 919
    goto/16 :goto_1

    .line 920
    .line 921
    :pswitch_35
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 922
    .line 923
    .line 924
    move-result v7

    .line 925
    if-eqz v7, :cond_0

    .line 926
    .line 927
    and-int/2addr v1, v4

    .line 928
    int-to-long v7, v1

    .line 929
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 930
    .line 931
    .line 932
    move-result v1

    .line 933
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt32(II)V

    .line 934
    .line 935
    .line 936
    goto/16 :goto_1

    .line 937
    .line 938
    :pswitch_36
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 939
    .line 940
    .line 941
    move-result v7

    .line 942
    if-eqz v7, :cond_0

    .line 943
    .line 944
    and-int/2addr v1, v4

    .line 945
    int-to-long v7, v1

    .line 946
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 947
    .line 948
    .line 949
    move-result-wide v7

    .line 950
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed64(JI)V

    .line 951
    .line 952
    .line 953
    goto/16 :goto_1

    .line 954
    .line 955
    :pswitch_37
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 956
    .line 957
    .line 958
    move-result v7

    .line 959
    if-eqz v7, :cond_0

    .line 960
    .line 961
    and-int/2addr v1, v4

    .line 962
    int-to-long v7, v1

    .line 963
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 964
    .line 965
    .line 966
    move-result v1

    .line 967
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed32(II)V

    .line 968
    .line 969
    .line 970
    goto/16 :goto_1

    .line 971
    .line 972
    :pswitch_38
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    move-result v7

    .line 976
    if-eqz v7, :cond_0

    .line 977
    .line 978
    and-int/2addr v1, v4

    .line 979
    int-to-long v7, v1

    .line 980
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 981
    .line 982
    .line 983
    move-result v1

    .line 984
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeEnum(II)V

    .line 985
    .line 986
    .line 987
    goto/16 :goto_1

    .line 988
    .line 989
    :pswitch_39
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    move-result v7

    .line 993
    if-eqz v7, :cond_0

    .line 994
    .line 995
    and-int/2addr v1, v4

    .line 996
    int-to-long v7, v1

    .line 997
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 998
    .line 999
    .line 1000
    move-result v1

    .line 1001
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt32(II)V

    .line 1002
    .line 1003
    .line 1004
    goto/16 :goto_1

    .line 1005
    .line 1006
    :pswitch_3a
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1007
    .line 1008
    .line 1009
    move-result v7

    .line 1010
    if-eqz v7, :cond_0

    .line 1011
    .line 1012
    and-int/2addr v1, v4

    .line 1013
    int-to-long v7, v1

    .line 1014
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    check-cast v1, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1019
    .line 1020
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)V

    .line 1021
    .line 1022
    .line 1023
    goto/16 :goto_1

    .line 1024
    .line 1025
    :pswitch_3b
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1026
    .line 1027
    .line 1028
    move-result v7

    .line 1029
    if-eqz v7, :cond_0

    .line 1030
    .line 1031
    and-int/2addr v1, v4

    .line 1032
    int-to-long v7, v1

    .line 1033
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v1

    .line 1037
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v7

    .line 1041
    invoke-virtual {p2, v3, v1, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1042
    .line 1043
    .line 1044
    goto/16 :goto_1

    .line 1045
    .line 1046
    :pswitch_3c
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1047
    .line 1048
    .line 1049
    move-result v7

    .line 1050
    if-eqz v7, :cond_0

    .line 1051
    .line 1052
    and-int/2addr v1, v4

    .line 1053
    int-to-long v7, v1

    .line 1054
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    invoke-static {v3, v1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 1059
    .line 1060
    .line 1061
    goto/16 :goto_1

    .line 1062
    .line 1063
    :pswitch_3d
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v7

    .line 1067
    if-eqz v7, :cond_0

    .line 1068
    .line 1069
    and-int/2addr v1, v4

    .line 1070
    int-to-long v7, v1

    .line 1071
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1072
    .line 1073
    invoke-virtual {v1, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 1074
    .line 1075
    .line 1076
    move-result v1

    .line 1077
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBool(IZ)V

    .line 1078
    .line 1079
    .line 1080
    goto/16 :goto_1

    .line 1081
    .line 1082
    :pswitch_3e
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v7

    .line 1086
    if-eqz v7, :cond_0

    .line 1087
    .line 1088
    and-int/2addr v1, v4

    .line 1089
    int-to-long v7, v1

    .line 1090
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1091
    .line 1092
    .line 1093
    move-result v1

    .line 1094
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed32(II)V

    .line 1095
    .line 1096
    .line 1097
    goto :goto_1

    .line 1098
    :pswitch_3f
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v7

    .line 1102
    if-eqz v7, :cond_0

    .line 1103
    .line 1104
    and-int/2addr v1, v4

    .line 1105
    int-to-long v7, v1

    .line 1106
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1107
    .line 1108
    .line 1109
    move-result-wide v7

    .line 1110
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed64(JI)V

    .line 1111
    .line 1112
    .line 1113
    goto :goto_1

    .line 1114
    :pswitch_40
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v7

    .line 1118
    if-eqz v7, :cond_0

    .line 1119
    .line 1120
    and-int/2addr v1, v4

    .line 1121
    int-to-long v7, v1

    .line 1122
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 1123
    .line 1124
    .line 1125
    move-result v1

    .line 1126
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt32(II)V

    .line 1127
    .line 1128
    .line 1129
    goto :goto_1

    .line 1130
    :pswitch_41
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1131
    .line 1132
    .line 1133
    move-result v7

    .line 1134
    if-eqz v7, :cond_0

    .line 1135
    .line 1136
    and-int/2addr v1, v4

    .line 1137
    int-to-long v7, v1

    .line 1138
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1139
    .line 1140
    .line 1141
    move-result-wide v7

    .line 1142
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt64(JI)V

    .line 1143
    .line 1144
    .line 1145
    goto :goto_1

    .line 1146
    :pswitch_42
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v7

    .line 1150
    if-eqz v7, :cond_0

    .line 1151
    .line 1152
    and-int/2addr v1, v4

    .line 1153
    int-to-long v7, v1

    .line 1154
    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 1155
    .line 1156
    .line 1157
    move-result-wide v7

    .line 1158
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt64(JI)V

    .line 1159
    .line 1160
    .line 1161
    goto :goto_1

    .line 1162
    :pswitch_43
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1163
    .line 1164
    .line 1165
    move-result v7

    .line 1166
    if-eqz v7, :cond_0

    .line 1167
    .line 1168
    and-int/2addr v1, v4

    .line 1169
    int-to-long v7, v1

    .line 1170
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1171
    .line 1172
    invoke-virtual {v1, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 1173
    .line 1174
    .line 1175
    move-result v1

    .line 1176
    invoke-virtual {p2, v3, v1}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFloat(IF)V

    .line 1177
    .line 1178
    .line 1179
    goto :goto_1

    .line 1180
    :pswitch_44
    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v7

    .line 1184
    if-eqz v7, :cond_0

    .line 1185
    .line 1186
    and-int/2addr v1, v4

    .line 1187
    int-to-long v7, v1

    .line 1188
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 1189
    .line 1190
    invoke-virtual {v1, v7, v8, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 1191
    .line 1192
    .line 1193
    move-result-wide v7

    .line 1194
    invoke-virtual {p2, v7, v8, v3}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeDouble(DI)V

    .line 1195
    .line 1196
    .line 1197
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x3

    .line 1198
    .line 1199
    goto/16 :goto_0

    .line 1200
    .line 1201
    :cond_1
    return-void

    .line 1202
    :cond_2
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->proto3:Z

    .line 1203
    .line 1204
    if-eqz v0, :cond_5

    .line 1205
    .line 1206
    array-length v0, v2

    .line 1207
    move v1, v6

    .line 1208
    :goto_2
    if-ge v1, v0, :cond_4

    .line 1209
    .line 1210
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->typeAndOffsetAt(I)I

    .line 1211
    .line 1212
    .line 1213
    move-result v7

    .line 1214
    aget v8, v2, v1

    .line 1215
    .line 1216
    invoke-static {v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->type(I)I

    .line 1217
    .line 1218
    .line 1219
    move-result v9

    .line 1220
    packed-switch v9, :pswitch_data_1

    .line 1221
    .line 1222
    .line 1223
    goto/16 :goto_3

    .line 1224
    .line 1225
    :pswitch_45
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v9

    .line 1229
    if-eqz v9, :cond_3

    .line 1230
    .line 1231
    and-int/2addr v7, v4

    .line 1232
    int-to-long v9, v7

    .line 1233
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v7

    .line 1237
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v9

    .line 1241
    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1242
    .line 1243
    .line 1244
    goto/16 :goto_3

    .line 1245
    .line 1246
    :pswitch_46
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1247
    .line 1248
    .line 1249
    move-result v9

    .line 1250
    if-eqz v9, :cond_3

    .line 1251
    .line 1252
    and-int/2addr v7, v4

    .line 1253
    int-to-long v9, v7

    .line 1254
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1255
    .line 1256
    .line 1257
    move-result-wide v9

    .line 1258
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt64(JI)V

    .line 1259
    .line 1260
    .line 1261
    goto/16 :goto_3

    .line 1262
    .line 1263
    :pswitch_47
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result v9

    .line 1267
    if-eqz v9, :cond_3

    .line 1268
    .line 1269
    and-int/2addr v7, v4

    .line 1270
    int-to-long v9, v7

    .line 1271
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1272
    .line 1273
    .line 1274
    move-result v7

    .line 1275
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt32(II)V

    .line 1276
    .line 1277
    .line 1278
    goto/16 :goto_3

    .line 1279
    .line 1280
    :pswitch_48
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1281
    .line 1282
    .line 1283
    move-result v9

    .line 1284
    if-eqz v9, :cond_3

    .line 1285
    .line 1286
    and-int/2addr v7, v4

    .line 1287
    int-to-long v9, v7

    .line 1288
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1289
    .line 1290
    .line 1291
    move-result-wide v9

    .line 1292
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed64(JI)V

    .line 1293
    .line 1294
    .line 1295
    goto/16 :goto_3

    .line 1296
    .line 1297
    :pswitch_49
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v9

    .line 1301
    if-eqz v9, :cond_3

    .line 1302
    .line 1303
    and-int/2addr v7, v4

    .line 1304
    int-to-long v9, v7

    .line 1305
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1306
    .line 1307
    .line 1308
    move-result v7

    .line 1309
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed32(II)V

    .line 1310
    .line 1311
    .line 1312
    goto/16 :goto_3

    .line 1313
    .line 1314
    :pswitch_4a
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1315
    .line 1316
    .line 1317
    move-result v9

    .line 1318
    if-eqz v9, :cond_3

    .line 1319
    .line 1320
    and-int/2addr v7, v4

    .line 1321
    int-to-long v9, v7

    .line 1322
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1323
    .line 1324
    .line 1325
    move-result v7

    .line 1326
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeEnum(II)V

    .line 1327
    .line 1328
    .line 1329
    goto/16 :goto_3

    .line 1330
    .line 1331
    :pswitch_4b
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1332
    .line 1333
    .line 1334
    move-result v9

    .line 1335
    if-eqz v9, :cond_3

    .line 1336
    .line 1337
    and-int/2addr v7, v4

    .line 1338
    int-to-long v9, v7

    .line 1339
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1340
    .line 1341
    .line 1342
    move-result v7

    .line 1343
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt32(II)V

    .line 1344
    .line 1345
    .line 1346
    goto/16 :goto_3

    .line 1347
    .line 1348
    :pswitch_4c
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v9

    .line 1352
    if-eqz v9, :cond_3

    .line 1353
    .line 1354
    and-int/2addr v7, v4

    .line 1355
    int-to-long v9, v7

    .line 1356
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1357
    .line 1358
    .line 1359
    move-result-object v7

    .line 1360
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 1361
    .line 1362
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)V

    .line 1363
    .line 1364
    .line 1365
    goto/16 :goto_3

    .line 1366
    .line 1367
    :pswitch_4d
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1368
    .line 1369
    .line 1370
    move-result v9

    .line 1371
    if-eqz v9, :cond_3

    .line 1372
    .line 1373
    and-int/2addr v7, v4

    .line 1374
    int-to-long v9, v7

    .line 1375
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v7

    .line 1379
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v9

    .line 1383
    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1384
    .line 1385
    .line 1386
    goto/16 :goto_3

    .line 1387
    .line 1388
    :pswitch_4e
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1389
    .line 1390
    .line 1391
    move-result v9

    .line 1392
    if-eqz v9, :cond_3

    .line 1393
    .line 1394
    and-int/2addr v7, v4

    .line 1395
    int-to-long v9, v7

    .line 1396
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v7

    .line 1400
    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 1401
    .line 1402
    .line 1403
    goto/16 :goto_3

    .line 1404
    .line 1405
    :pswitch_4f
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v9

    .line 1409
    if-eqz v9, :cond_3

    .line 1410
    .line 1411
    and-int/2addr v7, v4

    .line 1412
    int-to-long v9, v7

    .line 1413
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v7

    .line 1417
    check-cast v7, Ljava/lang/Boolean;

    .line 1418
    .line 1419
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1420
    .line 1421
    .line 1422
    move-result v7

    .line 1423
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBool(IZ)V

    .line 1424
    .line 1425
    .line 1426
    goto/16 :goto_3

    .line 1427
    .line 1428
    :pswitch_50
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1429
    .line 1430
    .line 1431
    move-result v9

    .line 1432
    if-eqz v9, :cond_3

    .line 1433
    .line 1434
    and-int/2addr v7, v4

    .line 1435
    int-to-long v9, v7

    .line 1436
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1437
    .line 1438
    .line 1439
    move-result v7

    .line 1440
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed32(II)V

    .line 1441
    .line 1442
    .line 1443
    goto/16 :goto_3

    .line 1444
    .line 1445
    :pswitch_51
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1446
    .line 1447
    .line 1448
    move-result v9

    .line 1449
    if-eqz v9, :cond_3

    .line 1450
    .line 1451
    and-int/2addr v7, v4

    .line 1452
    int-to-long v9, v7

    .line 1453
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1454
    .line 1455
    .line 1456
    move-result-wide v9

    .line 1457
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed64(JI)V

    .line 1458
    .line 1459
    .line 1460
    goto/16 :goto_3

    .line 1461
    .line 1462
    :pswitch_52
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1463
    .line 1464
    .line 1465
    move-result v9

    .line 1466
    if-eqz v9, :cond_3

    .line 1467
    .line 1468
    and-int/2addr v7, v4

    .line 1469
    int-to-long v9, v7

    .line 1470
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofIntAt(JLjava/lang/Object;)I

    .line 1471
    .line 1472
    .line 1473
    move-result v7

    .line 1474
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt32(II)V

    .line 1475
    .line 1476
    .line 1477
    goto/16 :goto_3

    .line 1478
    .line 1479
    :pswitch_53
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1480
    .line 1481
    .line 1482
    move-result v9

    .line 1483
    if-eqz v9, :cond_3

    .line 1484
    .line 1485
    and-int/2addr v7, v4

    .line 1486
    int-to-long v9, v7

    .line 1487
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1488
    .line 1489
    .line 1490
    move-result-wide v9

    .line 1491
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt64(JI)V

    .line 1492
    .line 1493
    .line 1494
    goto/16 :goto_3

    .line 1495
    .line 1496
    :pswitch_54
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v9

    .line 1500
    if-eqz v9, :cond_3

    .line 1501
    .line 1502
    and-int/2addr v7, v4

    .line 1503
    int-to-long v9, v7

    .line 1504
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->oneofLongAt(JLjava/lang/Object;)J

    .line 1505
    .line 1506
    .line 1507
    move-result-wide v9

    .line 1508
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt64(JI)V

    .line 1509
    .line 1510
    .line 1511
    goto/16 :goto_3

    .line 1512
    .line 1513
    :pswitch_55
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result v9

    .line 1517
    if-eqz v9, :cond_3

    .line 1518
    .line 1519
    and-int/2addr v7, v4

    .line 1520
    int-to-long v9, v7

    .line 1521
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v7

    .line 1525
    check-cast v7, Ljava/lang/Float;

    .line 1526
    .line 1527
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 1528
    .line 1529
    .line 1530
    move-result v7

    .line 1531
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFloat(IF)V

    .line 1532
    .line 1533
    .line 1534
    goto/16 :goto_3

    .line 1535
    .line 1536
    :pswitch_56
    invoke-virtual {p0, v8, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isOneofPresent(IILjava/lang/Object;)Z

    .line 1537
    .line 1538
    .line 1539
    move-result v9

    .line 1540
    if-eqz v9, :cond_3

    .line 1541
    .line 1542
    and-int/2addr v7, v4

    .line 1543
    int-to-long v9, v7

    .line 1544
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v7

    .line 1548
    check-cast v7, Ljava/lang/Double;

    .line 1549
    .line 1550
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 1551
    .line 1552
    .line 1553
    move-result-wide v9

    .line 1554
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeDouble(DI)V

    .line 1555
    .line 1556
    .line 1557
    goto/16 :goto_3

    .line 1558
    .line 1559
    :pswitch_57
    and-int/2addr v7, v4

    .line 1560
    int-to-long v9, v7

    .line 1561
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v7

    .line 1565
    invoke-virtual {p0, p2, v8, v7, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeMapHelper(Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;ILjava/lang/Object;I)V

    .line 1566
    .line 1567
    .line 1568
    goto/16 :goto_3

    .line 1569
    .line 1570
    :pswitch_58
    aget v8, v2, v1

    .line 1571
    .line 1572
    and-int/2addr v7, v4

    .line 1573
    int-to-long v9, v7

    .line 1574
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v7

    .line 1578
    check-cast v7, Ljava/util/List;

    .line 1579
    .line 1580
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v9

    .line 1584
    invoke-static {v8, v7, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1585
    .line 1586
    .line 1587
    goto/16 :goto_3

    .line 1588
    .line 1589
    :pswitch_59
    aget v8, v2, v1

    .line 1590
    .line 1591
    and-int/2addr v7, v4

    .line 1592
    int-to-long v9, v7

    .line 1593
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1594
    .line 1595
    .line 1596
    move-result-object v7

    .line 1597
    check-cast v7, Ljava/util/List;

    .line 1598
    .line 1599
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1600
    .line 1601
    .line 1602
    goto/16 :goto_3

    .line 1603
    .line 1604
    :pswitch_5a
    aget v8, v2, v1

    .line 1605
    .line 1606
    and-int/2addr v7, v4

    .line 1607
    int-to-long v9, v7

    .line 1608
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v7

    .line 1612
    check-cast v7, Ljava/util/List;

    .line 1613
    .line 1614
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1615
    .line 1616
    .line 1617
    goto/16 :goto_3

    .line 1618
    .line 1619
    :pswitch_5b
    aget v8, v2, v1

    .line 1620
    .line 1621
    and-int/2addr v7, v4

    .line 1622
    int-to-long v9, v7

    .line 1623
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v7

    .line 1627
    check-cast v7, Ljava/util/List;

    .line 1628
    .line 1629
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1630
    .line 1631
    .line 1632
    goto/16 :goto_3

    .line 1633
    .line 1634
    :pswitch_5c
    aget v8, v2, v1

    .line 1635
    .line 1636
    and-int/2addr v7, v4

    .line 1637
    int-to-long v9, v7

    .line 1638
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v7

    .line 1642
    check-cast v7, Ljava/util/List;

    .line 1643
    .line 1644
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1645
    .line 1646
    .line 1647
    goto/16 :goto_3

    .line 1648
    .line 1649
    :pswitch_5d
    aget v8, v2, v1

    .line 1650
    .line 1651
    and-int/2addr v7, v4

    .line 1652
    int-to-long v9, v7

    .line 1653
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v7

    .line 1657
    check-cast v7, Ljava/util/List;

    .line 1658
    .line 1659
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1660
    .line 1661
    .line 1662
    goto/16 :goto_3

    .line 1663
    .line 1664
    :pswitch_5e
    aget v8, v2, v1

    .line 1665
    .line 1666
    and-int/2addr v7, v4

    .line 1667
    int-to-long v9, v7

    .line 1668
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v7

    .line 1672
    check-cast v7, Ljava/util/List;

    .line 1673
    .line 1674
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1675
    .line 1676
    .line 1677
    goto/16 :goto_3

    .line 1678
    .line 1679
    :pswitch_5f
    aget v8, v2, v1

    .line 1680
    .line 1681
    and-int/2addr v7, v4

    .line 1682
    int-to-long v9, v7

    .line 1683
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v7

    .line 1687
    check-cast v7, Ljava/util/List;

    .line 1688
    .line 1689
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1690
    .line 1691
    .line 1692
    goto/16 :goto_3

    .line 1693
    .line 1694
    :pswitch_60
    aget v8, v2, v1

    .line 1695
    .line 1696
    and-int/2addr v7, v4

    .line 1697
    int-to-long v9, v7

    .line 1698
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v7

    .line 1702
    check-cast v7, Ljava/util/List;

    .line 1703
    .line 1704
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1705
    .line 1706
    .line 1707
    goto/16 :goto_3

    .line 1708
    .line 1709
    :pswitch_61
    aget v8, v2, v1

    .line 1710
    .line 1711
    and-int/2addr v7, v4

    .line 1712
    int-to-long v9, v7

    .line 1713
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v7

    .line 1717
    check-cast v7, Ljava/util/List;

    .line 1718
    .line 1719
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1720
    .line 1721
    .line 1722
    goto/16 :goto_3

    .line 1723
    .line 1724
    :pswitch_62
    aget v8, v2, v1

    .line 1725
    .line 1726
    and-int/2addr v7, v4

    .line 1727
    int-to-long v9, v7

    .line 1728
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v7

    .line 1732
    check-cast v7, Ljava/util/List;

    .line 1733
    .line 1734
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1735
    .line 1736
    .line 1737
    goto/16 :goto_3

    .line 1738
    .line 1739
    :pswitch_63
    aget v8, v2, v1

    .line 1740
    .line 1741
    and-int/2addr v7, v4

    .line 1742
    int-to-long v9, v7

    .line 1743
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v7

    .line 1747
    check-cast v7, Ljava/util/List;

    .line 1748
    .line 1749
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1750
    .line 1751
    .line 1752
    goto/16 :goto_3

    .line 1753
    .line 1754
    :pswitch_64
    aget v8, v2, v1

    .line 1755
    .line 1756
    and-int/2addr v7, v4

    .line 1757
    int-to-long v9, v7

    .line 1758
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v7

    .line 1762
    check-cast v7, Ljava/util/List;

    .line 1763
    .line 1764
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1765
    .line 1766
    .line 1767
    goto/16 :goto_3

    .line 1768
    .line 1769
    :pswitch_65
    aget v8, v2, v1

    .line 1770
    .line 1771
    and-int/2addr v7, v4

    .line 1772
    int-to-long v9, v7

    .line 1773
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v7

    .line 1777
    check-cast v7, Ljava/util/List;

    .line 1778
    .line 1779
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1780
    .line 1781
    .line 1782
    goto/16 :goto_3

    .line 1783
    .line 1784
    :pswitch_66
    aget v8, v2, v1

    .line 1785
    .line 1786
    and-int/2addr v7, v4

    .line 1787
    int-to-long v9, v7

    .line 1788
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1789
    .line 1790
    .line 1791
    move-result-object v7

    .line 1792
    check-cast v7, Ljava/util/List;

    .line 1793
    .line 1794
    invoke-static {v8, v7, p2, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1795
    .line 1796
    .line 1797
    goto/16 :goto_3

    .line 1798
    .line 1799
    :pswitch_67
    aget v8, v2, v1

    .line 1800
    .line 1801
    and-int/2addr v7, v4

    .line 1802
    int-to-long v9, v7

    .line 1803
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v7

    .line 1807
    check-cast v7, Ljava/util/List;

    .line 1808
    .line 1809
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1810
    .line 1811
    .line 1812
    goto/16 :goto_3

    .line 1813
    .line 1814
    :pswitch_68
    aget v8, v2, v1

    .line 1815
    .line 1816
    and-int/2addr v7, v4

    .line 1817
    int-to-long v9, v7

    .line 1818
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v7

    .line 1822
    check-cast v7, Ljava/util/List;

    .line 1823
    .line 1824
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1825
    .line 1826
    .line 1827
    goto/16 :goto_3

    .line 1828
    .line 1829
    :pswitch_69
    aget v8, v2, v1

    .line 1830
    .line 1831
    and-int/2addr v7, v4

    .line 1832
    int-to-long v9, v7

    .line 1833
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v7

    .line 1837
    check-cast v7, Ljava/util/List;

    .line 1838
    .line 1839
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1840
    .line 1841
    .line 1842
    goto/16 :goto_3

    .line 1843
    .line 1844
    :pswitch_6a
    aget v8, v2, v1

    .line 1845
    .line 1846
    and-int/2addr v7, v4

    .line 1847
    int-to-long v9, v7

    .line 1848
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1849
    .line 1850
    .line 1851
    move-result-object v7

    .line 1852
    check-cast v7, Ljava/util/List;

    .line 1853
    .line 1854
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1855
    .line 1856
    .line 1857
    goto/16 :goto_3

    .line 1858
    .line 1859
    :pswitch_6b
    aget v8, v2, v1

    .line 1860
    .line 1861
    and-int/2addr v7, v4

    .line 1862
    int-to-long v9, v7

    .line 1863
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1864
    .line 1865
    .line 1866
    move-result-object v7

    .line 1867
    check-cast v7, Ljava/util/List;

    .line 1868
    .line 1869
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1870
    .line 1871
    .line 1872
    goto/16 :goto_3

    .line 1873
    .line 1874
    :pswitch_6c
    aget v8, v2, v1

    .line 1875
    .line 1876
    and-int/2addr v7, v4

    .line 1877
    int-to-long v9, v7

    .line 1878
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v7

    .line 1882
    check-cast v7, Ljava/util/List;

    .line 1883
    .line 1884
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1885
    .line 1886
    .line 1887
    goto/16 :goto_3

    .line 1888
    .line 1889
    :pswitch_6d
    aget v8, v2, v1

    .line 1890
    .line 1891
    and-int/2addr v7, v4

    .line 1892
    int-to-long v9, v7

    .line 1893
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v7

    .line 1897
    check-cast v7, Ljava/util/List;

    .line 1898
    .line 1899
    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 1900
    .line 1901
    .line 1902
    goto/16 :goto_3

    .line 1903
    .line 1904
    :pswitch_6e
    aget v8, v2, v1

    .line 1905
    .line 1906
    and-int/2addr v7, v4

    .line 1907
    int-to-long v9, v7

    .line 1908
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v7

    .line 1912
    check-cast v7, Ljava/util/List;

    .line 1913
    .line 1914
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 1915
    .line 1916
    .line 1917
    move-result-object v9

    .line 1918
    invoke-static {v8, v7, p2, v9}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 1919
    .line 1920
    .line 1921
    goto/16 :goto_3

    .line 1922
    .line 1923
    :pswitch_6f
    aget v8, v2, v1

    .line 1924
    .line 1925
    and-int/2addr v7, v4

    .line 1926
    int-to-long v9, v7

    .line 1927
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1928
    .line 1929
    .line 1930
    move-result-object v7

    .line 1931
    check-cast v7, Ljava/util/List;

    .line 1932
    .line 1933
    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 1934
    .line 1935
    .line 1936
    goto/16 :goto_3

    .line 1937
    .line 1938
    :pswitch_70
    aget v8, v2, v1

    .line 1939
    .line 1940
    and-int/2addr v7, v4

    .line 1941
    int-to-long v9, v7

    .line 1942
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1943
    .line 1944
    .line 1945
    move-result-object v7

    .line 1946
    check-cast v7, Ljava/util/List;

    .line 1947
    .line 1948
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1949
    .line 1950
    .line 1951
    goto/16 :goto_3

    .line 1952
    .line 1953
    :pswitch_71
    aget v8, v2, v1

    .line 1954
    .line 1955
    and-int/2addr v7, v4

    .line 1956
    int-to-long v9, v7

    .line 1957
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v7

    .line 1961
    check-cast v7, Ljava/util/List;

    .line 1962
    .line 1963
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1964
    .line 1965
    .line 1966
    goto/16 :goto_3

    .line 1967
    .line 1968
    :pswitch_72
    aget v8, v2, v1

    .line 1969
    .line 1970
    and-int/2addr v7, v4

    .line 1971
    int-to-long v9, v7

    .line 1972
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1973
    .line 1974
    .line 1975
    move-result-object v7

    .line 1976
    check-cast v7, Ljava/util/List;

    .line 1977
    .line 1978
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1979
    .line 1980
    .line 1981
    goto/16 :goto_3

    .line 1982
    .line 1983
    :pswitch_73
    aget v8, v2, v1

    .line 1984
    .line 1985
    and-int/2addr v7, v4

    .line 1986
    int-to-long v9, v7

    .line 1987
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1988
    .line 1989
    .line 1990
    move-result-object v7

    .line 1991
    check-cast v7, Ljava/util/List;

    .line 1992
    .line 1993
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 1994
    .line 1995
    .line 1996
    goto/16 :goto_3

    .line 1997
    .line 1998
    :pswitch_74
    aget v8, v2, v1

    .line 1999
    .line 2000
    and-int/2addr v7, v4

    .line 2001
    int-to-long v9, v7

    .line 2002
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v7

    .line 2006
    check-cast v7, Ljava/util/List;

    .line 2007
    .line 2008
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 2009
    .line 2010
    .line 2011
    goto/16 :goto_3

    .line 2012
    .line 2013
    :pswitch_75
    aget v8, v2, v1

    .line 2014
    .line 2015
    and-int/2addr v7, v4

    .line 2016
    int-to-long v9, v7

    .line 2017
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v7

    .line 2021
    check-cast v7, Ljava/util/List;

    .line 2022
    .line 2023
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 2024
    .line 2025
    .line 2026
    goto/16 :goto_3

    .line 2027
    .line 2028
    :pswitch_76
    aget v8, v2, v1

    .line 2029
    .line 2030
    and-int/2addr v7, v4

    .line 2031
    int-to-long v9, v7

    .line 2032
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2033
    .line 2034
    .line 2035
    move-result-object v7

    .line 2036
    check-cast v7, Ljava/util/List;

    .line 2037
    .line 2038
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 2039
    .line 2040
    .line 2041
    goto/16 :goto_3

    .line 2042
    .line 2043
    :pswitch_77
    aget v8, v2, v1

    .line 2044
    .line 2045
    and-int/2addr v7, v4

    .line 2046
    int-to-long v9, v7

    .line 2047
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2048
    .line 2049
    .line 2050
    move-result-object v7

    .line 2051
    check-cast v7, Ljava/util/List;

    .line 2052
    .line 2053
    invoke-static {v8, v7, p2, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;Z)V

    .line 2054
    .line 2055
    .line 2056
    goto/16 :goto_3

    .line 2057
    .line 2058
    :pswitch_78
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2059
    .line 2060
    .line 2061
    move-result v9

    .line 2062
    if-eqz v9, :cond_3

    .line 2063
    .line 2064
    and-int/2addr v7, v4

    .line 2065
    int-to-long v9, v7

    .line 2066
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v7

    .line 2070
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 2071
    .line 2072
    .line 2073
    move-result-object v9

    .line 2074
    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeGroup(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 2075
    .line 2076
    .line 2077
    goto/16 :goto_3

    .line 2078
    .line 2079
    :pswitch_79
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2080
    .line 2081
    .line 2082
    move-result v9

    .line 2083
    if-eqz v9, :cond_3

    .line 2084
    .line 2085
    and-int/2addr v7, v4

    .line 2086
    int-to-long v9, v7

    .line 2087
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 2088
    .line 2089
    .line 2090
    move-result-wide v9

    .line 2091
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt64(JI)V

    .line 2092
    .line 2093
    .line 2094
    goto/16 :goto_3

    .line 2095
    .line 2096
    :pswitch_7a
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2097
    .line 2098
    .line 2099
    move-result v9

    .line 2100
    if-eqz v9, :cond_3

    .line 2101
    .line 2102
    and-int/2addr v7, v4

    .line 2103
    int-to-long v9, v7

    .line 2104
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 2105
    .line 2106
    .line 2107
    move-result v7

    .line 2108
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSInt32(II)V

    .line 2109
    .line 2110
    .line 2111
    goto/16 :goto_3

    .line 2112
    .line 2113
    :pswitch_7b
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2114
    .line 2115
    .line 2116
    move-result v9

    .line 2117
    if-eqz v9, :cond_3

    .line 2118
    .line 2119
    and-int/2addr v7, v4

    .line 2120
    int-to-long v9, v7

    .line 2121
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 2122
    .line 2123
    .line 2124
    move-result-wide v9

    .line 2125
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed64(JI)V

    .line 2126
    .line 2127
    .line 2128
    goto/16 :goto_3

    .line 2129
    .line 2130
    :pswitch_7c
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2131
    .line 2132
    .line 2133
    move-result v9

    .line 2134
    if-eqz v9, :cond_3

    .line 2135
    .line 2136
    and-int/2addr v7, v4

    .line 2137
    int-to-long v9, v7

    .line 2138
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 2139
    .line 2140
    .line 2141
    move-result v7

    .line 2142
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeSFixed32(II)V

    .line 2143
    .line 2144
    .line 2145
    goto/16 :goto_3

    .line 2146
    .line 2147
    :pswitch_7d
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2148
    .line 2149
    .line 2150
    move-result v9

    .line 2151
    if-eqz v9, :cond_3

    .line 2152
    .line 2153
    and-int/2addr v7, v4

    .line 2154
    int-to-long v9, v7

    .line 2155
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 2156
    .line 2157
    .line 2158
    move-result v7

    .line 2159
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeEnum(II)V

    .line 2160
    .line 2161
    .line 2162
    goto/16 :goto_3

    .line 2163
    .line 2164
    :pswitch_7e
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2165
    .line 2166
    .line 2167
    move-result v9

    .line 2168
    if-eqz v9, :cond_3

    .line 2169
    .line 2170
    and-int/2addr v7, v4

    .line 2171
    int-to-long v9, v7

    .line 2172
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 2173
    .line 2174
    .line 2175
    move-result v7

    .line 2176
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt32(II)V

    .line 2177
    .line 2178
    .line 2179
    goto/16 :goto_3

    .line 2180
    .line 2181
    :pswitch_7f
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2182
    .line 2183
    .line 2184
    move-result v9

    .line 2185
    if-eqz v9, :cond_3

    .line 2186
    .line 2187
    and-int/2addr v7, v4

    .line 2188
    int-to-long v9, v7

    .line 2189
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2190
    .line 2191
    .line 2192
    move-result-object v7

    .line 2193
    check-cast v7, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    .line 2194
    .line 2195
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBytes(ILandroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;)V

    .line 2196
    .line 2197
    .line 2198
    goto/16 :goto_3

    .line 2199
    .line 2200
    :pswitch_80
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2201
    .line 2202
    .line 2203
    move-result v9

    .line 2204
    if-eqz v9, :cond_3

    .line 2205
    .line 2206
    and-int/2addr v7, v4

    .line 2207
    int-to-long v9, v7

    .line 2208
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v7

    .line 2212
    invoke-virtual {p0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->getMessageFieldSchema(I)Landroidx/datastore/preferences/protobuf/Schema;

    .line 2213
    .line 2214
    .line 2215
    move-result-object v9

    .line 2216
    invoke-virtual {p2, v8, v7, v9}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    .line 2217
    .line 2218
    .line 2219
    goto/16 :goto_3

    .line 2220
    .line 2221
    :pswitch_81
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2222
    .line 2223
    .line 2224
    move-result v9

    .line 2225
    if-eqz v9, :cond_3

    .line 2226
    .line 2227
    and-int/2addr v7, v4

    .line 2228
    int-to-long v9, v7

    .line 2229
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(JLjava/lang/Object;)Ljava/lang/Object;

    .line 2230
    .line 2231
    .line 2232
    move-result-object v7

    .line 2233
    invoke-static {v8, v7, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeString(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 2234
    .line 2235
    .line 2236
    goto/16 :goto_3

    .line 2237
    .line 2238
    :pswitch_82
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2239
    .line 2240
    .line 2241
    move-result v9

    .line 2242
    if-eqz v9, :cond_3

    .line 2243
    .line 2244
    and-int/2addr v7, v4

    .line 2245
    int-to-long v9, v7

    .line 2246
    sget-object v7, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2247
    .line 2248
    invoke-virtual {v7, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(JLjava/lang/Object;)Z

    .line 2249
    .line 2250
    .line 2251
    move-result v7

    .line 2252
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeBool(IZ)V

    .line 2253
    .line 2254
    .line 2255
    goto/16 :goto_3

    .line 2256
    .line 2257
    :pswitch_83
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2258
    .line 2259
    .line 2260
    move-result v9

    .line 2261
    if-eqz v9, :cond_3

    .line 2262
    .line 2263
    and-int/2addr v7, v4

    .line 2264
    int-to-long v9, v7

    .line 2265
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 2266
    .line 2267
    .line 2268
    move-result v7

    .line 2269
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed32(II)V

    .line 2270
    .line 2271
    .line 2272
    goto :goto_3

    .line 2273
    :pswitch_84
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2274
    .line 2275
    .line 2276
    move-result v9

    .line 2277
    if-eqz v9, :cond_3

    .line 2278
    .line 2279
    and-int/2addr v7, v4

    .line 2280
    int-to-long v9, v7

    .line 2281
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 2282
    .line 2283
    .line 2284
    move-result-wide v9

    .line 2285
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFixed64(JI)V

    .line 2286
    .line 2287
    .line 2288
    goto :goto_3

    .line 2289
    :pswitch_85
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2290
    .line 2291
    .line 2292
    move-result v9

    .line 2293
    if-eqz v9, :cond_3

    .line 2294
    .line 2295
    and-int/2addr v7, v4

    .line 2296
    int-to-long v9, v7

    .line 2297
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 2298
    .line 2299
    .line 2300
    move-result v7

    .line 2301
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt32(II)V

    .line 2302
    .line 2303
    .line 2304
    goto :goto_3

    .line 2305
    :pswitch_86
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2306
    .line 2307
    .line 2308
    move-result v9

    .line 2309
    if-eqz v9, :cond_3

    .line 2310
    .line 2311
    and-int/2addr v7, v4

    .line 2312
    int-to-long v9, v7

    .line 2313
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 2314
    .line 2315
    .line 2316
    move-result-wide v9

    .line 2317
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeUInt64(JI)V

    .line 2318
    .line 2319
    .line 2320
    goto :goto_3

    .line 2321
    :pswitch_87
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2322
    .line 2323
    .line 2324
    move-result v9

    .line 2325
    if-eqz v9, :cond_3

    .line 2326
    .line 2327
    and-int/2addr v7, v4

    .line 2328
    int-to-long v9, v7

    .line 2329
    invoke-static {v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getLong(JLjava/lang/Object;)J

    .line 2330
    .line 2331
    .line 2332
    move-result-wide v9

    .line 2333
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeInt64(JI)V

    .line 2334
    .line 2335
    .line 2336
    goto :goto_3

    .line 2337
    :pswitch_88
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2338
    .line 2339
    .line 2340
    move-result v9

    .line 2341
    if-eqz v9, :cond_3

    .line 2342
    .line 2343
    and-int/2addr v7, v4

    .line 2344
    int-to-long v9, v7

    .line 2345
    sget-object v7, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2346
    .line 2347
    invoke-virtual {v7, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(JLjava/lang/Object;)F

    .line 2348
    .line 2349
    .line 2350
    move-result v7

    .line 2351
    invoke-virtual {p2, v8, v7}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeFloat(IF)V

    .line 2352
    .line 2353
    .line 2354
    goto :goto_3

    .line 2355
    :pswitch_89
    invoke-virtual {p0, v1, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->isFieldPresent(ILjava/lang/Object;)Z

    .line 2356
    .line 2357
    .line 2358
    move-result v9

    .line 2359
    if-eqz v9, :cond_3

    .line 2360
    .line 2361
    and-int/2addr v7, v4

    .line 2362
    int-to-long v9, v7

    .line 2363
    sget-object v7, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2364
    .line 2365
    invoke-virtual {v7, v9, v10, p1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(JLjava/lang/Object;)D

    .line 2366
    .line 2367
    .line 2368
    move-result-wide v9

    .line 2369
    invoke-virtual {p2, v9, v10, v8}, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->writeDouble(DI)V

    .line 2370
    .line 2371
    .line 2372
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x3

    .line 2373
    .line 2374
    goto/16 :goto_2

    .line 2375
    .line 2376
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2377
    .line 2378
    .line 2379
    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    .line 2380
    .line 2381
    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    .line 2382
    .line 2383
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->writeTo(Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 2384
    .line 2385
    .line 2386
    return-void

    .line 2387
    :cond_5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->writeFieldsInAscendingOrderProto2(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;)V

    .line 2388
    .line 2389
    .line 2390
    return-void

    .line 2391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
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

    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    .line 2410
    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    .line 2416
    .line 2417
    .line 2418
    .line 2419
    .line 2420
    .line 2421
    .line 2422
    .line 2423
    .line 2424
    .line 2425
    .line 2426
    .line 2427
    .line 2428
    .line 2429
    .line 2430
    .line 2431
    .line 2432
    .line 2433
    .line 2434
    .line 2435
    .line 2436
    .line 2437
    .line 2438
    .line 2439
    .line 2440
    .line 2441
    .line 2442
    .line 2443
    .line 2444
    .line 2445
    .line 2446
    .line 2447
    .line 2448
    .line 2449
    .line 2450
    .line 2451
    .line 2452
    .line 2453
    .line 2454
    .line 2455
    .line 2456
    .line 2457
    .line 2458
    .line 2459
    .line 2460
    .line 2461
    .line 2462
    .line 2463
    .line 2464
    .line 2465
    .line 2466
    .line 2467
    .line 2468
    .line 2469
    .line 2470
    .line 2471
    .line 2472
    .line 2473
    .line 2474
    .line 2475
    .line 2476
    .line 2477
    .line 2478
    .line 2479
    .line 2480
    .line 2481
    .line 2482
    .line 2483
    .line 2484
    .line 2485
    .line 2486
    .line 2487
    .line 2488
    .line 2489
    .line 2490
    .line 2491
    .line 2492
    .line 2493
    .line 2494
    .line 2495
    .line 2496
    .line 2497
    .line 2498
    .line 2499
    .line 2500
    .line 2501
    .line 2502
    .line 2503
    .line 2504
    .line 2505
    .line 2506
    .line 2507
    .line 2508
    .line 2509
    .line 2510
    .line 2511
    .line 2512
    .line 2513
    .line 2514
    .line 2515
    .line 2516
    .line 2517
    .line 2518
    .line 2519
    .line 2520
    .line 2521
    .line 2522
    .line 2523
    .line 2524
    .line 2525
    .line 2526
    .line 2527
    .line 2528
    .line 2529
    .line 2530
    .line 2531
    .line 2532
    .line 2533
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method
