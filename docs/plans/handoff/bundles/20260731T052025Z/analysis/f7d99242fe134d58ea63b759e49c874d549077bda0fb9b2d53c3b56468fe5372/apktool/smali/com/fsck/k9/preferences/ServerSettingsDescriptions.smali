.class public abstract Lcom/fsck/k9/preferences/ServerSettingsDescriptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SETTINGS:Ljava/util/Map;

.field public static final UPGRADERS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    new-instance v2, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 7
    .line 8
    const/4 v3, 0x7

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v2, v3, v4}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    new-instance v5, Lkotlin/Pair;

    .line 14
    .line 15
    invoke-direct {v5, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-array v2, v0, [Lkotlin/Pair;

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    aput-object v5, v2, v6

    .line 22
    .line 23
    new-instance v5, Ljava/util/TreeMap;

    .line 24
    .line 25
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v5, v2}, Lkotlin/collections/MapsKt__MapsKt;->putAll(Ljava/util/AbstractMap;[Lkotlin/Pair;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lkotlin/Pair;

    .line 32
    .line 33
    const-string v7, "host"

    .line 34
    .line 35
    invoke-direct {v2, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v5, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    .line 39
    .line 40
    const v7, 0xffff

    .line 41
    .line 42
    .line 43
    const/4 v8, -0x1

    .line 44
    invoke-direct {v5, v0, v7, v8}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    .line 45
    .line 46
    .line 47
    new-instance v7, Lkotlin/Pair;

    .line 48
    .line 49
    invoke-direct {v7, v1, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-array v5, v0, [Lkotlin/Pair;

    .line 53
    .line 54
    aput-object v7, v5, v6

    .line 55
    .line 56
    new-instance v7, Ljava/util/TreeMap;

    .line 57
    .line 58
    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-static {v7, v5}, Lkotlin/collections/MapsKt__MapsKt;->putAll(Ljava/util/AbstractMap;[Lkotlin/Pair;)V

    .line 62
    .line 63
    .line 64
    new-instance v5, Lkotlin/Pair;

    .line 65
    .line 66
    const-string v8, "port"

    .line 67
    .line 68
    invoke-direct {v5, v8, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance v7, Lcom/fsck/k9/preferences/StringEnumSetting;

    .line 72
    .line 73
    const-string v8, "SSL_TLS_OPTIONAL"

    .line 74
    .line 75
    const-string v9, "NONE"

    .line 76
    .line 77
    const-string v10, "STARTTLS_OPTIONAL"

    .line 78
    .line 79
    const-string v11, "STARTTLS_REQUIRED"

    .line 80
    .line 81
    const-string v12, "SSL_TLS_REQUIRED"

    .line 82
    .line 83
    filled-new-array {v9, v10, v11, v8, v12}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v8}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-direct {v7, v8, v6}, Lcom/fsck/k9/preferences/StringEnumSetting;-><init>(Ljava/util/Set;I)V

    .line 92
    .line 93
    .line 94
    new-instance v8, Lkotlin/Pair;

    .line 95
    .line 96
    invoke-direct {v8, v1, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const/16 v7, 0x5c

    .line 100
    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    new-instance v10, Lcom/fsck/k9/preferences/StringEnumSetting;

    .line 106
    .line 107
    filled-new-array {v9, v11, v12}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-static {v11}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-direct {v10, v11, v0}, Lcom/fsck/k9/preferences/StringEnumSetting;-><init>(Ljava/util/Set;I)V

    .line 116
    .line 117
    .line 118
    new-instance v11, Lkotlin/Pair;

    .line 119
    .line 120
    invoke-direct {v11, v7, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const/4 v10, 0x2

    .line 124
    new-array v12, v10, [Lkotlin/Pair;

    .line 125
    .line 126
    aput-object v8, v12, v6

    .line 127
    .line 128
    aput-object v11, v12, v0

    .line 129
    .line 130
    new-instance v8, Ljava/util/TreeMap;

    .line 131
    .line 132
    invoke-direct {v8}, Ljava/util/TreeMap;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-static {v8, v12}, Lkotlin/collections/MapsKt__MapsKt;->putAll(Ljava/util/AbstractMap;[Lkotlin/Pair;)V

    .line 136
    .line 137
    .line 138
    new-instance v11, Lkotlin/Pair;

    .line 139
    .line 140
    const-string v12, "connectionSecurity"

    .line 141
    .line 142
    invoke-direct {v11, v12, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    new-instance v8, Lcom/fsck/k9/preferences/StringEnumSetting;

    .line 146
    .line 147
    const-string v16, "AUTOMATIC"

    .line 148
    .line 149
    const-string v17, "LOGIN"

    .line 150
    .line 151
    const-string v12, "PLAIN"

    .line 152
    .line 153
    const-string v13, "CRAM_MD5"

    .line 154
    .line 155
    const-string v14, "EXTERNAL"

    .line 156
    .line 157
    const-string v15, "XOAUTH2"

    .line 158
    .line 159
    filled-new-array/range {v12 .. v17}, [Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-static {v12}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    invoke-direct {v8, v12, v0}, Lcom/fsck/k9/preferences/StringEnumSetting;-><init>(Ljava/util/Set;I)V

    .line 168
    .line 169
    .line 170
    new-instance v12, Lkotlin/Pair;

    .line 171
    .line 172
    invoke-direct {v12, v1, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    const/16 v8, 0x5e

    .line 176
    .line 177
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    new-instance v13, Lcom/fsck/k9/preferences/StringEnumSetting;

    .line 182
    .line 183
    const-string v14, "PLAIN"

    .line 184
    .line 185
    const-string v15, "CRAM_MD5"

    .line 186
    .line 187
    move/from16 v16, v10

    .line 188
    .line 189
    const-string v10, "EXTERNAL"

    .line 190
    .line 191
    move/from16 v17, v6

    .line 192
    .line 193
    const-string v6, "XOAUTH2"

    .line 194
    .line 195
    filled-new-array {v14, v15, v10, v6}, [Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v18

    .line 199
    invoke-static/range {v18 .. v18}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-direct {v13, v4, v0}, Lcom/fsck/k9/preferences/StringEnumSetting;-><init>(Ljava/util/Set;I)V

    .line 204
    .line 205
    .line 206
    new-instance v4, Lkotlin/Pair;

    .line 207
    .line 208
    invoke-direct {v4, v8, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    const/16 v13, 0x5f

    .line 212
    .line 213
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v13

    .line 217
    new-instance v3, Lcom/fsck/k9/preferences/StringEnumSetting;

    .line 218
    .line 219
    filled-new-array {v14, v15, v10, v6, v9}, [Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-static {v6}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-direct {v3, v6, v0}, Lcom/fsck/k9/preferences/StringEnumSetting;-><init>(Ljava/util/Set;I)V

    .line 228
    .line 229
    .line 230
    new-instance v6, Lkotlin/Pair;

    .line 231
    .line 232
    invoke-direct {v6, v13, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    const/4 v3, 0x3

    .line 236
    new-array v9, v3, [Lkotlin/Pair;

    .line 237
    .line 238
    aput-object v12, v9, v17

    .line 239
    .line 240
    aput-object v4, v9, v0

    .line 241
    .line 242
    aput-object v6, v9, v16

    .line 243
    .line 244
    new-instance v4, Ljava/util/TreeMap;

    .line 245
    .line 246
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-static {v4, v9}, Lkotlin/collections/MapsKt__MapsKt;->putAll(Ljava/util/AbstractMap;[Lkotlin/Pair;)V

    .line 250
    .line 251
    .line 252
    new-instance v6, Lkotlin/Pair;

    .line 253
    .line 254
    const-string v9, "authenticationType"

    .line 255
    .line 256
    invoke-direct {v6, v9, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 260
    .line 261
    const-string v9, ""

    .line 262
    .line 263
    const/4 v10, 0x7

    .line 264
    invoke-direct {v4, v10, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    new-instance v9, Lkotlin/Pair;

    .line 268
    .line 269
    invoke-direct {v9, v1, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    new-array v4, v0, [Lkotlin/Pair;

    .line 273
    .line 274
    aput-object v9, v4, v17

    .line 275
    .line 276
    new-instance v9, Ljava/util/TreeMap;

    .line 277
    .line 278
    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-static {v9, v4}, Lkotlin/collections/MapsKt__MapsKt;->putAll(Ljava/util/AbstractMap;[Lkotlin/Pair;)V

    .line 282
    .line 283
    .line 284
    new-instance v4, Lkotlin/Pair;

    .line 285
    .line 286
    const-string/jumbo v10, "username"

    .line 287
    .line 288
    .line 289
    invoke-direct {v4, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    new-instance v9, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 293
    .line 294
    const/4 v10, 0x0

    .line 295
    const/4 v12, 0x7

    .line 296
    invoke-direct {v9, v12, v10}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    new-instance v10, Lkotlin/Pair;

    .line 300
    .line 301
    invoke-direct {v10, v1, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    new-array v9, v0, [Lkotlin/Pair;

    .line 305
    .line 306
    aput-object v10, v9, v17

    .line 307
    .line 308
    new-instance v10, Ljava/util/TreeMap;

    .line 309
    .line 310
    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-static {v10, v9}, Lkotlin/collections/MapsKt__MapsKt;->putAll(Ljava/util/AbstractMap;[Lkotlin/Pair;)V

    .line 314
    .line 315
    .line 316
    new-instance v9, Lkotlin/Pair;

    .line 317
    .line 318
    const-string v12, "password"

    .line 319
    .line 320
    invoke-direct {v9, v12, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    new-instance v10, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 324
    .line 325
    const/4 v12, 0x0

    .line 326
    const/4 v14, 0x7

    .line 327
    invoke-direct {v10, v14, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    new-instance v12, Lkotlin/Pair;

    .line 331
    .line 332
    invoke-direct {v12, v1, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    new-array v1, v0, [Lkotlin/Pair;

    .line 336
    .line 337
    aput-object v12, v1, v17

    .line 338
    .line 339
    new-instance v10, Ljava/util/TreeMap;

    .line 340
    .line 341
    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-static {v10, v1}, Lkotlin/collections/MapsKt__MapsKt;->putAll(Ljava/util/AbstractMap;[Lkotlin/Pair;)V

    .line 345
    .line 346
    .line 347
    new-instance v1, Lkotlin/Pair;

    .line 348
    .line 349
    const-string v12, "clientCertificateAlias"

    .line 350
    .line 351
    invoke-direct {v1, v12, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    new-array v10, v14, [Lkotlin/Pair;

    .line 355
    .line 356
    aput-object v2, v10, v17

    .line 357
    .line 358
    aput-object v5, v10, v0

    .line 359
    .line 360
    aput-object v11, v10, v16

    .line 361
    .line 362
    aput-object v6, v10, v3

    .line 363
    .line 364
    const/4 v2, 0x4

    .line 365
    aput-object v4, v10, v2

    .line 366
    .line 367
    const/4 v2, 0x5

    .line 368
    aput-object v9, v10, v2

    .line 369
    .line 370
    const/4 v2, 0x6

    .line 371
    aput-object v1, v10, v2

    .line 372
    .line 373
    invoke-static {v10}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    sput-object v1, Lcom/fsck/k9/preferences/ServerSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 378
    .line 379
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 380
    .line 381
    move/from16 v2, v17

    .line 382
    .line 383
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 384
    .line 385
    .line 386
    new-instance v2, Lkotlin/Pair;

    .line 387
    .line 388
    invoke-direct {v2, v7, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 392
    .line 393
    const/16 v4, 0xe

    .line 394
    .line 395
    invoke-direct {v1, v4}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 396
    .line 397
    .line 398
    new-instance v4, Lkotlin/Pair;

    .line 399
    .line 400
    invoke-direct {v4, v8, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 404
    .line 405
    const/16 v5, 0xf

    .line 406
    .line 407
    invoke-direct {v1, v5}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 408
    .line 409
    .line 410
    new-instance v5, Lkotlin/Pair;

    .line 411
    .line 412
    invoke-direct {v5, v13, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    new-array v1, v3, [Lkotlin/Pair;

    .line 416
    .line 417
    const/16 v17, 0x0

    .line 418
    .line 419
    aput-object v2, v1, v17

    .line 420
    .line 421
    aput-object v4, v1, v0

    .line 422
    .line 423
    aput-object v5, v1, v16

    .line 424
    .line 425
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    sput-object v0, Lcom/fsck/k9/preferences/ServerSettingsDescriptions;->UPGRADERS:Ljava/util/Map;

    .line 430
    .line 431
    return-void
.end method
