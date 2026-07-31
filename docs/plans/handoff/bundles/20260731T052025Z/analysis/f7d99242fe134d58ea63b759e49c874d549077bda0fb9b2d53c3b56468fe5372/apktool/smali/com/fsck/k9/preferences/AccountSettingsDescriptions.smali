.class public abstract Lcom/fsck/k9/preferences/AccountSettingsDescriptions;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final SETTINGS:Ljava/util/Map;

.field public static final UPGRADERS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 7
    .line 8
    const/16 v2, 0xb

    .line 9
    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 15
    .line 16
    const/4 v4, 0x7

    .line 17
    const-string v5, ""

    .line 18
    .line 19
    invoke-direct {v3, v4, v5}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/16 v5, 0x8

    .line 23
    .line 24
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    aput-object v1, v3, v6

    .line 32
    .line 33
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v3, "alwaysBcc"

    .line 38
    .line 39
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 43
    .line 44
    const/16 v3, 0xd

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    new-instance v7, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 51
    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-direct {v7, v6}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v1, v5, v3, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-array v3, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 63
    .line 64
    aput-object v1, v3, v6

    .line 65
    .line 66
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v3, "alwaysShowCcBcc"

    .line 71
    .line 72
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v7, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 82
    .line 83
    const-string v9, "-NONE-"

    .line 84
    .line 85
    invoke-direct {v7, v4, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {v1, v5, v3, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v7, Lcom/google/zxing/BinaryBitmap;

    .line 92
    .line 93
    const/16 v10, 0x35

    .line 94
    .line 95
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 100
    .line 101
    const/4 v12, 0x0

    .line 102
    invoke-direct {v11, v4, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-direct {v7, v5, v10, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const/4 v11, 0x2

    .line 109
    new-array v13, v11, [Lcom/google/zxing/BinaryBitmap;

    .line 110
    .line 111
    aput-object v1, v13, v6

    .line 112
    .line 113
    aput-object v7, v13, v2

    .line 114
    .line 115
    invoke-static {v13}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string v7, "archiveFolderName"

    .line 120
    .line 121
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 125
    .line 126
    new-instance v7, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 127
    .line 128
    const-string v13, "INBOX"

    .line 129
    .line 130
    invoke-direct {v7, v4, v13}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v1, v5, v3, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    new-instance v7, Lcom/google/zxing/BinaryBitmap;

    .line 137
    .line 138
    const/16 v13, 0x4e

    .line 139
    .line 140
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    new-instance v14, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 145
    .line 146
    invoke-direct {v14, v4, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {v7, v5, v13, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    new-array v13, v11, [Lcom/google/zxing/BinaryBitmap;

    .line 153
    .line 154
    aput-object v1, v13, v6

    .line 155
    .line 156
    aput-object v7, v13, v2

    .line 157
    .line 158
    invoke-static {v13}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v7, "autoExpandFolderName"

    .line 163
    .line 164
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 168
    .line 169
    new-instance v7, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 170
    .line 171
    const/4 v13, -0x1

    .line 172
    const v14, 0x7f030009

    .line 173
    .line 174
    .line 175
    invoke-direct {v7, v13, v14}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 176
    .line 177
    .line 178
    invoke-direct {v1, v5, v3, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    new-instance v7, Lcom/google/zxing/BinaryBitmap;

    .line 182
    .line 183
    const/16 v15, 0x3d

    .line 184
    .line 185
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v15

    .line 189
    new-instance v13, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 190
    .line 191
    move/from16 v16, v6

    .line 192
    .line 193
    const/16 v6, 0x3c

    .line 194
    .line 195
    invoke-direct {v13, v6, v14}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 196
    .line 197
    .line 198
    invoke-direct {v7, v5, v15, v13}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    .line 202
    .line 203
    const/16 v13, 0x6b

    .line 204
    .line 205
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    new-instance v15, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 210
    .line 211
    move/from16 v17, v11

    .line 212
    .line 213
    const/16 v11, 0xf

    .line 214
    .line 215
    invoke-direct {v15, v11, v14}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 216
    .line 217
    .line 218
    invoke-direct {v6, v5, v13, v15}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    const/4 v11, 0x3

    .line 222
    new-array v14, v11, [Lcom/google/zxing/BinaryBitmap;

    .line 223
    .line 224
    aput-object v1, v14, v16

    .line 225
    .line 226
    aput-object v7, v14, v2

    .line 227
    .line 228
    aput-object v6, v14, v17

    .line 229
    .line 230
    invoke-static {v14}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const-string v6, "automaticCheckIntervalMinutes"

    .line 235
    .line 236
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 240
    .line 241
    new-instance v6, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 242
    .line 243
    const v7, -0xffff01

    .line 244
    .line 245
    .line 246
    invoke-direct {v6, v7}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(I)V

    .line 247
    .line 248
    .line 249
    invoke-direct {v1, v5, v3, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    new-array v6, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 253
    .line 254
    aput-object v1, v6, v16

    .line 255
    .line 256
    invoke-static {v6}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    const-string v6, "chipColor"

    .line 261
    .line 262
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 266
    .line 267
    new-instance v6, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 268
    .line 269
    invoke-direct {v6, v2}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 270
    .line 271
    .line 272
    invoke-direct {v1, v5, v3, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    new-array v6, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 276
    .line 277
    aput-object v1, v6, v16

    .line 278
    .line 279
    invoke-static {v6}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    const-string v6, "defaultQuotedTextShown"

    .line 284
    .line 285
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 289
    .line 290
    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 291
    .line 292
    invoke-direct {v6, v8}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    new-instance v14, Ljava/util/HashMap;

    .line 296
    .line 297
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 298
    .line 299
    .line 300
    const-string v15, "NEVER"

    .line 301
    .line 302
    invoke-virtual {v14, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    const-string v15, "DELETE"

    .line 310
    .line 311
    invoke-virtual {v14, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v15

    .line 318
    const-string v7, "MARK_AS_READ"

    .line 319
    .line 320
    invoke-virtual {v14, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    invoke-static {v14}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 324
    .line 325
    .line 326
    move-result-object v7

    .line 327
    iput-object v7, v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;->mapping:Ljava/util/Map;

    .line 328
    .line 329
    invoke-direct {v1, v5, v3, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    new-array v6, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 333
    .line 334
    aput-object v1, v6, v16

    .line 335
    .line 336
    invoke-static {v6}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    const-string v6, "deletePolicy"

    .line 341
    .line 342
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 346
    .line 347
    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 348
    .line 349
    const v7, 0x7f030015

    .line 350
    .line 351
    .line 352
    const/16 v14, 0x19

    .line 353
    .line 354
    invoke-direct {v6, v14, v7}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 355
    .line 356
    .line 357
    invoke-direct {v1, v5, v3, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    new-array v6, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 361
    .line 362
    aput-object v1, v6, v16

    .line 363
    .line 364
    invoke-static {v6}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v6, "displayCount"

    .line 369
    .line 370
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 374
    .line 375
    new-instance v6, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 376
    .line 377
    invoke-direct {v6, v4, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    invoke-direct {v1, v5, v3, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    .line 384
    .line 385
    new-instance v7, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 386
    .line 387
    invoke-direct {v7, v4, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    invoke-direct {v6, v5, v10, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    move/from16 v7, v17

    .line 394
    .line 395
    new-array v15, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 396
    .line 397
    aput-object v1, v15, v16

    .line 398
    .line 399
    aput-object v6, v15, v2

    .line 400
    .line 401
    invoke-static {v15}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    const-string v6, "draftsFolderName"

    .line 406
    .line 407
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 411
    .line 412
    new-instance v6, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 413
    .line 414
    invoke-direct {v6, v11}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(I)V

    .line 415
    .line 416
    .line 417
    invoke-direct {v1, v5, v3, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    new-array v6, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 421
    .line 422
    aput-object v1, v6, v16

    .line 423
    .line 424
    invoke-static {v6}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    const-string v6, "expungePolicy"

    .line 429
    .line 430
    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 434
    .line 435
    new-instance v6, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 436
    .line 437
    sget-object v7, Lnet/thunderbird/core/android/account/FolderMode;->NOT_SECOND_CLASS:Lnet/thunderbird/core/android/account/FolderMode;

    .line 438
    .line 439
    const-class v15, Lnet/thunderbird/core/android/account/FolderMode;

    .line 440
    .line 441
    invoke-direct {v6, v15, v7}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 442
    .line 443
    .line 444
    invoke-direct {v1, v5, v3, v6}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    .line 448
    .line 449
    const/16 v7, 0x64

    .line 450
    .line 451
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v14

    .line 455
    invoke-direct {v6, v5, v14, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    move/from16 v18, v4

    .line 459
    .line 460
    const/4 v14, 0x2

    .line 461
    new-array v4, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 462
    .line 463
    aput-object v1, v4, v16

    .line 464
    .line 465
    aput-object v6, v4, v2

    .line 466
    .line 467
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    const-string v4, "folderDisplayMode"

    .line 472
    .line 473
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 477
    .line 478
    new-instance v4, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 479
    .line 480
    sget-object v6, Lnet/thunderbird/core/android/account/FolderMode;->FIRST_CLASS:Lnet/thunderbird/core/android/account/FolderMode;

    .line 481
    .line 482
    invoke-direct {v4, v15, v6}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 483
    .line 484
    .line 485
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 486
    .line 487
    .line 488
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 489
    .line 490
    const/16 v14, 0x48

    .line 491
    .line 492
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v14

    .line 496
    new-instance v7, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 497
    .line 498
    move/from16 v19, v2

    .line 499
    .line 500
    sget-object v2, Lnet/thunderbird/core/android/account/FolderMode;->NONE:Lnet/thunderbird/core/android/account/FolderMode;

    .line 501
    .line 502
    invoke-direct {v7, v15, v2}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 503
    .line 504
    .line 505
    invoke-direct {v4, v5, v14, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 509
    .line 510
    const/16 v7, 0x62

    .line 511
    .line 512
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    invoke-direct {v2, v5, v7, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 517
    .line 518
    .line 519
    new-array v7, v11, [Lcom/google/zxing/BinaryBitmap;

    .line 520
    .line 521
    aput-object v1, v7, v16

    .line 522
    .line 523
    aput-object v4, v7, v19

    .line 524
    .line 525
    const/16 v17, 0x2

    .line 526
    .line 527
    aput-object v2, v7, v17

    .line 528
    .line 529
    invoke-static {v7}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    const-string v2, "folderPushMode"

    .line 534
    .line 535
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 539
    .line 540
    new-instance v2, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 541
    .line 542
    invoke-direct {v2, v15, v6}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 543
    .line 544
    .line 545
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 546
    .line 547
    .line 548
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 549
    .line 550
    const/16 v4, 0x63

    .line 551
    .line 552
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    invoke-direct {v2, v5, v4, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    const/4 v7, 0x2

    .line 560
    new-array v4, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 561
    .line 562
    aput-object v1, v4, v16

    .line 563
    .line 564
    aput-object v2, v4, v19

    .line 565
    .line 566
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    const-string v2, "folderSyncMode"

    .line 571
    .line 572
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 576
    .line 577
    new-instance v2, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 578
    .line 579
    const/16 v4, 0x9

    .line 580
    .line 581
    new-array v6, v4, [I

    .line 582
    .line 583
    fill-array-data v6, :array_0

    .line 584
    .line 585
    .line 586
    invoke-direct {v2, v6}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>([I)V

    .line 587
    .line 588
    .line 589
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 593
    .line 594
    const/16 v6, 0x4a

    .line 595
    .line 596
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 597
    .line 598
    .line 599
    move-result-object v6

    .line 600
    new-instance v7, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 601
    .line 602
    const v14, 0x7f03001c

    .line 603
    .line 604
    .line 605
    move/from16 v20, v4

    .line 606
    .line 607
    const/16 v4, 0x18

    .line 608
    .line 609
    invoke-direct {v7, v4, v14}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 610
    .line 611
    .line 612
    invoke-direct {v2, v5, v6, v7}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 613
    .line 614
    .line 615
    const/4 v7, 0x2

    .line 616
    new-array v4, v7, [Lcom/google/zxing/BinaryBitmap;

    .line 617
    .line 618
    aput-object v1, v4, v16

    .line 619
    .line 620
    aput-object v2, v4, v19

    .line 621
    .line 622
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    const-string v2, "idleRefreshMinutes"

    .line 627
    .line 628
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 632
    .line 633
    new-instance v2, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 634
    .line 635
    move/from16 v4, v19

    .line 636
    .line 637
    invoke-direct {v2, v4}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 638
    .line 639
    .line 640
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 644
    .line 645
    const/16 v7, 0x50

    .line 646
    .line 647
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    .line 649
    .line 650
    move-result-object v7

    .line 651
    invoke-direct {v2, v5, v7, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    const/4 v14, 0x2

    .line 655
    new-array v4, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 656
    .line 657
    aput-object v1, v4, v16

    .line 658
    .line 659
    aput-object v2, v4, v19

    .line 660
    .line 661
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    const-string v2, "led"

    .line 666
    .line 667
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 671
    .line 672
    new-instance v2, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 673
    .line 674
    const v4, -0xffff01

    .line 675
    .line 676
    .line 677
    invoke-direct {v2, v4}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(I)V

    .line 678
    .line 679
    .line 680
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 684
    .line 685
    invoke-direct {v2, v5, v7, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 686
    .line 687
    .line 688
    const/4 v14, 0x2

    .line 689
    new-array v4, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 690
    .line 691
    aput-object v1, v4, v16

    .line 692
    .line 693
    const/4 v1, 0x1

    .line 694
    aput-object v2, v4, v1

    .line 695
    .line 696
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    const-string v4, "ledColor"

    .line 701
    .line 702
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 706
    .line 707
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 708
    .line 709
    .line 710
    move-result-object v4

    .line 711
    new-instance v14, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 712
    .line 713
    invoke-direct {v14, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 714
    .line 715
    .line 716
    invoke-direct {v2, v5, v4, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 717
    .line 718
    .line 719
    new-array v4, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 720
    .line 721
    aput-object v2, v4, v16

    .line 722
    .line 723
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    const-string v4, "markMessageAsReadOnView"

    .line 728
    .line 729
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 733
    .line 734
    const/16 v4, 0x3f

    .line 735
    .line 736
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 737
    .line 738
    .line 739
    move-result-object v4

    .line 740
    new-instance v14, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 741
    .line 742
    invoke-direct {v14, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 743
    .line 744
    .line 745
    invoke-direct {v2, v5, v4, v14}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 746
    .line 747
    .line 748
    new-array v4, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 749
    .line 750
    aput-object v2, v4, v16

    .line 751
    .line 752
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    const-string v4, "markMessageAsReadOnDelete"

    .line 757
    .line 758
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 762
    .line 763
    new-instance v4, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    .line 764
    .line 765
    const/16 v14, 0xa

    .line 766
    .line 767
    move/from16 v11, v16

    .line 768
    .line 769
    const/16 v12, 0x64

    .line 770
    .line 771
    invoke-direct {v4, v11, v12, v14}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    .line 772
    .line 773
    .line 774
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 775
    .line 776
    .line 777
    new-array v4, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 778
    .line 779
    aput-object v2, v4, v11

    .line 780
    .line 781
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 782
    .line 783
    .line 784
    move-result-object v1

    .line 785
    const-string v2, "maxPushFolders"

    .line 786
    .line 787
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    .line 789
    .line 790
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 791
    .line 792
    new-instance v2, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 793
    .line 794
    const v4, 0x8000

    .line 795
    .line 796
    .line 797
    const v11, 0x7f030005

    .line 798
    .line 799
    .line 800
    invoke-direct {v2, v4, v11}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 801
    .line 802
    .line 803
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 804
    .line 805
    .line 806
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 807
    .line 808
    const/16 v4, 0x5d

    .line 809
    .line 810
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 811
    .line 812
    .line 813
    move-result-object v4

    .line 814
    new-instance v12, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 815
    .line 816
    const/high16 v14, 0x20000

    .line 817
    .line 818
    invoke-direct {v12, v14, v11}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 819
    .line 820
    .line 821
    invoke-direct {v2, v5, v4, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 822
    .line 823
    .line 824
    const/4 v14, 0x2

    .line 825
    new-array v4, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 826
    .line 827
    const/16 v16, 0x0

    .line 828
    .line 829
    aput-object v1, v4, v16

    .line 830
    .line 831
    const/4 v1, 0x1

    .line 832
    aput-object v2, v4, v1

    .line 833
    .line 834
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    const-string v4, "maximumAutoDownloadMessageSize"

    .line 839
    .line 840
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 844
    .line 845
    new-instance v4, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 846
    .line 847
    const v11, 0x7f030022

    .line 848
    .line 849
    .line 850
    const/4 v12, -0x1

    .line 851
    invoke-direct {v4, v12, v11}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 852
    .line 853
    .line 854
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 855
    .line 856
    .line 857
    new-array v4, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 858
    .line 859
    aput-object v2, v4, v16

    .line 860
    .line 861
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 862
    .line 863
    .line 864
    move-result-object v1

    .line 865
    const-string v2, "maximumPolledMessageAge"

    .line 866
    .line 867
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 871
    .line 872
    new-instance v2, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 873
    .line 874
    sget v4, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$-CC;->$r8$clinit:I

    .line 875
    .line 876
    sget-object v4, Lnet/thunderbird/core/android/account/AccountDefaultsProvider;->Companion:Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;

    .line 877
    .line 878
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    sget-object v11, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_MESSAGE_FORMAT:Lnet/thunderbird/core/android/account/MessageFormat;

    .line 882
    .line 883
    const-class v12, Lnet/thunderbird/core/android/account/MessageFormat;

    .line 884
    .line 885
    invoke-direct {v2, v12, v11}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 886
    .line 887
    .line 888
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 889
    .line 890
    .line 891
    const/4 v2, 0x1

    .line 892
    new-array v11, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 893
    .line 894
    const/4 v12, 0x0

    .line 895
    aput-object v1, v11, v12

    .line 896
    .line 897
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    const-string v11, "messageFormat"

    .line 902
    .line 903
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 907
    .line 908
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 909
    .line 910
    invoke-direct {v11, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 911
    .line 912
    .line 913
    invoke-direct {v1, v5, v8, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 914
    .line 915
    .line 916
    new-array v11, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 917
    .line 918
    aput-object v1, v11, v12

    .line 919
    .line 920
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    const-string v11, "messageFormatAuto"

    .line 925
    .line 926
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    .line 928
    .line 929
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 930
    .line 931
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 932
    .line 933
    invoke-direct {v11, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 934
    .line 935
    .line 936
    invoke-direct {v1, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 937
    .line 938
    .line 939
    new-array v11, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 940
    .line 941
    aput-object v1, v11, v12

    .line 942
    .line 943
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 944
    .line 945
    .line 946
    move-result-object v1

    .line 947
    const-string v11, "messageReadReceipt"

    .line 948
    .line 949
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 953
    .line 954
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 955
    .line 956
    invoke-direct {v11, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 957
    .line 958
    .line 959
    invoke-direct {v1, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 960
    .line 961
    .line 962
    new-array v11, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 963
    .line 964
    aput-object v1, v11, v12

    .line 965
    .line 966
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 967
    .line 968
    .line 969
    move-result-object v1

    .line 970
    const-string v11, "notifyMailCheck"

    .line 971
    .line 972
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 976
    .line 977
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 978
    .line 979
    invoke-direct {v11, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 980
    .line 981
    .line 982
    invoke-direct {v1, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 983
    .line 984
    .line 985
    new-array v11, v2, [Lcom/google/zxing/BinaryBitmap;

    .line 986
    .line 987
    aput-object v1, v11, v12

    .line 988
    .line 989
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    const-string v2, "notifyNewMail"

    .line 994
    .line 995
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 999
    .line 1000
    const/16 v2, 0x22

    .line 1001
    .line 1002
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    new-instance v11, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1007
    .line 1008
    sget-object v12, Lnet/thunderbird/core/android/account/FolderMode;->ALL:Lnet/thunderbird/core/android/account/FolderMode;

    .line 1009
    .line 1010
    invoke-direct {v11, v15, v12}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-direct {v1, v5, v2, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1014
    .line 1015
    .line 1016
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1017
    .line 1018
    const/16 v11, 0x60

    .line 1019
    .line 1020
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v11

    .line 1024
    const/4 v12, 0x0

    .line 1025
    invoke-direct {v2, v5, v11, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1026
    .line 1027
    .line 1028
    const/4 v14, 0x2

    .line 1029
    new-array v11, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 1030
    .line 1031
    const/4 v12, 0x0

    .line 1032
    aput-object v1, v11, v12

    .line 1033
    .line 1034
    const/4 v1, 0x1

    .line 1035
    aput-object v2, v11, v1

    .line 1036
    .line 1037
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v2

    .line 1041
    const-string v11, "folderNotifyNewMailMode"

    .line 1042
    .line 1043
    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    .line 1045
    .line 1046
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1047
    .line 1048
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1049
    .line 1050
    invoke-direct {v11, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1051
    .line 1052
    .line 1053
    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1054
    .line 1055
    .line 1056
    new-array v11, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1057
    .line 1058
    aput-object v2, v11, v12

    .line 1059
    .line 1060
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v2

    .line 1064
    const-string v11, "notifySelfNewMail"

    .line 1065
    .line 1066
    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    .line 1068
    .line 1069
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1070
    .line 1071
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1072
    .line 1073
    const-string v14, ">"

    .line 1074
    .line 1075
    move/from16 v15, v18

    .line 1076
    .line 1077
    invoke-direct {v11, v15, v14}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1081
    .line 1082
    .line 1083
    new-array v11, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1084
    .line 1085
    aput-object v2, v11, v12

    .line 1086
    .line 1087
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    const-string v11, "quotePrefix"

    .line 1092
    .line 1093
    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    .line 1095
    .line 1096
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1097
    .line 1098
    new-instance v11, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1099
    .line 1100
    const-class v14, Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 1101
    .line 1102
    sget-object v15, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_QUOTE_STYLE:Lnet/thunderbird/core/android/account/QuoteStyle;

    .line 1103
    .line 1104
    invoke-direct {v11, v14, v15}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1105
    .line 1106
    .line 1107
    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1108
    .line 1109
    .line 1110
    new-array v11, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1111
    .line 1112
    aput-object v2, v11, v12

    .line 1113
    .line 1114
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v2

    .line 1118
    const-string v11, "quoteStyle"

    .line 1119
    .line 1120
    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1124
    .line 1125
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1126
    .line 1127
    invoke-direct {v11, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1128
    .line 1129
    .line 1130
    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1131
    .line 1132
    .line 1133
    new-array v11, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1134
    .line 1135
    aput-object v2, v11, v12

    .line 1136
    .line 1137
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    const-string v11, "replyAfterQuote"

    .line 1142
    .line 1143
    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    .line 1145
    .line 1146
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1147
    .line 1148
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1149
    .line 1150
    invoke-direct {v11, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1151
    .line 1152
    .line 1153
    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1154
    .line 1155
    .line 1156
    new-array v11, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1157
    .line 1158
    aput-object v2, v11, v12

    .line 1159
    .line 1160
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v2

    .line 1164
    const-string v11, "ring"

    .line 1165
    .line 1166
    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    .line 1168
    .line 1169
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1170
    .line 1171
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1172
    .line 1173
    const-string v14, "content://settings/system/notification_sound"

    .line 1174
    .line 1175
    invoke-direct {v11, v1, v14}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-direct {v2, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1179
    .line 1180
    .line 1181
    new-array v11, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1182
    .line 1183
    aput-object v2, v11, v12

    .line 1184
    .line 1185
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v1

    .line 1189
    const-string v2, "ringtone"

    .line 1190
    .line 1191
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    .line 1193
    .line 1194
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1195
    .line 1196
    new-instance v2, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1197
    .line 1198
    const/4 v15, 0x7

    .line 1199
    invoke-direct {v2, v15, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1200
    .line 1201
    .line 1202
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1203
    .line 1204
    .line 1205
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1206
    .line 1207
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1208
    .line 1209
    const/4 v12, 0x0

    .line 1210
    invoke-direct {v11, v15, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1211
    .line 1212
    .line 1213
    invoke-direct {v2, v5, v10, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1214
    .line 1215
    .line 1216
    const/4 v14, 0x2

    .line 1217
    new-array v11, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 1218
    .line 1219
    const/16 v16, 0x0

    .line 1220
    .line 1221
    aput-object v1, v11, v16

    .line 1222
    .line 1223
    const/16 v19, 0x1

    .line 1224
    .line 1225
    aput-object v2, v11, v19

    .line 1226
    .line 1227
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v1

    .line 1231
    const-string v2, "sentFolderName"

    .line 1232
    .line 1233
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1237
    .line 1238
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    new-instance v11, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1243
    .line 1244
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1245
    .line 1246
    .line 1247
    sget-object v4, Lnet/thunderbird/core/android/account/AccountDefaultsProvider$Companion;->DEFAULT_SORT_TYPE:Lnet/thunderbird/core/android/account/SortType;

    .line 1248
    .line 1249
    const-class v12, Lnet/thunderbird/core/android/account/SortType;

    .line 1250
    .line 1251
    invoke-direct {v11, v12, v4}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1252
    .line 1253
    .line 1254
    invoke-direct {v1, v5, v2, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1255
    .line 1256
    .line 1257
    const/4 v4, 0x1

    .line 1258
    new-array v11, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1259
    .line 1260
    const/4 v12, 0x0

    .line 1261
    aput-object v1, v11, v12

    .line 1262
    .line 1263
    invoke-static {v11}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v1

    .line 1267
    const-string v11, "sortTypeEnum"

    .line 1268
    .line 1269
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    .line 1271
    .line 1272
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1273
    .line 1274
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1275
    .line 1276
    invoke-direct {v11, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1277
    .line 1278
    .line 1279
    invoke-direct {v1, v5, v2, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1280
    .line 1281
    .line 1282
    new-array v2, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1283
    .line 1284
    aput-object v1, v2, v12

    .line 1285
    .line 1286
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v1

    .line 1290
    const-string v2, "sortAscending"

    .line 1291
    .line 1292
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1296
    .line 1297
    new-instance v2, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1298
    .line 1299
    const-class v11, Lnet/thunderbird/core/android/account/ShowPictures;

    .line 1300
    .line 1301
    sget-object v14, Lnet/thunderbird/core/android/account/ShowPictures;->NEVER:Lnet/thunderbird/core/android/account/ShowPictures;

    .line 1302
    .line 1303
    invoke-direct {v2, v11, v14}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1304
    .line 1305
    .line 1306
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1307
    .line 1308
    .line 1309
    new-array v2, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1310
    .line 1311
    aput-object v1, v2, v12

    .line 1312
    .line 1313
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v1

    .line 1317
    const-string v2, "showPicturesEnum"

    .line 1318
    .line 1319
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    .line 1321
    .line 1322
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1323
    .line 1324
    new-instance v2, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1325
    .line 1326
    invoke-direct {v2, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1327
    .line 1328
    .line 1329
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1330
    .line 1331
    .line 1332
    new-array v2, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1333
    .line 1334
    aput-object v1, v2, v12

    .line 1335
    .line 1336
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v1

    .line 1340
    const-string v2, "signatureBeforeQuotedText"

    .line 1341
    .line 1342
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1346
    .line 1347
    new-instance v2, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1348
    .line 1349
    const/4 v15, 0x7

    .line 1350
    invoke-direct {v2, v15, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1351
    .line 1352
    .line 1353
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1354
    .line 1355
    .line 1356
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1357
    .line 1358
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1359
    .line 1360
    const/4 v12, 0x0

    .line 1361
    invoke-direct {v4, v15, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1362
    .line 1363
    .line 1364
    invoke-direct {v2, v5, v10, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1365
    .line 1366
    .line 1367
    const/4 v14, 0x2

    .line 1368
    new-array v4, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 1369
    .line 1370
    const/4 v12, 0x0

    .line 1371
    aput-object v1, v4, v12

    .line 1372
    .line 1373
    const/4 v1, 0x1

    .line 1374
    aput-object v2, v4, v1

    .line 1375
    .line 1376
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v2

    .line 1380
    const-string v4, "spamFolderName"

    .line 1381
    .line 1382
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    .line 1384
    .line 1385
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1386
    .line 1387
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1388
    .line 1389
    invoke-direct {v4, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1390
    .line 1391
    .line 1392
    invoke-direct {v2, v5, v8, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1393
    .line 1394
    .line 1395
    new-array v4, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1396
    .line 1397
    aput-object v2, v4, v12

    .line 1398
    .line 1399
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v2

    .line 1403
    const-string v4, "stripSignature"

    .line 1404
    .line 1405
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    .line 1407
    .line 1408
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1409
    .line 1410
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1411
    .line 1412
    invoke-direct {v4, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1413
    .line 1414
    .line 1415
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1416
    .line 1417
    .line 1418
    new-array v4, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1419
    .line 1420
    aput-object v2, v4, v12

    .line 1421
    .line 1422
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v2

    .line 1426
    const-string v4, "subscribedFoldersOnly"

    .line 1427
    .line 1428
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1432
    .line 1433
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1434
    .line 1435
    invoke-direct {v4, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1436
    .line 1437
    .line 1438
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1439
    .line 1440
    .line 1441
    new-array v4, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1442
    .line 1443
    aput-object v2, v4, v12

    .line 1444
    .line 1445
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v1

    .line 1449
    const-string v2, "syncRemoteDeletions"

    .line 1450
    .line 1451
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    .line 1453
    .line 1454
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1455
    .line 1456
    new-instance v2, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1457
    .line 1458
    const/4 v15, 0x7

    .line 1459
    invoke-direct {v2, v15, v9}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1460
    .line 1461
    .line 1462
    invoke-direct {v1, v5, v3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1463
    .line 1464
    .line 1465
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1466
    .line 1467
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1468
    .line 1469
    const/4 v12, 0x0

    .line 1470
    invoke-direct {v4, v15, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 1471
    .line 1472
    .line 1473
    invoke-direct {v2, v5, v10, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1474
    .line 1475
    .line 1476
    const/4 v14, 0x2

    .line 1477
    new-array v4, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 1478
    .line 1479
    const/16 v16, 0x0

    .line 1480
    .line 1481
    aput-object v1, v4, v16

    .line 1482
    .line 1483
    const/4 v1, 0x1

    .line 1484
    aput-object v2, v4, v1

    .line 1485
    .line 1486
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v2

    .line 1490
    const-string v4, "trashFolderName"

    .line 1491
    .line 1492
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    .line 1494
    .line 1495
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1496
    .line 1497
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1498
    .line 1499
    invoke-direct {v4, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1500
    .line 1501
    .line 1502
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1503
    .line 1504
    .line 1505
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 1506
    .line 1507
    const/16 v8, 0x51

    .line 1508
    .line 1509
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v8

    .line 1513
    const/4 v12, 0x0

    .line 1514
    invoke-direct {v4, v5, v8, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1515
    .line 1516
    .line 1517
    const/4 v14, 0x2

    .line 1518
    new-array v9, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 1519
    .line 1520
    const/16 v16, 0x0

    .line 1521
    .line 1522
    aput-object v2, v9, v16

    .line 1523
    .line 1524
    aput-object v4, v9, v1

    .line 1525
    .line 1526
    invoke-static {v9}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v2

    .line 1530
    const-string/jumbo v4, "useCompression.MOBILE"

    .line 1531
    .line 1532
    .line 1533
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    .line 1535
    .line 1536
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1537
    .line 1538
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1539
    .line 1540
    invoke-direct {v4, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1541
    .line 1542
    .line 1543
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1544
    .line 1545
    .line 1546
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 1547
    .line 1548
    const/4 v12, 0x0

    .line 1549
    invoke-direct {v4, v5, v8, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1550
    .line 1551
    .line 1552
    const/4 v14, 0x2

    .line 1553
    new-array v9, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 1554
    .line 1555
    const/16 v16, 0x0

    .line 1556
    .line 1557
    aput-object v2, v9, v16

    .line 1558
    .line 1559
    aput-object v4, v9, v1

    .line 1560
    .line 1561
    invoke-static {v9}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v2

    .line 1565
    const-string/jumbo v4, "useCompression.OTHER"

    .line 1566
    .line 1567
    .line 1568
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    .line 1570
    .line 1571
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1572
    .line 1573
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1574
    .line 1575
    invoke-direct {v4, v1}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1576
    .line 1577
    .line 1578
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1579
    .line 1580
    .line 1581
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 1582
    .line 1583
    const/4 v12, 0x0

    .line 1584
    invoke-direct {v4, v5, v8, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1585
    .line 1586
    .line 1587
    const/4 v14, 0x2

    .line 1588
    new-array v9, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 1589
    .line 1590
    const/4 v12, 0x0

    .line 1591
    aput-object v2, v9, v12

    .line 1592
    .line 1593
    aput-object v4, v9, v1

    .line 1594
    .line 1595
    invoke-static {v9}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v2

    .line 1599
    const-string/jumbo v4, "useCompression.WIFI"

    .line 1600
    .line 1601
    .line 1602
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1606
    .line 1607
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1608
    .line 1609
    invoke-direct {v4, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1610
    .line 1611
    .line 1612
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1613
    .line 1614
    .line 1615
    new-array v4, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1616
    .line 1617
    aput-object v2, v4, v12

    .line 1618
    .line 1619
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v2

    .line 1623
    const-string/jumbo v4, "vibrate"

    .line 1624
    .line 1625
    .line 1626
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1627
    .line 1628
    .line 1629
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1630
    .line 1631
    new-instance v4, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 1632
    .line 1633
    const v9, 0x7f030049

    .line 1634
    .line 1635
    .line 1636
    invoke-direct {v4, v12, v9}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 1637
    .line 1638
    .line 1639
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1640
    .line 1641
    .line 1642
    new-array v4, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1643
    .line 1644
    aput-object v2, v4, v12

    .line 1645
    .line 1646
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v2

    .line 1650
    const-string/jumbo v4, "vibratePattern"

    .line 1651
    .line 1652
    .line 1653
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    .line 1655
    .line 1656
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .line 1657
    .line 1658
    new-instance v4, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;

    .line 1659
    .line 1660
    const/4 v9, 0x5

    .line 1661
    const/16 v11, 0xa

    .line 1662
    .line 1663
    invoke-direct {v4, v1, v11, v9}, Lcom/fsck/k9/preferences/Settings$IntegerRangeSetting;-><init>(III)V

    .line 1664
    .line 1665
    .line 1666
    invoke-direct {v2, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1667
    .line 1668
    .line 1669
    new-array v3, v1, [Lcom/google/zxing/BinaryBitmap;

    .line 1670
    .line 1671
    aput-object v2, v3, v12

    .line 1672
    .line 1673
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v1

    .line 1677
    const-string/jumbo v2, "vibrateTimes"

    .line 1678
    .line 1679
    .line 1680
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    .line 1682
    .line 1683
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1684
    .line 1685
    const/16 v2, 0x12

    .line 1686
    .line 1687
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v2

    .line 1691
    new-instance v3, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;

    .line 1692
    .line 1693
    const v4, 0x7f03003e

    .line 1694
    .line 1695
    .line 1696
    const/16 v11, 0x19

    .line 1697
    .line 1698
    invoke-direct {v3, v11, v4}, Lcom/fsck/k9/preferences/Settings$FontSizeSetting;-><init>(II)V

    .line 1699
    .line 1700
    .line 1701
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1702
    .line 1703
    .line 1704
    const/4 v4, 0x1

    .line 1705
    new-array v3, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1706
    .line 1707
    const/4 v12, 0x0

    .line 1708
    aput-object v1, v3, v12

    .line 1709
    .line 1710
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1711
    .line 1712
    .line 1713
    move-result-object v1

    .line 1714
    const-string v3, "remoteSearchNumResults"

    .line 1715
    .line 1716
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    .line 1718
    .line 1719
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1720
    .line 1721
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1722
    .line 1723
    invoke-direct {v3, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1724
    .line 1725
    .line 1726
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1727
    .line 1728
    .line 1729
    new-array v2, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1730
    .line 1731
    aput-object v1, v2, v12

    .line 1732
    .line 1733
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v1

    .line 1737
    const-string v2, "remoteSearchFullText"

    .line 1738
    .line 1739
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    .line 1741
    .line 1742
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1743
    .line 1744
    const/16 v2, 0x2a

    .line 1745
    .line 1746
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v2

    .line 1750
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1751
    .line 1752
    invoke-direct {v3, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1753
    .line 1754
    .line 1755
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1756
    .line 1757
    .line 1758
    new-array v2, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1759
    .line 1760
    aput-object v1, v2, v12

    .line 1761
    .line 1762
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v1

    .line 1766
    const-string v2, "notifyContactsMailOnly"

    .line 1767
    .line 1768
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1769
    .line 1770
    .line 1771
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1772
    .line 1773
    const/16 v2, 0x32

    .line 1774
    .line 1775
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v2

    .line 1779
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1780
    .line 1781
    invoke-direct {v3, v4}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1782
    .line 1783
    .line 1784
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1785
    .line 1786
    .line 1787
    new-array v3, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1788
    .line 1789
    aput-object v1, v3, v12

    .line 1790
    .line 1791
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v1

    .line 1795
    const-string v3, "openPgpHideSignOnly"

    .line 1796
    .line 1797
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1798
    .line 1799
    .line 1800
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1801
    .line 1802
    const/16 v3, 0x33

    .line 1803
    .line 1804
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v3

    .line 1808
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1809
    .line 1810
    invoke-direct {v11, v4}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1811
    .line 1812
    .line 1813
    invoke-direct {v1, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1814
    .line 1815
    .line 1816
    new-array v3, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1817
    .line 1818
    aput-object v1, v3, v12

    .line 1819
    .line 1820
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v1

    .line 1824
    const-string v3, "openPgpEncryptSubject"

    .line 1825
    .line 1826
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1827
    .line 1828
    .line 1829
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1830
    .line 1831
    const/16 v3, 0x37

    .line 1832
    .line 1833
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v3

    .line 1837
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1838
    .line 1839
    invoke-direct {v11, v4}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1840
    .line 1841
    .line 1842
    invoke-direct {v1, v5, v3, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1843
    .line 1844
    .line 1845
    new-array v3, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1846
    .line 1847
    aput-object v1, v3, v12

    .line 1848
    .line 1849
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1850
    .line 1851
    .line 1852
    move-result-object v1

    .line 1853
    const-string v3, "openPgpEncryptAllDrafts"

    .line 1854
    .line 1855
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    .line 1857
    .line 1858
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1859
    .line 1860
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1861
    .line 1862
    invoke-direct {v3, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1863
    .line 1864
    .line 1865
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1866
    .line 1867
    .line 1868
    new-array v2, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1869
    .line 1870
    aput-object v1, v2, v12

    .line 1871
    .line 1872
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v1

    .line 1876
    const-string v2, "autocryptMutualMode"

    .line 1877
    .line 1878
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    .line 1880
    .line 1881
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1882
    .line 1883
    const/16 v2, 0x34

    .line 1884
    .line 1885
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v2

    .line 1889
    new-instance v3, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 1890
    .line 1891
    invoke-direct {v3, v4}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 1892
    .line 1893
    .line 1894
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1895
    .line 1896
    .line 1897
    new-array v2, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 1898
    .line 1899
    aput-object v1, v2, v12

    .line 1900
    .line 1901
    invoke-static {v2}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1902
    .line 1903
    .line 1904
    move-result-object v1

    .line 1905
    const-string/jumbo v2, "uploadSentMessages"

    .line 1906
    .line 1907
    .line 1908
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1909
    .line 1910
    .line 1911
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1912
    .line 1913
    const/16 v2, 0x36

    .line 1914
    .line 1915
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1916
    .line 1917
    .line 1918
    move-result-object v2

    .line 1919
    new-instance v3, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1920
    .line 1921
    const-class v4, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1922
    .line 1923
    sget-object v11, Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;->AUTOMATIC:Lnet/thunderbird/feature/mail/folder/api/SpecialFolderSelection;

    .line 1924
    .line 1925
    invoke-direct {v3, v4, v11}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1926
    .line 1927
    .line 1928
    invoke-direct {v1, v5, v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1929
    .line 1930
    .line 1931
    const/4 v3, 0x1

    .line 1932
    new-array v12, v3, [Lcom/google/zxing/BinaryBitmap;

    .line 1933
    .line 1934
    const/4 v14, 0x0

    .line 1935
    aput-object v1, v12, v14

    .line 1936
    .line 1937
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v1

    .line 1941
    const-string v12, "archiveFolderSelection"

    .line 1942
    .line 1943
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    .line 1945
    .line 1946
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1947
    .line 1948
    new-instance v12, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1949
    .line 1950
    invoke-direct {v12, v4, v11}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1951
    .line 1952
    .line 1953
    invoke-direct {v1, v5, v2, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1954
    .line 1955
    .line 1956
    new-array v12, v3, [Lcom/google/zxing/BinaryBitmap;

    .line 1957
    .line 1958
    aput-object v1, v12, v14

    .line 1959
    .line 1960
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v1

    .line 1964
    const-string v12, "draftsFolderSelection"

    .line 1965
    .line 1966
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    .line 1968
    .line 1969
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1970
    .line 1971
    new-instance v12, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1972
    .line 1973
    invoke-direct {v12, v4, v11}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1974
    .line 1975
    .line 1976
    invoke-direct {v1, v5, v2, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1977
    .line 1978
    .line 1979
    new-array v12, v3, [Lcom/google/zxing/BinaryBitmap;

    .line 1980
    .line 1981
    aput-object v1, v12, v14

    .line 1982
    .line 1983
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 1984
    .line 1985
    .line 1986
    move-result-object v1

    .line 1987
    const-string v12, "sentFolderSelection"

    .line 1988
    .line 1989
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1990
    .line 1991
    .line 1992
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 1993
    .line 1994
    new-instance v12, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 1995
    .line 1996
    invoke-direct {v12, v4, v11}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 1997
    .line 1998
    .line 1999
    invoke-direct {v1, v5, v2, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2000
    .line 2001
    .line 2002
    new-array v12, v3, [Lcom/google/zxing/BinaryBitmap;

    .line 2003
    .line 2004
    aput-object v1, v12, v14

    .line 2005
    .line 2006
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v1

    .line 2010
    const-string v12, "spamFolderSelection"

    .line 2011
    .line 2012
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    .line 2014
    .line 2015
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2016
    .line 2017
    new-instance v12, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2018
    .line 2019
    invoke-direct {v12, v4, v11}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2020
    .line 2021
    .line 2022
    invoke-direct {v1, v5, v2, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2023
    .line 2024
    .line 2025
    new-array v4, v3, [Lcom/google/zxing/BinaryBitmap;

    .line 2026
    .line 2027
    aput-object v1, v4, v14

    .line 2028
    .line 2029
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2030
    .line 2031
    .line 2032
    move-result-object v1

    .line 2033
    const-string v4, "trashFolderSelection"

    .line 2034
    .line 2035
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    .line 2037
    .line 2038
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2039
    .line 2040
    const/16 v4, 0x4c

    .line 2041
    .line 2042
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2043
    .line 2044
    .line 2045
    move-result-object v4

    .line 2046
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2047
    .line 2048
    invoke-direct {v11, v14}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2049
    .line 2050
    .line 2051
    invoke-direct {v1, v5, v4, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2052
    .line 2053
    .line 2054
    new-array v4, v3, [Lcom/google/zxing/BinaryBitmap;

    .line 2055
    .line 2056
    aput-object v1, v4, v14

    .line 2057
    .line 2058
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2059
    .line 2060
    .line 2061
    move-result-object v1

    .line 2062
    const-string v4, "ignoreChatMessages"

    .line 2063
    .line 2064
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    .line 2066
    .line 2067
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2068
    .line 2069
    new-instance v4, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2070
    .line 2071
    const-class v11, Lnet/thunderbird/feature/notification/NotificationLight;

    .line 2072
    .line 2073
    sget-object v12, Lnet/thunderbird/feature/notification/NotificationLight;->Disabled:Lnet/thunderbird/feature/notification/NotificationLight;

    .line 2074
    .line 2075
    invoke-direct {v4, v11, v12}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2076
    .line 2077
    .line 2078
    invoke-direct {v1, v5, v7, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2079
    .line 2080
    .line 2081
    new-array v4, v3, [Lcom/google/zxing/BinaryBitmap;

    .line 2082
    .line 2083
    aput-object v1, v4, v14

    .line 2084
    .line 2085
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2086
    .line 2087
    .line 2088
    move-result-object v1

    .line 2089
    const-string v4, "notificationLight"

    .line 2090
    .line 2091
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    .line 2093
    .line 2094
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2095
    .line 2096
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2097
    .line 2098
    invoke-direct {v4, v3}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2099
    .line 2100
    .line 2101
    invoke-direct {v1, v5, v8, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2102
    .line 2103
    .line 2104
    new-array v4, v3, [Lcom/google/zxing/BinaryBitmap;

    .line 2105
    .line 2106
    aput-object v1, v4, v14

    .line 2107
    .line 2108
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2109
    .line 2110
    .line 2111
    move-result-object v1

    .line 2112
    const-string/jumbo v4, "useCompression"

    .line 2113
    .line 2114
    .line 2115
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2116
    .line 2117
    .line 2118
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2119
    .line 2120
    const/16 v4, 0x58

    .line 2121
    .line 2122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2123
    .line 2124
    .line 2125
    move-result-object v4

    .line 2126
    new-instance v11, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2127
    .line 2128
    invoke-direct {v11, v3}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2129
    .line 2130
    .line 2131
    invoke-direct {v1, v5, v4, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2132
    .line 2133
    .line 2134
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    .line 2135
    .line 2136
    const/16 v11, 0x5b

    .line 2137
    .line 2138
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2139
    .line 2140
    .line 2141
    move-result-object v11

    .line 2142
    const/4 v12, 0x0

    .line 2143
    invoke-direct {v4, v5, v11, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2144
    .line 2145
    .line 2146
    const/4 v14, 0x2

    .line 2147
    new-array v12, v14, [Lcom/google/zxing/BinaryBitmap;

    .line 2148
    .line 2149
    const/16 v16, 0x0

    .line 2150
    .line 2151
    aput-object v1, v12, v16

    .line 2152
    .line 2153
    aput-object v4, v12, v3

    .line 2154
    .line 2155
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2156
    .line 2157
    .line 2158
    move-result-object v1

    .line 2159
    const-string v4, "sendClientId"

    .line 2160
    .line 2161
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    .line 2163
    .line 2164
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2165
    .line 2166
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2167
    .line 2168
    invoke-direct {v4, v3}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(Z)V

    .line 2169
    .line 2170
    .line 2171
    invoke-direct {v1, v5, v11, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2172
    .line 2173
    .line 2174
    new-array v4, v3, [Lcom/google/zxing/BinaryBitmap;

    .line 2175
    .line 2176
    aput-object v1, v4, v16

    .line 2177
    .line 2178
    invoke-static {v4}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v1

    .line 2182
    const-string v3, "sendClientInfo"

    .line 2183
    .line 2184
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    .line 2186
    .line 2187
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2188
    .line 2189
    const/16 v3, 0x68

    .line 2190
    .line 2191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2192
    .line 2193
    .line 2194
    move-result-object v3

    .line 2195
    new-instance v4, Lcom/fsck/k9/preferences/Settings$EnumSetting;

    .line 2196
    .line 2197
    const-class v12, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 2198
    .line 2199
    sget-object v14, Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;->MONOGRAM:Lnet/thunderbird/feature/account/storage/profile/AvatarTypeDto;

    .line 2200
    .line 2201
    invoke-direct {v4, v12, v14}, Lcom/fsck/k9/preferences/Settings$EnumSetting;-><init>(Ljava/lang/Class;Ljava/lang/Enum;)V

    .line 2202
    .line 2203
    .line 2204
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2205
    .line 2206
    .line 2207
    const/4 v4, 0x1

    .line 2208
    new-array v12, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 2209
    .line 2210
    const/16 v16, 0x0

    .line 2211
    .line 2212
    aput-object v1, v12, v16

    .line 2213
    .line 2214
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2215
    .line 2216
    .line 2217
    move-result-object v1

    .line 2218
    const-string v12, "avatarType"

    .line 2219
    .line 2220
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    .line 2222
    .line 2223
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2224
    .line 2225
    new-instance v12, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2226
    .line 2227
    const-string v14, "XX"

    .line 2228
    .line 2229
    const/4 v15, 0x7

    .line 2230
    invoke-direct {v12, v15, v14}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 2231
    .line 2232
    .line 2233
    invoke-direct {v1, v5, v3, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2234
    .line 2235
    .line 2236
    new-array v12, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 2237
    .line 2238
    aput-object v1, v12, v16

    .line 2239
    .line 2240
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2241
    .line 2242
    .line 2243
    move-result-object v1

    .line 2244
    const-string v12, "avatarMonogram"

    .line 2245
    .line 2246
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2247
    .line 2248
    .line 2249
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2250
    .line 2251
    new-instance v12, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2252
    .line 2253
    const/4 v14, 0x0

    .line 2254
    invoke-direct {v12, v15, v14}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 2255
    .line 2256
    .line 2257
    invoke-direct {v1, v5, v3, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2258
    .line 2259
    .line 2260
    new-array v12, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 2261
    .line 2262
    aput-object v1, v12, v16

    .line 2263
    .line 2264
    invoke-static {v12}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2265
    .line 2266
    .line 2267
    move-result-object v1

    .line 2268
    const-string v12, "avatarImageUri"

    .line 2269
    .line 2270
    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2271
    .line 2272
    .line 2273
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2274
    .line 2275
    new-instance v12, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2276
    .line 2277
    invoke-direct {v12, v15, v14}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 2278
    .line 2279
    .line 2280
    invoke-direct {v1, v5, v3, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2281
    .line 2282
    .line 2283
    new-array v3, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 2284
    .line 2285
    aput-object v1, v3, v16

    .line 2286
    .line 2287
    invoke-static {v3}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2288
    .line 2289
    .line 2290
    move-result-object v1

    .line 2291
    const-string v3, "avatarIconName"

    .line 2292
    .line 2293
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    .line 2295
    .line 2296
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    .line 2297
    .line 2298
    const/16 v3, 0x6a

    .line 2299
    .line 2300
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v3

    .line 2304
    new-instance v4, Lcom/fsck/k9/preferences/Settings$ColorSetting;

    .line 2305
    .line 2306
    const-string v12, "/"

    .line 2307
    .line 2308
    const/4 v15, 0x7

    .line 2309
    invoke-direct {v4, v15, v12}, Lcom/fsck/k9/preferences/Settings$ColorSetting;-><init>(ILjava/lang/Object;)V

    .line 2310
    .line 2311
    .line 2312
    invoke-direct {v1, v5, v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2313
    .line 2314
    .line 2315
    const/4 v4, 0x1

    .line 2316
    new-array v5, v4, [Lcom/google/zxing/BinaryBitmap;

    .line 2317
    .line 2318
    const/16 v16, 0x0

    .line 2319
    .line 2320
    aput-object v1, v5, v16

    .line 2321
    .line 2322
    invoke-static {v5}, Landroidx/sqlite/SQLite;->versions([Lcom/google/zxing/BinaryBitmap;)Ljava/util/TreeMap;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v1

    .line 2326
    const-string v4, "folderPathDelimiter"

    .line 2327
    .line 2328
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2329
    .line 2330
    .line 2331
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 2332
    .line 2333
    .line 2334
    move-result-object v0

    .line 2335
    sput-object v0, Lcom/fsck/k9/preferences/AccountSettingsDescriptions;->SETTINGS:Ljava/util/Map;

    .line 2336
    .line 2337
    new-instance v0, Ljava/util/HashMap;

    .line 2338
    .line 2339
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2340
    .line 2341
    .line 2342
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2343
    .line 2344
    const/4 v14, 0x2

    .line 2345
    invoke-direct {v1, v14}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2346
    .line 2347
    .line 2348
    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    .line 2350
    .line 2351
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2352
    .line 2353
    const/4 v4, 0x3

    .line 2354
    invoke-direct {v1, v4}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2355
    .line 2356
    .line 2357
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2358
    .line 2359
    .line 2360
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2361
    .line 2362
    const/4 v2, 0x4

    .line 2363
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2364
    .line 2365
    .line 2366
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2367
    .line 2368
    .line 2369
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;

    .line 2370
    .line 2371
    invoke-direct {v1}, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;-><init>()V

    .line 2372
    .line 2373
    .line 2374
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2375
    .line 2376
    .line 2377
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2378
    .line 2379
    invoke-direct {v1, v9}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2380
    .line 2381
    .line 2382
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    .line 2384
    .line 2385
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2386
    .line 2387
    const/4 v2, 0x6

    .line 2388
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2389
    .line 2390
    .line 2391
    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2392
    .line 2393
    .line 2394
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;

    .line 2395
    .line 2396
    new-instance v2, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;

    .line 2397
    .line 2398
    invoke-direct {v2}, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;-><init>()V

    .line 2399
    .line 2400
    .line 2401
    invoke-direct {v1, v2}, Lcom/fsck/k9/preferences/upgrader/AccountSettingsUpgraderTo80;-><init>(Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;)V

    .line 2402
    .line 2403
    .line 2404
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2405
    .line 2406
    .line 2407
    new-instance v1, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;

    .line 2408
    .line 2409
    const/4 v4, 0x1

    .line 2410
    invoke-direct {v1, v4}, Lcom/fsck/k9/preferences/upgrader/ServerSettingsUpgraderTo92;-><init>(I)V

    .line 2411
    .line 2412
    .line 2413
    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2414
    .line 2415
    .line 2416
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 2417
    .line 2418
    .line 2419
    move-result-object v0

    .line 2420
    sput-object v0, Lcom/fsck/k9/preferences/AccountSettingsDescriptions;->UPGRADERS:Ljava/util/Map;

    .line 2421
    .line 2422
    return-void

    .line 2423
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x6
        0xc
        0x18
        0x24
        0x30
        0x3c
    .end array-data
.end method
