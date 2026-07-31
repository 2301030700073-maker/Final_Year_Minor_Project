.class public final Lj$/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final ISO_DATE_TIME:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE:Lj$/time/format/DateTimeFormatter;

.field public static final f:Lj$/time/format/DateTimeFormatter;

.field public static final g:Lj$/time/format/DateTimeFormatter;


# instance fields
.field public final a:Lj$/time/format/d;

.field public final b:Ljava/util/Locale;

.field public final c:Lj$/time/format/c0;

.field public final d:Lj$/time/format/e0;

.field public final e:Lj$/time/chrono/a;


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
    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/v;->n(Lj$/time/temporal/n;IILj$/time/format/f0;)V

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
    invoke-virtual {v0, v6, v7}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

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
    invoke-virtual {v0, v8, v7}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 33
    .line 34
    .line 35
    sget-object v9, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 36
    .line 37
    sget-object v10, Lj$/time/chrono/p;->c:Lj$/time/chrono/p;

    .line 38
    .line 39
    invoke-virtual {v0, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Lj$/time/format/DateTimeFormatter;

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
    invoke-virtual {v11, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    sput-object v11, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Lj$/time/format/DateTimeFormatter;

    .line 68
    .line 69
    new-instance v11, Lj$/time/format/v;

    .line 70
    .line 71
    invoke-direct {v11}, Lj$/time/format/v;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11, v0}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v11}, Lj$/time/format/v;->p()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {v11, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 87
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
    invoke-virtual {v11, v14, v7}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

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
    invoke-virtual {v11, v5, v7}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11}, Lj$/time/format/v;->p()V

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
    invoke-virtual {v11, v15, v7}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v11}, Lj$/time/format/v;->p()V

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
    invoke-virtual {v11, v9, v3}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

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
    invoke-virtual {v7, v9, v3}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

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
    invoke-virtual {v7}, Lj$/time/format/v;->p()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v9, v3}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

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
    invoke-virtual {v7, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/format/DateTimeFormatter;

    .line 200
    .line 201
    new-instance v4, Lj$/time/format/v;

    .line 202
    .line 203
    invoke-direct {v4}, Lj$/time/format/v;-><init>()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v4, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v0}, Lj$/time/format/v;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 210
    .line 211
    .line 212
    sget-object v7, Lj$/time/format/q;->LENIENT:Lj$/time/format/q;

    .line 213
    .line 214
    invoke-virtual {v4, v7}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 218
    .line 219
    .line 220
    sget-object v11, Lj$/time/format/q;->STRICT:Lj$/time/format/q;

    .line 221
    .line 222
    invoke-virtual {v4, v11}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 226
    .line 227
    .line 228
    move-result-object v4

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
    invoke-virtual {v3}, Lj$/time/format/v;->p()V

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
    sget-object v5, Lj$/time/format/v;->h:Lj$/time/f;

    .line 255
    .line 256
    move-object/from16 v19, v14

    .line 257
    .line 258
    const-string v14, "ZoneRegionId()"

    .line 259
    .line 260
    invoke-direct {v4, v5, v14}, Lj$/time/format/t;-><init>(Lj$/time/f;Ljava/lang/String;)V

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
    invoke-virtual {v3, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

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
    invoke-virtual {v3}, Lj$/time/format/v;->p()V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 286
    .line 287
    .line 288
    invoke-virtual {v3}, Lj$/time/format/v;->p()V

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
    invoke-direct {v0, v5, v14}, Lj$/time/format/t;-><init>(Lj$/time/f;Ljava/lang/String;)V

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
    invoke-virtual {v3, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    sput-object v0, Lj$/time/format/DateTimeFormatter;->ISO_DATE_TIME:Lj$/time/format/DateTimeFormatter;

    .line 315
    .line 316
    new-instance v0, Lj$/time/format/v;

    .line 317
    .line 318
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 322
    .line 323
    .line 324
    const/4 v3, 0x4

    .line 325
    const/16 v4, 0xa

    .line 326
    .line 327
    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/v;->n(Lj$/time/temporal/n;IILj$/time/format/f0;)V

    .line 328
    .line 329
    .line 330
    const/16 v3, 0x2d

    .line 331
    .line 332
    invoke-virtual {v0, v3}, Lj$/time/format/v;->d(C)V

    .line 333
    .line 334
    .line 335
    sget-object v3, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 336
    .line 337
    const/4 v4, 0x3

    .line 338
    invoke-virtual {v0, v3, v4}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0}, Lj$/time/format/v;->p()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 348
    .line 349
    .line 350
    new-instance v0, Lj$/time/format/v;

    .line 351
    .line 352
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 356
    .line 357
    .line 358
    sget-object v3, Lj$/time/temporal/i;->c:Lj$/time/temporal/g;

    .line 359
    .line 360
    const/4 v4, 0x4

    .line 361
    const/16 v5, 0xa

    .line 362
    .line 363
    invoke-virtual {v0, v3, v4, v5, v2}, Lj$/time/format/v;->n(Lj$/time/temporal/n;IILj$/time/format/f0;)V

    .line 364
    .line 365
    .line 366
    const-string v2, "-W"

    .line 367
    .line 368
    invoke-virtual {v0, v2}, Lj$/time/format/v;->e(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    sget-object v2, Lj$/time/temporal/i;->b:Lj$/time/temporal/g;

    .line 372
    .line 373
    const/4 v3, 0x2

    .line 374
    invoke-virtual {v0, v2, v3}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 375
    .line 376
    .line 377
    const/16 v3, 0x2d

    .line 378
    .line 379
    invoke-virtual {v0, v3}, Lj$/time/format/v;->d(C)V

    .line 380
    .line 381
    .line 382
    sget-object v2, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    .line 383
    .line 384
    const/4 v3, 0x1

    .line 385
    invoke-virtual {v0, v2, v3}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Lj$/time/format/v;->p()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v13}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 395
    .line 396
    .line 397
    new-instance v0, Lj$/time/format/v;

    .line 398
    .line 399
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 403
    .line 404
    .line 405
    new-instance v3, Lj$/time/format/g;

    .line 406
    .line 407
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v3}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 411
    .line 412
    .line 413
    const/4 v3, 0x0

    .line 414
    invoke-virtual {v0, v9, v3}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    sput-object v0, Lj$/time/format/DateTimeFormatter;->g:Lj$/time/format/DateTimeFormatter;

    .line 419
    .line 420
    new-instance v0, Lj$/time/format/v;

    .line 421
    .line 422
    invoke-direct {v0}, Lj$/time/format/v;-><init>()V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 426
    .line 427
    .line 428
    const/4 v3, 0x4

    .line 429
    invoke-virtual {v0, v1, v3}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 430
    .line 431
    .line 432
    const/4 v3, 0x2

    .line 433
    invoke-virtual {v0, v6, v3}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v8, v3}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v0}, Lj$/time/format/v;->p()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0, v7}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 443
    .line 444
    .line 445
    const-string v3, "+HHMMss"

    .line 446
    .line 447
    const-string v4, "Z"

    .line 448
    .line 449
    invoke-virtual {v0, v3, v4}, Lj$/time/format/v;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0, v11}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 453
    .line 454
    .line 455
    invoke-virtual {v0, v9, v10}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 456
    .line 457
    .line 458
    new-instance v0, Ljava/util/HashMap;

    .line 459
    .line 460
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 461
    .line 462
    .line 463
    const-wide/16 v3, 0x1

    .line 464
    .line 465
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    const-string v4, "Mon"

    .line 470
    .line 471
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    const-wide/16 v4, 0x2

    .line 475
    .line 476
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    const-string v5, "Tue"

    .line 481
    .line 482
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    const-wide/16 v13, 0x3

    .line 486
    .line 487
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    const-string v9, "Wed"

    .line 492
    .line 493
    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    const-wide/16 v13, 0x4

    .line 497
    .line 498
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 499
    .line 500
    .line 501
    move-result-object v9

    .line 502
    const-string v11, "Thu"

    .line 503
    .line 504
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    const-wide/16 v13, 0x5

    .line 508
    .line 509
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 510
    .line 511
    .line 512
    move-result-object v11

    .line 513
    const-string v13, "Fri"

    .line 514
    .line 515
    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    const-wide/16 v13, 0x6

    .line 519
    .line 520
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 521
    .line 522
    .line 523
    move-result-object v13

    .line 524
    const-string v14, "Sat"

    .line 525
    .line 526
    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    const-wide/16 v14, 0x7

    .line 530
    .line 531
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 532
    .line 533
    .line 534
    move-result-object v14

    .line 535
    const-string v15, "Sun"

    .line 536
    .line 537
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    new-instance v15, Ljava/util/HashMap;

    .line 541
    .line 542
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 543
    .line 544
    .line 545
    move-object/from16 v16, v10

    .line 546
    .line 547
    const-string v10, "Jan"

    .line 548
    .line 549
    invoke-virtual {v15, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    const-string v3, "Feb"

    .line 553
    .line 554
    invoke-virtual {v15, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    const-string v3, "Mar"

    .line 558
    .line 559
    invoke-virtual {v15, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    const-string v3, "Apr"

    .line 563
    .line 564
    invoke-virtual {v15, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    const-string v3, "May"

    .line 568
    .line 569
    invoke-virtual {v15, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    const-string v3, "Jun"

    .line 573
    .line 574
    invoke-virtual {v15, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    const-string v3, "Jul"

    .line 578
    .line 579
    invoke-virtual {v15, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    const-wide/16 v3, 0x8

    .line 583
    .line 584
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    const-string v4, "Aug"

    .line 589
    .line 590
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    const-wide/16 v3, 0x9

    .line 594
    .line 595
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    const-string v4, "Sep"

    .line 600
    .line 601
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    const-wide/16 v3, 0xa

    .line 605
    .line 606
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    const-string v4, "Oct"

    .line 611
    .line 612
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    const-wide/16 v3, 0xb

    .line 616
    .line 617
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    const-string v4, "Nov"

    .line 622
    .line 623
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    const-wide/16 v3, 0xc

    .line 627
    .line 628
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    const-string v4, "Dec"

    .line 633
    .line 634
    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    new-instance v3, Lj$/time/format/v;

    .line 638
    .line 639
    invoke-direct {v3}, Lj$/time/format/v;-><init>()V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v3, v12}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3, v7}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3}, Lj$/time/format/v;->p()V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3, v2, v0}, Lj$/time/format/v;->i(Lj$/time/temporal/a;Ljava/util/Map;)V

    .line 652
    .line 653
    .line 654
    const-string v0, ", "

    .line 655
    .line 656
    invoke-virtual {v3, v0}, Lj$/time/format/v;->e(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    invoke-virtual {v3}, Lj$/time/format/v;->o()V

    .line 660
    .line 661
    .line 662
    sget-object v0, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 663
    .line 664
    const/4 v2, 0x2

    .line 665
    const/4 v4, 0x1

    .line 666
    invoke-virtual {v3, v8, v4, v2, v0}, Lj$/time/format/v;->n(Lj$/time/temporal/n;IILj$/time/format/f0;)V

    .line 667
    .line 668
    .line 669
    const/16 v0, 0x20

    .line 670
    .line 671
    invoke-virtual {v3, v0}, Lj$/time/format/v;->d(C)V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v3, v6, v15}, Lj$/time/format/v;->i(Lj$/time/temporal/a;Ljava/util/Map;)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v3, v0}, Lj$/time/format/v;->d(C)V

    .line 678
    .line 679
    .line 680
    const/4 v4, 0x4

    .line 681
    invoke-virtual {v3, v1, v4}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v3, v0}, Lj$/time/format/v;->d(C)V

    .line 685
    .line 686
    .line 687
    move-object/from16 v1, v19

    .line 688
    .line 689
    invoke-virtual {v3, v1, v2}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 690
    .line 691
    .line 692
    const/16 v1, 0x3a

    .line 693
    .line 694
    invoke-virtual {v3, v1}, Lj$/time/format/v;->d(C)V

    .line 695
    .line 696
    .line 697
    move-object/from16 v4, v18

    .line 698
    .line 699
    invoke-virtual {v3, v4, v2}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 700
    .line 701
    .line 702
    invoke-virtual {v3}, Lj$/time/format/v;->p()V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v3, v1}, Lj$/time/format/v;->d(C)V

    .line 706
    .line 707
    .line 708
    move-object/from16 v1, v17

    .line 709
    .line 710
    invoke-virtual {v3, v1, v2}, Lj$/time/format/v;->m(Lj$/time/temporal/n;I)V

    .line 711
    .line 712
    .line 713
    invoke-virtual {v3}, Lj$/time/format/v;->o()V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v3, v0}, Lj$/time/format/v;->d(C)V

    .line 717
    .line 718
    .line 719
    const-string v0, "+HHMM"

    .line 720
    .line 721
    const-string v1, "GMT"

    .line 722
    .line 723
    invoke-virtual {v3, v0, v1}, Lj$/time/format/v;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    sget-object v0, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 727
    .line 728
    move-object/from16 v1, v16

    .line 729
    .line 730
    invoke-virtual {v3, v0, v1}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 731
    .line 732
    .line 733
    return-void
.end method

.method public constructor <init>(Lj$/time/format/d;Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/a;)V
    .locals 2

    .line 1
    sget-object v0, Lj$/time/format/c0;->a:Lj$/time/format/c0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "printerParser"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lj$/time/format/d;

    .line 13
    .line 14
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    .line 15
    .line 16
    const-string p1, "locale"

    .line 17
    .line 18
    invoke-static {p2, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/util/Locale;

    .line 23
    .line 24
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 25
    .line 26
    const-string p1, "decimalStyle"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lj$/time/format/c0;

    .line 33
    .line 34
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 35
    .line 36
    const-string p1, "resolverStyle"

    .line 37
    .line 38
    invoke-static {p3, p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lj$/time/format/e0;

    .line 43
    .line 44
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/e0;

    .line 45
    .line 46
    iput-object p4, p0, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/a;

    .line 47
    .line 48
    return-void
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
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lj$/time/format/i;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lj$/time/format/i;-><init>(Lj$/time/format/FormatStyle;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lj$/time/format/v;->c(Lj$/time/format/e;)I

    .line 19
    .line 20
    .line 21
    sget-object p0, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 22
    .line 23
    sget-object v1, Lj$/time/chrono/p;->c:Lj$/time/chrono/p;

    .line 24
    .line 25
    invoke-virtual {v0, p0, v1}, Lj$/time/format/v;->q(Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const-string p0, "Either the date or time style must be non-null"

    .line 31
    .line 32
    invoke-static {p0}, Lj$/time/h;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
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
    invoke-virtual {v0, p0}, Lj$/time/format/v;->h(Ljava/lang/String;)V

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
    invoke-virtual {v0, p0, v1, v2}, Lj$/time/format/v;->r(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

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

    invoke-virtual {v0, p0}, Lj$/time/format/v;->h(Ljava/lang/String;)V

    .line 22
    sget-object p0, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lj$/time/format/v;->r(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/a;)Lj$/time/format/DateTimeFormatter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;Lj$/time/f;)Ljava/lang/Object;
    .locals 4

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
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatter;->b(Ljava/lang/CharSequence;)Lj$/time/format/d0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Lj$/time/format/d0;->i(Lj$/time/f;)Ljava/lang/Object;

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
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/16 v0, 0x40

    .line 26
    .line 27
    if-le p2, v0, :cond_0

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, "..."

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    :goto_0
    new-instance v0, Lj$/time/format/DateTimeParseException;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "Text \'"

    .line 69
    .line 70
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p2, "\' could not be parsed: "

    .line 77
    .line 78
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-direct {v0, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :catch_1
    move-exception p0

    .line 96
    throw p0
.end method

.method public final b(Ljava/lang/CharSequence;)Lj$/time/format/d0;
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
    invoke-virtual {v6, v4, v1, v5}, Lj$/time/format/d;->g(Lj$/time/format/w;Ljava/lang/CharSequence;I)I

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
    invoke-virtual {v4}, Lj$/time/format/w;->d()Lj$/time/chrono/a;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v8, Lj$/time/format/d0;->c:Lj$/time/chrono/a;

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
    move-object v1, v6

    .line 84
    :goto_1
    iput-object v1, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 85
    .line 86
    iget-object v0, v0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/e0;

    .line 87
    .line 88
    iput-object v0, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 89
    .line 90
    invoke-virtual {v8}, Lj$/time/format/d0;->u()V

    .line 91
    .line 92
    .line 93
    iget-object v0, v8, Lj$/time/format/d0;->c:Lj$/time/chrono/a;

    .line 94
    .line 95
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 96
    .line 97
    iget-object v2, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/a;->A(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/ChronoLocalDate;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->z(Lj$/time/chrono/ChronoLocalDate;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8}, Lj$/time/format/d0;->x()V

    .line 107
    .line 108
    .line 109
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 110
    .line 111
    check-cast v0, Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-lez v0, :cond_d

    .line 118
    .line 119
    :goto_2
    const/16 v0, 0x32

    .line 120
    .line 121
    if-ge v3, v0, :cond_b

    .line 122
    .line 123
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 124
    .line 125
    check-cast v1, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_b

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Lj$/time/temporal/n;

    .line 152
    .line 153
    iget-object v4, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 154
    .line 155
    iget-object v5, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 156
    .line 157
    invoke-interface {v2, v4, v8, v5}, Lj$/time/temporal/n;->h(Ljava/util/Map;Lj$/time/format/d0;Lj$/time/format/e0;)Lj$/time/temporal/TemporalAccessor;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v4, :cond_a

    .line 162
    .line 163
    instance-of v0, v4, Lj$/time/chrono/ChronoZonedDateTime;

    .line 164
    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    check-cast v4, Lj$/time/chrono/ChronoZonedDateTime;

    .line 168
    .line 169
    iget-object v0, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 170
    .line 171
    if-nez v0, :cond_4

    .line 172
    .line 173
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->getZone()Lj$/time/ZoneId;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iput-object v0, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->getZone()Lj$/time/ZoneId;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    if-eqz v0, :cond_5

    .line 189
    .line 190
    :goto_3
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->toLocalDateTime()Lj$/time/chrono/ChronoLocalDateTime;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    goto :goto_4

    .line 195
    :cond_5
    new-instance v0, Lj$/time/c;

    .line 196
    .line 197
    iget-object v1, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 198
    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v3, "ChronoZonedDateTime must use the effective parsed zone: "

    .line 202
    .line 203
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_6
    :goto_4
    instance-of v0, v4, Lj$/time/chrono/ChronoLocalDateTime;

    .line 218
    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    check-cast v4, Lj$/time/chrono/ChronoLocalDateTime;

    .line 222
    .line 223
    invoke-interface {v4}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    sget-object v1, Lj$/time/q;->d:Lj$/time/q;

    .line 228
    .line 229
    invoke-virtual {v8, v0, v1}, Lj$/time/format/d0;->y(Lj$/time/LocalTime;Lj$/time/q;)V

    .line 230
    .line 231
    .line 232
    invoke-interface {v4}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalDate()Lj$/time/chrono/ChronoLocalDate;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->z(Lj$/time/chrono/ChronoLocalDate;)V

    .line 237
    .line 238
    .line 239
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_7
    instance-of v0, v4, Lj$/time/chrono/ChronoLocalDate;

    .line 243
    .line 244
    if-eqz v0, :cond_8

    .line 245
    .line 246
    check-cast v4, Lj$/time/chrono/ChronoLocalDate;

    .line 247
    .line 248
    invoke-virtual {v8, v4}, Lj$/time/format/d0;->z(Lj$/time/chrono/ChronoLocalDate;)V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_8
    instance-of v0, v4, Lj$/time/LocalTime;

    .line 253
    .line 254
    if-eqz v0, :cond_9

    .line 255
    .line 256
    check-cast v4, Lj$/time/LocalTime;

    .line 257
    .line 258
    sget-object v0, Lj$/time/q;->d:Lj$/time/q;

    .line 259
    .line 260
    invoke-virtual {v8, v4, v0}, Lj$/time/format/d0;->y(Lj$/time/LocalTime;Lj$/time/q;)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_9
    const-string v0, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    .line 265
    .line 266
    invoke-static {v0}, Lj$/time/h;->k(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-object v6

    .line 270
    :cond_a
    iget-object v4, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 271
    .line 272
    check-cast v4, Ljava/util/HashMap;

    .line 273
    .line 274
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-nez v2, :cond_3

    .line 279
    .line 280
    goto :goto_5

    .line 281
    :cond_b
    if-eq v3, v0, :cond_c

    .line 282
    .line 283
    if-lez v3, :cond_d

    .line 284
    .line 285
    invoke-virtual {v8}, Lj$/time/format/d0;->u()V

    .line 286
    .line 287
    .line 288
    iget-object v0, v8, Lj$/time/format/d0;->c:Lj$/time/chrono/a;

    .line 289
    .line 290
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 291
    .line 292
    iget-object v2, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 293
    .line 294
    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/a;->A(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/ChronoLocalDate;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->z(Lj$/time/chrono/ChronoLocalDate;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8}, Lj$/time/format/d0;->x()V

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :cond_c
    const-string v0, "One of the parsed fields has an incorrectly implemented resolve method"

    .line 306
    .line 307
    invoke-static {v0}, Lj$/time/h;->k(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-object v6

    .line 311
    :cond_d
    :goto_6
    iget-object v0, v8, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 312
    .line 313
    const-wide/32 v1, 0xf4240

    .line 314
    .line 315
    .line 316
    const-wide/16 v3, 0x3e8

    .line 317
    .line 318
    const-wide/16 v5, 0x0

    .line 319
    .line 320
    if-nez v0, :cond_17

    .line 321
    .line 322
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 323
    .line 324
    sget-object v7, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 325
    .line 326
    check-cast v0, Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    iget-object v9, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 333
    .line 334
    if-eqz v0, :cond_f

    .line 335
    .line 336
    check-cast v9, Ljava/util/HashMap;

    .line 337
    .line 338
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    check-cast v0, Ljava/lang/Long;

    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 345
    .line 346
    .line 347
    move-result-wide v9

    .line 348
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 349
    .line 350
    sget-object v11, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 351
    .line 352
    check-cast v0, Ljava/util/HashMap;

    .line 353
    .line 354
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    iget-object v12, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 359
    .line 360
    if-eqz v0, :cond_e

    .line 361
    .line 362
    mul-long/2addr v9, v3

    .line 363
    check-cast v12, Ljava/util/HashMap;

    .line 364
    .line 365
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Ljava/lang/Long;

    .line 370
    .line 371
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 372
    .line 373
    .line 374
    move-result-wide v12

    .line 375
    rem-long/2addr v12, v3

    .line 376
    add-long/2addr v12, v9

    .line 377
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v8, v7, v11, v0}, Lj$/time/format/d0;->A(Lj$/time/temporal/n;Lj$/time/temporal/a;Ljava/lang/Long;)V

    .line 382
    .line 383
    .line 384
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 385
    .line 386
    check-cast v0, Ljava/util/HashMap;

    .line 387
    .line 388
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 392
    .line 393
    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 394
    .line 395
    mul-long/2addr v12, v3

    .line 396
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    check-cast v0, Ljava/util/HashMap;

    .line 401
    .line 402
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_e
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 407
    .line 408
    mul-long/2addr v9, v1

    .line 409
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 410
    .line 411
    .line 412
    move-result-object v7

    .line 413
    check-cast v12, Ljava/util/HashMap;

    .line 414
    .line 415
    invoke-virtual {v12, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_f
    sget-object v0, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 420
    .line 421
    check-cast v9, Ljava/util/HashMap;

    .line 422
    .line 423
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    if-eqz v7, :cond_10

    .line 428
    .line 429
    iget-object v7, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 430
    .line 431
    check-cast v7, Ljava/util/HashMap;

    .line 432
    .line 433
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    check-cast v0, Ljava/lang/Long;

    .line 438
    .line 439
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 440
    .line 441
    .line 442
    move-result-wide v9

    .line 443
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 444
    .line 445
    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 446
    .line 447
    mul-long/2addr v9, v3

    .line 448
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 449
    .line 450
    .line 451
    move-result-object v9

    .line 452
    check-cast v0, Ljava/util/HashMap;

    .line 453
    .line 454
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    :cond_10
    :goto_7
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 458
    .line 459
    sget-object v7, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    .line 460
    .line 461
    check-cast v0, Ljava/util/HashMap;

    .line 462
    .line 463
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    check-cast v0, Ljava/lang/Long;

    .line 468
    .line 469
    if-eqz v0, :cond_17

    .line 470
    .line 471
    iget-object v9, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 472
    .line 473
    sget-object v10, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    .line 474
    .line 475
    check-cast v9, Ljava/util/HashMap;

    .line 476
    .line 477
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v9

    .line 481
    check-cast v9, Ljava/lang/Long;

    .line 482
    .line 483
    iget-object v11, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 484
    .line 485
    sget-object v12, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    .line 486
    .line 487
    check-cast v11, Ljava/util/HashMap;

    .line 488
    .line 489
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v11

    .line 493
    check-cast v11, Ljava/lang/Long;

    .line 494
    .line 495
    iget-object v13, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 496
    .line 497
    sget-object v14, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    .line 498
    .line 499
    check-cast v13, Ljava/util/HashMap;

    .line 500
    .line 501
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v13

    .line 505
    check-cast v13, Ljava/lang/Long;

    .line 506
    .line 507
    if-nez v9, :cond_12

    .line 508
    .line 509
    if-nez v11, :cond_11

    .line 510
    .line 511
    if-nez v13, :cond_11

    .line 512
    .line 513
    goto :goto_9

    .line 514
    :cond_11
    :goto_8
    move-wide/from16 p0, v1

    .line 515
    .line 516
    goto/16 :goto_f

    .line 517
    .line 518
    :cond_12
    :goto_9
    if-eqz v9, :cond_13

    .line 519
    .line 520
    if-nez v11, :cond_13

    .line 521
    .line 522
    if-eqz v13, :cond_13

    .line 523
    .line 524
    goto :goto_8

    .line 525
    :cond_13
    if-eqz v9, :cond_14

    .line 526
    .line 527
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 528
    .line 529
    .line 530
    move-result-wide v15

    .line 531
    goto :goto_a

    .line 532
    :cond_14
    move-wide v15, v5

    .line 533
    :goto_a
    if-eqz v11, :cond_15

    .line 534
    .line 535
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 536
    .line 537
    .line 538
    move-result-wide v17

    .line 539
    goto :goto_b

    .line 540
    :cond_15
    move-wide/from16 v17, v5

    .line 541
    .line 542
    :goto_b
    if-eqz v13, :cond_16

    .line 543
    .line 544
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 545
    .line 546
    .line 547
    move-result-wide v19

    .line 548
    goto :goto_c

    .line 549
    :cond_16
    move-wide/from16 v19, v5

    .line 550
    .line 551
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 552
    .line 553
    .line 554
    move-result-wide v21

    .line 555
    move-wide/from16 p0, v1

    .line 556
    .line 557
    move-object v0, v10

    .line 558
    move-object v1, v12

    .line 559
    move-object v2, v14

    .line 560
    move-wide v11, v15

    .line 561
    move-wide/from16 v13, v17

    .line 562
    .line 563
    move-wide/from16 v15, v19

    .line 564
    .line 565
    move-wide/from16 v9, v21

    .line 566
    .line 567
    invoke-virtual/range {v8 .. v16}, Lj$/time/format/d0;->w(JJJJ)V

    .line 568
    .line 569
    .line 570
    iget-object v9, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 571
    .line 572
    check-cast v9, Ljava/util/HashMap;

    .line 573
    .line 574
    invoke-virtual {v9, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    iget-object v7, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 578
    .line 579
    check-cast v7, Ljava/util/HashMap;

    .line 580
    .line 581
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 585
    .line 586
    check-cast v0, Ljava/util/HashMap;

    .line 587
    .line 588
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 592
    .line 593
    check-cast v0, Ljava/util/HashMap;

    .line 594
    .line 595
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    goto :goto_d

    .line 599
    :cond_17
    move-wide/from16 p0, v1

    .line 600
    .line 601
    :goto_d
    iget-object v0, v8, Lj$/time/format/d0;->e:Lj$/time/format/e0;

    .line 602
    .line 603
    sget-object v1, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 604
    .line 605
    if-eq v0, v1, :cond_19

    .line 606
    .line 607
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 608
    .line 609
    check-cast v0, Ljava/util/HashMap;

    .line 610
    .line 611
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 612
    .line 613
    .line 614
    move-result v0

    .line 615
    if-lez v0, :cond_19

    .line 616
    .line 617
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 618
    .line 619
    check-cast v0, Ljava/util/HashMap;

    .line 620
    .line 621
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    :cond_18
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 630
    .line 631
    .line 632
    move-result v1

    .line 633
    if-eqz v1, :cond_19

    .line 634
    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    check-cast v1, Ljava/util/Map$Entry;

    .line 640
    .line 641
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    check-cast v2, Lj$/time/temporal/n;

    .line 646
    .line 647
    instance-of v7, v2, Lj$/time/temporal/a;

    .line 648
    .line 649
    if-eqz v7, :cond_18

    .line 650
    .line 651
    check-cast v2, Lj$/time/temporal/a;

    .line 652
    .line 653
    invoke-virtual {v2}, Lj$/time/temporal/a;->q()Z

    .line 654
    .line 655
    .line 656
    move-result v7

    .line 657
    if-eqz v7, :cond_18

    .line 658
    .line 659
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    check-cast v1, Ljava/lang/Long;

    .line 664
    .line 665
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 666
    .line 667
    .line 668
    move-result-wide v9

    .line 669
    invoke-virtual {v2, v9, v10}, Lj$/time/temporal/a;->o(J)V

    .line 670
    .line 671
    .line 672
    goto :goto_e

    .line 673
    :cond_19
    :goto_f
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 674
    .line 675
    if-eqz v0, :cond_1a

    .line 676
    .line 677
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->k(Lj$/time/temporal/TemporalAccessor;)V

    .line 678
    .line 679
    .line 680
    :cond_1a
    iget-object v0, v8, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 681
    .line 682
    if-eqz v0, :cond_1b

    .line 683
    .line 684
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->k(Lj$/time/temporal/TemporalAccessor;)V

    .line 685
    .line 686
    .line 687
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 688
    .line 689
    if-eqz v0, :cond_1b

    .line 690
    .line 691
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 692
    .line 693
    check-cast v0, Ljava/util/HashMap;

    .line 694
    .line 695
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 696
    .line 697
    .line 698
    move-result v0

    .line 699
    if-lez v0, :cond_1b

    .line 700
    .line 701
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 702
    .line 703
    iget-object v1, v8, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 704
    .line 705
    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->r(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-virtual {v8, v0}, Lj$/time/format/d0;->k(Lj$/time/temporal/TemporalAccessor;)V

    .line 710
    .line 711
    .line 712
    :cond_1b
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 713
    .line 714
    if-eqz v0, :cond_1d

    .line 715
    .line 716
    iget-object v1, v8, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 717
    .line 718
    if-eqz v1, :cond_1d

    .line 719
    .line 720
    iget-object v1, v8, Lj$/time/format/d0;->h:Lj$/time/q;

    .line 721
    .line 722
    sget-object v2, Lj$/time/q;->d:Lj$/time/q;

    .line 723
    .line 724
    if-ne v1, v2, :cond_1c

    .line 725
    .line 726
    goto :goto_10

    .line 727
    :cond_1c
    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->t(Lj$/time/temporal/m;)Lj$/time/chrono/ChronoLocalDate;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    iput-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 732
    .line 733
    iput-object v2, v8, Lj$/time/format/d0;->h:Lj$/time/q;

    .line 734
    .line 735
    :cond_1d
    :goto_10
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    iget-object v1, v8, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 740
    .line 741
    if-nez v1, :cond_20

    .line 742
    .line 743
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 744
    .line 745
    sget-object v2, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 746
    .line 747
    check-cast v1, Ljava/util/HashMap;

    .line 748
    .line 749
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    if-nez v1, :cond_1e

    .line 754
    .line 755
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 756
    .line 757
    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

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
    sget-object v2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

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
    if-eqz v1, :cond_20

    .line 778
    .line 779
    :cond_1e
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 780
    .line 781
    sget-object v2, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

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
    iget-object v5, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 790
    .line 791
    if-eqz v1, :cond_1f

    .line 792
    .line 793
    check-cast v5, Ljava/util/HashMap;

    .line 794
    .line 795
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    check-cast v0, Ljava/lang/Long;

    .line 800
    .line 801
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 802
    .line 803
    .line 804
    move-result-wide v0

    .line 805
    iget-object v2, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 806
    .line 807
    sget-object v5, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 808
    .line 809
    div-long v3, v0, v3

    .line 810
    .line 811
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    check-cast v2, Ljava/util/HashMap;

    .line 816
    .line 817
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    iget-object v2, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 821
    .line 822
    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 823
    .line 824
    div-long v0, v0, p0

    .line 825
    .line 826
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 827
    .line 828
    .line 829
    move-result-object v0

    .line 830
    check-cast v2, Ljava/util/HashMap;

    .line 831
    .line 832
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    goto :goto_11

    .line 836
    :cond_1f
    check-cast v5, Ljava/util/HashMap;

    .line 837
    .line 838
    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 842
    .line 843
    sget-object v2, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    .line 844
    .line 845
    check-cast v1, Ljava/util/HashMap;

    .line 846
    .line 847
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    iget-object v1, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 851
    .line 852
    sget-object v2, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    .line 853
    .line 854
    check-cast v1, Ljava/util/HashMap;

    .line 855
    .line 856
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    :cond_20
    :goto_11
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 860
    .line 861
    if-eqz v0, :cond_22

    .line 862
    .line 863
    iget-object v0, v8, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 864
    .line 865
    if-eqz v0, :cond_22

    .line 866
    .line 867
    iget-object v0, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 868
    .line 869
    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 870
    .line 871
    check-cast v0, Ljava/util/HashMap;

    .line 872
    .line 873
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    check-cast v0, Ljava/lang/Long;

    .line 878
    .line 879
    if-eqz v0, :cond_21

    .line 880
    .line 881
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 882
    .line 883
    .line 884
    move-result v0

    .line 885
    invoke-static {v0}, Lj$/time/ZoneOffset;->D(I)Lj$/time/ZoneOffset;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    iget-object v1, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 890
    .line 891
    iget-object v2, v8, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 892
    .line 893
    invoke-interface {v1, v2}, Lj$/time/chrono/ChronoLocalDate;->r(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    invoke-interface {v1, v0}, Lj$/time/chrono/ChronoLocalDateTime;->p(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    .line 902
    .line 903
    .line 904
    move-result-wide v0

    .line 905
    iget-object v2, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 906
    .line 907
    sget-object v3, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 908
    .line 909
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    check-cast v2, Ljava/util/HashMap;

    .line 914
    .line 915
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    return-object v8

    .line 919
    :cond_21
    iget-object v0, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 920
    .line 921
    if-eqz v0, :cond_22

    .line 922
    .line 923
    iget-object v0, v8, Lj$/time/format/d0;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 924
    .line 925
    iget-object v1, v8, Lj$/time/format/d0;->g:Lj$/time/LocalTime;

    .line 926
    .line 927
    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->r(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    iget-object v1, v8, Lj$/time/format/d0;->b:Lj$/time/ZoneId;

    .line 932
    .line 933
    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDateTime;->p(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    .line 934
    .line 935
    .line 936
    move-result-object v0

    .line 937
    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    .line 938
    .line 939
    .line 940
    move-result-wide v0

    .line 941
    iget-object v2, v8, Lj$/time/format/d0;->a:Ljava/util/Map;

    .line 942
    .line 943
    sget-object v3, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    .line 944
    .line 945
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    check-cast v2, Ljava/util/HashMap;

    .line 950
    .line 951
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    .line 953
    .line 954
    :cond_22
    return-object v8

    .line 955
    :cond_23
    :goto_12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 956
    .line 957
    .line 958
    move-result v0

    .line 959
    const/16 v4, 0x40

    .line 960
    .line 961
    if-le v0, v4, :cond_24

    .line 962
    .line 963
    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    new-instance v3, Ljava/lang/StringBuilder;

    .line 972
    .line 973
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .line 975
    .line 976
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    const-string v0, "..."

    .line 980
    .line 981
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v0

    .line 988
    goto :goto_13

    .line 989
    :cond_24
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    :goto_13
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 994
    .line 995
    .line 996
    move-result v3

    .line 997
    const-string v4, "Text \'"

    .line 998
    .line 999
    if-ltz v3, :cond_25

    .line 1000
    .line 1001
    new-instance v3, Lj$/time/format/DateTimeParseException;

    .line 1002
    .line 1003
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 1004
    .line 1005
    .line 1006
    move-result v5

    .line 1007
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    const-string v0, "\' could not be parsed at index "

    .line 1016
    .line 1017
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v0

    .line 1027
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 1028
    .line 1029
    .line 1030
    invoke-direct {v3, v0, v1}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1031
    .line 1032
    .line 1033
    throw v3

    .line 1034
    :cond_25
    new-instance v3, Lj$/time/format/DateTimeParseException;

    .line 1035
    .line 1036
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 1037
    .line 1038
    .line 1039
    move-result v5

    .line 1040
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    const-string v0, "\' could not be parsed, unparsed text found at index "

    .line 1049
    .line 1050
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 1061
    .line 1062
    .line 1063
    invoke-direct {v3, v0, v1}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1064
    .line 1065
    .line 1066
    throw v3
.end method

.method public final c()Lj$/time/format/d;
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
    invoke-virtual {v1, v2, v0}, Lj$/time/format/d;->f(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
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
    new-instance p1, Lj$/time/c;

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
