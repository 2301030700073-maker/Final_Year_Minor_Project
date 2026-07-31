.class public abstract Landroidx/datastore/preferences/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final BYTE_ARRAY_BASE_OFFSET:J

.field public static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field public static final HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field public static final IS_BIG_ENDIAN:Z

.field public static final MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

.field public static final MEMORY_CLASS:Ljava/lang/Class;

.field public static final UNSAFE:Lsun/misc/Unsafe;

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    const-class v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :try_start_0
    new-instance v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil$1;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-object v1, v0

    .line 27
    :goto_0
    sput-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 28
    .line 29
    sget-object v2, Landroidx/datastore/preferences/protobuf/Android;->MEMORY_CLASS:Ljava/lang/Class;

    .line 30
    .line 31
    sput-object v2, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 32
    .line 33
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    const/4 v6, 0x0

    .line 46
    const/4 v7, 0x1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Android;->isOnAndroidDevice()Z

    .line 51
    .line 52
    .line 53
    move-result v8

    .line 54
    if-eqz v8, :cond_2

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    new-instance v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil$Android32MemoryAccessor;

    .line 59
    .line 60
    invoke-direct {v0, v1, v7}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$Android32MemoryAccessor;-><init>(Lsun/misc/Unsafe;I)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    if-eqz v5, :cond_3

    .line 65
    .line 66
    new-instance v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil$Android32MemoryAccessor;

    .line 67
    .line 68
    invoke-direct {v0, v1, v6}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$Android32MemoryAccessor;-><init>(Lsun/misc/Unsafe;I)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil$JvmMemoryAccessor;

    .line 73
    .line 74
    invoke-direct {v0, v1}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    sput-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 78
    .line 79
    const-string v0, "copyMemory"

    .line 80
    .line 81
    const-string v8, "platform method missing - proto runtime falling back to safer methods: "

    .line 82
    .line 83
    const-string v9, "putLong"

    .line 84
    .line 85
    const-string v10, "putInt"

    .line 86
    .line 87
    const-string v11, "getInt"

    .line 88
    .line 89
    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    const-string v13, "putByte"

    .line 92
    .line 93
    const-string v14, "getByte"

    .line 94
    .line 95
    const-class v15, Ljava/lang/Object;

    .line 96
    .line 97
    const-class v16, Ljava/lang/reflect/Field;

    .line 98
    .line 99
    move/from16 v17, v6

    .line 100
    .line 101
    const-string v6, "objectFieldOffset"

    .line 102
    .line 103
    const-string v3, "getLong"

    .line 104
    .line 105
    if-nez v1, :cond_4

    .line 106
    .line 107
    :goto_2
    move/from16 v0, v17

    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    new-array v5, v7, [Ljava/lang/Class;

    .line 116
    .line 117
    aput-object v16, v5, v17

    .line 118
    .line 119
    invoke-virtual {v1, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 120
    .line 121
    .line 122
    move/from16 v20, v7

    .line 123
    .line 124
    const/4 v5, 0x2

    .line 125
    new-array v7, v5, [Ljava/lang/Class;

    .line 126
    .line 127
    aput-object v15, v7, v17

    .line 128
    .line 129
    aput-object v2, v7, v20

    .line 130
    .line 131
    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 132
    .line 133
    .line 134
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-nez v5, :cond_5

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Android;->isOnAndroidDevice()Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_6

    .line 146
    .line 147
    move/from16 v0, v20

    .line 148
    .line 149
    goto/16 :goto_3

    .line 150
    .line 151
    :cond_6
    move/from16 v5, v20

    .line 152
    .line 153
    new-array v7, v5, [Ljava/lang/Class;

    .line 154
    .line 155
    aput-object v2, v7, v17

    .line 156
    .line 157
    invoke-virtual {v1, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    move/from16 v20, v5

    .line 161
    .line 162
    const/4 v7, 0x2

    .line 163
    new-array v5, v7, [Ljava/lang/Class;

    .line 164
    .line 165
    aput-object v2, v5, v17

    .line 166
    .line 167
    aput-object v12, v5, v20

    .line 168
    .line 169
    invoke-virtual {v1, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 170
    .line 171
    .line 172
    move/from16 v5, v20

    .line 173
    .line 174
    new-array v7, v5, [Ljava/lang/Class;

    .line 175
    .line 176
    aput-object v2, v7, v17

    .line 177
    .line 178
    invoke-virtual {v1, v11, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 179
    .line 180
    .line 181
    move/from16 v20, v5

    .line 182
    .line 183
    const/4 v7, 0x2

    .line 184
    new-array v5, v7, [Ljava/lang/Class;

    .line 185
    .line 186
    aput-object v2, v5, v17

    .line 187
    .line 188
    aput-object v4, v5, v20

    .line 189
    .line 190
    invoke-virtual {v1, v10, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 191
    .line 192
    .line 193
    move/from16 v5, v20

    .line 194
    .line 195
    new-array v7, v5, [Ljava/lang/Class;

    .line 196
    .line 197
    aput-object v2, v7, v17

    .line 198
    .line 199
    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 200
    .line 201
    .line 202
    move/from16 v20, v5

    .line 203
    .line 204
    const/4 v7, 0x2

    .line 205
    new-array v5, v7, [Ljava/lang/Class;

    .line 206
    .line 207
    aput-object v2, v5, v17

    .line 208
    .line 209
    aput-object v2, v5, v20

    .line 210
    .line 211
    invoke-virtual {v1, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 212
    .line 213
    .line 214
    const/4 v5, 0x3

    .line 215
    new-array v7, v5, [Ljava/lang/Class;

    .line 216
    .line 217
    aput-object v2, v7, v17

    .line 218
    .line 219
    aput-object v2, v7, v20

    .line 220
    .line 221
    const/16 v19, 0x2

    .line 222
    .line 223
    aput-object v2, v7, v19

    .line 224
    .line 225
    invoke-virtual {v1, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 226
    .line 227
    .line 228
    const/4 v5, 0x5

    .line 229
    new-array v5, v5, [Ljava/lang/Class;

    .line 230
    .line 231
    aput-object v15, v5, v17

    .line 232
    .line 233
    aput-object v2, v5, v20

    .line 234
    .line 235
    aput-object v15, v5, v19

    .line 236
    .line 237
    const/16 v18, 0x3

    .line 238
    .line 239
    aput-object v2, v5, v18

    .line 240
    .line 241
    const/4 v7, 0x4

    .line 242
    aput-object v2, v5, v7

    .line 243
    .line 244
    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    .line 246
    .line 247
    const/4 v0, 0x1

    .line 248
    goto :goto_3

    .line 249
    :catchall_1
    move-exception v0

    .line 250
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    .line 251
    .line 252
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 253
    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v1, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_2

    .line 270
    .line 271
    :goto_3
    sput-boolean v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    .line 272
    .line 273
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 274
    .line 275
    if-nez v0, :cond_7

    .line 276
    .line 277
    move/from16 v5, v17

    .line 278
    .line 279
    :goto_4
    const/16 v20, 0x1

    .line 280
    .line 281
    goto/16 :goto_6

    .line 282
    .line 283
    :cond_7
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 287
    const/4 v5, 0x1

    .line 288
    :try_start_3
    new-array v1, v5, [Ljava/lang/Class;

    .line 289
    .line 290
    aput-object v16, v1, v17

    .line 291
    .line 292
    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 293
    .line 294
    .line 295
    const-string v1, "arrayBaseOffset"

    .line 296
    .line 297
    const-class v6, Ljava/lang/Class;

    .line 298
    .line 299
    new-array v7, v5, [Ljava/lang/Class;

    .line 300
    .line 301
    aput-object v6, v7, v17

    .line 302
    .line 303
    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 304
    .line 305
    .line 306
    const-string v1, "arrayIndexScale"

    .line 307
    .line 308
    new-array v7, v5, [Ljava/lang/Class;

    .line 309
    .line 310
    aput-object v6, v7, v17

    .line 311
    .line 312
    invoke-virtual {v0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 313
    .line 314
    .line 315
    const/4 v7, 0x2

    .line 316
    new-array v1, v7, [Ljava/lang/Class;

    .line 317
    .line 318
    aput-object v15, v1, v17

    .line 319
    .line 320
    aput-object v2, v1, v5

    .line 321
    .line 322
    invoke-virtual {v0, v11, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 323
    .line 324
    .line 325
    const/4 v1, 0x3

    .line 326
    new-array v6, v1, [Ljava/lang/Class;

    .line 327
    .line 328
    aput-object v15, v6, v17

    .line 329
    .line 330
    aput-object v2, v6, v5

    .line 331
    .line 332
    const/4 v7, 0x2

    .line 333
    aput-object v4, v6, v7

    .line 334
    .line 335
    invoke-virtual {v0, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 336
    .line 337
    .line 338
    new-array v1, v7, [Ljava/lang/Class;

    .line 339
    .line 340
    aput-object v15, v1, v17

    .line 341
    .line 342
    aput-object v2, v1, v5

    .line 343
    .line 344
    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 345
    .line 346
    .line 347
    const/4 v1, 0x3

    .line 348
    new-array v3, v1, [Ljava/lang/Class;

    .line 349
    .line 350
    aput-object v15, v3, v17

    .line 351
    .line 352
    aput-object v2, v3, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 353
    .line 354
    const/4 v7, 0x2

    .line 355
    :try_start_4
    aput-object v2, v3, v7

    .line 356
    .line 357
    invoke-virtual {v0, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 358
    .line 359
    .line 360
    const-string v1, "getObject"

    .line 361
    .line 362
    new-array v3, v7, [Ljava/lang/Class;

    .line 363
    .line 364
    aput-object v15, v3, v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 365
    .line 366
    const/16 v20, 0x1

    .line 367
    .line 368
    :try_start_5
    aput-object v2, v3, v20

    .line 369
    .line 370
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 371
    .line 372
    .line 373
    const-string v1, "putObject"

    .line 374
    .line 375
    const/4 v5, 0x3

    .line 376
    new-array v3, v5, [Ljava/lang/Class;

    .line 377
    .line 378
    aput-object v15, v3, v17

    .line 379
    .line 380
    aput-object v2, v3, v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 381
    .line 382
    const/4 v7, 0x2

    .line 383
    :try_start_6
    aput-object v15, v3, v7

    .line 384
    .line 385
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 386
    .line 387
    .line 388
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Android;->isOnAndroidDevice()Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-eqz v1, :cond_8

    .line 393
    .line 394
    const/4 v5, 0x1

    .line 395
    goto :goto_4

    .line 396
    :cond_8
    new-array v1, v7, [Ljava/lang/Class;

    .line 397
    .line 398
    aput-object v15, v1, v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 399
    .line 400
    const/16 v20, 0x1

    .line 401
    .line 402
    :try_start_7
    aput-object v2, v1, v20

    .line 403
    .line 404
    invoke-virtual {v0, v14, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 405
    .line 406
    .line 407
    const/4 v1, 0x3

    .line 408
    new-array v3, v1, [Ljava/lang/Class;

    .line 409
    .line 410
    aput-object v15, v3, v17

    .line 411
    .line 412
    aput-object v2, v3, v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 413
    .line 414
    const/4 v7, 0x2

    .line 415
    :try_start_8
    aput-object v12, v3, v7

    .line 416
    .line 417
    invoke-virtual {v0, v13, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 418
    .line 419
    .line 420
    const-string v1, "getBoolean"

    .line 421
    .line 422
    new-array v3, v7, [Ljava/lang/Class;

    .line 423
    .line 424
    aput-object v15, v3, v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 425
    .line 426
    const/16 v20, 0x1

    .line 427
    .line 428
    :try_start_9
    aput-object v2, v3, v20

    .line 429
    .line 430
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 431
    .line 432
    .line 433
    const-string v1, "putBoolean"

    .line 434
    .line 435
    const/4 v5, 0x3

    .line 436
    new-array v3, v5, [Ljava/lang/Class;

    .line 437
    .line 438
    aput-object v15, v3, v17

    .line 439
    .line 440
    aput-object v2, v3, v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 441
    .line 442
    :try_start_a
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 443
    .line 444
    const/4 v7, 0x2

    .line 445
    aput-object v4, v3, v7

    .line 446
    .line 447
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 448
    .line 449
    .line 450
    const-string v1, "getFloat"

    .line 451
    .line 452
    new-array v3, v7, [Ljava/lang/Class;

    .line 453
    .line 454
    aput-object v15, v3, v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 455
    .line 456
    const/16 v20, 0x1

    .line 457
    .line 458
    :try_start_b
    aput-object v2, v3, v20

    .line 459
    .line 460
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 461
    .line 462
    .line 463
    const-string v1, "putFloat"

    .line 464
    .line 465
    const/4 v5, 0x3

    .line 466
    new-array v3, v5, [Ljava/lang/Class;

    .line 467
    .line 468
    aput-object v15, v3, v17

    .line 469
    .line 470
    aput-object v2, v3, v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 471
    .line 472
    :try_start_c
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 473
    .line 474
    const/4 v7, 0x2

    .line 475
    aput-object v4, v3, v7

    .line 476
    .line 477
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 478
    .line 479
    .line 480
    const-string v1, "getDouble"

    .line 481
    .line 482
    new-array v3, v7, [Ljava/lang/Class;

    .line 483
    .line 484
    aput-object v15, v3, v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 485
    .line 486
    const/16 v20, 0x1

    .line 487
    .line 488
    :try_start_d
    aput-object v2, v3, v20

    .line 489
    .line 490
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 491
    .line 492
    .line 493
    const-string v1, "putDouble"

    .line 494
    .line 495
    const/4 v5, 0x3

    .line 496
    new-array v3, v5, [Ljava/lang/Class;

    .line 497
    .line 498
    aput-object v15, v3, v17

    .line 499
    .line 500
    aput-object v2, v3, v20

    .line 501
    .line 502
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 503
    .line 504
    const/16 v19, 0x2

    .line 505
    .line 506
    aput-object v2, v3, v19

    .line 507
    .line 508
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 509
    .line 510
    .line 511
    move/from16 v5, v20

    .line 512
    .line 513
    goto :goto_6

    .line 514
    :catchall_2
    move-exception v0

    .line 515
    goto :goto_5

    .line 516
    :catchall_3
    move-exception v0

    .line 517
    const/16 v20, 0x1

    .line 518
    .line 519
    goto :goto_5

    .line 520
    :catchall_4
    move-exception v0

    .line 521
    move/from16 v20, v5

    .line 522
    .line 523
    :goto_5
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    .line 524
    .line 525
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 526
    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    move/from16 v5, v17

    .line 543
    .line 544
    :goto_6
    sput-boolean v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 545
    .line 546
    const-class v0, [B

    .line 547
    .line 548
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    int-to-long v0, v0

    .line 553
    sput-wide v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 554
    .line 555
    const-class v0, [Z

    .line 556
    .line 557
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 558
    .line 559
    .line 560
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 561
    .line 562
    .line 563
    const-class v0, [I

    .line 564
    .line 565
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 566
    .line 567
    .line 568
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 569
    .line 570
    .line 571
    const-class v0, [J

    .line 572
    .line 573
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 574
    .line 575
    .line 576
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 577
    .line 578
    .line 579
    const-class v0, [F

    .line 580
    .line 581
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 582
    .line 583
    .line 584
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 585
    .line 586
    .line 587
    const-class v0, [D

    .line 588
    .line 589
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 590
    .line 591
    .line 592
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 593
    .line 594
    .line 595
    const-class v0, [Ljava/lang/Object;

    .line 596
    .line 597
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 598
    .line 599
    .line 600
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->arrayIndexScale(Ljava/lang/Class;)V

    .line 601
    .line 602
    .line 603
    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    if-eqz v0, :cond_a

    .line 608
    .line 609
    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 610
    .line 611
    if-nez v1, :cond_9

    .line 612
    .line 613
    goto :goto_7

    .line 614
    :cond_9
    iget-object v1, v1, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 615
    .line 616
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 617
    .line 618
    .line 619
    :cond_a
    :goto_7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 624
    .line 625
    if-ne v0, v1, :cond_b

    .line 626
    .line 627
    move/from16 v6, v20

    .line 628
    .line 629
    goto :goto_8

    .line 630
    :cond_b
    move/from16 v6, v17

    .line 631
    .line 632
    :goto_8
    sput-boolean v6, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    .line 633
    .line 634
    return-void
.end method

.method public static arrayBaseOffset(Ljava/lang/Class;)I
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public static arrayIndexScale(Ljava/lang/Class;)V
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static bufferAddressField()Ljava/lang/reflect/Field;
    .locals 4

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Android;->isOnAndroidDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Ljava/nio/Buffer;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "effectiveDirectAddress"

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-object v0, v2

    .line 18
    :goto_0
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string v0, "address"

    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 27
    goto :goto_1

    .line 28
    :catchall_1
    move-object v0, v2

    .line 29
    :goto_1
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    if-ne v1, v3, :cond_1

    .line 38
    .line 39
    move-object v2, v0

    .line 40
    :cond_1
    return-object v2
.end method

.method public static determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z
    .locals 10

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Android;->isOnAndroidDevice()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 10
    .line 11
    const-string v2, "peekLong"

    .line 12
    .line 13
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    new-array v5, v4, [Ljava/lang/Class;

    .line 17
    .line 18
    aput-object p0, v5, v1

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    aput-object v3, v5, v6

    .line 22
    .line 23
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    const-string v2, "pokeLong"

    .line 27
    .line 28
    const/4 v5, 0x3

    .line 29
    new-array v7, v5, [Ljava/lang/Class;

    .line 30
    .line 31
    aput-object p0, v7, v1

    .line 32
    .line 33
    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 34
    .line 35
    aput-object v8, v7, v6

    .line 36
    .line 37
    aput-object v3, v7, v4

    .line 38
    .line 39
    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    const-string v2, "pokeInt"

    .line 43
    .line 44
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 45
    .line 46
    new-array v8, v5, [Ljava/lang/Class;

    .line 47
    .line 48
    aput-object p0, v8, v1

    .line 49
    .line 50
    aput-object v7, v8, v6

    .line 51
    .line 52
    aput-object v3, v8, v4

    .line 53
    .line 54
    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    const-string v2, "peekInt"

    .line 58
    .line 59
    new-array v8, v4, [Ljava/lang/Class;

    .line 60
    .line 61
    aput-object p0, v8, v1

    .line 62
    .line 63
    aput-object v3, v8, v6

    .line 64
    .line 65
    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    .line 67
    .line 68
    const-string v2, "pokeByte"

    .line 69
    .line 70
    new-array v3, v4, [Ljava/lang/Class;

    .line 71
    .line 72
    aput-object p0, v3, v1

    .line 73
    .line 74
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v8, v3, v6

    .line 77
    .line 78
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    .line 80
    .line 81
    const-string v2, "peekByte"

    .line 82
    .line 83
    new-array v3, v6, [Ljava/lang/Class;

    .line 84
    .line 85
    aput-object p0, v3, v1

    .line 86
    .line 87
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    .line 89
    .line 90
    const-string v2, "pokeByteArray"

    .line 91
    .line 92
    const-class v3, [B

    .line 93
    .line 94
    const/4 v8, 0x4

    .line 95
    new-array v9, v8, [Ljava/lang/Class;

    .line 96
    .line 97
    aput-object p0, v9, v1

    .line 98
    .line 99
    aput-object v3, v9, v6

    .line 100
    .line 101
    aput-object v7, v9, v4

    .line 102
    .line 103
    aput-object v7, v9, v5

    .line 104
    .line 105
    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    .line 107
    .line 108
    const-string v2, "peekByteArray"

    .line 109
    .line 110
    new-array v8, v8, [Ljava/lang/Class;

    .line 111
    .line 112
    aput-object p0, v8, v1

    .line 113
    .line 114
    aput-object v3, v8, v6

    .line 115
    .line 116
    aput-object v7, v8, v4

    .line 117
    .line 118
    aput-object v7, v8, v5

    .line 119
    .line 120
    invoke-virtual {v0, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    return v6

    .line 124
    :catchall_0
    return v1
.end method

.method public static getByte([BJ)B
    .locals 2

    .line 1
    sget-wide v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1, p0}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->getByte(JLjava/lang/Object;)B

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static getByteBigEndian(JLjava/lang/Object;)B
    .locals 2

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    not-long p0, p0

    .line 9
    const-wide/16 v0, 0x3

    .line 10
    .line 11
    and-long/2addr p0, v0

    .line 12
    const/4 v0, 0x3

    .line 13
    shl-long/2addr p0, v0

    .line 14
    long-to-int p0, p0

    .line 15
    ushr-int p0, p2, p0

    .line 16
    .line 17
    and-int/lit16 p0, p0, 0xff

    .line 18
    .line 19
    int-to-byte p0, p0

    .line 20
    return p0
.end method

.method public static getByteLittleEndian(JLjava/lang/Object;)B
    .locals 2

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    invoke-static {v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    const-wide/16 v0, 0x3

    .line 9
    .line 10
    and-long/2addr p0, v0

    .line 11
    const/4 v0, 0x3

    .line 12
    shl-long/2addr p0, v0

    .line 13
    long-to-int p0, p0

    .line 14
    ushr-int p0, p2, p0

    .line 15
    .line 16
    and-int/lit16 p0, p0, 0xff

    .line 17
    .line 18
    int-to-byte p0, p0

    .line 19
    return p0
.end method

.method public static getInt(JLjava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static getLong(JLjava/lang/Object;)J
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static getObject(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p2, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static putByte([BJB)V
    .locals 2

    .line 1
    sget-wide v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->BYTE_ARRAY_BASE_OFFSET:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    sget-object p1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 5
    .line 6
    invoke-virtual {p1, p0, v0, v1, p3}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static putByteBigEndian(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    invoke-static {v0, v1, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    long-to-int p1, p1

    .line 9
    not-int p1, p1

    .line 10
    and-int/lit8 p1, p1, 0x3

    .line 11
    .line 12
    shl-int/lit8 p1, p1, 0x3

    .line 13
    .line 14
    const/16 p2, 0xff

    .line 15
    .line 16
    shl-int v3, p2, p1

    .line 17
    .line 18
    not-int v3, v3

    .line 19
    and-int/2addr v2, v3

    .line 20
    and-int/2addr p2, p3

    .line 21
    shl-int p1, p2, p1

    .line 22
    .line 23
    or-int/2addr p1, v2

    .line 24
    invoke-static {p1, v0, v1, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static putByteLittleEndian(Ljava/lang/Object;JB)V
    .locals 4

    .line 1
    const-wide/16 v0, -0x4

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    invoke-static {v0, v1, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getInt(JLjava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    long-to-int p1, p1

    .line 9
    and-int/lit8 p1, p1, 0x3

    .line 10
    .line 11
    shl-int/lit8 p1, p1, 0x3

    .line 12
    .line 13
    const/16 p2, 0xff

    .line 14
    .line 15
    shl-int v3, p2, p1

    .line 16
    .line 17
    not-int v3, v3

    .line 18
    and-int/2addr v2, v3

    .line 19
    and-int/2addr p2, p3

    .line 20
    shl-int p1, p2, p1

    .line 21
    .line 22
    or-int/2addr p1, v2

    .line 23
    invoke-static {p1, v0, v1, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putInt(IJLjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static putInt(IJLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p3, p1, p2, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static putLong(Ljava/lang/Object;JJ)V
    .locals 7

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    .line 5
    move-object v2, p0

    .line 6
    move-wide v3, p1

    .line 7
    move-wide v5, p3

    .line 8
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
