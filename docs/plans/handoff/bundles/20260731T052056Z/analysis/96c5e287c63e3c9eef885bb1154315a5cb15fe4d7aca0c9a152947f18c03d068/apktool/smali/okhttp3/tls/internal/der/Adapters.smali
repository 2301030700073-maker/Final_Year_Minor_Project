.class public abstract Lokhttp3/tls/internal/der/Adapters;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ANY_VALUE:Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;

.field public static final BIT_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final BOOLEAN:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final GENERALIZED_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final IA5_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final INTEGER_AS_BIG_INTEGER:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final INTEGER_AS_LONG:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final NULL:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final OBJECT_IDENTIFIER:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final OCTET_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final PRINTABLE_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final UTC_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

.field public static final UTF8_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 2
    .line 3
    new-instance v5, Lokio/Path$Companion;

    .line 4
    .line 5
    const/4 v9, 0x7

    .line 6
    invoke-direct {v5, v9}, Lokio/Path$Companion;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v8, 0x0

    .line 11
    const-string v1, "BOOLEAN"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const-wide/16 v3, 0x1

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    invoke-direct/range {v0 .. v8}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lokhttp3/tls/internal/der/Adapters;->BOOLEAN:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 21
    .line 22
    new-instance v10, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 23
    .line 24
    new-instance v15, Lorg/wikipedia/login/LoginClient;

    .line 25
    .line 26
    const/16 v1, 0x8

    .line 27
    .line 28
    invoke-direct {v15, v1}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 29
    .line 30
    .line 31
    const/16 v16, 0x0

    .line 32
    .line 33
    const/16 v18, 0x0

    .line 34
    .line 35
    const-string v11, "INTEGER"

    .line 36
    .line 37
    const/4 v12, 0x0

    .line 38
    const-wide/16 v13, 0x2

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    invoke-direct/range {v10 .. v18}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 43
    .line 44
    .line 45
    sput-object v10, Lokhttp3/tls/internal/der/Adapters;->INTEGER_AS_LONG:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 46
    .line 47
    new-instance v11, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 48
    .line 49
    new-instance v2, Lokio/Path$Companion;

    .line 50
    .line 51
    invoke-direct {v2, v1}, Lokio/Path$Companion;-><init>(I)V

    .line 52
    .line 53
    .line 54
    const/16 v17, 0x0

    .line 55
    .line 56
    const/16 v19, 0x0

    .line 57
    .line 58
    const-string v12, "INTEGER"

    .line 59
    .line 60
    const/4 v13, 0x0

    .line 61
    const-wide/16 v14, 0x2

    .line 62
    .line 63
    const/16 v18, 0x0

    .line 64
    .line 65
    move-object/from16 v16, v2

    .line 66
    .line 67
    invoke-direct/range {v11 .. v19}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 68
    .line 69
    .line 70
    sput-object v11, Lokhttp3/tls/internal/der/Adapters;->INTEGER_AS_BIG_INTEGER:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 71
    .line 72
    new-instance v12, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 73
    .line 74
    new-instance v2, Lokio/ByteString$Companion;

    .line 75
    .line 76
    const/4 v3, 0x6

    .line 77
    invoke-direct {v2, v3}, Lokio/ByteString$Companion;-><init>(I)V

    .line 78
    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const-string v13, "BIT STRING"

    .line 85
    .line 86
    const/4 v14, 0x0

    .line 87
    const-wide/16 v15, 0x3

    .line 88
    .line 89
    const/16 v19, 0x0

    .line 90
    .line 91
    move-object/from16 v17, v2

    .line 92
    .line 93
    invoke-direct/range {v12 .. v20}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 94
    .line 95
    .line 96
    sput-object v12, Lokhttp3/tls/internal/der/Adapters;->BIT_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 97
    .line 98
    new-instance v13, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 99
    .line 100
    new-instance v2, Lorg/wikipedia/login/LoginClient;

    .line 101
    .line 102
    const/16 v4, 0x9

    .line 103
    .line 104
    invoke-direct {v2, v4}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 105
    .line 106
    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    const/16 v21, 0x0

    .line 110
    .line 111
    const-string v14, "OCTET STRING"

    .line 112
    .line 113
    const/4 v15, 0x0

    .line 114
    const-wide/16 v16, 0x4

    .line 115
    .line 116
    const/16 v20, 0x0

    .line 117
    .line 118
    move-object/from16 v18, v2

    .line 119
    .line 120
    invoke-direct/range {v13 .. v21}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 121
    .line 122
    .line 123
    sput-object v13, Lokhttp3/tls/internal/der/Adapters;->OCTET_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 124
    .line 125
    new-instance v14, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 126
    .line 127
    new-instance v2, Lokio/ByteString$Companion;

    .line 128
    .line 129
    invoke-direct {v2, v1}, Lokio/ByteString$Companion;-><init>(I)V

    .line 130
    .line 131
    .line 132
    const/16 v20, 0x0

    .line 133
    .line 134
    const/16 v22, 0x0

    .line 135
    .line 136
    const-string v15, "NULL"

    .line 137
    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    const-wide/16 v17, 0x5

    .line 141
    .line 142
    const/16 v21, 0x0

    .line 143
    .line 144
    move-object/from16 v19, v2

    .line 145
    .line 146
    invoke-direct/range {v14 .. v22}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 147
    .line 148
    .line 149
    sput-object v14, Lokhttp3/tls/internal/der/Adapters;->NULL:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 150
    .line 151
    new-instance v15, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 152
    .line 153
    new-instance v2, Lokio/Path$Companion;

    .line 154
    .line 155
    invoke-direct {v2, v4}, Lokio/Path$Companion;-><init>(I)V

    .line 156
    .line 157
    .line 158
    const/16 v21, 0x0

    .line 159
    .line 160
    const/16 v23, 0x0

    .line 161
    .line 162
    const-string v16, "OBJECT IDENTIFIER"

    .line 163
    .line 164
    const/16 v17, 0x0

    .line 165
    .line 166
    const-wide/16 v18, 0x6

    .line 167
    .line 168
    const/16 v22, 0x0

    .line 169
    .line 170
    move-object/from16 v20, v2

    .line 171
    .line 172
    invoke-direct/range {v15 .. v23}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 173
    .line 174
    .line 175
    sput-object v15, Lokhttp3/tls/internal/der/Adapters;->OBJECT_IDENTIFIER:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 176
    .line 177
    new-instance v16, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 178
    .line 179
    new-instance v2, Lorg/wikipedia/login/LoginClient;

    .line 180
    .line 181
    const/16 v5, 0xa

    .line 182
    .line 183
    invoke-direct {v2, v5}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 184
    .line 185
    .line 186
    const/16 v22, 0x0

    .line 187
    .line 188
    const/16 v24, 0x0

    .line 189
    .line 190
    const-string v17, "UTF8"

    .line 191
    .line 192
    const/16 v18, 0x0

    .line 193
    .line 194
    const-wide/16 v19, 0xc

    .line 195
    .line 196
    const/16 v23, 0x0

    .line 197
    .line 198
    move-object/from16 v21, v2

    .line 199
    .line 200
    invoke-direct/range {v16 .. v24}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 201
    .line 202
    .line 203
    move-object/from16 v2, v16

    .line 204
    .line 205
    sput-object v2, Lokhttp3/tls/internal/der/Adapters;->UTF8_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 206
    .line 207
    new-instance v16, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 208
    .line 209
    new-instance v6, Lokio/ByteString$Companion;

    .line 210
    .line 211
    invoke-direct {v6, v4}, Lokio/ByteString$Companion;-><init>(I)V

    .line 212
    .line 213
    .line 214
    const-string v17, "PRINTABLE STRING"

    .line 215
    .line 216
    const-wide/16 v19, 0x13

    .line 217
    .line 218
    move-object/from16 v21, v6

    .line 219
    .line 220
    invoke-direct/range {v16 .. v24}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v6, v16

    .line 224
    .line 225
    sput-object v6, Lokhttp3/tls/internal/der/Adapters;->PRINTABLE_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 226
    .line 227
    new-instance v16, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 228
    .line 229
    new-instance v7, Lokio/ByteString$Companion;

    .line 230
    .line 231
    invoke-direct {v7, v9}, Lokio/ByteString$Companion;-><init>(I)V

    .line 232
    .line 233
    .line 234
    const-string v17, "IA5 STRING"

    .line 235
    .line 236
    const-wide/16 v19, 0x16

    .line 237
    .line 238
    move-object/from16 v21, v7

    .line 239
    .line 240
    invoke-direct/range {v16 .. v24}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 241
    .line 242
    .line 243
    move-object/from16 v7, v16

    .line 244
    .line 245
    sput-object v7, Lokhttp3/tls/internal/der/Adapters;->IA5_STRING:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 246
    .line 247
    new-instance v16, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 248
    .line 249
    new-instance v8, Lokio/Path$Companion;

    .line 250
    .line 251
    invoke-direct {v8, v5}, Lokio/Path$Companion;-><init>(I)V

    .line 252
    .line 253
    .line 254
    const-string v17, "UTC TIME"

    .line 255
    .line 256
    const-wide/16 v19, 0x17

    .line 257
    .line 258
    move-object/from16 v21, v8

    .line 259
    .line 260
    invoke-direct/range {v16 .. v24}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 261
    .line 262
    .line 263
    move-object/from16 v8, v16

    .line 264
    .line 265
    sput-object v8, Lokhttp3/tls/internal/der/Adapters;->UTC_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 266
    .line 267
    new-instance v16, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 268
    .line 269
    new-instance v10, Lorg/wikipedia/login/LoginClient;

    .line 270
    .line 271
    invoke-direct {v10, v9}, Lorg/wikipedia/login/LoginClient;-><init>(I)V

    .line 272
    .line 273
    .line 274
    const-string v17, "GENERALIZED TIME"

    .line 275
    .line 276
    const-wide/16 v19, 0x18

    .line 277
    .line 278
    move-object/from16 v21, v10

    .line 279
    .line 280
    invoke-direct/range {v16 .. v24}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 281
    .line 282
    .line 283
    move-object/from16 v10, v16

    .line 284
    .line 285
    sput-object v10, Lokhttp3/tls/internal/der/Adapters;->GENERALIZED_TIME:Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 286
    .line 287
    move/from16 v16, v1

    .line 288
    .line 289
    new-instance v1, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;

    .line 290
    .line 291
    move/from16 v17, v3

    .line 292
    .line 293
    const/4 v3, 0x0

    .line 294
    invoke-direct {v1, v3}, Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;-><init>(I)V

    .line 295
    .line 296
    .line 297
    sput-object v1, Lokhttp3/tls/internal/der/Adapters;->ANY_VALUE:Lokhttp3/tls/internal/der/Adapters$ANY_VALUE$1;

    .line 298
    .line 299
    move/from16 v18, v3

    .line 300
    .line 301
    sget-object v3, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 302
    .line 303
    move/from16 v19, v4

    .line 304
    .line 305
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 306
    .line 307
    invoke-virtual {v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    move/from16 v20, v5

    .line 312
    .line 313
    new-instance v5, Lkotlin/Pair;

    .line 314
    .line 315
    invoke-direct {v5, v4, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    const-class v0, Ljava/math/BigInteger;

    .line 319
    .line 320
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    new-instance v4, Lkotlin/Pair;

    .line 325
    .line 326
    invoke-direct {v4, v0, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    const-class v0, Lokhttp3/tls/internal/der/BitString;

    .line 330
    .line 331
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    new-instance v11, Lkotlin/Pair;

    .line 336
    .line 337
    invoke-direct {v11, v0, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    const-class v0, Lokio/ByteString;

    .line 341
    .line 342
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-instance v12, Lkotlin/Pair;

    .line 347
    .line 348
    invoke-direct {v12, v0, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    const-class v0, Lkotlin/Unit;

    .line 352
    .line 353
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    new-instance v13, Lkotlin/Pair;

    .line 358
    .line 359
    invoke-direct {v13, v0, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    const-class v0, Ljava/lang/Void;

    .line 363
    .line 364
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 365
    .line 366
    .line 367
    move-result-object v14

    .line 368
    move/from16 v21, v9

    .line 369
    .line 370
    new-instance v9, Lkotlin/Pair;

    .line 371
    .line 372
    invoke-direct {v9, v14, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 376
    .line 377
    .line 378
    move-result-object v14

    .line 379
    new-instance v15, Lkotlin/Pair;

    .line 380
    .line 381
    invoke-direct {v15, v14, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    const-class v2, Ljava/lang/String;

    .line 385
    .line 386
    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    new-instance v14, Lkotlin/Pair;

    .line 391
    .line 392
    invoke-direct {v14, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    new-instance v6, Lkotlin/Pair;

    .line 400
    .line 401
    invoke-direct {v6, v2, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    new-instance v2, Lkotlin/Pair;

    .line 409
    .line 410
    invoke-direct {v2, v0, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 414
    .line 415
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    new-instance v7, Lkotlin/Pair;

    .line 420
    .line 421
    invoke-direct {v7, v0, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    const-class v0, Lokhttp3/tls/internal/der/AnyValue;

    .line 425
    .line 426
    invoke-virtual {v3, v0}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    new-instance v3, Lkotlin/Pair;

    .line 431
    .line 432
    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    const/16 v0, 0xc

    .line 436
    .line 437
    new-array v0, v0, [Lkotlin/Pair;

    .line 438
    .line 439
    aput-object v5, v0, v18

    .line 440
    .line 441
    const/4 v1, 0x1

    .line 442
    aput-object v4, v0, v1

    .line 443
    .line 444
    const/4 v1, 0x2

    .line 445
    aput-object v11, v0, v1

    .line 446
    .line 447
    const/4 v1, 0x3

    .line 448
    aput-object v12, v0, v1

    .line 449
    .line 450
    const/4 v1, 0x4

    .line 451
    aput-object v13, v0, v1

    .line 452
    .line 453
    const/4 v1, 0x5

    .line 454
    aput-object v9, v0, v1

    .line 455
    .line 456
    aput-object v15, v0, v17

    .line 457
    .line 458
    aput-object v14, v0, v21

    .line 459
    .line 460
    aput-object v6, v0, v16

    .line 461
    .line 462
    aput-object v2, v0, v19

    .line 463
    .line 464
    aput-object v7, v0, v20

    .line 465
    .line 466
    const/16 v1, 0xb

    .line 467
    .line 468
    aput-object v3, v0, v1

    .line 469
    .line 470
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 471
    .line 472
    .line 473
    return-void
.end method

.method public static sequence(Ljava/lang/String;[Lokhttp3/tls/internal/der/DerAdapter;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 9

    .line 1
    new-instance v5, Lokhttp3/MultipartBody$Builder;

    .line 2
    .line 3
    invoke-direct {v5, p1, p3, p2}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const-wide/16 v3, 0x10

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v1, p0

    .line 15
    invoke-direct/range {v0 .. v8}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;Z)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
