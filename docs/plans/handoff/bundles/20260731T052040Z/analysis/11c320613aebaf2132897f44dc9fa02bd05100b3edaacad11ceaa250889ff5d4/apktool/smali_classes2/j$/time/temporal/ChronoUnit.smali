.class public final enum Lj$/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lj$/time/temporal/TemporalUnit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj$/time/temporal/ChronoUnit;",
        ">;",
        "Lj$/time/temporal/TemporalUnit;"
    }
.end annotation


# static fields
.field public static final enum CENTURIES:Lj$/time/temporal/ChronoUnit;

.field public static final enum DAYS:Lj$/time/temporal/ChronoUnit;

.field public static final enum DECADES:Lj$/time/temporal/ChronoUnit;

.field public static final enum ERAS:Lj$/time/temporal/ChronoUnit;

.field public static final enum FOREVER:Lj$/time/temporal/ChronoUnit;

.field public static final enum HALF_DAYS:Lj$/time/temporal/ChronoUnit;

.field public static final enum HOURS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MICROS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MILLENNIA:Lj$/time/temporal/ChronoUnit;

.field public static final enum MILLIS:Lj$/time/temporal/ChronoUnit;

.field public static final enum MINUTES:Lj$/time/temporal/ChronoUnit;

.field public static final enum MONTHS:Lj$/time/temporal/ChronoUnit;

.field public static final enum NANOS:Lj$/time/temporal/ChronoUnit;

.field public static final enum SECONDS:Lj$/time/temporal/ChronoUnit;

.field public static final enum WEEKS:Lj$/time/temporal/ChronoUnit;

.field public static final enum YEARS:Lj$/time/temporal/ChronoUnit;

.field public static final synthetic c:[Lj$/time/temporal/ChronoUnit;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj$/time/d;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 1
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-static {v1, v2}, Lj$/time/d;->o(J)Lj$/time/d;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v4, "NANOS"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v6, "Nanos"

    .line 13
    .line 14
    invoke-direct {v0, v4, v5, v6, v3}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    .line 18
    .line 19
    new-instance v3, Lj$/time/temporal/ChronoUnit;

    .line 20
    .line 21
    const-wide/16 v6, 0x3e8

    .line 22
    .line 23
    invoke-static {v6, v7}, Lj$/time/d;->o(J)Lj$/time/d;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    const-string v6, "MICROS"

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    const-string v8, "Micros"

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v8, v4}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    .line 36
    .line 37
    new-instance v4, Lj$/time/temporal/ChronoUnit;

    .line 38
    .line 39
    const-wide/32 v8, 0xf4240

    .line 40
    .line 41
    .line 42
    invoke-static {v8, v9}, Lj$/time/d;->o(J)Lj$/time/d;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v8, "MILLIS"

    .line 47
    .line 48
    const/4 v9, 0x2

    .line 49
    const-string v10, "Millis"

    .line 50
    .line 51
    invoke-direct {v4, v8, v9, v10, v6}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 52
    .line 53
    .line 54
    sput-object v4, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    .line 55
    .line 56
    new-instance v6, Lj$/time/temporal/ChronoUnit;

    .line 57
    .line 58
    const-string v8, "Seconds"

    .line 59
    .line 60
    invoke-static {v1, v2, v5}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "SECONDS"

    .line 65
    .line 66
    const/4 v10, 0x3

    .line 67
    invoke-direct {v6, v2, v10, v8, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 68
    .line 69
    .line 70
    sput-object v6, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    .line 71
    .line 72
    new-instance v1, Lj$/time/temporal/ChronoUnit;

    .line 73
    .line 74
    const-wide/16 v11, 0x3c

    .line 75
    .line 76
    invoke-static {v11, v12, v5}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v8, "MINUTES"

    .line 81
    .line 82
    const/4 v11, 0x4

    .line 83
    const-string v12, "Minutes"

    .line 84
    .line 85
    invoke-direct {v1, v8, v11, v12, v2}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 86
    .line 87
    .line 88
    sput-object v1, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    .line 89
    .line 90
    new-instance v2, Lj$/time/temporal/ChronoUnit;

    .line 91
    .line 92
    const-wide/16 v12, 0xe10

    .line 93
    .line 94
    invoke-static {v12, v13, v5}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    const-string v12, "HOURS"

    .line 99
    .line 100
    const/4 v13, 0x5

    .line 101
    const-string v14, "Hours"

    .line 102
    .line 103
    invoke-direct {v2, v12, v13, v14, v8}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 104
    .line 105
    .line 106
    sput-object v2, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    .line 107
    .line 108
    new-instance v8, Lj$/time/temporal/ChronoUnit;

    .line 109
    .line 110
    const-wide/32 v14, 0xa8c0

    .line 111
    .line 112
    .line 113
    invoke-static {v14, v15, v5}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 114
    .line 115
    .line 116
    move-result-object v12

    .line 117
    const-string v14, "HALF_DAYS"

    .line 118
    .line 119
    const/4 v15, 0x6

    .line 120
    move/from16 v16, v7

    .line 121
    .line 122
    const-string v7, "HalfDays"

    .line 123
    .line 124
    invoke-direct {v8, v14, v15, v7, v12}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 125
    .line 126
    .line 127
    sput-object v8, Lj$/time/temporal/ChronoUnit;->HALF_DAYS:Lj$/time/temporal/ChronoUnit;

    .line 128
    .line 129
    new-instance v7, Lj$/time/temporal/ChronoUnit;

    .line 130
    .line 131
    move v12, v9

    .line 132
    move v14, v10

    .line 133
    const-wide/32 v9, 0x15180

    .line 134
    .line 135
    .line 136
    invoke-static {v9, v10, v5}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    const-string v10, "DAYS"

    .line 141
    .line 142
    move/from16 v17, v11

    .line 143
    .line 144
    const/4 v11, 0x7

    .line 145
    move/from16 v18, v12

    .line 146
    .line 147
    const-string v12, "Days"

    .line 148
    .line 149
    invoke-direct {v7, v10, v11, v12, v9}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 150
    .line 151
    .line 152
    sput-object v7, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 153
    .line 154
    new-instance v9, Lj$/time/temporal/ChronoUnit;

    .line 155
    .line 156
    move v10, v11

    .line 157
    const-wide/32 v11, 0x93a80

    .line 158
    .line 159
    .line 160
    invoke-static {v11, v12, v5}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    const-string v12, "WEEKS"

    .line 165
    .line 166
    move/from16 v19, v10

    .line 167
    .line 168
    const/16 v10, 0x8

    .line 169
    .line 170
    move/from16 v20, v13

    .line 171
    .line 172
    const-string v13, "Weeks"

    .line 173
    .line 174
    invoke-direct {v9, v12, v10, v13, v11}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 175
    .line 176
    .line 177
    sput-object v9, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 178
    .line 179
    new-instance v11, Lj$/time/temporal/ChronoUnit;

    .line 180
    .line 181
    const-wide/32 v12, 0x282072

    .line 182
    .line 183
    .line 184
    invoke-static {v12, v13, v5}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    const-string v13, "MONTHS"

    .line 189
    .line 190
    move/from16 v21, v10

    .line 191
    .line 192
    const/16 v10, 0x9

    .line 193
    .line 194
    move/from16 v22, v14

    .line 195
    .line 196
    const-string v14, "Months"

    .line 197
    .line 198
    invoke-direct {v11, v13, v10, v14, v12}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 199
    .line 200
    .line 201
    sput-object v11, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 202
    .line 203
    new-instance v12, Lj$/time/temporal/ChronoUnit;

    .line 204
    .line 205
    const-wide/32 v13, 0x1e18558

    .line 206
    .line 207
    .line 208
    invoke-static {v13, v14, v5}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    const-string v14, "YEARS"

    .line 213
    .line 214
    move/from16 v23, v10

    .line 215
    .line 216
    const/16 v10, 0xa

    .line 217
    .line 218
    move/from16 v24, v15

    .line 219
    .line 220
    const-string v15, "Years"

    .line 221
    .line 222
    invoke-direct {v12, v14, v10, v15, v13}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 223
    .line 224
    .line 225
    sput-object v12, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 226
    .line 227
    new-instance v13, Lj$/time/temporal/ChronoUnit;

    .line 228
    .line 229
    const-wide/32 v14, 0x12cf3570

    .line 230
    .line 231
    .line 232
    invoke-static {v14, v15, v5}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 233
    .line 234
    .line 235
    move-result-object v14

    .line 236
    const-string v15, "DECADES"

    .line 237
    .line 238
    move/from16 v25, v10

    .line 239
    .line 240
    const/16 v10, 0xb

    .line 241
    .line 242
    const-string v5, "Decades"

    .line 243
    .line 244
    invoke-direct {v13, v15, v10, v5, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 245
    .line 246
    .line 247
    sput-object v13, Lj$/time/temporal/ChronoUnit;->DECADES:Lj$/time/temporal/ChronoUnit;

    .line 248
    .line 249
    new-instance v5, Lj$/time/temporal/ChronoUnit;

    .line 250
    .line 251
    const-wide v14, 0xbc181660L

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    move/from16 v27, v10

    .line 257
    .line 258
    const/4 v10, 0x0

    .line 259
    invoke-static {v14, v15, v10}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 260
    .line 261
    .line 262
    move-result-object v14

    .line 263
    const-string v15, "CENTURIES"

    .line 264
    .line 265
    const/16 v10, 0xc

    .line 266
    .line 267
    move-object/from16 v28, v0

    .line 268
    .line 269
    const-string v0, "Centuries"

    .line 270
    .line 271
    invoke-direct {v5, v15, v10, v0, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 272
    .line 273
    .line 274
    sput-object v5, Lj$/time/temporal/ChronoUnit;->CENTURIES:Lj$/time/temporal/ChronoUnit;

    .line 275
    .line 276
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    .line 277
    .line 278
    const-wide v14, 0x758f0dfc0L

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    move/from16 v29, v10

    .line 284
    .line 285
    const/4 v10, 0x0

    .line 286
    invoke-static {v14, v15, v10}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 287
    .line 288
    .line 289
    move-result-object v14

    .line 290
    const-string v15, "MILLENNIA"

    .line 291
    .line 292
    const/16 v10, 0xd

    .line 293
    .line 294
    move-object/from16 v30, v1

    .line 295
    .line 296
    const-string v1, "Millennia"

    .line 297
    .line 298
    invoke-direct {v0, v15, v10, v1, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 299
    .line 300
    .line 301
    sput-object v0, Lj$/time/temporal/ChronoUnit;->MILLENNIA:Lj$/time/temporal/ChronoUnit;

    .line 302
    .line 303
    new-instance v1, Lj$/time/temporal/ChronoUnit;

    .line 304
    .line 305
    const-wide v14, 0x701ce172277000L

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    move/from16 v31, v10

    .line 311
    .line 312
    const/4 v10, 0x0

    .line 313
    invoke-static {v14, v15, v10}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 314
    .line 315
    .line 316
    move-result-object v14

    .line 317
    const-string v10, "ERAS"

    .line 318
    .line 319
    const/16 v15, 0xe

    .line 320
    .line 321
    move-object/from16 v32, v0

    .line 322
    .line 323
    const-string v0, "Eras"

    .line 324
    .line 325
    invoke-direct {v1, v10, v15, v0, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 326
    .line 327
    .line 328
    sput-object v1, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    .line 329
    .line 330
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    .line 331
    .line 332
    move-object v14, v1

    .line 333
    move-object v10, v2

    .line 334
    const-wide/32 v1, 0x3b9ac9ff

    .line 335
    .line 336
    .line 337
    move-object/from16 v33, v3

    .line 338
    .line 339
    move-object/from16 v34, v4

    .line 340
    .line 341
    const-wide/32 v3, 0x3b9aca00

    .line 342
    .line 343
    .line 344
    move-object/from16 v36, v5

    .line 345
    .line 346
    move-object/from16 v35, v6

    .line 347
    .line 348
    invoke-static {v1, v2, v3, v4}, Lj$/com/android/tools/r8/a;->E(JJ)J

    .line 349
    .line 350
    .line 351
    move-result-wide v5

    .line 352
    move-object/from16 v38, v7

    .line 353
    .line 354
    move-object/from16 v37, v8

    .line 355
    .line 356
    const-wide v7, 0x7fffffffffffffffL

    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    invoke-static {v7, v8, v5, v6}, Lj$/com/android/tools/r8/a;->S(JJ)J

    .line 362
    .line 363
    .line 364
    move-result-wide v5

    .line 365
    invoke-static {v1, v2, v3, v4}, Lj$/com/android/tools/r8/a;->R(JJ)J

    .line 366
    .line 367
    .line 368
    move-result-wide v1

    .line 369
    long-to-int v1, v1

    .line 370
    invoke-static {v5, v6, v1}, Lj$/time/d;->n(JI)Lj$/time/d;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    const-string v2, "FOREVER"

    .line 375
    .line 376
    const/16 v3, 0xf

    .line 377
    .line 378
    const-string v4, "Forever"

    .line 379
    .line 380
    invoke-direct {v0, v2, v3, v4, v1}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V

    .line 381
    .line 382
    .line 383
    sput-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 384
    .line 385
    const/16 v1, 0x10

    .line 386
    .line 387
    new-array v1, v1, [Lj$/time/temporal/ChronoUnit;

    .line 388
    .line 389
    const/16 v26, 0x0

    .line 390
    .line 391
    aput-object v28, v1, v26

    .line 392
    .line 393
    aput-object v33, v1, v16

    .line 394
    .line 395
    aput-object v34, v1, v18

    .line 396
    .line 397
    aput-object v35, v1, v22

    .line 398
    .line 399
    aput-object v30, v1, v17

    .line 400
    .line 401
    aput-object v10, v1, v20

    .line 402
    .line 403
    aput-object v37, v1, v24

    .line 404
    .line 405
    aput-object v38, v1, v19

    .line 406
    .line 407
    aput-object v9, v1, v21

    .line 408
    .line 409
    aput-object v11, v1, v23

    .line 410
    .line 411
    aput-object v12, v1, v25

    .line 412
    .line 413
    aput-object v13, v1, v27

    .line 414
    .line 415
    aput-object v36, v1, v29

    .line 416
    .line 417
    aput-object v32, v1, v31

    .line 418
    .line 419
    aput-object v14, v1, v15

    .line 420
    .line 421
    aput-object v0, v1, v3

    .line 422
    .line 423
    sput-object v1, Lj$/time/temporal/ChronoUnit;->c:[Lj$/time/temporal/ChronoUnit;

    .line 424
    .line 425
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lj$/time/temporal/ChronoUnit;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lj$/time/temporal/ChronoUnit;->b:Lj$/time/d;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/ChronoUnit;
    .locals 1

    .line 1
    const-class v0, Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lj$/time/temporal/ChronoUnit;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lj$/time/temporal/ChronoUnit;
    .locals 1

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->c:[Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lj$/time/temporal/ChronoUnit;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lj$/time/temporal/ChronoUnit;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDuration()Lj$/time/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/temporal/ChronoUnit;->b:Lj$/time/d;

    .line 2
    .line 3
    return-object p0
.end method

.method public isDateBased()Z
    .locals 1

    .line 1
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 10
    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method public final k(Lj$/time/temporal/l;J)Lj$/time/temporal/l;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/l;->d(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/l;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/temporal/ChronoUnit;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
