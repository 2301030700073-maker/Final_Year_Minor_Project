.class public final enum Landroidx/datastore/preferences/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

.field public static final VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 86

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 2
    .line 3
    sget-object v6, Landroidx/datastore/preferences/protobuf/JavaType;->DOUBLE:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 4
    .line 5
    const-string v1, "DOUBLE"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v11, 0x1

    .line 10
    move-object v5, v6

    .line 11
    move v4, v11

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 13
    .line 14
    .line 15
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 16
    .line 17
    sget-object v17, Landroidx/datastore/preferences/protobuf/JavaType;->FLOAT:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 18
    .line 19
    const-string v8, "FLOAT"

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    const/4 v10, 0x1

    .line 23
    move-object/from16 v12, v17

    .line 24
    .line 25
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 26
    .line 27
    .line 28
    move-object/from16 v18, v7

    .line 29
    .line 30
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 31
    .line 32
    sget-object v24, Landroidx/datastore/preferences/protobuf/JavaType;->LONG:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 33
    .line 34
    const-string v8, "INT64"

    .line 35
    .line 36
    const/4 v9, 0x2

    .line 37
    const/4 v10, 0x2

    .line 38
    move-object/from16 v12, v24

    .line 39
    .line 40
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 41
    .line 42
    .line 43
    move-object/from16 v25, v7

    .line 44
    .line 45
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    const/4 v10, 0x3

    .line 49
    const-string v8, "UINT64"

    .line 50
    .line 51
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v26, v7

    .line 55
    .line 56
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 57
    .line 58
    sget-object v32, Landroidx/datastore/preferences/protobuf/JavaType;->INT:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 59
    .line 60
    const-string v8, "INT32"

    .line 61
    .line 62
    const/4 v9, 0x4

    .line 63
    const/4 v10, 0x4

    .line 64
    move-object/from16 v12, v32

    .line 65
    .line 66
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 67
    .line 68
    .line 69
    move-object/from16 v33, v7

    .line 70
    .line 71
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 72
    .line 73
    const/4 v9, 0x5

    .line 74
    const/4 v10, 0x5

    .line 75
    const-string v8, "FIXED64"

    .line 76
    .line 77
    move-object/from16 v12, v24

    .line 78
    .line 79
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 80
    .line 81
    .line 82
    move-object/from16 v34, v7

    .line 83
    .line 84
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 85
    .line 86
    const/4 v9, 0x6

    .line 87
    const/4 v10, 0x6

    .line 88
    const-string v8, "FIXED32"

    .line 89
    .line 90
    move-object/from16 v12, v32

    .line 91
    .line 92
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 93
    .line 94
    .line 95
    move-object/from16 v35, v7

    .line 96
    .line 97
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 98
    .line 99
    sget-object v41, Landroidx/datastore/preferences/protobuf/JavaType;->BOOLEAN:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 100
    .line 101
    const-string v8, "BOOL"

    .line 102
    .line 103
    const/4 v9, 0x7

    .line 104
    const/4 v10, 0x7

    .line 105
    move-object/from16 v12, v41

    .line 106
    .line 107
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 108
    .line 109
    .line 110
    move-object/from16 v42, v7

    .line 111
    .line 112
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 113
    .line 114
    sget-object v48, Landroidx/datastore/preferences/protobuf/JavaType;->STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 115
    .line 116
    const-string v8, "STRING"

    .line 117
    .line 118
    const/16 v9, 0x8

    .line 119
    .line 120
    const/16 v10, 0x8

    .line 121
    .line 122
    move-object/from16 v12, v48

    .line 123
    .line 124
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 125
    .line 126
    .line 127
    move-object/from16 v49, v7

    .line 128
    .line 129
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 130
    .line 131
    sget-object v55, Landroidx/datastore/preferences/protobuf/JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 132
    .line 133
    const-string v8, "MESSAGE"

    .line 134
    .line 135
    const/16 v9, 0x9

    .line 136
    .line 137
    const/16 v10, 0x9

    .line 138
    .line 139
    move-object/from16 v12, v55

    .line 140
    .line 141
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 142
    .line 143
    .line 144
    move-object/from16 v56, v7

    .line 145
    .line 146
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 147
    .line 148
    sget-object v12, Landroidx/datastore/preferences/protobuf/JavaType;->BYTE_STRING:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 149
    .line 150
    const-string v8, "BYTES"

    .line 151
    .line 152
    const/16 v9, 0xa

    .line 153
    .line 154
    const/16 v10, 0xa

    .line 155
    .line 156
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 157
    .line 158
    .line 159
    move-object/from16 v63, v7

    .line 160
    .line 161
    move-object/from16 v62, v12

    .line 162
    .line 163
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 164
    .line 165
    const/16 v9, 0xb

    .line 166
    .line 167
    const/16 v10, 0xb

    .line 168
    .line 169
    const-string v8, "UINT32"

    .line 170
    .line 171
    move-object/from16 v12, v32

    .line 172
    .line 173
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 174
    .line 175
    .line 176
    move-object/from16 v64, v7

    .line 177
    .line 178
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 179
    .line 180
    sget-object v70, Landroidx/datastore/preferences/protobuf/JavaType;->ENUM:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 181
    .line 182
    const-string v8, "ENUM"

    .line 183
    .line 184
    const/16 v9, 0xc

    .line 185
    .line 186
    const/16 v10, 0xc

    .line 187
    .line 188
    move-object/from16 v12, v70

    .line 189
    .line 190
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 191
    .line 192
    .line 193
    move-object/from16 v71, v7

    .line 194
    .line 195
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 196
    .line 197
    const/16 v9, 0xd

    .line 198
    .line 199
    const/16 v10, 0xd

    .line 200
    .line 201
    const-string v8, "SFIXED32"

    .line 202
    .line 203
    move-object/from16 v12, v32

    .line 204
    .line 205
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 206
    .line 207
    .line 208
    move-object/from16 v72, v7

    .line 209
    .line 210
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 211
    .line 212
    const/16 v9, 0xe

    .line 213
    .line 214
    const/16 v10, 0xe

    .line 215
    .line 216
    const-string v8, "SFIXED64"

    .line 217
    .line 218
    move-object/from16 v12, v24

    .line 219
    .line 220
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v73, v7

    .line 224
    .line 225
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 226
    .line 227
    const/16 v9, 0xf

    .line 228
    .line 229
    const/16 v10, 0xf

    .line 230
    .line 231
    const-string v8, "SINT32"

    .line 232
    .line 233
    move-object/from16 v12, v32

    .line 234
    .line 235
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 236
    .line 237
    .line 238
    move-object/from16 v74, v7

    .line 239
    .line 240
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 241
    .line 242
    const/16 v9, 0x10

    .line 243
    .line 244
    const/16 v10, 0x10

    .line 245
    .line 246
    const-string v8, "SINT64"

    .line 247
    .line 248
    move-object/from16 v12, v24

    .line 249
    .line 250
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 251
    .line 252
    .line 253
    move-object/from16 v75, v7

    .line 254
    .line 255
    new-instance v7, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 256
    .line 257
    const/16 v9, 0x11

    .line 258
    .line 259
    const/16 v10, 0x11

    .line 260
    .line 261
    const-string v8, "GROUP"

    .line 262
    .line 263
    move-object/from16 v12, v55

    .line 264
    .line 265
    invoke-direct/range {v7 .. v12}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 266
    .line 267
    .line 268
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 269
    .line 270
    const-string v2, "DOUBLE_LIST"

    .line 271
    .line 272
    const/16 v3, 0x12

    .line 273
    .line 274
    const/16 v4, 0x12

    .line 275
    .line 276
    const/16 v23, 0x2

    .line 277
    .line 278
    move/from16 v5, v23

    .line 279
    .line 280
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 281
    .line 282
    .line 283
    move-object v8, v1

    .line 284
    new-instance v12, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 285
    .line 286
    const/16 v14, 0x13

    .line 287
    .line 288
    const/16 v15, 0x13

    .line 289
    .line 290
    const-string v13, "FLOAT_LIST"

    .line 291
    .line 292
    move/from16 v16, v23

    .line 293
    .line 294
    invoke-direct/range {v12 .. v17}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 295
    .line 296
    .line 297
    move-object v9, v12

    .line 298
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 299
    .line 300
    const/16 v21, 0x14

    .line 301
    .line 302
    const/16 v22, 0x14

    .line 303
    .line 304
    const-string v20, "INT64_LIST"

    .line 305
    .line 306
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 307
    .line 308
    .line 309
    move-object/from16 v10, v19

    .line 310
    .line 311
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 312
    .line 313
    const/16 v21, 0x15

    .line 314
    .line 315
    const/16 v22, 0x15

    .line 316
    .line 317
    const-string v20, "UINT64_LIST"

    .line 318
    .line 319
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 320
    .line 321
    .line 322
    move-object/from16 v11, v19

    .line 323
    .line 324
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 325
    .line 326
    const/16 v29, 0x16

    .line 327
    .line 328
    const/16 v30, 0x16

    .line 329
    .line 330
    const-string v28, "INT32_LIST"

    .line 331
    .line 332
    move/from16 v31, v23

    .line 333
    .line 334
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 335
    .line 336
    .line 337
    move-object/from16 v76, v27

    .line 338
    .line 339
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 340
    .line 341
    const/16 v21, 0x17

    .line 342
    .line 343
    const/16 v22, 0x17

    .line 344
    .line 345
    const-string v20, "FIXED64_LIST"

    .line 346
    .line 347
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v77, v19

    .line 351
    .line 352
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 353
    .line 354
    const/16 v29, 0x18

    .line 355
    .line 356
    const/16 v30, 0x18

    .line 357
    .line 358
    const-string v28, "FIXED32_LIST"

    .line 359
    .line 360
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 361
    .line 362
    .line 363
    move-object/from16 v78, v27

    .line 364
    .line 365
    new-instance v36, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 366
    .line 367
    const/16 v38, 0x19

    .line 368
    .line 369
    const/16 v39, 0x19

    .line 370
    .line 371
    const-string v37, "BOOL_LIST"

    .line 372
    .line 373
    move/from16 v40, v23

    .line 374
    .line 375
    invoke-direct/range {v36 .. v41}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 376
    .line 377
    .line 378
    move-object/from16 v79, v36

    .line 379
    .line 380
    new-instance v43, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 381
    .line 382
    const/16 v45, 0x1a

    .line 383
    .line 384
    const/16 v46, 0x1a

    .line 385
    .line 386
    const-string v44, "STRING_LIST"

    .line 387
    .line 388
    move/from16 v47, v23

    .line 389
    .line 390
    invoke-direct/range {v43 .. v48}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 391
    .line 392
    .line 393
    new-instance v50, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 394
    .line 395
    const/16 v52, 0x1b

    .line 396
    .line 397
    const/16 v53, 0x1b

    .line 398
    .line 399
    const-string v51, "MESSAGE_LIST"

    .line 400
    .line 401
    move/from16 v54, v23

    .line 402
    .line 403
    invoke-direct/range {v50 .. v55}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 404
    .line 405
    .line 406
    move-object/from16 v44, v50

    .line 407
    .line 408
    new-instance v57, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 409
    .line 410
    const/16 v59, 0x1c

    .line 411
    .line 412
    const/16 v60, 0x1c

    .line 413
    .line 414
    const-string v58, "BYTES_LIST"

    .line 415
    .line 416
    move/from16 v61, v23

    .line 417
    .line 418
    invoke-direct/range {v57 .. v62}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 419
    .line 420
    .line 421
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 422
    .line 423
    const/16 v29, 0x1d

    .line 424
    .line 425
    const/16 v30, 0x1d

    .line 426
    .line 427
    const-string v28, "UINT32_LIST"

    .line 428
    .line 429
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 430
    .line 431
    .line 432
    move-object/from16 v45, v27

    .line 433
    .line 434
    new-instance v65, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 435
    .line 436
    const/16 v67, 0x1e

    .line 437
    .line 438
    const/16 v68, 0x1e

    .line 439
    .line 440
    const-string v66, "ENUM_LIST"

    .line 441
    .line 442
    move/from16 v69, v23

    .line 443
    .line 444
    invoke-direct/range {v65 .. v70}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 445
    .line 446
    .line 447
    move-object/from16 v46, v65

    .line 448
    .line 449
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 450
    .line 451
    const/16 v29, 0x1f

    .line 452
    .line 453
    const/16 v30, 0x1f

    .line 454
    .line 455
    const-string v28, "SFIXED32_LIST"

    .line 456
    .line 457
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 458
    .line 459
    .line 460
    move-object/from16 v47, v27

    .line 461
    .line 462
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 463
    .line 464
    const/16 v21, 0x20

    .line 465
    .line 466
    const/16 v22, 0x20

    .line 467
    .line 468
    const-string v20, "SFIXED64_LIST"

    .line 469
    .line 470
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v48, v19

    .line 474
    .line 475
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 476
    .line 477
    const/16 v29, 0x21

    .line 478
    .line 479
    const/16 v30, 0x21

    .line 480
    .line 481
    const-string v28, "SINT32_LIST"

    .line 482
    .line 483
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 484
    .line 485
    .line 486
    move-object/from16 v58, v27

    .line 487
    .line 488
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 489
    .line 490
    const/16 v21, 0x22

    .line 491
    .line 492
    const/16 v22, 0x22

    .line 493
    .line 494
    const-string v20, "SINT64_LIST"

    .line 495
    .line 496
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 497
    .line 498
    .line 499
    move-object/from16 v59, v19

    .line 500
    .line 501
    new-instance v1, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 502
    .line 503
    const-string v2, "DOUBLE_LIST_PACKED"

    .line 504
    .line 505
    const/16 v3, 0x23

    .line 506
    .line 507
    const/16 v4, 0x23

    .line 508
    .line 509
    const/16 v23, 0x3

    .line 510
    .line 511
    move/from16 v5, v23

    .line 512
    .line 513
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 514
    .line 515
    .line 516
    sput-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 517
    .line 518
    new-instance v12, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 519
    .line 520
    const/16 v14, 0x24

    .line 521
    .line 522
    const/16 v15, 0x24

    .line 523
    .line 524
    const-string v13, "FLOAT_LIST_PACKED"

    .line 525
    .line 526
    move/from16 v16, v23

    .line 527
    .line 528
    invoke-direct/range {v12 .. v17}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 529
    .line 530
    .line 531
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 532
    .line 533
    const/16 v21, 0x25

    .line 534
    .line 535
    const/16 v22, 0x25

    .line 536
    .line 537
    const-string v20, "INT64_LIST_PACKED"

    .line 538
    .line 539
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 540
    .line 541
    .line 542
    move-object/from16 v2, v19

    .line 543
    .line 544
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 545
    .line 546
    const/16 v21, 0x26

    .line 547
    .line 548
    const/16 v22, 0x26

    .line 549
    .line 550
    const-string v20, "UINT64_LIST_PACKED"

    .line 551
    .line 552
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 553
    .line 554
    .line 555
    move-object/from16 v3, v19

    .line 556
    .line 557
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 558
    .line 559
    const/16 v29, 0x27

    .line 560
    .line 561
    const/16 v30, 0x27

    .line 562
    .line 563
    const-string v28, "INT32_LIST_PACKED"

    .line 564
    .line 565
    move/from16 v31, v23

    .line 566
    .line 567
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 568
    .line 569
    .line 570
    move-object/from16 v4, v27

    .line 571
    .line 572
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 573
    .line 574
    const/16 v21, 0x28

    .line 575
    .line 576
    const/16 v22, 0x28

    .line 577
    .line 578
    const-string v20, "FIXED64_LIST_PACKED"

    .line 579
    .line 580
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 581
    .line 582
    .line 583
    move-object/from16 v5, v19

    .line 584
    .line 585
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 586
    .line 587
    const/16 v29, 0x29

    .line 588
    .line 589
    const/16 v30, 0x29

    .line 590
    .line 591
    const-string v28, "FIXED32_LIST_PACKED"

    .line 592
    .line 593
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 594
    .line 595
    .line 596
    move-object/from16 v6, v27

    .line 597
    .line 598
    new-instance v36, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 599
    .line 600
    const/16 v38, 0x2a

    .line 601
    .line 602
    const/16 v39, 0x2a

    .line 603
    .line 604
    const-string v37, "BOOL_LIST_PACKED"

    .line 605
    .line 606
    move/from16 v40, v23

    .line 607
    .line 608
    invoke-direct/range {v36 .. v41}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 609
    .line 610
    .line 611
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 612
    .line 613
    const/16 v29, 0x2b

    .line 614
    .line 615
    const/16 v30, 0x2b

    .line 616
    .line 617
    const-string v28, "UINT32_LIST_PACKED"

    .line 618
    .line 619
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 620
    .line 621
    .line 622
    move-object/from16 v13, v27

    .line 623
    .line 624
    new-instance v65, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 625
    .line 626
    const/16 v67, 0x2c

    .line 627
    .line 628
    const/16 v68, 0x2c

    .line 629
    .line 630
    const-string v66, "ENUM_LIST_PACKED"

    .line 631
    .line 632
    move/from16 v69, v23

    .line 633
    .line 634
    invoke-direct/range {v65 .. v70}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 635
    .line 636
    .line 637
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 638
    .line 639
    const/16 v29, 0x2d

    .line 640
    .line 641
    const/16 v30, 0x2d

    .line 642
    .line 643
    const-string v28, "SFIXED32_LIST_PACKED"

    .line 644
    .line 645
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 646
    .line 647
    .line 648
    move-object/from16 v14, v27

    .line 649
    .line 650
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 651
    .line 652
    const/16 v21, 0x2e

    .line 653
    .line 654
    const/16 v22, 0x2e

    .line 655
    .line 656
    const-string v20, "SFIXED64_LIST_PACKED"

    .line 657
    .line 658
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 659
    .line 660
    .line 661
    move-object/from16 v15, v19

    .line 662
    .line 663
    new-instance v27, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 664
    .line 665
    const/16 v29, 0x2f

    .line 666
    .line 667
    const/16 v30, 0x2f

    .line 668
    .line 669
    const-string v28, "SINT32_LIST_PACKED"

    .line 670
    .line 671
    invoke-direct/range {v27 .. v32}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 672
    .line 673
    .line 674
    new-instance v19, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 675
    .line 676
    const/16 v21, 0x30

    .line 677
    .line 678
    const/16 v22, 0x30

    .line 679
    .line 680
    const-string v20, "SINT64_LIST_PACKED"

    .line 681
    .line 682
    invoke-direct/range {v19 .. v24}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 683
    .line 684
    .line 685
    sput-object v19, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 686
    .line 687
    new-instance v50, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 688
    .line 689
    const/16 v52, 0x31

    .line 690
    .line 691
    const/16 v53, 0x31

    .line 692
    .line 693
    const-string v51, "GROUP_LIST"

    .line 694
    .line 695
    invoke-direct/range {v50 .. v55}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 696
    .line 697
    .line 698
    new-instance v80, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 699
    .line 700
    const/16 v84, 0x4

    .line 701
    .line 702
    sget-object v85, Landroidx/datastore/preferences/protobuf/JavaType;->VOID:Landroidx/datastore/preferences/protobuf/JavaType;

    .line 703
    .line 704
    const-string v81, "MAP"

    .line 705
    .line 706
    const/16 v82, 0x32

    .line 707
    .line 708
    const/16 v83, 0x32

    .line 709
    .line 710
    invoke-direct/range {v80 .. v85}, Landroidx/datastore/preferences/protobuf/FieldType;-><init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V

    .line 711
    .line 712
    .line 713
    move-object/from16 v16, v0

    .line 714
    .line 715
    const/16 v0, 0x33

    .line 716
    .line 717
    new-array v0, v0, [Landroidx/datastore/preferences/protobuf/FieldType;

    .line 718
    .line 719
    const/16 v17, 0x0

    .line 720
    .line 721
    aput-object v16, v0, v17

    .line 722
    .line 723
    const/16 v16, 0x1

    .line 724
    .line 725
    aput-object v18, v0, v16

    .line 726
    .line 727
    const/16 v16, 0x2

    .line 728
    .line 729
    aput-object v25, v0, v16

    .line 730
    .line 731
    const/16 v16, 0x3

    .line 732
    .line 733
    aput-object v26, v0, v16

    .line 734
    .line 735
    const/16 v16, 0x4

    .line 736
    .line 737
    aput-object v33, v0, v16

    .line 738
    .line 739
    const/16 v16, 0x5

    .line 740
    .line 741
    aput-object v34, v0, v16

    .line 742
    .line 743
    const/16 v16, 0x6

    .line 744
    .line 745
    aput-object v35, v0, v16

    .line 746
    .line 747
    const/16 v16, 0x7

    .line 748
    .line 749
    aput-object v42, v0, v16

    .line 750
    .line 751
    const/16 v16, 0x8

    .line 752
    .line 753
    aput-object v49, v0, v16

    .line 754
    .line 755
    const/16 v16, 0x9

    .line 756
    .line 757
    aput-object v56, v0, v16

    .line 758
    .line 759
    const/16 v16, 0xa

    .line 760
    .line 761
    aput-object v63, v0, v16

    .line 762
    .line 763
    const/16 v16, 0xb

    .line 764
    .line 765
    aput-object v64, v0, v16

    .line 766
    .line 767
    const/16 v16, 0xc

    .line 768
    .line 769
    aput-object v71, v0, v16

    .line 770
    .line 771
    const/16 v16, 0xd

    .line 772
    .line 773
    aput-object v72, v0, v16

    .line 774
    .line 775
    const/16 v16, 0xe

    .line 776
    .line 777
    aput-object v73, v0, v16

    .line 778
    .line 779
    const/16 v16, 0xf

    .line 780
    .line 781
    aput-object v74, v0, v16

    .line 782
    .line 783
    const/16 v16, 0x10

    .line 784
    .line 785
    aput-object v75, v0, v16

    .line 786
    .line 787
    const/16 v16, 0x11

    .line 788
    .line 789
    aput-object v7, v0, v16

    .line 790
    .line 791
    const/16 v7, 0x12

    .line 792
    .line 793
    aput-object v8, v0, v7

    .line 794
    .line 795
    const/16 v7, 0x13

    .line 796
    .line 797
    aput-object v9, v0, v7

    .line 798
    .line 799
    const/16 v7, 0x14

    .line 800
    .line 801
    aput-object v10, v0, v7

    .line 802
    .line 803
    const/16 v7, 0x15

    .line 804
    .line 805
    aput-object v11, v0, v7

    .line 806
    .line 807
    const/16 v7, 0x16

    .line 808
    .line 809
    aput-object v76, v0, v7

    .line 810
    .line 811
    const/16 v7, 0x17

    .line 812
    .line 813
    aput-object v77, v0, v7

    .line 814
    .line 815
    const/16 v7, 0x18

    .line 816
    .line 817
    aput-object v78, v0, v7

    .line 818
    .line 819
    const/16 v7, 0x19

    .line 820
    .line 821
    aput-object v79, v0, v7

    .line 822
    .line 823
    const/16 v7, 0x1a

    .line 824
    .line 825
    aput-object v43, v0, v7

    .line 826
    .line 827
    const/16 v7, 0x1b

    .line 828
    .line 829
    aput-object v44, v0, v7

    .line 830
    .line 831
    const/16 v7, 0x1c

    .line 832
    .line 833
    aput-object v57, v0, v7

    .line 834
    .line 835
    const/16 v7, 0x1d

    .line 836
    .line 837
    aput-object v45, v0, v7

    .line 838
    .line 839
    const/16 v7, 0x1e

    .line 840
    .line 841
    aput-object v46, v0, v7

    .line 842
    .line 843
    const/16 v7, 0x1f

    .line 844
    .line 845
    aput-object v47, v0, v7

    .line 846
    .line 847
    const/16 v7, 0x20

    .line 848
    .line 849
    aput-object v48, v0, v7

    .line 850
    .line 851
    const/16 v7, 0x21

    .line 852
    .line 853
    aput-object v58, v0, v7

    .line 854
    .line 855
    const/16 v7, 0x22

    .line 856
    .line 857
    aput-object v59, v0, v7

    .line 858
    .line 859
    const/16 v7, 0x23

    .line 860
    .line 861
    aput-object v1, v0, v7

    .line 862
    .line 863
    const/16 v1, 0x24

    .line 864
    .line 865
    aput-object v12, v0, v1

    .line 866
    .line 867
    const/16 v1, 0x25

    .line 868
    .line 869
    aput-object v2, v0, v1

    .line 870
    .line 871
    const/16 v1, 0x26

    .line 872
    .line 873
    aput-object v3, v0, v1

    .line 874
    .line 875
    const/16 v1, 0x27

    .line 876
    .line 877
    aput-object v4, v0, v1

    .line 878
    .line 879
    const/16 v1, 0x28

    .line 880
    .line 881
    aput-object v5, v0, v1

    .line 882
    .line 883
    const/16 v1, 0x29

    .line 884
    .line 885
    aput-object v6, v0, v1

    .line 886
    .line 887
    const/16 v1, 0x2a

    .line 888
    .line 889
    aput-object v36, v0, v1

    .line 890
    .line 891
    const/16 v1, 0x2b

    .line 892
    .line 893
    aput-object v13, v0, v1

    .line 894
    .line 895
    const/16 v1, 0x2c

    .line 896
    .line 897
    aput-object v65, v0, v1

    .line 898
    .line 899
    const/16 v1, 0x2d

    .line 900
    .line 901
    aput-object v14, v0, v1

    .line 902
    .line 903
    const/16 v1, 0x2e

    .line 904
    .line 905
    aput-object v15, v0, v1

    .line 906
    .line 907
    const/16 v1, 0x2f

    .line 908
    .line 909
    aput-object v27, v0, v1

    .line 910
    .line 911
    const/16 v1, 0x30

    .line 912
    .line 913
    aput-object v19, v0, v1

    .line 914
    .line 915
    const/16 v1, 0x31

    .line 916
    .line 917
    aput-object v50, v0, v1

    .line 918
    .line 919
    const/16 v1, 0x32

    .line 920
    .line 921
    aput-object v80, v0, v1

    .line 922
    .line 923
    sput-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 924
    .line 925
    invoke-static {}, Landroidx/datastore/preferences/protobuf/FieldType;->values()[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    array-length v1, v0

    .line 930
    new-array v1, v1, [Landroidx/datastore/preferences/protobuf/FieldType;

    .line 931
    .line 932
    sput-object v1, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 933
    .line 934
    array-length v1, v0

    .line 935
    move/from16 v2, v17

    .line 936
    .line 937
    :goto_0
    if-ge v2, v1, :cond_0

    .line 938
    .line 939
    aget-object v3, v0, v2

    .line 940
    .line 941
    sget-object v4, Landroidx/datastore/preferences/protobuf/FieldType;->VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 942
    .line 943
    iget v5, v3, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    .line 944
    .line 945
    aput-object v3, v4, v5

    .line 946
    .line 947
    add-int/lit8 v2, v2, 0x1

    .line 948
    .line 949
    goto :goto_0

    .line 950
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILandroidx/datastore/preferences/protobuf/JavaType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Landroidx/datastore/preferences/protobuf/FieldType;->id:I

    .line 5
    .line 6
    invoke-static {p4}, Landroidx/camera/core/ImageAnalysis$$ExternalSyntheticLambda3;->ordinal(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 p1, 0x1

    .line 11
    if-eq p0, p1, :cond_1

    .line 12
    .line 13
    const/4 p2, 0x3

    .line 14
    if-eq p0, p2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    :goto_0
    if-ne p4, p1, :cond_2

    .line 25
    .line 26
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    :cond_2
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/datastore/preferences/protobuf/FieldType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldType;->$VALUES:[Landroidx/datastore/preferences/protobuf/FieldType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Landroidx/datastore/preferences/protobuf/FieldType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/datastore/preferences/protobuf/FieldType;

    .line 8
    .line 9
    return-object v0
.end method
