.class public final enum Lj$/time/temporal/ChronoUnit;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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

.field public static final synthetic b:[Lj$/time/temporal/ChronoUnit;


# instance fields
.field public final a:Ljava/lang/String;


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
    invoke-static {v1, v2}, Lj$/time/c;->n(J)Lj$/time/c;

    .line 6
    .line 7
    .line 8
    const-string v3, "NANOS"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const-string v5, "Nanos"

    .line 12
    .line 13
    invoke-direct {v0, v3, v4, v5}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    .line 17
    .line 18
    new-instance v3, Lj$/time/temporal/ChronoUnit;

    .line 19
    .line 20
    const-wide/16 v5, 0x3e8

    .line 21
    .line 22
    invoke-static {v5, v6}, Lj$/time/c;->n(J)Lj$/time/c;

    .line 23
    .line 24
    .line 25
    const-string v5, "MICROS"

    .line 26
    .line 27
    const/4 v6, 0x1

    .line 28
    const-string v7, "Micros"

    .line 29
    .line 30
    invoke-direct {v3, v5, v6, v7}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v3, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    .line 34
    .line 35
    new-instance v5, Lj$/time/temporal/ChronoUnit;

    .line 36
    .line 37
    const-wide/32 v7, 0xf4240

    .line 38
    .line 39
    .line 40
    invoke-static {v7, v8}, Lj$/time/c;->n(J)Lj$/time/c;

    .line 41
    .line 42
    .line 43
    const-string v7, "MILLIS"

    .line 44
    .line 45
    const/4 v8, 0x2

    .line 46
    const-string v9, "Millis"

    .line 47
    .line 48
    invoke-direct {v5, v7, v8, v9}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    sput-object v5, Lj$/time/temporal/ChronoUnit;->MILLIS:Lj$/time/temporal/ChronoUnit;

    .line 52
    .line 53
    new-instance v7, Lj$/time/temporal/ChronoUnit;

    .line 54
    .line 55
    invoke-static {v1, v2, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 56
    .line 57
    .line 58
    const-string v1, "SECONDS"

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    const-string v9, "Seconds"

    .line 62
    .line 63
    invoke-direct {v7, v1, v2, v9}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sput-object v7, Lj$/time/temporal/ChronoUnit;->SECONDS:Lj$/time/temporal/ChronoUnit;

    .line 67
    .line 68
    new-instance v1, Lj$/time/temporal/ChronoUnit;

    .line 69
    .line 70
    const-wide/16 v9, 0x3c

    .line 71
    .line 72
    invoke-static {v9, v10, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 73
    .line 74
    .line 75
    const-string v9, "MINUTES"

    .line 76
    .line 77
    const/4 v10, 0x4

    .line 78
    const-string v11, "Minutes"

    .line 79
    .line 80
    invoke-direct {v1, v9, v10, v11}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v1, Lj$/time/temporal/ChronoUnit;->MINUTES:Lj$/time/temporal/ChronoUnit;

    .line 84
    .line 85
    new-instance v9, Lj$/time/temporal/ChronoUnit;

    .line 86
    .line 87
    const-wide/16 v11, 0xe10

    .line 88
    .line 89
    invoke-static {v11, v12, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 90
    .line 91
    .line 92
    const-string v11, "HOURS"

    .line 93
    .line 94
    const/4 v12, 0x5

    .line 95
    const-string v13, "Hours"

    .line 96
    .line 97
    invoke-direct {v9, v11, v12, v13}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    sput-object v9, Lj$/time/temporal/ChronoUnit;->HOURS:Lj$/time/temporal/ChronoUnit;

    .line 101
    .line 102
    new-instance v11, Lj$/time/temporal/ChronoUnit;

    .line 103
    .line 104
    const-wide/32 v13, 0xa8c0

    .line 105
    .line 106
    .line 107
    invoke-static {v13, v14, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 108
    .line 109
    .line 110
    const-string v13, "HALF_DAYS"

    .line 111
    .line 112
    const/4 v14, 0x6

    .line 113
    const-string v15, "HalfDays"

    .line 114
    .line 115
    invoke-direct {v11, v13, v14, v15}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sput-object v11, Lj$/time/temporal/ChronoUnit;->HALF_DAYS:Lj$/time/temporal/ChronoUnit;

    .line 119
    .line 120
    new-instance v13, Lj$/time/temporal/ChronoUnit;

    .line 121
    .line 122
    move/from16 v16, v2

    .line 123
    .line 124
    move-object v15, v3

    .line 125
    const-wide/32 v2, 0x15180

    .line 126
    .line 127
    .line 128
    invoke-static {v2, v3, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 129
    .line 130
    .line 131
    const-string v2, "DAYS"

    .line 132
    .line 133
    const/4 v3, 0x7

    .line 134
    move/from16 v17, v6

    .line 135
    .line 136
    const-string v6, "Days"

    .line 137
    .line 138
    invoke-direct {v13, v2, v3, v6}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    sput-object v13, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 142
    .line 143
    new-instance v2, Lj$/time/temporal/ChronoUnit;

    .line 144
    .line 145
    move v6, v8

    .line 146
    move-object/from16 v18, v9

    .line 147
    .line 148
    const-wide/32 v8, 0x93a80

    .line 149
    .line 150
    .line 151
    invoke-static {v8, v9, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 152
    .line 153
    .line 154
    const-string v8, "WEEKS"

    .line 155
    .line 156
    const/16 v9, 0x8

    .line 157
    .line 158
    move/from16 v19, v3

    .line 159
    .line 160
    const-string v3, "Weeks"

    .line 161
    .line 162
    invoke-direct {v2, v8, v9, v3}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sput-object v2, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    .line 166
    .line 167
    new-instance v3, Lj$/time/temporal/ChronoUnit;

    .line 168
    .line 169
    move/from16 v20, v6

    .line 170
    .line 171
    move-object v8, v7

    .line 172
    const-wide/32 v6, 0x282072

    .line 173
    .line 174
    .line 175
    invoke-static {v6, v7, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 176
    .line 177
    .line 178
    const-string v6, "MONTHS"

    .line 179
    .line 180
    const/16 v7, 0x9

    .line 181
    .line 182
    move/from16 v21, v9

    .line 183
    .line 184
    const-string v9, "Months"

    .line 185
    .line 186
    invoke-direct {v3, v6, v7, v9}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sput-object v3, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 190
    .line 191
    new-instance v6, Lj$/time/temporal/ChronoUnit;

    .line 192
    .line 193
    move/from16 v22, v7

    .line 194
    .line 195
    move-object v9, v8

    .line 196
    const-wide/32 v7, 0x1e18558

    .line 197
    .line 198
    .line 199
    invoke-static {v7, v8, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 200
    .line 201
    .line 202
    const-string v7, "YEARS"

    .line 203
    .line 204
    const/16 v8, 0xa

    .line 205
    .line 206
    move/from16 v23, v10

    .line 207
    .line 208
    const-string v10, "Years"

    .line 209
    .line 210
    invoke-direct {v6, v7, v8, v10}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sput-object v6, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    .line 214
    .line 215
    new-instance v7, Lj$/time/temporal/ChronoUnit;

    .line 216
    .line 217
    move/from16 v24, v8

    .line 218
    .line 219
    move-object v10, v9

    .line 220
    const-wide/32 v8, 0x12cf3570

    .line 221
    .line 222
    .line 223
    invoke-static {v8, v9, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 224
    .line 225
    .line 226
    const-string v8, "DECADES"

    .line 227
    .line 228
    const/16 v9, 0xb

    .line 229
    .line 230
    move/from16 v25, v12

    .line 231
    .line 232
    const-string v12, "Decades"

    .line 233
    .line 234
    invoke-direct {v7, v8, v9, v12}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    sput-object v7, Lj$/time/temporal/ChronoUnit;->DECADES:Lj$/time/temporal/ChronoUnit;

    .line 238
    .line 239
    new-instance v8, Lj$/time/temporal/ChronoUnit;

    .line 240
    .line 241
    move/from16 v26, v9

    .line 242
    .line 243
    move-object v12, v10

    .line 244
    const-wide v9, 0xbc181660L

    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    invoke-static {v9, v10, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 250
    .line 251
    .line 252
    const-string v9, "CENTURIES"

    .line 253
    .line 254
    const/16 v10, 0xc

    .line 255
    .line 256
    move/from16 v27, v14

    .line 257
    .line 258
    const-string v14, "Centuries"

    .line 259
    .line 260
    invoke-direct {v8, v9, v10, v14}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sput-object v8, Lj$/time/temporal/ChronoUnit;->CENTURIES:Lj$/time/temporal/ChronoUnit;

    .line 264
    .line 265
    new-instance v9, Lj$/time/temporal/ChronoUnit;

    .line 266
    .line 267
    move/from16 v28, v10

    .line 268
    .line 269
    move-object v14, v11

    .line 270
    const-wide v10, 0x758f0dfc0L

    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    invoke-static {v10, v11, v4}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 276
    .line 277
    .line 278
    const-string v10, "MILLENNIA"

    .line 279
    .line 280
    const/16 v11, 0xd

    .line 281
    .line 282
    const-string v4, "Millennia"

    .line 283
    .line 284
    invoke-direct {v9, v10, v11, v4}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    .line 286
    .line 287
    sput-object v9, Lj$/time/temporal/ChronoUnit;->MILLENNIA:Lj$/time/temporal/ChronoUnit;

    .line 288
    .line 289
    new-instance v4, Lj$/time/temporal/ChronoUnit;

    .line 290
    .line 291
    move/from16 v30, v11

    .line 292
    .line 293
    move-object v10, v12

    .line 294
    const-wide v11, 0x701ce172277000L

    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    move-object/from16 v31, v0

    .line 300
    .line 301
    const/4 v0, 0x0

    .line 302
    invoke-static {v11, v12, v0}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 303
    .line 304
    .line 305
    const-string v0, "ERAS"

    .line 306
    .line 307
    const/16 v11, 0xe

    .line 308
    .line 309
    const-string v12, "Eras"

    .line 310
    .line 311
    invoke-direct {v4, v0, v11, v12}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    .line 313
    .line 314
    sput-object v4, Lj$/time/temporal/ChronoUnit;->ERAS:Lj$/time/temporal/ChronoUnit;

    .line 315
    .line 316
    new-instance v0, Lj$/time/temporal/ChronoUnit;

    .line 317
    .line 318
    move/from16 v32, v11

    .line 319
    .line 320
    const-wide/32 v11, 0x3b9ac9ff

    .line 321
    .line 322
    .line 323
    move-object/from16 v33, v1

    .line 324
    .line 325
    move-object/from16 v34, v2

    .line 326
    .line 327
    const-wide/32 v1, 0x3b9aca00

    .line 328
    .line 329
    .line 330
    move-object/from16 v35, v3

    .line 331
    .line 332
    move-object/from16 v36, v4

    .line 333
    .line 334
    invoke-static {v11, v12, v1, v2}, Lj$/com/android/tools/r8/a;->C(JJ)J

    .line 335
    .line 336
    .line 337
    move-result-wide v3

    .line 338
    move-object/from16 v37, v5

    .line 339
    .line 340
    move-object/from16 v38, v6

    .line 341
    .line 342
    const-wide v5, 0x7fffffffffffffffL

    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    invoke-static {v5, v6, v3, v4}, Lj$/com/android/tools/r8/a;->Q(JJ)J

    .line 348
    .line 349
    .line 350
    move-result-wide v3

    .line 351
    invoke-static {v11, v12, v1, v2}, Lj$/com/android/tools/r8/a;->P(JJ)J

    .line 352
    .line 353
    .line 354
    move-result-wide v1

    .line 355
    long-to-int v1, v1

    .line 356
    invoke-static {v3, v4, v1}, Lj$/time/c;->m(JI)Lj$/time/c;

    .line 357
    .line 358
    .line 359
    const-string v1, "FOREVER"

    .line 360
    .line 361
    const/16 v2, 0xf

    .line 362
    .line 363
    const-string v3, "Forever"

    .line 364
    .line 365
    invoke-direct {v0, v1, v2, v3}, Lj$/time/temporal/ChronoUnit;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 366
    .line 367
    .line 368
    sput-object v0, Lj$/time/temporal/ChronoUnit;->FOREVER:Lj$/time/temporal/ChronoUnit;

    .line 369
    .line 370
    const/16 v1, 0x10

    .line 371
    .line 372
    new-array v1, v1, [Lj$/time/temporal/ChronoUnit;

    .line 373
    .line 374
    const/16 v29, 0x0

    .line 375
    .line 376
    aput-object v31, v1, v29

    .line 377
    .line 378
    aput-object v15, v1, v17

    .line 379
    .line 380
    aput-object v37, v1, v20

    .line 381
    .line 382
    aput-object v10, v1, v16

    .line 383
    .line 384
    aput-object v33, v1, v23

    .line 385
    .line 386
    aput-object v18, v1, v25

    .line 387
    .line 388
    aput-object v14, v1, v27

    .line 389
    .line 390
    aput-object v13, v1, v19

    .line 391
    .line 392
    aput-object v34, v1, v21

    .line 393
    .line 394
    aput-object v35, v1, v22

    .line 395
    .line 396
    aput-object v38, v1, v24

    .line 397
    .line 398
    aput-object v7, v1, v26

    .line 399
    .line 400
    aput-object v8, v1, v28

    .line 401
    .line 402
    aput-object v9, v1, v30

    .line 403
    .line 404
    aput-object v36, v1, v32

    .line 405
    .line 406
    aput-object v0, v1, v2

    .line 407
    .line 408
    sput-object v1, Lj$/time/temporal/ChronoUnit;->b:[Lj$/time/temporal/ChronoUnit;

    .line 409
    .line 410
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lj$/time/temporal/ChronoUnit;->a:Ljava/lang/String;

    .line 5
    .line 6
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
    sget-object v0, Lj$/time/temporal/ChronoUnit;->b:[Lj$/time/temporal/ChronoUnit;

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
.method public final k(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)J
    .locals 0

    .line 1
    invoke-interface {p1, p2, p0}, Lj$/time/temporal/Temporal;->until(Lj$/time/temporal/Temporal;Lj$/time/temporal/TemporalUnit;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public final m(Lj$/time/temporal/Temporal;J)Lj$/time/temporal/Temporal;
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3, p0}, Lj$/time/temporal/Temporal;->c(JLj$/time/temporal/TemporalUnit;)Lj$/time/temporal/Temporal;

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
