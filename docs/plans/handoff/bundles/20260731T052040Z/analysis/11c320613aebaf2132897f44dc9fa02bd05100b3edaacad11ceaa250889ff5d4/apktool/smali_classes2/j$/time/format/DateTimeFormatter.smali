.class public final Lj$/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final ISO_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE_TIME:Lj$/time/format/DateTimeFormatter;

.field public static final RFC_1123_DATE_TIME:Lj$/time/format/DateTimeFormatter;

.field public static final f:Lj$/time/format/DateTimeFormatter;

.field public static final g:Lj$/time/format/DateTimeFormatter;


# instance fields
.field public final a:Lj$/time/format/d;

.field public final b:Ljava/util/Locale;

.field public final c:Lj$/time/format/c0;

.field public final d:Lj$/time/format/e0;

.field public final e:Lj$/time/chrono/l;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lj$/time/format/v;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 7
    .line 8
    sget-object v2, Lj$/time/format/f0;->EXCEEDS_PAD:Lj$/time/format/f0;

    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    const/16 v4, 0xa

    .line 12
    .line 13
    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/v;->o(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 14
    .line 15
    .line 16
    const/16 v5, 0x2d

    .line 17
    .line 18
    invoke-virtual {v0, v5}, Lj$/time/format/v;->d(C)V

    .line 19
    .line 20
    .line 21
    sget-object v6, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 22
    .line 23
    const/4 v7, 0x2

    .line 24
    invoke-virtual {v0, v6, v7}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v5}, Lj$/time/format/v;->d(C)V

    .line 28
    .line 29
    .line 30
    sget-object v8, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 31
    .line 32
    invoke-virtual {v0, v8, v7}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 33
    .line 34
    .line 35
    sget-object v9, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 36
    .line 37
    sget-object v10, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    .line 38
    .line 39
    invoke-virtual {v0, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/format/DateTimeFormatter;

    .line 44
    .line 45
    new-instance v11, Lj$/time/format/v;

    .line 46
    .line 47
    invoke-direct {v11}, Lj$/time/format/v;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v12, Lj$/time/format/q;->INSENSITIVE:Lj$/time/format/q;

    .line 51
    .line 52
    invoke-virtual {v11, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11, v0}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 56
    .line 57
    .line 58
    sget-object v13, Lj$/time/format/k;->e:Lj$/time/format/k;

    .line 59
    .line 60
    invoke-virtual {v11, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 61
    .line 62
    .line 63
    invoke-virtual {v11, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 64
    .line 65
    .line 66
    new-instance v11, Lj$/time/format/v;

    .line 67
    .line 68
    invoke-direct {v11}, Lj$/time/format/v;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v11, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11, v0}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11}, Lj$/time/format/v;->q()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v11, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    sput-object v11, Lj$/time/format/DateTimeFormatter;->ISO_DATE:Lj$/time/format/DateTimeFormatter;

    .line 88
    .line 89
    new-instance v11, Lj$/time/format/v;

    .line 90
    .line 91
    invoke-direct {v11}, Lj$/time/format/v;-><init>()V

    .line 92
    .line 93
    .line 94
    sget-object v14, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 95
    .line 96
    invoke-virtual {v11, v14, v7}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 97
    .line 98
    .line 99
    const/16 v15, 0x3a

    .line 100
    .line 101
    invoke-virtual {v11, v15}, Lj$/time/format/v;->d(C)V

    .line 102
    .line 103
    .line 104
    sget-object v5, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 105
    .line 106
    invoke-virtual {v11, v5, v7}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11}, Lj$/time/format/v;->q()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11, v15}, Lj$/time/format/v;->d(C)V

    .line 113
    .line 114
    .line 115
    sget-object v15, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 116
    .line 117
    invoke-virtual {v11, v15, v7}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11}, Lj$/time/format/v;->q()V

    .line 121
    .line 122
    .line 123
    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    const/16 v4, 0x9

    .line 127
    .line 128
    move-object/from16 v17, v15

    .line 129
    .line 130
    const/4 v15, 0x1

    .line 131
    invoke-virtual {v11, v7, v3, v4, v15}, Lj$/time/format/v;->b(Lj$/time/temporal/a;IIZ)V

    .line 132
    .line 133
    .line 134
    const/4 v3, 0x0

    .line 135
    invoke-virtual {v11, v9, v3}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    new-instance v7, Lj$/time/format/v;

    .line 140
    .line 141
    invoke-direct {v7}, Lj$/time/format/v;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 145
    .line 146
    .line 147
    invoke-virtual {v7, v4}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v7, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v9, v3}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 154
    .line 155
    .line 156
    new-instance v7, Lj$/time/format/v;

    .line 157
    .line 158
    invoke-direct {v7}, Lj$/time/format/v;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v4}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Lj$/time/format/v;->q()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v9, v3}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 174
    .line 175
    .line 176
    new-instance v7, Lj$/time/format/v;

    .line 177
    .line 178
    invoke-direct {v7}, Lj$/time/format/v;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 182
    .line 183
    .line 184
    invoke-virtual {v7, v0}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 185
    .line 186
    .line 187
    const/16 v0, 0x54

    .line 188
    .line 189
    invoke-virtual {v7, v0}, Lj$/time/format/v;->d(C)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v7, v4}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    new-instance v4, Lj$/time/format/v;

    .line 200
    .line 201
    invoke-direct {v4}, Lj$/time/format/v;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v4, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 205
    .line 206
    .line 207
    invoke-virtual {v4, v0}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 208
    .line 209
    .line 210
    sget-object v7, Lj$/time/format/q;->LENIENT:Lj$/time/format/q;

    .line 211
    .line 212
    invoke-virtual {v4, v7}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 216
    .line 217
    .line 218
    sget-object v11, Lj$/time/format/q;->STRICT:Lj$/time/format/q;

    .line 219
    .line 220
    invoke-virtual {v4, v11}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    sput-object v4, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 228
    .line 229
    new-instance v3, Lj$/time/format/v;

    .line 230
    .line 231
    invoke-direct {v3}, Lj$/time/format/v;-><init>()V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v4}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3}, Lj$/time/format/v;->q()V

    .line 238
    .line 239
    .line 240
    const/16 v4, 0x5b

    .line 241
    .line 242
    invoke-virtual {v3, v4}, Lj$/time/format/v;->d(C)V

    .line 243
    .line 244
    .line 245
    sget-object v15, Lj$/time/format/q;->SENSITIVE:Lj$/time/format/q;

    .line 246
    .line 247
    invoke-virtual {v3, v15}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 248
    .line 249
    .line 250
    new-instance v4, Lj$/time/format/t;

    .line 251
    .line 252
    move-object/from16 v18, v5

    .line 253
    .line 254
    sget-object v5, Lj$/time/format/v;->h:Lj$/desugar/sun/nio/fs/m;

    .line 255
    .line 256
    move-object/from16 v19, v14

    .line 257
    .line 258
    const-string v14, "ZoneRegionId()"

    .line 259
    .line 260
    invoke-direct {v4, v5, v14}, Lj$/time/format/t;-><init>(Lj$/desugar/sun/nio/fs/m;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3, v4}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 264
    .line 265
    .line 266
    const/16 v4, 0x5d

    .line 267
    .line 268
    invoke-virtual {v3, v4}, Lj$/time/format/v;->d(C)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v3, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 272
    .line 273
    .line 274
    new-instance v3, Lj$/time/format/v;

    .line 275
    .line 276
    invoke-direct {v3}, Lj$/time/format/v;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v0}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Lj$/time/format/v;->q()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Lj$/time/format/v;->q()V

    .line 289
    .line 290
    .line 291
    const/16 v0, 0x5b

    .line 292
    .line 293
    invoke-virtual {v3, v0}, Lj$/time/format/v;->d(C)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v15}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 297
    .line 298
    .line 299
    new-instance v0, Lj$/time/format/t;

    .line 300
    .line 301
    invoke-direct {v0, v5, v14}, Lj$/time/format/t;-><init>(Lj$/desugar/sun/nio/fs/m;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v3, v0}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3, v4}, Lj$/time/format/v;->d(C)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 311
    .line 312
    .line 313
    new-instance v0, Lj$/time/format/v;

    .line 314
    .line 315
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 319
    .line 320
    .line 321
    const/4 v3, 0x4

    .line 322
    const/16 v4, 0xa

    .line 323
    .line 324
    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/v;->o(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 325
    .line 326
    .line 327
    const/16 v3, 0x2d

    .line 328
    .line 329
    invoke-virtual {v0, v3}, Lj$/time/format/v;->d(C)V

    .line 330
    .line 331
    .line 332
    sget-object v3, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 333
    .line 334
    const/4 v4, 0x3

    .line 335
    invoke-virtual {v0, v3, v4}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Lj$/time/format/v;->q()V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 345
    .line 346
    .line 347
    new-instance v0, Lj$/time/format/v;

    .line 348
    .line 349
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 353
    .line 354
    .line 355
    sget-object v3, Lj$/time/temporal/i;->c:Lj$/time/temporal/g;

    .line 356
    .line 357
    const/4 v4, 0x4

    .line 358
    const/16 v5, 0xa

    .line 359
    .line 360
    invoke-virtual {v0, v3, v4, v5, v2}, Lj$/time/format/v;->o(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 361
    .line 362
    .line 363
    const-string v2, "-W"

    .line 364
    .line 365
    invoke-virtual {v0, v2}, Lj$/time/format/v;->e(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    sget-object v2, Lj$/time/temporal/i;->b:Lj$/time/temporal/g;

    .line 369
    .line 370
    const/4 v3, 0x2

    .line 371
    invoke-virtual {v0, v2, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 372
    .line 373
    .line 374
    const/16 v3, 0x2d

    .line 375
    .line 376
    invoke-virtual {v0, v3}, Lj$/time/format/v;->d(C)V

    .line 377
    .line 378
    .line 379
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 380
    .line 381
    const/4 v3, 0x1

    .line 382
    invoke-virtual {v0, v2, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0}, Lj$/time/format/v;->q()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 392
    .line 393
    .line 394
    new-instance v0, Lj$/time/format/v;

    .line 395
    .line 396
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 400
    .line 401
    .line 402
    new-instance v3, Lj$/time/format/g;

    .line 403
    .line 404
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, v3}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 408
    .line 409
    .line 410
    const/4 v3, 0x0

    .line 411
    invoke-virtual {v0, v9, v3}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sput-object v0, Lj$/time/format/DateTimeFormatter;->g:Lj$/time/format/DateTimeFormatter;

    .line 416
    .line 417
    new-instance v0, Lj$/time/format/v;

    .line 418
    .line 419
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 423
    .line 424
    .line 425
    const/4 v3, 0x4

    .line 426
    invoke-virtual {v0, v1, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 427
    .line 428
    .line 429
    const/4 v3, 0x2

    .line 430
    invoke-virtual {v0, v6, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v8, v3}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0}, Lj$/time/format/v;->q()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0, v7}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 440
    .line 441
    .line 442
    const-string v3, "+HHMMss"

    .line 443
    .line 444
    const-string v4, "Z"

    .line 445
    .line 446
    invoke-virtual {v0, v3, v4}, Lj$/time/format/v;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v11}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v9, v10}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 453
    .line 454
    .line 455
    new-instance v0, Ljava/util/HashMap;

    .line 456
    .line 457
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 458
    .line 459
    .line 460
    const-wide/16 v3, 0x1

    .line 461
    .line 462
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    const-string v4, "Mon"

    .line 467
    .line 468
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    const-wide/16 v4, 0x2

    .line 472
    .line 473
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    const-string v5, "Tue"

    .line 478
    .line 479
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    const-wide/16 v13, 0x3

    .line 483
    .line 484
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    const-string v9, "Wed"

    .line 489
    .line 490
    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    const-wide/16 v13, 0x4

    .line 494
    .line 495
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 496
    .line 497
    .line 498
    move-result-object v9

    .line 499
    const-string v11, "Thu"

    .line 500
    .line 501
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    const-wide/16 v13, 0x5

    .line 505
    .line 506
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 507
    .line 508
    .line 509
    move-result-object v11

    .line 510
    const-string v13, "Fri"

    .line 511
    .line 512
    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    const-wide/16 v13, 0x6

    .line 516
    .line 517
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 518
    .line 519
    .line 520
    move-result-object v13

    .line 521
    const-string v14, "Sat"

    .line 522
    .line 523
    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    const-wide/16 v14, 0x7

    .line 527
    .line 528
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 529
    .line 530
    .line 531
    move-result-object v14

    .line 532
    const-string v15, "Sun"

    .line 533
    .line 534
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    new-instance v15, Ljava/util/HashMap;

    .line 538
    .line 539
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 540
    .line 541
    .line 542
    move-object/from16 v16, v10

    .line 543
    .line 544
    const-string v10, "Jan"

    .line 545
    .line 546
    invoke-virtual {v15, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    const-string v3, "Feb"

    .line 550
    .line 551
    invoke-virtual {v15, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    const-string v3, "Mar"

    .line 555
    .line 556
    invoke-virtual {v15, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    const-string v3, "Apr"

    .line 560
    .line 561
    invoke-virtual {v15, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    const-string v3, "May"

    .line 565
    .line 566
    invoke-virtual {v15, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    const-string v3, "Jun"

    .line 570
    .line 571
    invoke-virtual {v15, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    const-string v3, "Jul"

    .line 575
    .line 576
    invoke-virtual {v15, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    const-wide/16 v3, 0x8

    .line 580
    .line 581
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 582
    .line 583
    .line 584
    move-result-object v3

    .line 585
    const-string v4, "Aug"

    .line 586
    .line 587
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    const-wide/16 v3, 0x9

    .line 591
    .line 592
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    const-string v4, "Sep"

    .line 597
    .line 598
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    const-wide/16 v3, 0xa

    .line 602
    .line 603
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    const-string v4, "Oct"

    .line 608
    .line 609
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    const-wide/16 v3, 0xb

    .line 613
    .line 614
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    const-string v4, "Nov"

    .line 619
    .line 620
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    const-wide/16 v3, 0xc

    .line 624
    .line 625
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    const-string v4, "Dec"

    .line 630
    .line 631
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    new-instance v3, Lj$/time/format/v;

    .line 635
    .line 636
    invoke-direct {v3}, Lj$/time/format/v;-><init>()V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v3, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 640
    .line 641
    .line 642
    invoke-virtual {v3, v7}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3}, Lj$/time/format/v;->q()V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3, v2, v0}, Lj$/time/format/v;->j(Lj$/time/temporal/a;Ljava/util/Map;)V

    .line 649
    .line 650
    .line 651
    const-string v0, ", "

    .line 652
    .line 653
    invoke-virtual {v3, v0}, Lj$/time/format/v;->e(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual {v3}, Lj$/time/format/v;->p()V

    .line 657
    .line 658
    .line 659
    sget-object v0, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 660
    .line 661
    const/4 v2, 0x2

    .line 662
    const/4 v4, 0x1

    .line 663
    invoke-virtual {v3, v8, v4, v2, v0}, Lj$/time/format/v;->o(Lj$/time/temporal/p;IILj$/time/format/f0;)V

    .line 664
    .line 665
    .line 666
    const/16 v0, 0x20

    .line 667
    .line 668
    invoke-virtual {v3, v0}, Lj$/time/format/v;->d(C)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v3, v6, v15}, Lj$/time/format/v;->j(Lj$/time/temporal/a;Ljava/util/Map;)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v3, v0}, Lj$/time/format/v;->d(C)V

    .line 675
    .line 676
    .line 677
    const/4 v4, 0x4

    .line 678
    invoke-virtual {v3, v1, v4}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v3, v0}, Lj$/time/format/v;->d(C)V

    .line 682
    .line 683
    .line 684
    move-object/from16 v1, v19

    .line 685
    .line 686
    invoke-virtual {v3, v1, v2}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 687
    .line 688
    .line 689
    const/16 v1, 0x3a

    .line 690
    .line 691
    invoke-virtual {v3, v1}, Lj$/time/format/v;->d(C)V

    .line 692
    .line 693
    .line 694
    move-object/from16 v4, v18

    .line 695
    .line 696
    invoke-virtual {v3, v4, v2}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v3}, Lj$/time/format/v;->q()V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v3, v1}, Lj$/time/format/v;->d(C)V

    .line 703
    .line 704
    .line 705
    move-object/from16 v1, v17

    .line 706
    .line 707
    invoke-virtual {v3, v1, v2}, Lj$/time/format/v;->n(Lj$/time/temporal/p;I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v3}, Lj$/time/format/v;->p()V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v3, v0}, Lj$/time/format/v;->d(C)V

    .line 714
    .line 715
    .line 716
    const-string v0, "+HHMM"

    .line 717
    .line 718
    const-string v1, "GMT"

    .line 719
    .line 720
    invoke-virtual {v3, v0, v1}, Lj$/time/format/v;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    sget-object v0, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 724
    .line 725
    move-object/from16 v1, v16

    .line 726
    .line 727
    invoke-virtual {v3, v0, v1}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    sput-object v0, Lj$/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 732
    .line 733
    return-void
.end method

.method public constructor <init>(Lj$/time/format/d;Ljava/util/Locale;Lj$/time/format/c0;Lj$/time/format/e0;Lj$/time/chrono/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "printerParser"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lj$/time/format/d;

    .line 11
    .line 12
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    .line 13
    .line 14
    const-string p1, "locale"

    .line 15
    .line 16
    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/util/Locale;

    .line 21
    .line 22
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 23
    .line 24
    const-string p1, "decimalStyle"

    .line 25
    .line 26
    invoke-static {p3, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lj$/time/format/c0;

    .line 31
    .line 32
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 33
    .line 34
    const-string p1, "resolverStyle"

    .line 35
    .line 36
    invoke-static {p4, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lj$/time/format/e0;

    .line 41
    .line 42
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/e0;

    .line 43
    .line 44
    iput-object p5, p0, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/l;

    .line 45
    .line 46
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lj$/time/format/DateTimeParseException;
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x40

    .line 6
    .line 7
    if-le v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, "..."

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    new-instance v1, Lj$/time/format/DateTimeParseException;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "Text \'"

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "\' could not be parsed: "

    .line 57
    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    return-object v1
.end method

.method public static ofLocalizedDate(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;
    .locals 2

    .line 1
    const-string v0, "dateStyle"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj$/time/format/v;

    .line 7
    .line 8
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, p0, v1}, Lj$/time/format/v;->f(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 16
    .line 17
    sget-object v1, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static ofLocalizedDateTime(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;
    .locals 2

    .line 1
    const-string v0, "dateTimeStyle"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj$/time/format/v;

    .line 7
    .line 8
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0, p0}, Lj$/time/format/v;->f(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 15
    .line 16
    sget-object v1, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static ofLocalizedTime(Lj$/time/format/FormatStyle;)Lj$/time/format/DateTimeFormatter;
    .locals 2

    .line 1
    const-string v0, "timeStyle"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lj$/time/format/v;

    .line 7
    .line 8
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1, p0}, Lj$/time/format/v;->f(Lj$/time/format/FormatStyle;Lj$/time/format/FormatStyle;)V

    .line 13
    .line 14
    .line 15
    sget-object p0, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 16
    .line 17
    sget-object v1, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Lj$/time/format/v;->r(Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;
    .locals 3

    .line 1
    new-instance v0, Lj$/time/format/v;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lj$/time/format/v;->i(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object v1, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, p0, v1, v2}, Lj$/time/format/v;->s(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;
    .locals 2

    .line 21
    new-instance v0, Lj$/time/format/v;

    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    invoke-virtual {v0, p0}, Lj$/time/format/v;->i(Ljava/lang/String;)V

    .line 22
    sget-object p0, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lj$/time/format/v;->s(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/l;)Lj$/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "query"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatter;->c(Ljava/lang/CharSequence;)Lj$/time/format/d0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Lj$/time/format/d0;->F(Lj$/desugar/sun/nio/fs/m;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-static {p1, p0}, Lj$/time/format/DateTimeFormatter;->a(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lj$/time/format/DateTimeParseException;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    throw p0

    .line 26
    :catch_1
    move-exception p0

    .line 27
    throw p0
.end method

.method public final c(Ljava/lang/CharSequence;)Lj$/time/format/d0;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/text/ParsePosition;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const-string v4, "text"

    .line 12
    .line 13
    invoke-static {v1, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const-string v4, "position"

    .line 17
    .line 18
    invoke-static {v2, v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    new-instance v4, Lj$/time/format/w;

    .line 22
    .line 23
    invoke-direct {v4, v0}, Lj$/time/format/w;-><init>(Lj$/time/format/DateTimeFormatter;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    iget-object v6, v0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    .line 31
    .line 32
    invoke-virtual {v6, v4, v1, v5}, Lj$/time/format/d;->n(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    const/4 v6, 0x0

    .line 37
    if-gez v5, :cond_0

    .line 38
    .line 39
    not-int v4, v5

    .line 40
    invoke-virtual {v2, v4}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 41
    .line 42
    .line 43
    move-object v4, v6

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v2, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 46
    .line 47
    .line 48
    :goto_0
    if-eqz v4, :cond_23

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-gez v5, :cond_23

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-ge v5, v7, :cond_1

    .line 65
    .line 66
    goto/16 :goto_12

    .line 67
    .line 68
    :cond_1
    invoke-virtual {v4}, Lj$/time/format/w;->c()Lj$/time/format/d0;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-virtual {v4}, Lj$/time/format/w;->d()Lj$/time/chrono/l;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v8, Lj$/time/format/d0;->c:Lj$/time/chrono/l;

    .line 77
    .line 78
    iget-object v1, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    iget-object v1, v4, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-object v1, v6

    .line 89
    :goto_1
    iput-object v1, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 90
    .line 91
    iget-object v0, v0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/e0;

    .line 92
    .line 93
    iput-object v0, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 94
    .line 95
    invoke-virtual {v8}, Lj$/time/format/d0;->i()V

    .line 96
    .line 97
    .line 98
    iget-object v0, v8, Lj$/time/format/d0;->c:Lj$/time/chrono/l;

    .line 99
    .line 100
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 101
    .line 102
    iget-object v2, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 103
    .line 104
    invoke-interface {v0, v1, v2}, Lj$/time/chrono/l;->U(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/b;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->q(Lj$/time/chrono/b;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v8}, Lj$/time/format/d0;->m()V

    .line 112
    .line 113
    .line 114
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 115
    .line 116
    check-cast v0, Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-lez v0, :cond_d

    .line 123
    .line 124
    :goto_2
    const/16 v0, 0x32

    .line 125
    .line 126
    if-ge v3, v0, :cond_b

    .line 127
    .line 128
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 129
    .line 130
    check-cast v1, Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_b

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, Ljava/util/Map$Entry;

    .line 151
    .line 152
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Lj$/time/temporal/p;

    .line 157
    .line 158
    iget-object v4, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 159
    .line 160
    iget-object v5, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 161
    .line 162
    invoke-interface {v2, v4, v8, v5}, Lj$/time/temporal/p;->o(Ljava/util/Map;Lj$/time/format/d0;Lj$/time/format/e0;)Lj$/time/temporal/TemporalAccessor;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    if-eqz v4, :cond_a

    .line 167
    .line 168
    instance-of v0, v4, Lj$/time/chrono/ChronoZonedDateTime;

    .line 169
    .line 170
    if-eqz v0, :cond_6

    .line 171
    .line 172
    check-cast v4, Lj$/time/chrono/ChronoZonedDateTime;

    .line 173
    .line 174
    iget-object v0, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 175
    .line 176
    if-nez v0, :cond_4

    .line 177
    .line 178
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->L()Lj$/time/ZoneId;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_4
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->L()Lj$/time/ZoneId;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_5

    .line 194
    .line 195
    :goto_3
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->w()Lj$/time/chrono/e;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    goto :goto_4

    .line 200
    :cond_5
    new-instance v0, Lj$/time/DateTimeException;

    .line 201
    .line 202
    iget-object v1, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 203
    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v3, "ChronoZonedDateTime must use the effective parsed zone: "

    .line 207
    .line 208
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0

    .line 222
    :cond_6
    :goto_4
    instance-of v0, v4, Lj$/time/chrono/e;

    .line 223
    .line 224
    if-eqz v0, :cond_7

    .line 225
    .line 226
    check-cast v4, Lj$/time/chrono/e;

    .line 227
    .line 228
    invoke-interface {v4}, Lj$/time/chrono/e;->b()Lj$/time/i;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    sget-object v1, Lj$/time/p;->d:Lj$/time/p;

    .line 233
    .line 234
    invoke-virtual {v8, v0, v1}, Lj$/time/format/d0;->p(Lj$/time/i;Lj$/time/p;)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v4}, Lj$/time/chrono/e;->f()Lj$/time/chrono/b;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->q(Lj$/time/chrono/b;)V

    .line 242
    .line 243
    .line 244
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_7
    instance-of v0, v4, Lj$/time/chrono/b;

    .line 248
    .line 249
    if-eqz v0, :cond_8

    .line 250
    .line 251
    check-cast v4, Lj$/time/chrono/b;

    .line 252
    .line 253
    invoke-virtual {v8, v4}, Lj$/time/format/d0;->q(Lj$/time/chrono/b;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_8
    instance-of v0, v4, Lj$/time/i;

    .line 258
    .line 259
    if-eqz v0, :cond_9

    .line 260
    .line 261
    check-cast v4, Lj$/time/i;

    .line 262
    .line 263
    sget-object v0, Lj$/time/p;->d:Lj$/time/p;

    .line 264
    .line 265
    invoke-virtual {v8, v4, v0}, Lj$/time/format/d0;->p(Lj$/time/i;Lj$/time/p;)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_9
    const-string v0, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    .line 270
    .line 271
    invoke-static {v0}, Lj$/nio/file/m;->k(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-object v6

    .line 275
    :cond_a
    iget-object v4, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 276
    .line 277
    check-cast v4, Ljava/util/HashMap;

    .line 278
    .line 279
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-nez v2, :cond_3

    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_b
    if-eq v3, v0, :cond_c

    .line 287
    .line 288
    if-lez v3, :cond_d

    .line 289
    .line 290
    invoke-virtual {v8}, Lj$/time/format/d0;->i()V

    .line 291
    .line 292
    .line 293
    iget-object v0, v8, Lj$/time/format/d0;->c:Lj$/time/chrono/l;

    .line 294
    .line 295
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 296
    .line 297
    iget-object v2, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 298
    .line 299
    invoke-interface {v0, v1, v2}, Lj$/time/chrono/l;->U(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/b;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->q(Lj$/time/chrono/b;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v8}, Lj$/time/format/d0;->m()V

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_c
    const-string v0, "One of the parsed fields has an incorrectly implemented resolve method"

    .line 311
    .line 312
    invoke-static {v0}, Lj$/nio/file/m;->k(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    return-object v6

    .line 316
    :cond_d
    :goto_6
    iget-object v0, v8, Lj$/time/format/d0;->g:Lj$/time/i;

    .line 317
    .line 318
    const-wide/32 v1, 0xf4240

    .line 319
    .line 320
    .line 321
    const-wide/16 v3, 0x3e8

    .line 322
    .line 323
    const-wide/16 v5, 0x0

    .line 324
    .line 325
    if-nez v0, :cond_17

    .line 326
    .line 327
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 328
    .line 329
    sget-object v7, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 330
    .line 331
    check-cast v0, Ljava/util/HashMap;

    .line 332
    .line 333
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    iget-object v9, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 338
    .line 339
    if-eqz v0, :cond_f

    .line 340
    .line 341
    check-cast v9, Ljava/util/HashMap;

    .line 342
    .line 343
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    check-cast v0, Ljava/lang/Long;

    .line 348
    .line 349
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 350
    .line 351
    .line 352
    move-result-wide v9

    .line 353
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 354
    .line 355
    sget-object v11, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 356
    .line 357
    check-cast v0, Ljava/util/HashMap;

    .line 358
    .line 359
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    iget-object v12, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 364
    .line 365
    if-eqz v0, :cond_e

    .line 366
    .line 367
    mul-long/2addr v9, v3

    .line 368
    check-cast v12, Ljava/util/HashMap;

    .line 369
    .line 370
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    check-cast v0, Ljava/lang/Long;

    .line 375
    .line 376
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 377
    .line 378
    .line 379
    move-result-wide v12

    .line 380
    rem-long/2addr v12, v3

    .line 381
    add-long/2addr v12, v9

    .line 382
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {v8, v7, v11, v0}, Lj$/time/format/d0;->r(Lj$/time/temporal/p;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 387
    .line 388
    .line 389
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 390
    .line 391
    check-cast v0, Ljava/util/HashMap;

    .line 392
    .line 393
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 397
    .line 398
    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 399
    .line 400
    mul-long/2addr v12, v3

    .line 401
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    check-cast v0, Ljava/util/HashMap;

    .line 406
    .line 407
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    goto :goto_7

    .line 411
    :cond_e
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 412
    .line 413
    mul-long/2addr v9, v1

    .line 414
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 415
    .line 416
    .line 417
    move-result-object v7

    .line 418
    check-cast v12, Ljava/util/HashMap;

    .line 419
    .line 420
    invoke-virtual {v12, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    goto :goto_7

    .line 424
    :cond_f
    sget-object v0, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 425
    .line 426
    check-cast v9, Ljava/util/HashMap;

    .line 427
    .line 428
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    move-result v7

    .line 432
    if-eqz v7, :cond_10

    .line 433
    .line 434
    iget-object v7, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 435
    .line 436
    check-cast v7, Ljava/util/HashMap;

    .line 437
    .line 438
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    check-cast v0, Ljava/lang/Long;

    .line 443
    .line 444
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 445
    .line 446
    .line 447
    move-result-wide v9

    .line 448
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 449
    .line 450
    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 451
    .line 452
    mul-long/2addr v9, v3

    .line 453
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 454
    .line 455
    .line 456
    move-result-object v9

    .line 457
    check-cast v0, Ljava/util/HashMap;

    .line 458
    .line 459
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    :cond_10
    :goto_7
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 463
    .line 464
    sget-object v7, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 465
    .line 466
    check-cast v0, Ljava/util/HashMap;

    .line 467
    .line 468
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    check-cast v0, Ljava/lang/Long;

    .line 473
    .line 474
    if-eqz v0, :cond_17

    .line 475
    .line 476
    iget-object v9, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 477
    .line 478
    sget-object v10, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 479
    .line 480
    check-cast v9, Ljava/util/HashMap;

    .line 481
    .line 482
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    check-cast v9, Ljava/lang/Long;

    .line 487
    .line 488
    iget-object v11, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 489
    .line 490
    sget-object v12, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 491
    .line 492
    check-cast v11, Ljava/util/HashMap;

    .line 493
    .line 494
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v11

    .line 498
    check-cast v11, Ljava/lang/Long;

    .line 499
    .line 500
    iget-object v13, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 501
    .line 502
    sget-object v14, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 503
    .line 504
    check-cast v13, Ljava/util/HashMap;

    .line 505
    .line 506
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v13

    .line 510
    check-cast v13, Ljava/lang/Long;

    .line 511
    .line 512
    if-nez v9, :cond_12

    .line 513
    .line 514
    if-nez v11, :cond_11

    .line 515
    .line 516
    if-nez v13, :cond_11

    .line 517
    .line 518
    goto :goto_9

    .line 519
    :cond_11
    :goto_8
    move-wide/from16 p0, v1

    .line 520
    .line 521
    goto/16 :goto_f

    .line 522
    .line 523
    :cond_12
    :goto_9
    if-eqz v9, :cond_13

    .line 524
    .line 525
    if-nez v11, :cond_13

    .line 526
    .line 527
    if-eqz v13, :cond_13

    .line 528
    .line 529
    goto :goto_8

    .line 530
    :cond_13
    if-eqz v9, :cond_14

    .line 531
    .line 532
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 533
    .line 534
    .line 535
    move-result-wide v15

    .line 536
    goto :goto_a

    .line 537
    :cond_14
    move-wide v15, v5

    .line 538
    :goto_a
    if-eqz v11, :cond_15

    .line 539
    .line 540
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 541
    .line 542
    .line 543
    move-result-wide v17

    .line 544
    goto :goto_b

    .line 545
    :cond_15
    move-wide/from16 v17, v5

    .line 546
    .line 547
    :goto_b
    if-eqz v13, :cond_16

    .line 548
    .line 549
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 550
    .line 551
    .line 552
    move-result-wide v19

    .line 553
    goto :goto_c

    .line 554
    :cond_16
    move-wide/from16 v19, v5

    .line 555
    .line 556
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 557
    .line 558
    .line 559
    move-result-wide v21

    .line 560
    move-wide/from16 p0, v1

    .line 561
    .line 562
    move-object v0, v10

    .line 563
    move-object v1, v12

    .line 564
    move-object v2, v14

    .line 565
    move-wide v11, v15

    .line 566
    move-wide/from16 v13, v17

    .line 567
    .line 568
    move-wide/from16 v15, v19

    .line 569
    .line 570
    move-wide/from16 v9, v21

    .line 571
    .line 572
    invoke-virtual/range {v8 .. v16}, Lj$/time/format/d0;->l(JJJJ)V

    .line 573
    .line 574
    .line 575
    iget-object v9, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 576
    .line 577
    check-cast v9, Ljava/util/HashMap;

    .line 578
    .line 579
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    iget-object v7, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 583
    .line 584
    check-cast v7, Ljava/util/HashMap;

    .line 585
    .line 586
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 590
    .line 591
    check-cast v0, Ljava/util/HashMap;

    .line 592
    .line 593
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 597
    .line 598
    check-cast v0, Ljava/util/HashMap;

    .line 599
    .line 600
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .line 602
    .line 603
    goto :goto_d

    .line 604
    :cond_17
    move-wide/from16 p0, v1

    .line 605
    .line 606
    :goto_d
    iget-object v0, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 607
    .line 608
    sget-object v1, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 609
    .line 610
    if-eq v0, v1, :cond_19

    .line 611
    .line 612
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 613
    .line 614
    check-cast v0, Ljava/util/HashMap;

    .line 615
    .line 616
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 617
    .line 618
    .line 619
    move-result v0

    .line 620
    if-lez v0, :cond_19

    .line 621
    .line 622
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 623
    .line 624
    check-cast v0, Ljava/util/HashMap;

    .line 625
    .line 626
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    :cond_18
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 635
    .line 636
    .line 637
    move-result v1

    .line 638
    if-eqz v1, :cond_19

    .line 639
    .line 640
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    check-cast v1, Ljava/util/Map$Entry;

    .line 645
    .line 646
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v2

    .line 650
    check-cast v2, Lj$/time/temporal/p;

    .line 651
    .line 652
    instance-of v7, v2, Lj$/time/temporal/a;

    .line 653
    .line 654
    if-eqz v7, :cond_18

    .line 655
    .line 656
    check-cast v2, Lj$/time/temporal/a;

    .line 657
    .line 658
    invoke-virtual {v2}, Lj$/time/temporal/a;->Z()Z

    .line 659
    .line 660
    .line 661
    move-result v7

    .line 662
    if-eqz v7, :cond_18

    .line 663
    .line 664
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    check-cast v1, Ljava/lang/Long;

    .line 669
    .line 670
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 671
    .line 672
    .line 673
    move-result-wide v9

    .line 674
    invoke-virtual {v2, v9, v10}, Lj$/time/temporal/a;->M(J)V

    .line 675
    .line 676
    .line 677
    goto :goto_e

    .line 678
    :cond_19
    :goto_f
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/b;

    .line 679
    .line 680
    if-eqz v0, :cond_1a

    .line 681
    .line 682
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->h(Lj$/time/temporal/TemporalAccessor;)V

    .line 683
    .line 684
    .line 685
    :cond_1a
    iget-object v0, v8, Lj$/time/format/d0;->g:Lj$/time/i;

    .line 686
    .line 687
    if-eqz v0, :cond_1b

    .line 688
    .line 689
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->h(Lj$/time/temporal/TemporalAccessor;)V

    .line 690
    .line 691
    .line 692
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/b;

    .line 693
    .line 694
    if-eqz v0, :cond_1b

    .line 695
    .line 696
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 697
    .line 698
    check-cast v0, Ljava/util/HashMap;

    .line 699
    .line 700
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    if-lez v0, :cond_1b

    .line 705
    .line 706
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/b;

    .line 707
    .line 708
    iget-object v1, v8, Lj$/time/format/d0;->g:Lj$/time/i;

    .line 709
    .line 710
    invoke-interface {v0, v1}, Lj$/time/chrono/b;->O(Lj$/time/i;)Lj$/time/chrono/e;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->h(Lj$/time/temporal/TemporalAccessor;)V

    .line 715
    .line 716
    .line 717
    :cond_1b
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/b;

    .line 718
    .line 719
    if-eqz v0, :cond_1d

    .line 720
    .line 721
    iget-object v0, v8, Lj$/time/format/d0;->g:Lj$/time/i;

    .line 722
    .line 723
    if-eqz v0, :cond_1d

    .line 724
    .line 725
    iget-object v0, v8, Lj$/time/format/d0;->h:Lj$/time/p;

    .line 726
    .line 727
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 728
    .line 729
    .line 730
    sget-object v1, Lj$/time/p;->d:Lj$/time/p;

    .line 731
    .line 732
    if-ne v0, v1, :cond_1c

    .line 733
    .line 734
    goto :goto_10

    .line 735
    :cond_1c
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/b;

    .line 736
    .line 737
    iget-object v2, v8, Lj$/time/format/d0;->h:Lj$/time/p;

    .line 738
    .line 739
    invoke-interface {v0, v2}, Lj$/time/chrono/b;->T(Lj$/time/temporal/o;)Lj$/time/chrono/b;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    iput-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/b;

    .line 744
    .line 745
    iput-object v1, v8, Lj$/time/format/d0;->h:Lj$/time/p;

    .line 746
    .line 747
    :cond_1d
    :goto_10
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    iget-object v1, v8, Lj$/time/format/d0;->g:Lj$/time/i;

    .line 752
    .line 753
    if-nez v1, :cond_20

    .line 754
    .line 755
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 756
    .line 757
    sget-object v2, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 758
    .line 759
    check-cast v1, Ljava/util/HashMap;

    .line 760
    .line 761
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    if-nez v1, :cond_1e

    .line 766
    .line 767
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 768
    .line 769
    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    .line 770
    .line 771
    check-cast v1, Ljava/util/HashMap;

    .line 772
    .line 773
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    if-nez v1, :cond_1e

    .line 778
    .line 779
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 780
    .line 781
    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 782
    .line 783
    check-cast v1, Ljava/util/HashMap;

    .line 784
    .line 785
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 786
    .line 787
    .line 788
    move-result v1

    .line 789
    if-eqz v1, :cond_20

    .line 790
    .line 791
    :cond_1e
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 792
    .line 793
    sget-object v2, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 794
    .line 795
    check-cast v1, Ljava/util/HashMap;

    .line 796
    .line 797
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    iget-object v5, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 802
    .line 803
    if-eqz v1, :cond_1f

    .line 804
    .line 805
    check-cast v5, Ljava/util/HashMap;

    .line 806
    .line 807
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    check-cast v0, Ljava/lang/Long;

    .line 812
    .line 813
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 814
    .line 815
    .line 816
    move-result-wide v0

    .line 817
    iget-object v2, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 818
    .line 819
    sget-object v5, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 820
    .line 821
    div-long v3, v0, v3

    .line 822
    .line 823
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 824
    .line 825
    .line 826
    move-result-object v3

    .line 827
    check-cast v2, Ljava/util/HashMap;

    .line 828
    .line 829
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    iget-object v2, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 833
    .line 834
    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 835
    .line 836
    div-long v0, v0, p0

    .line 837
    .line 838
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    check-cast v2, Ljava/util/HashMap;

    .line 843
    .line 844
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    goto :goto_11

    .line 848
    :cond_1f
    check-cast v5, Ljava/util/HashMap;

    .line 849
    .line 850
    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 854
    .line 855
    sget-object v2, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 856
    .line 857
    check-cast v1, Ljava/util/HashMap;

    .line 858
    .line 859
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 863
    .line 864
    sget-object v2, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 865
    .line 866
    check-cast v1, Ljava/util/HashMap;

    .line 867
    .line 868
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    :cond_20
    :goto_11
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/b;

    .line 872
    .line 873
    if-eqz v0, :cond_22

    .line 874
    .line 875
    iget-object v0, v8, Lj$/time/format/d0;->g:Lj$/time/i;

    .line 876
    .line 877
    if-eqz v0, :cond_22

    .line 878
    .line 879
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 880
    .line 881
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 882
    .line 883
    check-cast v0, Ljava/util/HashMap;

    .line 884
    .line 885
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    check-cast v0, Ljava/lang/Long;

    .line 890
    .line 891
    if-eqz v0, :cond_21

    .line 892
    .line 893
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    invoke-static {v0}, Lj$/time/ZoneOffset;->i0(I)Lj$/time/ZoneOffset;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    iget-object v1, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/b;

    .line 902
    .line 903
    iget-object v2, v8, Lj$/time/format/d0;->g:Lj$/time/i;

    .line 904
    .line 905
    invoke-interface {v1, v2}, Lj$/time/chrono/b;->O(Lj$/time/i;)Lj$/time/chrono/e;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    invoke-interface {v1, v0}, Lj$/time/chrono/e;->I(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    .line 914
    .line 915
    .line 916
    move-result-wide v0

    .line 917
    iget-object v2, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 918
    .line 919
    sget-object v3, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 920
    .line 921
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    check-cast v2, Ljava/util/HashMap;

    .line 926
    .line 927
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    return-object v8

    .line 931
    :cond_21
    iget-object v0, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 932
    .line 933
    if-eqz v0, :cond_22

    .line 934
    .line 935
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/b;

    .line 936
    .line 937
    iget-object v1, v8, Lj$/time/format/d0;->g:Lj$/time/i;

    .line 938
    .line 939
    invoke-interface {v0, v1}, Lj$/time/chrono/b;->O(Lj$/time/i;)Lj$/time/chrono/e;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    iget-object v1, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 944
    .line 945
    invoke-interface {v0, v1}, Lj$/time/chrono/e;->I(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    .line 950
    .line 951
    .line 952
    move-result-wide v0

    .line 953
    iget-object v2, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 954
    .line 955
    sget-object v3, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 956
    .line 957
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    check-cast v2, Ljava/util/HashMap;

    .line 962
    .line 963
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    .line 965
    .line 966
    :cond_22
    return-object v8

    .line 967
    :cond_23
    :goto_12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 968
    .line 969
    .line 970
    move-result v0

    .line 971
    const/16 v4, 0x40

    .line 972
    .line 973
    if-le v0, v4, :cond_24

    .line 974
    .line 975
    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    new-instance v3, Ljava/lang/StringBuilder;

    .line 984
    .line 985
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    const-string v0, "..."

    .line 992
    .line 993
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v0

    .line 1000
    goto :goto_13

    .line 1001
    :cond_24
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v0

    .line 1005
    :goto_13
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 1006
    .line 1007
    .line 1008
    move-result v3

    .line 1009
    const-string v4, "Text \'"

    .line 1010
    .line 1011
    if-ltz v3, :cond_25

    .line 1012
    .line 1013
    new-instance v3, Lj$/time/format/DateTimeParseException;

    .line 1014
    .line 1015
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 1016
    .line 1017
    .line 1018
    move-result v5

    .line 1019
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    const-string v0, "\' could not be parsed at index "

    .line 1028
    .line 1029
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v0

    .line 1039
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 1040
    .line 1041
    .line 1042
    invoke-direct {v3, v0, v1}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1043
    .line 1044
    .line 1045
    throw v3

    .line 1046
    :cond_25
    new-instance v3, Lj$/time/format/DateTimeParseException;

    .line 1047
    .line 1048
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 1049
    .line 1050
    .line 1051
    move-result v5

    .line 1052
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    .line 1059
    .line 1060
    const-string v0, "\' could not be parsed, unparsed text found at index "

    .line 1061
    .line 1062
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 1073
    .line 1074
    .line 1075
    invoke-direct {v3, v0, v1}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1076
    .line 1077
    .line 1078
    throw v3
.end method

.method public final d()Lj$/time/format/d;
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    .line 2
    .line 3
    iget-boolean v0, p0, Lj$/time/format/d;->b:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lj$/time/format/d;

    .line 9
    .line 10
    iget-object p0, p0, Lj$/time/format/d;->a:[Lj$/time/format/e;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lj$/time/format/d;-><init>([Lj$/time/format/e;Z)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    .line 9
    .line 10
    const-string v2, "temporal"

    .line 11
    .line 12
    invoke-static {p1, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v2, "appendable"

    .line 16
    .line 17
    invoke-static {v0, v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance v2, Lj$/time/format/y;

    .line 21
    .line 22
    invoke-direct {v2, p1, p0}, Lj$/time/format/y;-><init>(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lj$/time/format/d;->k(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    new-instance p1, Lj$/time/DateTimeException;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public parse(Ljava/lang/CharSequence;)Lj$/time/temporal/TemporalAccessor;
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatter;->c(Ljava/lang/CharSequence;)Lj$/time/format/d0;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-static {p1, p0}, Lj$/time/format/DateTimeFormatter;->a(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Lj$/time/format/DateTimeParseException;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    throw p0

    .line 17
    :catch_1
    move-exception p0

    .line 18
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lj$/time/format/d;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "["

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public withLocale(Ljava/util/Locale;)Lj$/time/format/DateTimeFormatter;
    .locals 7

    .line 1
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v1, Lj$/time/format/DateTimeFormatter;

    .line 11
    .line 12
    iget-object v5, p0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/e0;

    .line 13
    .line 14
    iget-object v6, p0, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/l;

    .line 15
    .line 16
    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    .line 17
    .line 18
    iget-object v4, p0, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 19
    .line 20
    move-object v3, p1

    .line 21
    invoke-direct/range {v1 .. v6}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/d;Ljava/util/Locale;Lj$/time/format/c0;Lj$/time/format/e0;Lj$/time/chrono/l;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method
