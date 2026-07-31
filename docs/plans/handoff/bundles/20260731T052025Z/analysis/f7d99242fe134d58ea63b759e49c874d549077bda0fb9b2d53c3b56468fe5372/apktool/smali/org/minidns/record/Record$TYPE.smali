.class public final enum Lorg/minidns/record/Record$TYPE;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/minidns/record/Record$TYPE;

.field public static final enum A:Lorg/minidns/record/Record$TYPE;

.field public static final enum AAAA:Lorg/minidns/record/Record$TYPE;

.field public static final enum ANY:Lorg/minidns/record/Record$TYPE;

.field public static final enum CNAME:Lorg/minidns/record/Record$TYPE;

.field public static final DATA_LUT:Ljava/util/HashMap;

.field public static final enum DNSKEY:Lorg/minidns/record/Record$TYPE;

.field public static final enum DS:Lorg/minidns/record/Record$TYPE;

.field public static final INVERSE_LUT:Ljava/util/HashMap;

.field public static final enum NS:Lorg/minidns/record/Record$TYPE;

.field public static final enum NSEC3:Lorg/minidns/record/Record$TYPE;

.field public static final enum OPT:Lorg/minidns/record/Record$TYPE;

.field public static final enum RRSIG:Lorg/minidns/record/Record$TYPE;

.field public static final enum SOA:Lorg/minidns/record/Record$TYPE;

.field public static final enum UNKNOWN:Lorg/minidns/record/Record$TYPE;


# instance fields
.field public final dataClass:Ljava/lang/Class;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 109

    .line 1
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lorg/minidns/record/Record$TYPE;->UNKNOWN:Lorg/minidns/record/Record$TYPE;

    .line 12
    .line 13
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 14
    .line 15
    const-class v3, Lorg/minidns/record/A;

    .line 16
    .line 17
    const-string v5, "A"

    .line 18
    .line 19
    const/4 v6, 0x1

    .line 20
    invoke-direct {v1, v5, v6, v6, v3}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    .line 24
    .line 25
    new-instance v3, Lorg/minidns/record/Record$TYPE;

    .line 26
    .line 27
    const-class v5, Lorg/minidns/record/NS;

    .line 28
    .line 29
    const-string v7, "NS"

    .line 30
    .line 31
    const/4 v8, 0x2

    .line 32
    invoke-direct {v3, v7, v8, v8, v5}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lorg/minidns/record/Record$TYPE;->NS:Lorg/minidns/record/Record$TYPE;

    .line 36
    .line 37
    new-instance v5, Lorg/minidns/record/Record$TYPE;

    .line 38
    .line 39
    const-string v7, "MD"

    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    invoke-direct {v5, v7, v9, v9, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Lorg/minidns/record/Record$TYPE;

    .line 46
    .line 47
    const-string v10, "MF"

    .line 48
    .line 49
    const/4 v11, 0x4

    .line 50
    invoke-direct {v7, v10, v11, v11, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 51
    .line 52
    .line 53
    new-instance v10, Lorg/minidns/record/Record$TYPE;

    .line 54
    .line 55
    const/4 v11, 0x5

    .line 56
    const-class v12, Lorg/minidns/record/CNAME;

    .line 57
    .line 58
    const-string v13, "CNAME"

    .line 59
    .line 60
    invoke-direct {v10, v13, v11, v11, v12}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    sput-object v10, Lorg/minidns/record/Record$TYPE;->CNAME:Lorg/minidns/record/Record$TYPE;

    .line 64
    .line 65
    new-instance v11, Lorg/minidns/record/Record$TYPE;

    .line 66
    .line 67
    const/4 v12, 0x6

    .line 68
    const-class v13, Lorg/minidns/record/SOA;

    .line 69
    .line 70
    const-string v14, "SOA"

    .line 71
    .line 72
    invoke-direct {v11, v14, v12, v12, v13}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 73
    .line 74
    .line 75
    sput-object v11, Lorg/minidns/record/Record$TYPE;->SOA:Lorg/minidns/record/Record$TYPE;

    .line 76
    .line 77
    new-instance v12, Lorg/minidns/record/Record$TYPE;

    .line 78
    .line 79
    const-string v13, "MB"

    .line 80
    .line 81
    const/4 v14, 0x7

    .line 82
    invoke-direct {v12, v13, v14, v14, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    new-instance v13, Lorg/minidns/record/Record$TYPE;

    .line 86
    .line 87
    const-string v14, "MG"

    .line 88
    .line 89
    const/16 v15, 0x8

    .line 90
    .line 91
    invoke-direct {v13, v14, v15, v15, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 92
    .line 93
    .line 94
    new-instance v14, Lorg/minidns/record/Record$TYPE;

    .line 95
    .line 96
    const-string v15, "MR"

    .line 97
    .line 98
    move/from16 v16, v2

    .line 99
    .line 100
    const/16 v2, 0x9

    .line 101
    .line 102
    invoke-direct {v14, v15, v2, v2, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 106
    .line 107
    const-string v15, "NULL"

    .line 108
    .line 109
    move/from16 v17, v6

    .line 110
    .line 111
    const/16 v6, 0xa

    .line 112
    .line 113
    invoke-direct {v2, v15, v6, v6, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    new-instance v6, Lorg/minidns/record/Record$TYPE;

    .line 117
    .line 118
    const-string v15, "WKS"

    .line 119
    .line 120
    move/from16 v18, v8

    .line 121
    .line 122
    const/16 v8, 0xb

    .line 123
    .line 124
    invoke-direct {v6, v15, v8, v8, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 125
    .line 126
    .line 127
    new-instance v8, Lorg/minidns/record/Record$TYPE;

    .line 128
    .line 129
    const/16 v15, 0xc

    .line 130
    .line 131
    move/from16 v19, v9

    .line 132
    .line 133
    const-class v9, Lorg/minidns/record/PTR;

    .line 134
    .line 135
    const-string v4, "PTR"

    .line 136
    .line 137
    invoke-direct {v8, v4, v15, v15, v9}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 138
    .line 139
    .line 140
    new-instance v4, Lorg/minidns/record/Record$TYPE;

    .line 141
    .line 142
    const-string v9, "HINFO"

    .line 143
    .line 144
    const/16 v15, 0xd

    .line 145
    .line 146
    move-object/from16 v21, v0

    .line 147
    .line 148
    const/4 v0, 0x0

    .line 149
    invoke-direct {v4, v9, v15, v15, v0}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 150
    .line 151
    .line 152
    new-instance v9, Lorg/minidns/record/Record$TYPE;

    .line 153
    .line 154
    const-string v15, "MINFO"

    .line 155
    .line 156
    move-object/from16 v22, v1

    .line 157
    .line 158
    const/16 v1, 0xe

    .line 159
    .line 160
    invoke-direct {v9, v15, v1, v1, v0}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 164
    .line 165
    const/16 v1, 0xf

    .line 166
    .line 167
    const-class v15, Lorg/minidns/record/MX;

    .line 168
    .line 169
    move-object/from16 v23, v2

    .line 170
    .line 171
    const-string v2, "MX"

    .line 172
    .line 173
    invoke-direct {v0, v2, v1, v1, v15}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 177
    .line 178
    const/16 v2, 0x10

    .line 179
    .line 180
    const-class v15, Lorg/minidns/record/TXT;

    .line 181
    .line 182
    move-object/from16 v24, v0

    .line 183
    .line 184
    const-string v0, "TXT"

    .line 185
    .line 186
    invoke-direct {v1, v0, v2, v2, v15}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 190
    .line 191
    const-string v2, "RP"

    .line 192
    .line 193
    const/16 v15, 0x11

    .line 194
    .line 195
    move-object/from16 v25, v1

    .line 196
    .line 197
    const/4 v1, 0x0

    .line 198
    invoke-direct {v0, v2, v15, v15, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 199
    .line 200
    .line 201
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 202
    .line 203
    const-string v15, "AFSDB"

    .line 204
    .line 205
    move-object/from16 v26, v0

    .line 206
    .line 207
    const/16 v0, 0x12

    .line 208
    .line 209
    invoke-direct {v2, v15, v0, v0, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 213
    .line 214
    const-string v15, "X25"

    .line 215
    .line 216
    move-object/from16 v27, v2

    .line 217
    .line 218
    const/16 v2, 0x13

    .line 219
    .line 220
    invoke-direct {v0, v15, v2, v2, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 221
    .line 222
    .line 223
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 224
    .line 225
    const-string v15, "ISDN"

    .line 226
    .line 227
    move-object/from16 v28, v0

    .line 228
    .line 229
    const/16 v0, 0x14

    .line 230
    .line 231
    invoke-direct {v2, v15, v0, v0, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 232
    .line 233
    .line 234
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 235
    .line 236
    const-string v15, "RT"

    .line 237
    .line 238
    move-object/from16 v29, v2

    .line 239
    .line 240
    const/16 v2, 0x15

    .line 241
    .line 242
    invoke-direct {v0, v15, v2, v2, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 243
    .line 244
    .line 245
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 246
    .line 247
    const-string v15, "NSAP"

    .line 248
    .line 249
    move-object/from16 v30, v0

    .line 250
    .line 251
    const/16 v0, 0x16

    .line 252
    .line 253
    invoke-direct {v2, v15, v0, v0, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 254
    .line 255
    .line 256
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 257
    .line 258
    const-string v15, "NSAP_PTR"

    .line 259
    .line 260
    move-object/from16 v31, v2

    .line 261
    .line 262
    const/16 v2, 0x17

    .line 263
    .line 264
    invoke-direct {v0, v15, v2, v2, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 265
    .line 266
    .line 267
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 268
    .line 269
    const-string v15, "SIG"

    .line 270
    .line 271
    move-object/from16 v32, v0

    .line 272
    .line 273
    const/16 v0, 0x18

    .line 274
    .line 275
    invoke-direct {v2, v15, v0, v0, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 279
    .line 280
    const-string v15, "KEY"

    .line 281
    .line 282
    move-object/from16 v33, v2

    .line 283
    .line 284
    const/16 v2, 0x19

    .line 285
    .line 286
    invoke-direct {v0, v15, v2, v2, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 287
    .line 288
    .line 289
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 290
    .line 291
    const-string v15, "PX"

    .line 292
    .line 293
    move-object/from16 v34, v0

    .line 294
    .line 295
    const/16 v0, 0x1a

    .line 296
    .line 297
    invoke-direct {v2, v15, v0, v0, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 298
    .line 299
    .line 300
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 301
    .line 302
    const-string v15, "GPOS"

    .line 303
    .line 304
    move-object/from16 v35, v2

    .line 305
    .line 306
    const/16 v2, 0x1b

    .line 307
    .line 308
    invoke-direct {v0, v15, v2, v2, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 309
    .line 310
    .line 311
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 312
    .line 313
    const/16 v15, 0x1c

    .line 314
    .line 315
    const-class v1, Lorg/minidns/record/AAAA;

    .line 316
    .line 317
    move-object/from16 v36, v0

    .line 318
    .line 319
    const-string v0, "AAAA"

    .line 320
    .line 321
    invoke-direct {v2, v0, v15, v15, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 322
    .line 323
    .line 324
    sput-object v2, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    .line 325
    .line 326
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 327
    .line 328
    const-string v1, "LOC"

    .line 329
    .line 330
    const/16 v15, 0x1d

    .line 331
    .line 332
    move-object/from16 v37, v2

    .line 333
    .line 334
    const/4 v2, 0x0

    .line 335
    invoke-direct {v0, v1, v15, v15, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 336
    .line 337
    .line 338
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 339
    .line 340
    const-string v15, "NXT"

    .line 341
    .line 342
    move-object/from16 v38, v0

    .line 343
    .line 344
    const/16 v0, 0x1e

    .line 345
    .line 346
    invoke-direct {v1, v15, v0, v0, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 347
    .line 348
    .line 349
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 350
    .line 351
    const-string v15, "EID"

    .line 352
    .line 353
    move-object/from16 v39, v1

    .line 354
    .line 355
    const/16 v1, 0x1f

    .line 356
    .line 357
    invoke-direct {v0, v15, v1, v1, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 358
    .line 359
    .line 360
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 361
    .line 362
    const-string v15, "NIMLOC"

    .line 363
    .line 364
    move-object/from16 v40, v0

    .line 365
    .line 366
    const/16 v0, 0x20

    .line 367
    .line 368
    invoke-direct {v1, v15, v0, v0, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 369
    .line 370
    .line 371
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 372
    .line 373
    const/16 v15, 0x21

    .line 374
    .line 375
    const-class v2, Lorg/minidns/record/SRV;

    .line 376
    .line 377
    move-object/from16 v41, v1

    .line 378
    .line 379
    const-string v1, "SRV"

    .line 380
    .line 381
    invoke-direct {v0, v1, v15, v15, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 382
    .line 383
    .line 384
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 385
    .line 386
    const-string v2, "ATMA"

    .line 387
    .line 388
    const/16 v15, 0x22

    .line 389
    .line 390
    move-object/from16 v42, v0

    .line 391
    .line 392
    const/4 v0, 0x0

    .line 393
    invoke-direct {v1, v2, v15, v15, v0}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 394
    .line 395
    .line 396
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 397
    .line 398
    const-string v15, "NAPTR"

    .line 399
    .line 400
    move-object/from16 v43, v1

    .line 401
    .line 402
    const/16 v1, 0x23

    .line 403
    .line 404
    invoke-direct {v2, v15, v1, v1, v0}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 408
    .line 409
    const-string v15, "KX"

    .line 410
    .line 411
    move-object/from16 v44, v2

    .line 412
    .line 413
    const/16 v2, 0x24

    .line 414
    .line 415
    invoke-direct {v1, v15, v2, v2, v0}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 416
    .line 417
    .line 418
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 419
    .line 420
    const-string v15, "CERT"

    .line 421
    .line 422
    move-object/from16 v45, v1

    .line 423
    .line 424
    const/16 v1, 0x25

    .line 425
    .line 426
    invoke-direct {v2, v15, v1, v1, v0}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 427
    .line 428
    .line 429
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 430
    .line 431
    const-string v15, "A6"

    .line 432
    .line 433
    move-object/from16 v46, v2

    .line 434
    .line 435
    const/16 v2, 0x26

    .line 436
    .line 437
    invoke-direct {v1, v15, v2, v2, v0}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 438
    .line 439
    .line 440
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 441
    .line 442
    const/16 v15, 0x27

    .line 443
    .line 444
    const-class v0, Lorg/minidns/record/DNAME;

    .line 445
    .line 446
    move-object/from16 v47, v1

    .line 447
    .line 448
    const-string v1, "DNAME"

    .line 449
    .line 450
    invoke-direct {v2, v1, v15, v15, v0}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 451
    .line 452
    .line 453
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 454
    .line 455
    const-string v1, "SINK"

    .line 456
    .line 457
    const/16 v15, 0x28

    .line 458
    .line 459
    move-object/from16 v48, v2

    .line 460
    .line 461
    const/4 v2, 0x0

    .line 462
    invoke-direct {v0, v1, v15, v15, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 463
    .line 464
    .line 465
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 466
    .line 467
    const/16 v15, 0x29

    .line 468
    .line 469
    const-class v2, Lorg/minidns/record/OPT;

    .line 470
    .line 471
    move-object/from16 v49, v0

    .line 472
    .line 473
    const-string v0, "OPT"

    .line 474
    .line 475
    invoke-direct {v1, v0, v15, v15, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 476
    .line 477
    .line 478
    sput-object v1, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    .line 479
    .line 480
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 481
    .line 482
    const-string v2, "APL"

    .line 483
    .line 484
    const/16 v15, 0x2a

    .line 485
    .line 486
    move-object/from16 v50, v1

    .line 487
    .line 488
    const/4 v1, 0x0

    .line 489
    invoke-direct {v0, v2, v15, v15, v1}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 490
    .line 491
    .line 492
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 493
    .line 494
    const-class v15, Lorg/minidns/record/DS;

    .line 495
    .line 496
    const-string v1, "DS"

    .line 497
    .line 498
    move-object/from16 v51, v0

    .line 499
    .line 500
    const/16 v0, 0x2b

    .line 501
    .line 502
    invoke-direct {v2, v1, v0, v0, v15}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 503
    .line 504
    .line 505
    sput-object v2, Lorg/minidns/record/Record$TYPE;->DS:Lorg/minidns/record/Record$TYPE;

    .line 506
    .line 507
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 508
    .line 509
    const-string v15, "SSHFP"

    .line 510
    .line 511
    move/from16 v52, v0

    .line 512
    .line 513
    const/16 v0, 0x2c

    .line 514
    .line 515
    move-object/from16 v53, v2

    .line 516
    .line 517
    const/4 v2, 0x0

    .line 518
    invoke-direct {v1, v15, v0, v0, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 519
    .line 520
    .line 521
    new-instance v15, Lorg/minidns/record/Record$TYPE;

    .line 522
    .line 523
    move/from16 v54, v0

    .line 524
    .line 525
    const-string v0, "IPSECKEY"

    .line 526
    .line 527
    move-object/from16 v55, v1

    .line 528
    .line 529
    const/16 v1, 0x2d

    .line 530
    .line 531
    invoke-direct {v15, v0, v1, v1, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 532
    .line 533
    .line 534
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 535
    .line 536
    const-class v2, Lorg/minidns/record/RRSIG;

    .line 537
    .line 538
    move/from16 v56, v1

    .line 539
    .line 540
    const-string v1, "RRSIG"

    .line 541
    .line 542
    move-object/from16 v57, v3

    .line 543
    .line 544
    const/16 v3, 0x2e

    .line 545
    .line 546
    invoke-direct {v0, v1, v3, v3, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 547
    .line 548
    .line 549
    sput-object v0, Lorg/minidns/record/Record$TYPE;->RRSIG:Lorg/minidns/record/Record$TYPE;

    .line 550
    .line 551
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 552
    .line 553
    const-class v2, Lorg/minidns/record/NSEC;

    .line 554
    .line 555
    move/from16 v58, v3

    .line 556
    .line 557
    const-string v3, "NSEC"

    .line 558
    .line 559
    move-object/from16 v59, v0

    .line 560
    .line 561
    const/16 v0, 0x2f

    .line 562
    .line 563
    invoke-direct {v1, v3, v0, v0, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 564
    .line 565
    .line 566
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 567
    .line 568
    const-class v3, Lorg/minidns/record/DNSKEY;

    .line 569
    .line 570
    move/from16 v60, v0

    .line 571
    .line 572
    const-string v0, "DNSKEY"

    .line 573
    .line 574
    move-object/from16 v61, v1

    .line 575
    .line 576
    const/16 v1, 0x30

    .line 577
    .line 578
    invoke-direct {v2, v0, v1, v1, v3}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 579
    .line 580
    .line 581
    sput-object v2, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

    .line 582
    .line 583
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 584
    .line 585
    const-string v3, "DHCID"

    .line 586
    .line 587
    move/from16 v62, v1

    .line 588
    .line 589
    const/16 v1, 0x31

    .line 590
    .line 591
    move-object/from16 v63, v2

    .line 592
    .line 593
    const/4 v2, 0x0

    .line 594
    invoke-direct {v0, v3, v1, v1, v2}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 595
    .line 596
    .line 597
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 598
    .line 599
    const-class v3, Lorg/minidns/record/NSEC3;

    .line 600
    .line 601
    move/from16 v64, v1

    .line 602
    .line 603
    const-string v1, "NSEC3"

    .line 604
    .line 605
    move-object/from16 v65, v0

    .line 606
    .line 607
    const/16 v0, 0x32

    .line 608
    .line 609
    invoke-direct {v2, v1, v0, v0, v3}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 610
    .line 611
    .line 612
    sput-object v2, Lorg/minidns/record/Record$TYPE;->NSEC3:Lorg/minidns/record/Record$TYPE;

    .line 613
    .line 614
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 615
    .line 616
    const-class v3, Lorg/minidns/record/NSEC3PARAM;

    .line 617
    .line 618
    move/from16 v66, v0

    .line 619
    .line 620
    const-string v0, "NSEC3PARAM"

    .line 621
    .line 622
    move-object/from16 v67, v2

    .line 623
    .line 624
    const/16 v2, 0x33

    .line 625
    .line 626
    invoke-direct {v1, v0, v2, v2, v3}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 627
    .line 628
    .line 629
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 630
    .line 631
    const-class v3, Lorg/minidns/record/TLSA;

    .line 632
    .line 633
    move/from16 v68, v2

    .line 634
    .line 635
    const-string v2, "TLSA"

    .line 636
    .line 637
    move-object/from16 v69, v1

    .line 638
    .line 639
    const/16 v1, 0x34

    .line 640
    .line 641
    invoke-direct {v0, v2, v1, v1, v3}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 642
    .line 643
    .line 644
    new-instance v2, Lorg/minidns/record/Record$TYPE;

    .line 645
    .line 646
    const-string v3, "HIP"

    .line 647
    .line 648
    move/from16 v70, v1

    .line 649
    .line 650
    const/16 v1, 0x35

    .line 651
    .line 652
    move-object/from16 v71, v0

    .line 653
    .line 654
    const/16 v0, 0x37

    .line 655
    .line 656
    move-object/from16 v72, v4

    .line 657
    .line 658
    const/4 v4, 0x0

    .line 659
    invoke-direct {v2, v3, v1, v0, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 660
    .line 661
    .line 662
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 663
    .line 664
    const-string v3, "NINFO"

    .line 665
    .line 666
    const/16 v0, 0x36

    .line 667
    .line 668
    move-object/from16 v73, v2

    .line 669
    .line 670
    const/16 v2, 0x38

    .line 671
    .line 672
    invoke-direct {v1, v3, v0, v2, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 673
    .line 674
    .line 675
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 676
    .line 677
    const-string v3, "RKEY"

    .line 678
    .line 679
    const/16 v2, 0x39

    .line 680
    .line 681
    move-object/from16 v75, v1

    .line 682
    .line 683
    const/16 v1, 0x37

    .line 684
    .line 685
    invoke-direct {v0, v3, v1, v2, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 686
    .line 687
    .line 688
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 689
    .line 690
    const-string v3, "TALINK"

    .line 691
    .line 692
    const/16 v2, 0x3a

    .line 693
    .line 694
    move-object/from16 v77, v0

    .line 695
    .line 696
    const/16 v0, 0x38

    .line 697
    .line 698
    invoke-direct {v1, v3, v0, v2, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 699
    .line 700
    .line 701
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 702
    .line 703
    const-string v3, "CDS"

    .line 704
    .line 705
    const/16 v2, 0x3b

    .line 706
    .line 707
    move-object/from16 v79, v1

    .line 708
    .line 709
    const/16 v1, 0x39

    .line 710
    .line 711
    invoke-direct {v0, v3, v1, v2, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 712
    .line 713
    .line 714
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 715
    .line 716
    const-string v3, "CDNSKEY"

    .line 717
    .line 718
    const/16 v2, 0x3c

    .line 719
    .line 720
    move-object/from16 v81, v0

    .line 721
    .line 722
    const/16 v0, 0x3a

    .line 723
    .line 724
    invoke-direct {v1, v3, v0, v2, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 725
    .line 726
    .line 727
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 728
    .line 729
    const-class v3, Lorg/minidns/record/OPENPGPKEY;

    .line 730
    .line 731
    const-string v2, "OPENPGPKEY"

    .line 732
    .line 733
    const/16 v4, 0x3d

    .line 734
    .line 735
    move-object/from16 v84, v1

    .line 736
    .line 737
    const/16 v1, 0x3b

    .line 738
    .line 739
    invoke-direct {v0, v2, v1, v4, v3}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 740
    .line 741
    .line 742
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 743
    .line 744
    const-string v2, "CSYNC"

    .line 745
    .line 746
    const/16 v3, 0x3e

    .line 747
    .line 748
    move-object/from16 v83, v0

    .line 749
    .line 750
    const/16 v0, 0x3c

    .line 751
    .line 752
    const/4 v4, 0x0

    .line 753
    invoke-direct {v1, v2, v0, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 754
    .line 755
    .line 756
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 757
    .line 758
    const-string v2, "SPF"

    .line 759
    .line 760
    const/16 v3, 0x63

    .line 761
    .line 762
    move-object/from16 v87, v1

    .line 763
    .line 764
    const/16 v1, 0x3d

    .line 765
    .line 766
    invoke-direct {v0, v2, v1, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 767
    .line 768
    .line 769
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 770
    .line 771
    const-string v2, "UINFO"

    .line 772
    .line 773
    const/16 v3, 0x64

    .line 774
    .line 775
    move-object/from16 v88, v0

    .line 776
    .line 777
    const/16 v0, 0x3e

    .line 778
    .line 779
    invoke-direct {v1, v2, v0, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 780
    .line 781
    .line 782
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 783
    .line 784
    const/16 v2, 0x3f

    .line 785
    .line 786
    const/16 v3, 0x65

    .line 787
    .line 788
    move-object/from16 v89, v1

    .line 789
    .line 790
    const-string v1, "UID"

    .line 791
    .line 792
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 793
    .line 794
    .line 795
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 796
    .line 797
    const/16 v2, 0x40

    .line 798
    .line 799
    const/16 v3, 0x66

    .line 800
    .line 801
    move-object/from16 v90, v0

    .line 802
    .line 803
    const-string v0, "GID"

    .line 804
    .line 805
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 806
    .line 807
    .line 808
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 809
    .line 810
    const/16 v2, 0x41

    .line 811
    .line 812
    const/16 v3, 0x67

    .line 813
    .line 814
    move-object/from16 v91, v1

    .line 815
    .line 816
    const-string v1, "UNSPEC"

    .line 817
    .line 818
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 819
    .line 820
    .line 821
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 822
    .line 823
    const/16 v2, 0x42

    .line 824
    .line 825
    const/16 v3, 0x68

    .line 826
    .line 827
    move-object/from16 v92, v0

    .line 828
    .line 829
    const-string v0, "NID"

    .line 830
    .line 831
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 832
    .line 833
    .line 834
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 835
    .line 836
    const/16 v2, 0x43

    .line 837
    .line 838
    const/16 v3, 0x69

    .line 839
    .line 840
    move-object/from16 v93, v1

    .line 841
    .line 842
    const-string v1, "L32"

    .line 843
    .line 844
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 845
    .line 846
    .line 847
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 848
    .line 849
    const/16 v2, 0x44

    .line 850
    .line 851
    const/16 v3, 0x6a

    .line 852
    .line 853
    move-object/from16 v94, v0

    .line 854
    .line 855
    const-string v0, "L64"

    .line 856
    .line 857
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 858
    .line 859
    .line 860
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 861
    .line 862
    const/16 v2, 0x45

    .line 863
    .line 864
    const/16 v3, 0x6b

    .line 865
    .line 866
    move-object/from16 v95, v1

    .line 867
    .line 868
    const-string v1, "LP"

    .line 869
    .line 870
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 871
    .line 872
    .line 873
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 874
    .line 875
    const/16 v2, 0x46

    .line 876
    .line 877
    const/16 v3, 0x6c

    .line 878
    .line 879
    move-object/from16 v96, v0

    .line 880
    .line 881
    const-string v0, "EUI48"

    .line 882
    .line 883
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 884
    .line 885
    .line 886
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 887
    .line 888
    const/16 v2, 0x47

    .line 889
    .line 890
    const/16 v3, 0x6d

    .line 891
    .line 892
    move-object/from16 v97, v1

    .line 893
    .line 894
    const-string v1, "EUI64"

    .line 895
    .line 896
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 897
    .line 898
    .line 899
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 900
    .line 901
    const/16 v2, 0x48

    .line 902
    .line 903
    const/16 v3, 0xf9

    .line 904
    .line 905
    move-object/from16 v98, v0

    .line 906
    .line 907
    const-string v0, "TKEY"

    .line 908
    .line 909
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 910
    .line 911
    .line 912
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 913
    .line 914
    const/16 v2, 0x49

    .line 915
    .line 916
    const/16 v3, 0xfa

    .line 917
    .line 918
    move-object/from16 v99, v1

    .line 919
    .line 920
    const-string v1, "TSIG"

    .line 921
    .line 922
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 923
    .line 924
    .line 925
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 926
    .line 927
    const/16 v2, 0x4a

    .line 928
    .line 929
    const/16 v3, 0xfb

    .line 930
    .line 931
    move-object/from16 v100, v0

    .line 932
    .line 933
    const-string v0, "IXFR"

    .line 934
    .line 935
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 936
    .line 937
    .line 938
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 939
    .line 940
    const/16 v2, 0x4b

    .line 941
    .line 942
    const/16 v3, 0xfc

    .line 943
    .line 944
    move-object/from16 v101, v1

    .line 945
    .line 946
    const-string v1, "AXFR"

    .line 947
    .line 948
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 949
    .line 950
    .line 951
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 952
    .line 953
    const/16 v2, 0x4c

    .line 954
    .line 955
    const/16 v3, 0xfd

    .line 956
    .line 957
    move-object/from16 v102, v0

    .line 958
    .line 959
    const-string v0, "MAILB"

    .line 960
    .line 961
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 962
    .line 963
    .line 964
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 965
    .line 966
    const/16 v2, 0x4d

    .line 967
    .line 968
    const/16 v3, 0xfe

    .line 969
    .line 970
    move-object/from16 v103, v1

    .line 971
    .line 972
    const-string v1, "MAILA"

    .line 973
    .line 974
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 975
    .line 976
    .line 977
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 978
    .line 979
    const/16 v2, 0x4e

    .line 980
    .line 981
    const/16 v3, 0xff

    .line 982
    .line 983
    move-object/from16 v104, v0

    .line 984
    .line 985
    const-string v0, "ANY"

    .line 986
    .line 987
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 988
    .line 989
    .line 990
    sput-object v1, Lorg/minidns/record/Record$TYPE;->ANY:Lorg/minidns/record/Record$TYPE;

    .line 991
    .line 992
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 993
    .line 994
    const/16 v2, 0x4f

    .line 995
    .line 996
    const/16 v3, 0x100

    .line 997
    .line 998
    move-object/from16 v105, v1

    .line 999
    .line 1000
    const-string v1, "URI"

    .line 1001
    .line 1002
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 1003
    .line 1004
    .line 1005
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 1006
    .line 1007
    const/16 v2, 0x50

    .line 1008
    .line 1009
    const/16 v3, 0x101

    .line 1010
    .line 1011
    move-object/from16 v106, v0

    .line 1012
    .line 1013
    const-string v0, "CAA"

    .line 1014
    .line 1015
    invoke-direct {v1, v0, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 1016
    .line 1017
    .line 1018
    new-instance v0, Lorg/minidns/record/Record$TYPE;

    .line 1019
    .line 1020
    const/16 v2, 0x51

    .line 1021
    .line 1022
    const v3, 0x8000

    .line 1023
    .line 1024
    .line 1025
    move-object/from16 v107, v1

    .line 1026
    .line 1027
    const-string v1, "TA"

    .line 1028
    .line 1029
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 1030
    .line 1031
    .line 1032
    new-instance v1, Lorg/minidns/record/Record$TYPE;

    .line 1033
    .line 1034
    const v2, 0x8001

    .line 1035
    .line 1036
    .line 1037
    const-class v3, Lorg/minidns/record/DLV;

    .line 1038
    .line 1039
    const-string v4, "DLV"

    .line 1040
    .line 1041
    move-object/from16 v108, v0

    .line 1042
    .line 1043
    const/16 v0, 0x52

    .line 1044
    .line 1045
    invoke-direct {v1, v4, v0, v2, v3}, Lorg/minidns/record/Record$TYPE;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    .line 1046
    .line 1047
    .line 1048
    const/16 v0, 0x53

    .line 1049
    .line 1050
    new-array v0, v0, [Lorg/minidns/record/Record$TYPE;

    .line 1051
    .line 1052
    aput-object v21, v0, v16

    .line 1053
    .line 1054
    aput-object v22, v0, v17

    .line 1055
    .line 1056
    aput-object v57, v0, v18

    .line 1057
    .line 1058
    aput-object v5, v0, v19

    .line 1059
    .line 1060
    const/4 v2, 0x4

    .line 1061
    aput-object v7, v0, v2

    .line 1062
    .line 1063
    const/4 v2, 0x5

    .line 1064
    aput-object v10, v0, v2

    .line 1065
    .line 1066
    const/4 v2, 0x6

    .line 1067
    aput-object v11, v0, v2

    .line 1068
    .line 1069
    const/4 v2, 0x7

    .line 1070
    aput-object v12, v0, v2

    .line 1071
    .line 1072
    const/16 v2, 0x8

    .line 1073
    .line 1074
    aput-object v13, v0, v2

    .line 1075
    .line 1076
    const/16 v2, 0x9

    .line 1077
    .line 1078
    aput-object v14, v0, v2

    .line 1079
    .line 1080
    const/16 v2, 0xa

    .line 1081
    .line 1082
    aput-object v23, v0, v2

    .line 1083
    .line 1084
    const/16 v2, 0xb

    .line 1085
    .line 1086
    aput-object v6, v0, v2

    .line 1087
    .line 1088
    const/16 v2, 0xc

    .line 1089
    .line 1090
    aput-object v8, v0, v2

    .line 1091
    .line 1092
    const/16 v2, 0xd

    .line 1093
    .line 1094
    aput-object v72, v0, v2

    .line 1095
    .line 1096
    const/16 v2, 0xe

    .line 1097
    .line 1098
    aput-object v9, v0, v2

    .line 1099
    .line 1100
    const/16 v2, 0xf

    .line 1101
    .line 1102
    aput-object v24, v0, v2

    .line 1103
    .line 1104
    const/16 v2, 0x10

    .line 1105
    .line 1106
    aput-object v25, v0, v2

    .line 1107
    .line 1108
    const/16 v2, 0x11

    .line 1109
    .line 1110
    aput-object v26, v0, v2

    .line 1111
    .line 1112
    const/16 v2, 0x12

    .line 1113
    .line 1114
    aput-object v27, v0, v2

    .line 1115
    .line 1116
    const/16 v2, 0x13

    .line 1117
    .line 1118
    aput-object v28, v0, v2

    .line 1119
    .line 1120
    const/16 v2, 0x14

    .line 1121
    .line 1122
    aput-object v29, v0, v2

    .line 1123
    .line 1124
    const/16 v2, 0x15

    .line 1125
    .line 1126
    aput-object v30, v0, v2

    .line 1127
    .line 1128
    const/16 v2, 0x16

    .line 1129
    .line 1130
    aput-object v31, v0, v2

    .line 1131
    .line 1132
    const/16 v2, 0x17

    .line 1133
    .line 1134
    aput-object v32, v0, v2

    .line 1135
    .line 1136
    const/16 v2, 0x18

    .line 1137
    .line 1138
    aput-object v33, v0, v2

    .line 1139
    .line 1140
    const/16 v2, 0x19

    .line 1141
    .line 1142
    aput-object v34, v0, v2

    .line 1143
    .line 1144
    const/16 v2, 0x1a

    .line 1145
    .line 1146
    aput-object v35, v0, v2

    .line 1147
    .line 1148
    const/16 v2, 0x1b

    .line 1149
    .line 1150
    aput-object v36, v0, v2

    .line 1151
    .line 1152
    const/16 v2, 0x1c

    .line 1153
    .line 1154
    aput-object v37, v0, v2

    .line 1155
    .line 1156
    const/16 v2, 0x1d

    .line 1157
    .line 1158
    aput-object v38, v0, v2

    .line 1159
    .line 1160
    const/16 v2, 0x1e

    .line 1161
    .line 1162
    aput-object v39, v0, v2

    .line 1163
    .line 1164
    const/16 v2, 0x1f

    .line 1165
    .line 1166
    aput-object v40, v0, v2

    .line 1167
    .line 1168
    const/16 v2, 0x20

    .line 1169
    .line 1170
    aput-object v41, v0, v2

    .line 1171
    .line 1172
    const/16 v2, 0x21

    .line 1173
    .line 1174
    aput-object v42, v0, v2

    .line 1175
    .line 1176
    const/16 v2, 0x22

    .line 1177
    .line 1178
    aput-object v43, v0, v2

    .line 1179
    .line 1180
    const/16 v2, 0x23

    .line 1181
    .line 1182
    aput-object v44, v0, v2

    .line 1183
    .line 1184
    const/16 v2, 0x24

    .line 1185
    .line 1186
    aput-object v45, v0, v2

    .line 1187
    .line 1188
    const/16 v2, 0x25

    .line 1189
    .line 1190
    aput-object v46, v0, v2

    .line 1191
    .line 1192
    const/16 v2, 0x26

    .line 1193
    .line 1194
    aput-object v47, v0, v2

    .line 1195
    .line 1196
    const/16 v2, 0x27

    .line 1197
    .line 1198
    aput-object v48, v0, v2

    .line 1199
    .line 1200
    const/16 v2, 0x28

    .line 1201
    .line 1202
    aput-object v49, v0, v2

    .line 1203
    .line 1204
    const/16 v2, 0x29

    .line 1205
    .line 1206
    aput-object v50, v0, v2

    .line 1207
    .line 1208
    const/16 v2, 0x2a

    .line 1209
    .line 1210
    aput-object v51, v0, v2

    .line 1211
    .line 1212
    aput-object v53, v0, v52

    .line 1213
    .line 1214
    aput-object v55, v0, v54

    .line 1215
    .line 1216
    aput-object v15, v0, v56

    .line 1217
    .line 1218
    aput-object v59, v0, v58

    .line 1219
    .line 1220
    aput-object v61, v0, v60

    .line 1221
    .line 1222
    aput-object v63, v0, v62

    .line 1223
    .line 1224
    aput-object v65, v0, v64

    .line 1225
    .line 1226
    aput-object v67, v0, v66

    .line 1227
    .line 1228
    aput-object v69, v0, v68

    .line 1229
    .line 1230
    aput-object v71, v0, v70

    .line 1231
    .line 1232
    const/16 v2, 0x35

    .line 1233
    .line 1234
    aput-object v73, v0, v2

    .line 1235
    .line 1236
    const/16 v2, 0x36

    .line 1237
    .line 1238
    aput-object v75, v0, v2

    .line 1239
    .line 1240
    const/16 v20, 0x37

    .line 1241
    .line 1242
    aput-object v77, v0, v20

    .line 1243
    .line 1244
    const/16 v74, 0x38

    .line 1245
    .line 1246
    aput-object v79, v0, v74

    .line 1247
    .line 1248
    const/16 v76, 0x39

    .line 1249
    .line 1250
    aput-object v81, v0, v76

    .line 1251
    .line 1252
    const/16 v78, 0x3a

    .line 1253
    .line 1254
    aput-object v84, v0, v78

    .line 1255
    .line 1256
    const/16 v80, 0x3b

    .line 1257
    .line 1258
    aput-object v83, v0, v80

    .line 1259
    .line 1260
    const/16 v82, 0x3c

    .line 1261
    .line 1262
    aput-object v87, v0, v82

    .line 1263
    .line 1264
    const/16 v85, 0x3d

    .line 1265
    .line 1266
    aput-object v88, v0, v85

    .line 1267
    .line 1268
    const/16 v86, 0x3e

    .line 1269
    .line 1270
    aput-object v89, v0, v86

    .line 1271
    .line 1272
    const/16 v2, 0x3f

    .line 1273
    .line 1274
    aput-object v90, v0, v2

    .line 1275
    .line 1276
    const/16 v2, 0x40

    .line 1277
    .line 1278
    aput-object v91, v0, v2

    .line 1279
    .line 1280
    const/16 v2, 0x41

    .line 1281
    .line 1282
    aput-object v92, v0, v2

    .line 1283
    .line 1284
    const/16 v2, 0x42

    .line 1285
    .line 1286
    aput-object v93, v0, v2

    .line 1287
    .line 1288
    const/16 v2, 0x43

    .line 1289
    .line 1290
    aput-object v94, v0, v2

    .line 1291
    .line 1292
    const/16 v2, 0x44

    .line 1293
    .line 1294
    aput-object v95, v0, v2

    .line 1295
    .line 1296
    const/16 v2, 0x45

    .line 1297
    .line 1298
    aput-object v96, v0, v2

    .line 1299
    .line 1300
    const/16 v2, 0x46

    .line 1301
    .line 1302
    aput-object v97, v0, v2

    .line 1303
    .line 1304
    const/16 v2, 0x47

    .line 1305
    .line 1306
    aput-object v98, v0, v2

    .line 1307
    .line 1308
    const/16 v2, 0x48

    .line 1309
    .line 1310
    aput-object v99, v0, v2

    .line 1311
    .line 1312
    const/16 v2, 0x49

    .line 1313
    .line 1314
    aput-object v100, v0, v2

    .line 1315
    .line 1316
    const/16 v2, 0x4a

    .line 1317
    .line 1318
    aput-object v101, v0, v2

    .line 1319
    .line 1320
    const/16 v2, 0x4b

    .line 1321
    .line 1322
    aput-object v102, v0, v2

    .line 1323
    .line 1324
    const/16 v2, 0x4c

    .line 1325
    .line 1326
    aput-object v103, v0, v2

    .line 1327
    .line 1328
    const/16 v2, 0x4d

    .line 1329
    .line 1330
    aput-object v104, v0, v2

    .line 1331
    .line 1332
    const/16 v2, 0x4e

    .line 1333
    .line 1334
    aput-object v105, v0, v2

    .line 1335
    .line 1336
    const/16 v2, 0x4f

    .line 1337
    .line 1338
    aput-object v106, v0, v2

    .line 1339
    .line 1340
    const/16 v2, 0x50

    .line 1341
    .line 1342
    aput-object v107, v0, v2

    .line 1343
    .line 1344
    const/16 v2, 0x51

    .line 1345
    .line 1346
    aput-object v108, v0, v2

    .line 1347
    .line 1348
    const/16 v2, 0x52

    .line 1349
    .line 1350
    aput-object v1, v0, v2

    .line 1351
    .line 1352
    sput-object v0, Lorg/minidns/record/Record$TYPE;->$VALUES:[Lorg/minidns/record/Record$TYPE;

    .line 1353
    .line 1354
    new-instance v0, Ljava/util/HashMap;

    .line 1355
    .line 1356
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1357
    .line 1358
    .line 1359
    sput-object v0, Lorg/minidns/record/Record$TYPE;->INVERSE_LUT:Ljava/util/HashMap;

    .line 1360
    .line 1361
    new-instance v0, Ljava/util/HashMap;

    .line 1362
    .line 1363
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1364
    .line 1365
    .line 1366
    sput-object v0, Lorg/minidns/record/Record$TYPE;->DATA_LUT:Ljava/util/HashMap;

    .line 1367
    .line 1368
    invoke-static {}, Lorg/minidns/record/Record$TYPE;->values()[Lorg/minidns/record/Record$TYPE;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    array-length v1, v0

    .line 1373
    move/from16 v2, v16

    .line 1374
    .line 1375
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1376
    .line 1377
    aget-object v3, v0, v2

    .line 1378
    .line 1379
    sget-object v4, Lorg/minidns/record/Record$TYPE;->INVERSE_LUT:Ljava/util/HashMap;

    .line 1380
    .line 1381
    iget v5, v3, Lorg/minidns/record/Record$TYPE;->value:I

    .line 1382
    .line 1383
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v5

    .line 1387
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    .line 1389
    .line 1390
    iget-object v4, v3, Lorg/minidns/record/Record$TYPE;->dataClass:Ljava/lang/Class;

    .line 1391
    .line 1392
    if-eqz v4, :cond_0

    .line 1393
    .line 1394
    sget-object v5, Lorg/minidns/record/Record$TYPE;->DATA_LUT:Ljava/util/HashMap;

    .line 1395
    .line 1396
    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1400
    .line 1401
    goto :goto_0

    .line 1402
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/minidns/record/Record$TYPE;->value:I

    .line 5
    .line 6
    iput-object p4, p0, Lorg/minidns/record/Record$TYPE;->dataClass:Ljava/lang/Class;

    .line 7
    .line 8
    return-void
.end method

.method public static getType(I)Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/record/Record$TYPE;->INVERSE_LUT:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lorg/minidns/record/Record$TYPE;

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lorg/minidns/record/Record$TYPE;->UNKNOWN:Lorg/minidns/record/Record$TYPE;

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/record/Record$TYPE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/minidns/record/Record$TYPE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/record/Record$TYPE;->$VALUES:[Lorg/minidns/record/Record$TYPE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/minidns/record/Record$TYPE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/minidns/record/Record$TYPE;

    .line 8
    .line 9
    return-object v0
.end method
