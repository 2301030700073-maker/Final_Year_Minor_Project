.class public Lj$/time/format/b0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final a:Lj$/util/concurrent/ConcurrentHashMap;

.field public static final b:Lj$/time/format/z;

.field public static final c:Lj$/time/format/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/high16 v1, 0x3f400000    # 0.75f

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/16 v3, 0x10

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lj$/time/format/b0;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    new-instance v0, Lj$/time/format/z;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lj$/time/format/b0;->b:Lj$/time/format/z;

    .line 19
    .line 20
    new-instance v0, Lj$/time/format/b0;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lj$/time/format/b0;->c:Lj$/time/format/b0;

    .line 26
    .line 27
    return-void
.end method

.method public static a(Lj$/time/temporal/p;Ljava/util/Locale;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 6
    .line 7
    invoke-direct {v2, v0, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v3, Lj$/time/format/b0;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    if-nez v4, :cond_11

    .line 17
    .line 18
    new-instance v4, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v5, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-ne v0, v5, :cond_3

    .line 27
    .line 28
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    new-instance v5, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move v7, v6

    .line 47
    :goto_0
    array-length v8, v0

    .line 48
    if-ge v7, v8, :cond_1

    .line 49
    .line 50
    aget-object v8, v0, v7

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-nez v8, :cond_0

    .line 57
    .line 58
    int-to-long v8, v7

    .line 59
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    aget-object v11, v0, v7

    .line 64
    .line 65
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    aget-object v9, v0, v7

    .line 73
    .line 74
    invoke-virtual {v9, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    sget-object v0, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 99
    .line 100
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    sget-object v0, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 104
    .line 105
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    sget-object v0, Lj$/time/format/g0;->NARROW:Lj$/time/format/g0;

    .line 109
    .line 110
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    :cond_2
    new-instance v0, Lj$/time/format/a0;

    .line 114
    .line 115
    invoke-direct {v0, v4}, Lj$/time/format/a0;-><init>(Ljava/util/Map;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_3
    sget-object v5, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 121
    .line 122
    const-wide/16 v7, 0x1

    .line 123
    .line 124
    if-ne v0, v5, :cond_6

    .line 125
    .line 126
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    array-length v0, v0

    .line 135
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 136
    .line 137
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 138
    .line 139
    .line 140
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 141
    .line 142
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 143
    .line 144
    .line 145
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 146
    .line 147
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 148
    .line 149
    .line 150
    move-wide v11, v7

    .line 151
    :goto_1
    int-to-long v13, v0

    .line 152
    cmp-long v13, v11, v13

    .line 153
    .line 154
    if-gtz v13, :cond_4

    .line 155
    .line 156
    const-string v13, "LLLL"

    .line 157
    .line 158
    invoke-static {v11, v12, v13, v1}, Lj$/com/android/tools/r8/a;->q(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v13

    .line 162
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    invoke-interface {v5, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    invoke-virtual {v13, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 174
    .line 175
    .line 176
    move-result v15

    .line 177
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    .line 178
    .line 179
    .line 180
    move-result v15

    .line 181
    invoke-virtual {v13, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-interface {v9, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    const-string v13, "LLL"

    .line 189
    .line 190
    invoke-static {v11, v12, v13, v1}, Lj$/com/android/tools/r8/a;->q(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    invoke-interface {v10, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    add-long/2addr v11, v7

    .line 202
    goto :goto_1

    .line 203
    :cond_4
    if-lez v0, :cond_5

    .line 204
    .line 205
    sget-object v0, Lj$/time/format/g0;->FULL_STANDALONE:Lj$/time/format/g0;

    .line 206
    .line 207
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    sget-object v0, Lj$/time/format/g0;->NARROW_STANDALONE:Lj$/time/format/g0;

    .line 211
    .line 212
    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    sget-object v0, Lj$/time/format/g0;->SHORT_STANDALONE:Lj$/time/format/g0;

    .line 216
    .line 217
    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    sget-object v0, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 221
    .line 222
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    sget-object v0, Lj$/time/format/g0;->NARROW:Lj$/time/format/g0;

    .line 226
    .line 227
    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    sget-object v0, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 231
    .line 232
    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :cond_5
    new-instance v0, Lj$/time/format/a0;

    .line 236
    .line 237
    invoke-direct {v0, v4}, Lj$/time/format/a0;-><init>(Ljava/util/Map;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_7

    .line 241
    .line 242
    :cond_6
    sget-object v5, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 243
    .line 244
    if-ne v0, v5, :cond_c

    .line 245
    .line 246
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    array-length v0, v0

    .line 255
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 256
    .line 257
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 258
    .line 259
    .line 260
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 261
    .line 262
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 263
    .line 264
    .line 265
    new-instance v10, Ljava/util/LinkedHashMap;

    .line 266
    .line 267
    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 268
    .line 269
    .line 270
    sget-object v11, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 271
    .line 272
    if-eq v1, v11, :cond_8

    .line 273
    .line 274
    sget-object v11, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 275
    .line 276
    if-ne v1, v11, :cond_7

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_7
    move v11, v6

    .line 280
    goto :goto_3

    .line 281
    :cond_8
    :goto_2
    const/4 v11, 0x1

    .line 282
    :goto_3
    move-wide v12, v7

    .line 283
    :goto_4
    int-to-long v14, v0

    .line 284
    cmp-long v14, v12, v14

    .line 285
    .line 286
    if-gtz v14, :cond_a

    .line 287
    .line 288
    const-string v14, "cccc"

    .line 289
    .line 290
    invoke-static {v12, v13, v14, v1}, Lj$/com/android/tools/r8/a;->p(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v14

    .line 294
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 295
    .line 296
    .line 297
    move-result-object v15

    .line 298
    invoke-interface {v5, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 302
    .line 303
    .line 304
    move-result-object v15

    .line 305
    if-eqz v11, :cond_9

    .line 306
    .line 307
    move-wide/from16 v16, v7

    .line 308
    .line 309
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    invoke-virtual {v14, v7}, Ljava/lang/String;->codePointBefore(I)I

    .line 314
    .line 315
    .line 316
    move-result v7

    .line 317
    new-instance v8, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    goto :goto_5

    .line 331
    :cond_9
    move-wide/from16 v16, v7

    .line 332
    .line 333
    invoke-virtual {v14, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    invoke-virtual {v14, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v7

    .line 345
    :goto_5
    invoke-interface {v9, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    const-string v7, "ccc"

    .line 349
    .line 350
    invoke-static {v12, v13, v7, v1}, Lj$/com/android/tools/r8/a;->p(JLjava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    invoke-interface {v10, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    add-long v12, v12, v16

    .line 362
    .line 363
    move-wide/from16 v7, v16

    .line 364
    .line 365
    goto :goto_4

    .line 366
    :cond_a
    if-lez v0, :cond_b

    .line 367
    .line 368
    sget-object v0, Lj$/time/format/g0;->FULL_STANDALONE:Lj$/time/format/g0;

    .line 369
    .line 370
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    sget-object v0, Lj$/time/format/g0;->NARROW_STANDALONE:Lj$/time/format/g0;

    .line 374
    .line 375
    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    sget-object v0, Lj$/time/format/g0;->SHORT_STANDALONE:Lj$/time/format/g0;

    .line 379
    .line 380
    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    sget-object v0, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 384
    .line 385
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    sget-object v0, Lj$/time/format/g0;->NARROW:Lj$/time/format/g0;

    .line 389
    .line 390
    invoke-virtual {v4, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    sget-object v0, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 394
    .line 395
    invoke-virtual {v4, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    :cond_b
    new-instance v0, Lj$/time/format/a0;

    .line 399
    .line 400
    invoke-direct {v0, v4}, Lj$/time/format/a0;-><init>(Ljava/util/Map;)V

    .line 401
    .line 402
    .line 403
    goto :goto_7

    .line 404
    :cond_c
    sget-object v5, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    .line 405
    .line 406
    if-ne v0, v5, :cond_10

    .line 407
    .line 408
    invoke-static {v1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    new-instance v1, Ljava/util/HashMap;

    .line 413
    .line 414
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 415
    .line 416
    .line 417
    new-instance v5, Ljava/util/HashMap;

    .line 418
    .line 419
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    move v7, v6

    .line 427
    :goto_6
    array-length v8, v0

    .line 428
    if-ge v7, v8, :cond_e

    .line 429
    .line 430
    aget-object v8, v0, v7

    .line 431
    .line 432
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    if-nez v8, :cond_d

    .line 437
    .line 438
    int-to-long v8, v7

    .line 439
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 440
    .line 441
    .line 442
    move-result-object v10

    .line 443
    aget-object v11, v0, v7

    .line 444
    .line 445
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    aget-object v9, v0, v7

    .line 453
    .line 454
    invoke-virtual {v9, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 455
    .line 456
    .line 457
    move-result v10

    .line 458
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    .line 459
    .line 460
    .line 461
    move-result v10

    .line 462
    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 470
    .line 471
    goto :goto_6

    .line 472
    :cond_e
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-nez v0, :cond_f

    .line 477
    .line 478
    sget-object v0, Lj$/time/format/g0;->FULL:Lj$/time/format/g0;

    .line 479
    .line 480
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    sget-object v0, Lj$/time/format/g0;->SHORT:Lj$/time/format/g0;

    .line 484
    .line 485
    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    sget-object v0, Lj$/time/format/g0;->NARROW:Lj$/time/format/g0;

    .line 489
    .line 490
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    :cond_f
    new-instance v0, Lj$/time/format/a0;

    .line 494
    .line 495
    invoke-direct {v0, v4}, Lj$/time/format/a0;-><init>(Ljava/util/Map;)V

    .line 496
    .line 497
    .line 498
    goto :goto_7

    .line 499
    :cond_10
    const-string v0, ""

    .line 500
    .line 501
    :goto_7
    invoke-interface {v3, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    return-object v0

    .line 509
    :cond_11
    return-object v4
.end method


# virtual methods
.method public b(Lj$/time/chrono/l;Lj$/time/temporal/p;JLj$/time/format/g0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    instance-of p1, p2, Lj$/time/temporal/a;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    :cond_0
    move-object p1, p0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :goto_0
    invoke-virtual/range {p1 .. p6}, Lj$/time/format/b0;->c(Lj$/time/temporal/p;JLj$/time/format/g0;Ljava/util/Locale;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public c(Lj$/time/temporal/p;JLj$/time/format/g0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p5}, Lj$/time/format/b0;->a(Lj$/time/temporal/p;Ljava/util/Locale;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Lj$/time/format/a0;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    check-cast p0, Lj$/time/format/a0;

    .line 10
    .line 11
    invoke-virtual {p0, p2, p3, p4}, Lj$/time/format/a0;->a(JLj$/time/format/g0;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public d(Lj$/time/chrono/l;Lj$/time/temporal/p;Lj$/time/format/g0;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    instance-of p1, p2, Lj$/time/temporal/a;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lj$/time/format/b0;->e(Lj$/time/temporal/p;Lj$/time/format/g0;Ljava/util/Locale;)Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public e(Lj$/time/temporal/p;Lj$/time/format/g0;Ljava/util/Locale;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-static {p1, p3}, Lj$/time/format/b0;->a(Lj$/time/temporal/p;Ljava/util/Locale;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Lj$/time/format/a0;

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast p0, Lj$/time/format/a0;

    .line 11
    .line 12
    iget-object p0, p0, Lj$/time/format/a0;->b:Ljava/util/Map;

    .line 13
    .line 14
    check-cast p0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/List;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_0
    return-object p3
.end method
