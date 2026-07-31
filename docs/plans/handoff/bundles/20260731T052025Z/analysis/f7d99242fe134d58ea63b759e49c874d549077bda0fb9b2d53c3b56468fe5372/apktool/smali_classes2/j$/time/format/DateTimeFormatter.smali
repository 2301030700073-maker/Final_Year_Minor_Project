.class public final Lj$/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final g:Lj$/time/format/DateTimeFormatter;

.field public static final h:Lj$/time/format/DateTimeFormatter;

.field public static final i:Lj$/time/format/DateTimeFormatter;

.field public static final j:Lj$/time/format/DateTimeFormatter;


# instance fields
.field public final a:Lj$/time/format/d;

.field public final b:Ljava/util/Locale;

.field public final c:Lj$/time/format/t;

.field public final d:Lj$/time/format/v;

.field public final e:Lj$/time/chrono/j;

.field public final f:Lj$/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lj$/time/temporal/ChronoField;->YEAR:Lj$/time/temporal/ChronoField;

    .line 7
    .line 8
    sget-object v2, Lj$/time/format/SignStyle;->EXCEEDS_PAD:Lj$/time/format/SignStyle;

    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    const/16 v4, 0xa

    .line 12
    .line 13
    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/16 v5, 0x2d

    .line 18
    .line 19
    invoke-virtual {v0, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v6, Lj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 24
    .line 25
    const/4 v7, 0x2

    .line 26
    invoke-virtual {v0, v6, v7}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v8, Lj$/time/temporal/ChronoField;->DAY_OF_MONTH:Lj$/time/temporal/ChronoField;

    .line 35
    .line 36
    invoke-virtual {v0, v8, v7}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v9, Lj$/time/format/v;->STRICT:Lj$/time/format/v;

    .line 41
    .line 42
    sget-object v10, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    .line 43
    .line 44
    invoke-virtual {v0, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lj$/time/format/DateTimeFormatter;->g:Lj$/time/format/DateTimeFormatter;

    .line 49
    .line 50
    new-instance v11, Lj$/time/format/DateTimeFormatterBuilder;

    .line 51
    .line 52
    invoke-direct {v11}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    invoke-virtual {v11, v0}, Lj$/time/format/DateTimeFormatterBuilder;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    invoke-virtual {v11, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 67
    .line 68
    .line 69
    new-instance v11, Lj$/time/format/DateTimeFormatterBuilder;

    .line 70
    .line 71
    invoke-direct {v11}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v11, v0}, Lj$/time/format/DateTimeFormatterBuilder;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    invoke-virtual {v11, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 89
    .line 90
    .line 91
    new-instance v11, Lj$/time/format/DateTimeFormatterBuilder;

    .line 92
    .line 93
    invoke-direct {v11}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    sget-object v12, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 97
    .line 98
    invoke-virtual {v11, v12, v7}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    const/16 v13, 0x3a

    .line 103
    .line 104
    invoke-virtual {v11, v13}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    sget-object v14, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    .line 109
    .line 110
    invoke-virtual {v11, v14, v7}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v11, v13}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    sget-object v15, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    .line 122
    .line 123
    invoke-virtual {v11, v15, v7}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 124
    .line 125
    .line 126
    move-result-object v11

    .line 127
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 128
    .line 129
    .line 130
    sget-object v13, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 131
    .line 132
    new-instance v7, Lj$/time/format/f;

    .line 133
    .line 134
    invoke-direct {v7, v13}, Lj$/time/format/f;-><init>(Lj$/time/temporal/TemporalField;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11, v7}, Lj$/time/format/DateTimeFormatterBuilder;->b(Lj$/time/format/e;)I

    .line 138
    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    invoke-virtual {v11, v9, v7}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    sput-object v11, Lj$/time/format/DateTimeFormatter;->h:Lj$/time/format/DateTimeFormatter;

    .line 146
    .line 147
    new-instance v13, Lj$/time/format/DateTimeFormatterBuilder;

    .line 148
    .line 149
    invoke-direct {v13}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v13}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    invoke-virtual {v13, v11}, Lj$/time/format/DateTimeFormatterBuilder;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v13}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    invoke-virtual {v13, v9, v7}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 164
    .line 165
    .line 166
    new-instance v13, Lj$/time/format/DateTimeFormatterBuilder;

    .line 167
    .line 168
    invoke-direct {v13}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v13}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    invoke-virtual {v13, v11}, Lj$/time/format/DateTimeFormatterBuilder;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v13}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-virtual {v13, v9, v7}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 186
    .line 187
    .line 188
    new-instance v13, Lj$/time/format/DateTimeFormatterBuilder;

    .line 189
    .line 190
    invoke-direct {v13}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v13}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    invoke-virtual {v13, v0}, Lj$/time/format/DateTimeFormatterBuilder;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 198
    .line 199
    .line 200
    const/16 v0, 0x54

    .line 201
    .line 202
    invoke-virtual {v13, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0, v11}, Lj$/time/format/DateTimeFormatterBuilder;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    sput-object v0, Lj$/time/format/DateTimeFormatter;->i:Lj$/time/format/DateTimeFormatter;

    .line 214
    .line 215
    new-instance v11, Lj$/time/format/DateTimeFormatterBuilder;

    .line 216
    .line 217
    invoke-direct {v11}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    invoke-virtual {v11, v0}, Lj$/time/format/DateTimeFormatterBuilder;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->parseLenient()Lj$/time/format/DateTimeFormatterBuilder;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    invoke-virtual {v11}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    sget-object v13, Lj$/time/format/m;->STRICT:Lj$/time/format/m;

    .line 236
    .line 237
    invoke-virtual {v11, v13}, Lj$/time/format/DateTimeFormatterBuilder;->b(Lj$/time/format/e;)I

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    new-instance v7, Lj$/time/format/DateTimeFormatterBuilder;

    .line 245
    .line 246
    invoke-direct {v7}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7, v11}, Lj$/time/format/DateTimeFormatterBuilder;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 253
    .line 254
    .line 255
    const/16 v11, 0x5b

    .line 256
    .line 257
    invoke-virtual {v7, v11}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    sget-object v5, Lj$/time/format/m;->SENSITIVE:Lj$/time/format/m;

    .line 262
    .line 263
    invoke-virtual {v7, v5}, Lj$/time/format/DateTimeFormatterBuilder;->b(Lj$/time/format/e;)I

    .line 264
    .line 265
    .line 266
    new-instance v3, Lj$/time/format/g;

    .line 267
    .line 268
    const/4 v4, 0x1

    .line 269
    invoke-direct {v3, v4}, Lj$/time/format/g;-><init>(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7, v3}, Lj$/time/format/DateTimeFormatterBuilder;->b(Lj$/time/format/e;)I

    .line 273
    .line 274
    .line 275
    const/16 v3, 0x5d

    .line 276
    .line 277
    invoke-virtual {v7, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-virtual {v7, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 282
    .line 283
    .line 284
    new-instance v7, Lj$/time/format/DateTimeFormatterBuilder;

    .line 285
    .line 286
    invoke-direct {v7}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v0}, Lj$/time/format/DateTimeFormatterBuilder;->a(Lj$/time/format/DateTimeFormatter;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v7}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v11}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v0, v5}, Lj$/time/format/DateTimeFormatterBuilder;->b(Lj$/time/format/e;)I

    .line 307
    .line 308
    .line 309
    new-instance v5, Lj$/time/format/g;

    .line 310
    .line 311
    invoke-direct {v5, v4}, Lj$/time/format/g;-><init>(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v5}, Lj$/time/format/DateTimeFormatterBuilder;->b(Lj$/time/format/e;)I

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v0, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 322
    .line 323
    .line 324
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    .line 325
    .line 326
    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const/4 v3, 0x4

    .line 334
    const/16 v5, 0xa

    .line 335
    .line 336
    invoke-virtual {v0, v1, v3, v5, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    const/16 v3, 0x2d

    .line 341
    .line 342
    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    sget-object v3, Lj$/time/temporal/ChronoField;->DAY_OF_YEAR:Lj$/time/temporal/ChronoField;

    .line 347
    .line 348
    const/4 v5, 0x3

    .line 349
    invoke-virtual {v0, v3, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-virtual {v0, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 361
    .line 362
    .line 363
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    .line 364
    .line 365
    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    sget-object v3, Lj$/time/temporal/h;->c:Lj$/time/temporal/f;

    .line 373
    .line 374
    const/4 v5, 0x4

    .line 375
    const/16 v7, 0xa

    .line 376
    .line 377
    invoke-virtual {v0, v3, v5, v7, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const-string v2, "-W"

    .line 382
    .line 383
    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    sget-object v2, Lj$/time/temporal/h;->b:Lj$/time/temporal/f;

    .line 388
    .line 389
    const/4 v3, 0x2

    .line 390
    invoke-virtual {v0, v2, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    const/16 v3, 0x2d

    .line 395
    .line 396
    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    sget-object v2, Lj$/time/temporal/ChronoField;->DAY_OF_WEEK:Lj$/time/temporal/ChronoField;

    .line 401
    .line 402
    invoke-virtual {v0, v2, v4}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Lj$/time/format/DateTimeFormatterBuilder;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-virtual {v0, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 414
    .line 415
    .line 416
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    .line 417
    .line 418
    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    new-instance v3, Lj$/time/format/g;

    .line 429
    .line 430
    const/4 v5, 0x0

    .line 431
    invoke-direct {v3, v5}, Lj$/time/format/g;-><init>(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v3}, Lj$/time/format/DateTimeFormatterBuilder;->b(Lj$/time/format/e;)I

    .line 435
    .line 436
    .line 437
    const/4 v3, 0x0

    .line 438
    invoke-virtual {v0, v9, v3}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    sput-object v0, Lj$/time/format/DateTimeFormatter;->j:Lj$/time/format/DateTimeFormatter;

    .line 443
    .line 444
    new-instance v0, Lj$/time/format/DateTimeFormatterBuilder;

    .line 445
    .line 446
    invoke-direct {v0}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    const/4 v3, 0x4

    .line 454
    invoke-virtual {v0, v1, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    const/4 v3, 0x2

    .line 459
    invoke-virtual {v0, v6, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v0, v8, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->parseLenient()Lj$/time/format/DateTimeFormatterBuilder;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    const-string v3, "+HHMMss"

    .line 475
    .line 476
    const-string v5, "Z"

    .line 477
    .line 478
    invoke-virtual {v0, v3, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-virtual {v0, v13}, Lj$/time/format/DateTimeFormatterBuilder;->b(Lj$/time/format/e;)I

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0, v9, v10}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 486
    .line 487
    .line 488
    new-instance v0, Ljava/util/HashMap;

    .line 489
    .line 490
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 491
    .line 492
    .line 493
    const-wide/16 v16, 0x1

    .line 494
    .line 495
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 496
    .line 497
    .line 498
    move-result-object v3

    .line 499
    const-string v5, "Mon"

    .line 500
    .line 501
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    const-wide/16 v16, 0x2

    .line 505
    .line 506
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    const-string v7, "Tue"

    .line 511
    .line 512
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    const-wide/16 v16, 0x3

    .line 516
    .line 517
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    const-string v9, "Wed"

    .line 522
    .line 523
    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    const-wide/16 v16, 0x4

    .line 527
    .line 528
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 529
    .line 530
    .line 531
    move-result-object v9

    .line 532
    const-string v11, "Thu"

    .line 533
    .line 534
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    const-wide/16 v16, 0x5

    .line 538
    .line 539
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    const-string v13, "Fri"

    .line 544
    .line 545
    invoke-virtual {v0, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    const-wide/16 v16, 0x6

    .line 549
    .line 550
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 551
    .line 552
    .line 553
    move-result-object v13

    .line 554
    const-string v4, "Sat"

    .line 555
    .line 556
    invoke-virtual {v0, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    const-wide/16 v18, 0x7

    .line 560
    .line 561
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 562
    .line 563
    .line 564
    move-result-object v4

    .line 565
    move-object/from16 v17, v10

    .line 566
    .line 567
    const-string v10, "Sun"

    .line 568
    .line 569
    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    new-instance v10, Ljava/util/HashMap;

    .line 573
    .line 574
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 575
    .line 576
    .line 577
    move-object/from16 v18, v15

    .line 578
    .line 579
    const-string v15, "Jan"

    .line 580
    .line 581
    invoke-virtual {v10, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    const-string v3, "Feb"

    .line 585
    .line 586
    invoke-virtual {v10, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    const-string v3, "Mar"

    .line 590
    .line 591
    invoke-virtual {v10, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    const-string v3, "Apr"

    .line 595
    .line 596
    invoke-virtual {v10, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    const-string v3, "May"

    .line 600
    .line 601
    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    const-string v3, "Jun"

    .line 605
    .line 606
    invoke-virtual {v10, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    const-string v3, "Jul"

    .line 610
    .line 611
    invoke-virtual {v10, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    const-wide/16 v3, 0x8

    .line 615
    .line 616
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    const-string v4, "Aug"

    .line 621
    .line 622
    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    const-wide/16 v3, 0x9

    .line 626
    .line 627
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    const-string v4, "Sep"

    .line 632
    .line 633
    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    const-wide/16 v3, 0xa

    .line 637
    .line 638
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    const-string v4, "Oct"

    .line 643
    .line 644
    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    const-wide/16 v3, 0xb

    .line 648
    .line 649
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    const-string v4, "Nov"

    .line 654
    .line 655
    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    const-wide/16 v3, 0xc

    .line 659
    .line 660
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 661
    .line 662
    .line 663
    move-result-object v3

    .line 664
    const-string v4, "Dec"

    .line 665
    .line 666
    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    new-instance v3, Lj$/time/format/DateTimeFormatterBuilder;

    .line 670
    .line 671
    invoke-direct {v3}, Lj$/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 672
    .line 673
    .line 674
    invoke-virtual {v3}, Lj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Lj$/time/format/DateTimeFormatterBuilder;

    .line 675
    .line 676
    .line 677
    move-result-object v3

    .line 678
    invoke-virtual {v3}, Lj$/time/format/DateTimeFormatterBuilder;->parseLenient()Lj$/time/format/DateTimeFormatterBuilder;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    invoke-virtual {v3}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v3, v2, v0}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Ljava/util/Map;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    const-string v2, ", "

    .line 690
    .line 691
    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->d()V

    .line 696
    .line 697
    .line 698
    sget-object v2, Lj$/time/format/SignStyle;->NOT_NEGATIVE:Lj$/time/format/SignStyle;

    .line 699
    .line 700
    const/4 v3, 0x2

    .line 701
    const/4 v4, 0x1

    .line 702
    invoke-virtual {v0, v8, v4, v3, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;IILj$/time/format/SignStyle;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    const/16 v2, 0x20

    .line 707
    .line 708
    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-virtual {v0, v6, v10}, Lj$/time/format/DateTimeFormatterBuilder;->appendText(Lj$/time/temporal/TemporalField;Ljava/util/Map;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    const/4 v5, 0x4

    .line 721
    invoke-virtual {v0, v1, v5}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {v0, v12, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    const/16 v1, 0x3a

    .line 734
    .line 735
    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    invoke-virtual {v0, v14, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->e()V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    move-object/from16 v1, v18

    .line 751
    .line 752
    invoke-virtual {v0, v1, v3}, Lj$/time/format/DateTimeFormatterBuilder;->appendValue(Lj$/time/temporal/TemporalField;I)Lj$/time/format/DateTimeFormatterBuilder;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v0}, Lj$/time/format/DateTimeFormatterBuilder;->d()V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v0, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Lj$/time/format/DateTimeFormatterBuilder;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    const-string v1, "+HHMM"

    .line 764
    .line 765
    const-string v2, "GMT"

    .line 766
    .line 767
    invoke-virtual {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Lj$/time/format/DateTimeFormatterBuilder;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    sget-object v1, Lj$/time/format/v;->SMART:Lj$/time/format/v;

    .line 772
    .line 773
    move-object/from16 v2, v17

    .line 774
    .line 775
    invoke-virtual {v0, v1, v2}, Lj$/time/format/DateTimeFormatterBuilder;->f(Lj$/time/format/v;Lj$/time/chrono/j;)Lj$/time/format/DateTimeFormatter;

    .line 776
    .line 777
    .line 778
    return-void
.end method

.method public constructor <init>(Lj$/time/format/d;Ljava/util/Locale;Lj$/time/format/t;Lj$/time/format/v;Lj$/time/chrono/j;Lj$/time/ZoneId;)V
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
    check-cast p1, Lj$/time/format/t;

    .line 31
    .line 32
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/t;

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
    check-cast p1, Lj$/time/format/v;

    .line 41
    .line 42
    iput-object p1, p0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/v;

    .line 43
    .line 44
    iput-object p5, p0, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    .line 45
    .line 46
    iput-object p6, p0, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/ZoneId;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)Lj$/time/format/u;
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
    new-instance v4, Lj$/time/format/p;

    .line 22
    .line 23
    invoke-direct {v4, v0}, Lj$/time/format/p;-><init>(Lj$/time/format/DateTimeFormatter;)V

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
    invoke-virtual {v6, v4, v1, v5}, Lj$/time/format/d;->m(Lj$/time/format/p;Ljava/lang/CharSequence;I)I

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
    if-eqz v4, :cond_24

    .line 49
    .line 50
    iget-object v5, v4, Lj$/time/format/p;->a:Lj$/time/format/DateTimeFormatter;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-gez v7, :cond_24

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-ge v7, v8, :cond_1

    .line 67
    .line 68
    goto/16 :goto_12

    .line 69
    .line 70
    :cond_1
    invoke-virtual {v4}, Lj$/time/format/p;->c()Lj$/time/format/u;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-virtual {v4}, Lj$/time/format/p;->c()Lj$/time/format/u;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v1, v1, Lj$/time/format/u;->c:Lj$/time/chrono/j;

    .line 79
    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    iget-object v1, v5, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    .line 83
    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    sget-object v1, Lj$/time/chrono/q;->c:Lj$/time/chrono/q;

    .line 87
    .line 88
    :cond_2
    iput-object v1, v9, Lj$/time/format/u;->c:Lj$/time/chrono/j;

    .line 89
    .line 90
    iget-object v1, v9, Lj$/time/format/u;->b:Lj$/time/ZoneId;

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    iget-object v1, v5, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/ZoneId;

    .line 96
    .line 97
    :goto_1
    iput-object v1, v9, Lj$/time/format/u;->b:Lj$/time/ZoneId;

    .line 98
    .line 99
    iget-object v0, v0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/v;

    .line 100
    .line 101
    iput-object v0, v9, Lj$/time/format/u;->e:Lj$/time/format/v;

    .line 102
    .line 103
    invoke-virtual {v9}, Lj$/time/format/u;->i()V

    .line 104
    .line 105
    .line 106
    iget-object v0, v9, Lj$/time/format/u;->c:Lj$/time/chrono/j;

    .line 107
    .line 108
    iget-object v1, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 109
    .line 110
    iget-object v2, v9, Lj$/time/format/u;->e:Lj$/time/format/v;

    .line 111
    .line 112
    invoke-interface {v0, v1, v2}, Lj$/time/chrono/j;->R(Ljava/util/Map;Lj$/time/format/v;)Lj$/time/chrono/ChronoLocalDate;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v9, v0}, Lj$/time/format/u;->q(Lj$/time/chrono/ChronoLocalDate;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9}, Lj$/time/format/u;->o()V

    .line 120
    .line 121
    .line 122
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 123
    .line 124
    check-cast v0, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-lez v0, :cond_e

    .line 131
    .line 132
    :goto_2
    const/16 v0, 0x32

    .line 133
    .line 134
    if-ge v3, v0, :cond_c

    .line 135
    .line 136
    iget-object v1, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 137
    .line 138
    check-cast v1, Ljava/util/HashMap;

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_c

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Lj$/time/temporal/TemporalField;

    .line 165
    .line 166
    iget-object v4, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 167
    .line 168
    iget-object v5, v9, Lj$/time/format/u;->e:Lj$/time/format/v;

    .line 169
    .line 170
    invoke-interface {v2, v4, v9, v5}, Lj$/time/temporal/TemporalField;->n(Ljava/util/Map;Lj$/time/format/u;Lj$/time/format/v;)Lj$/time/temporal/TemporalAccessor;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    if-eqz v4, :cond_b

    .line 175
    .line 176
    instance-of v0, v4, Lj$/time/chrono/ChronoZonedDateTime;

    .line 177
    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    check-cast v4, Lj$/time/chrono/ChronoZonedDateTime;

    .line 181
    .line 182
    iget-object v0, v9, Lj$/time/format/u;->b:Lj$/time/ZoneId;

    .line 183
    .line 184
    if-nez v0, :cond_5

    .line 185
    .line 186
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->I()Lj$/time/ZoneId;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iput-object v0, v9, Lj$/time/format/u;->b:Lj$/time/ZoneId;

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_5
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->I()Lj$/time/ZoneId;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lj$/time/ZoneId;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_6

    .line 202
    .line 203
    :goto_3
    invoke-interface {v4}, Lj$/time/chrono/ChronoZonedDateTime;->w()Lj$/time/chrono/ChronoLocalDateTime;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    goto :goto_4

    .line 208
    :cond_6
    new-instance v0, Lj$/time/DateTimeException;

    .line 209
    .line 210
    iget-object v1, v9, Lj$/time/format/u;->b:Lj$/time/ZoneId;

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v3, "ChronoZonedDateTime must use the effective parsed zone: "

    .line 215
    .line 216
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :cond_7
    :goto_4
    instance-of v0, v4, Lj$/time/chrono/ChronoLocalDateTime;

    .line 231
    .line 232
    if-eqz v0, :cond_8

    .line 233
    .line 234
    check-cast v4, Lj$/time/chrono/ChronoLocalDateTime;

    .line 235
    .line 236
    invoke-interface {v4}, Lj$/time/chrono/ChronoLocalDateTime;->toLocalTime()Lj$/time/LocalTime;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    sget-object v1, Lj$/time/o;->d:Lj$/time/o;

    .line 241
    .line 242
    invoke-virtual {v9, v0, v1}, Lj$/time/format/u;->p(Lj$/time/LocalTime;Lj$/time/o;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v4}, Lj$/time/chrono/ChronoLocalDateTime;->e()Lj$/time/chrono/ChronoLocalDate;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {v9, v0}, Lj$/time/format/u;->q(Lj$/time/chrono/ChronoLocalDate;)V

    .line 250
    .line 251
    .line 252
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_8
    instance-of v0, v4, Lj$/time/chrono/ChronoLocalDate;

    .line 256
    .line 257
    if-eqz v0, :cond_9

    .line 258
    .line 259
    check-cast v4, Lj$/time/chrono/ChronoLocalDate;

    .line 260
    .line 261
    invoke-virtual {v9, v4}, Lj$/time/format/u;->q(Lj$/time/chrono/ChronoLocalDate;)V

    .line 262
    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_9
    instance-of v0, v4, Lj$/time/LocalTime;

    .line 266
    .line 267
    if-eqz v0, :cond_a

    .line 268
    .line 269
    check-cast v4, Lj$/time/LocalTime;

    .line 270
    .line 271
    sget-object v0, Lj$/time/o;->d:Lj$/time/o;

    .line 272
    .line 273
    invoke-virtual {v9, v4, v0}, Lj$/time/format/u;->p(Lj$/time/LocalTime;Lj$/time/o;)V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_a
    const-string v0, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    .line 278
    .line 279
    invoke-static {v0}, Lj$/nio/file/j;->k(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    return-object v6

    .line 283
    :cond_b
    iget-object v4, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 284
    .line 285
    check-cast v4, Ljava/util/HashMap;

    .line 286
    .line 287
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-nez v2, :cond_4

    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_c
    if-eq v3, v0, :cond_d

    .line 295
    .line 296
    if-lez v3, :cond_e

    .line 297
    .line 298
    invoke-virtual {v9}, Lj$/time/format/u;->i()V

    .line 299
    .line 300
    .line 301
    iget-object v0, v9, Lj$/time/format/u;->c:Lj$/time/chrono/j;

    .line 302
    .line 303
    iget-object v1, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 304
    .line 305
    iget-object v2, v9, Lj$/time/format/u;->e:Lj$/time/format/v;

    .line 306
    .line 307
    invoke-interface {v0, v1, v2}, Lj$/time/chrono/j;->R(Ljava/util/Map;Lj$/time/format/v;)Lj$/time/chrono/ChronoLocalDate;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v9, v0}, Lj$/time/format/u;->q(Lj$/time/chrono/ChronoLocalDate;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v9}, Lj$/time/format/u;->o()V

    .line 315
    .line 316
    .line 317
    goto :goto_6

    .line 318
    :cond_d
    const-string v0, "One of the parsed fields has an incorrectly implemented resolve method"

    .line 319
    .line 320
    invoke-static {v0}, Lj$/nio/file/j;->k(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    return-object v6

    .line 324
    :cond_e
    :goto_6
    iget-object v0, v9, Lj$/time/format/u;->g:Lj$/time/LocalTime;

    .line 325
    .line 326
    const-wide/32 v1, 0xf4240

    .line 327
    .line 328
    .line 329
    const-wide/16 v3, 0x3e8

    .line 330
    .line 331
    const-wide/16 v5, 0x0

    .line 332
    .line 333
    if-nez v0, :cond_18

    .line 334
    .line 335
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 336
    .line 337
    sget-object v7, Lj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 338
    .line 339
    check-cast v0, Ljava/util/HashMap;

    .line 340
    .line 341
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    iget-object v8, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 346
    .line 347
    if-eqz v0, :cond_10

    .line 348
    .line 349
    check-cast v8, Ljava/util/HashMap;

    .line 350
    .line 351
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Ljava/lang/Long;

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 358
    .line 359
    .line 360
    move-result-wide v10

    .line 361
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 362
    .line 363
    sget-object v8, Lj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 364
    .line 365
    check-cast v0, Ljava/util/HashMap;

    .line 366
    .line 367
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    iget-object v12, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 372
    .line 373
    if-eqz v0, :cond_f

    .line 374
    .line 375
    mul-long/2addr v10, v3

    .line 376
    check-cast v12, Ljava/util/HashMap;

    .line 377
    .line 378
    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Ljava/lang/Long;

    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 385
    .line 386
    .line 387
    move-result-wide v12

    .line 388
    rem-long/2addr v12, v3

    .line 389
    add-long/2addr v12, v10

    .line 390
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v9, v7, v8, v0}, Lj$/time/format/u;->r(Lj$/time/temporal/TemporalField;Lj$/time/temporal/ChronoField;Ljava/lang/Long;)V

    .line 395
    .line 396
    .line 397
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 398
    .line 399
    check-cast v0, Ljava/util/HashMap;

    .line 400
    .line 401
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 405
    .line 406
    sget-object v7, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 407
    .line 408
    mul-long/2addr v12, v3

    .line 409
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 410
    .line 411
    .line 412
    move-result-object v8

    .line 413
    check-cast v0, Ljava/util/HashMap;

    .line 414
    .line 415
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    goto :goto_7

    .line 419
    :cond_f
    sget-object v0, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 420
    .line 421
    mul-long/2addr v10, v1

    .line 422
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 423
    .line 424
    .line 425
    move-result-object v7

    .line 426
    check-cast v12, Ljava/util/HashMap;

    .line 427
    .line 428
    invoke-virtual {v12, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    goto :goto_7

    .line 432
    :cond_10
    sget-object v0, Lj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 433
    .line 434
    check-cast v8, Ljava/util/HashMap;

    .line 435
    .line 436
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v7

    .line 440
    if-eqz v7, :cond_11

    .line 441
    .line 442
    iget-object v7, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 443
    .line 444
    check-cast v7, Ljava/util/HashMap;

    .line 445
    .line 446
    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    check-cast v0, Ljava/lang/Long;

    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 453
    .line 454
    .line 455
    move-result-wide v7

    .line 456
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 457
    .line 458
    sget-object v10, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 459
    .line 460
    mul-long/2addr v7, v3

    .line 461
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 462
    .line 463
    .line 464
    move-result-object v7

    .line 465
    check-cast v0, Ljava/util/HashMap;

    .line 466
    .line 467
    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    :cond_11
    :goto_7
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 471
    .line 472
    sget-object v7, Lj$/time/temporal/ChronoField;->HOUR_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 473
    .line 474
    check-cast v0, Ljava/util/HashMap;

    .line 475
    .line 476
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Ljava/lang/Long;

    .line 481
    .line 482
    if-eqz v0, :cond_18

    .line 483
    .line 484
    iget-object v8, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 485
    .line 486
    sget-object v10, Lj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Lj$/time/temporal/ChronoField;

    .line 487
    .line 488
    check-cast v8, Ljava/util/HashMap;

    .line 489
    .line 490
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    check-cast v8, Ljava/lang/Long;

    .line 495
    .line 496
    iget-object v11, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 497
    .line 498
    sget-object v12, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    .line 499
    .line 500
    check-cast v11, Ljava/util/HashMap;

    .line 501
    .line 502
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v11

    .line 506
    check-cast v11, Ljava/lang/Long;

    .line 507
    .line 508
    iget-object v13, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 509
    .line 510
    sget-object v14, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 511
    .line 512
    check-cast v13, Ljava/util/HashMap;

    .line 513
    .line 514
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v13

    .line 518
    check-cast v13, Ljava/lang/Long;

    .line 519
    .line 520
    if-nez v8, :cond_13

    .line 521
    .line 522
    if-nez v11, :cond_12

    .line 523
    .line 524
    if-nez v13, :cond_12

    .line 525
    .line 526
    goto :goto_9

    .line 527
    :cond_12
    :goto_8
    move-wide/from16 p0, v1

    .line 528
    .line 529
    goto/16 :goto_f

    .line 530
    .line 531
    :cond_13
    :goto_9
    if-eqz v8, :cond_14

    .line 532
    .line 533
    if-nez v11, :cond_14

    .line 534
    .line 535
    if-eqz v13, :cond_14

    .line 536
    .line 537
    goto :goto_8

    .line 538
    :cond_14
    if-eqz v8, :cond_15

    .line 539
    .line 540
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 541
    .line 542
    .line 543
    move-result-wide v15

    .line 544
    goto :goto_a

    .line 545
    :cond_15
    move-wide v15, v5

    .line 546
    :goto_a
    if-eqz v11, :cond_16

    .line 547
    .line 548
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 549
    .line 550
    .line 551
    move-result-wide v17

    .line 552
    goto :goto_b

    .line 553
    :cond_16
    move-wide/from16 v17, v5

    .line 554
    .line 555
    :goto_b
    if-eqz v13, :cond_17

    .line 556
    .line 557
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 558
    .line 559
    .line 560
    move-result-wide v19

    .line 561
    goto :goto_c

    .line 562
    :cond_17
    move-wide/from16 v19, v5

    .line 563
    .line 564
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 565
    .line 566
    .line 567
    move-result-wide v21

    .line 568
    move-wide/from16 p0, v1

    .line 569
    .line 570
    move-object v0, v10

    .line 571
    move-object v8, v12

    .line 572
    move-object v1, v14

    .line 573
    move-wide v12, v15

    .line 574
    move-wide/from16 v14, v17

    .line 575
    .line 576
    move-wide/from16 v16, v19

    .line 577
    .line 578
    move-wide/from16 v10, v21

    .line 579
    .line 580
    invoke-virtual/range {v9 .. v17}, Lj$/time/format/u;->l(JJJJ)V

    .line 581
    .line 582
    .line 583
    iget-object v2, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 584
    .line 585
    check-cast v2, Ljava/util/HashMap;

    .line 586
    .line 587
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    iget-object v2, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 591
    .line 592
    check-cast v2, Ljava/util/HashMap;

    .line 593
    .line 594
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 598
    .line 599
    check-cast v0, Ljava/util/HashMap;

    .line 600
    .line 601
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 605
    .line 606
    check-cast v0, Ljava/util/HashMap;

    .line 607
    .line 608
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    goto :goto_d

    .line 612
    :cond_18
    move-wide/from16 p0, v1

    .line 613
    .line 614
    :goto_d
    iget-object v0, v9, Lj$/time/format/u;->e:Lj$/time/format/v;

    .line 615
    .line 616
    sget-object v1, Lj$/time/format/v;->LENIENT:Lj$/time/format/v;

    .line 617
    .line 618
    if-eq v0, v1, :cond_1a

    .line 619
    .line 620
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 621
    .line 622
    check-cast v0, Ljava/util/HashMap;

    .line 623
    .line 624
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-lez v0, :cond_1a

    .line 629
    .line 630
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 631
    .line 632
    check-cast v0, Ljava/util/HashMap;

    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    :cond_19
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 643
    .line 644
    .line 645
    move-result v1

    .line 646
    if-eqz v1, :cond_1a

    .line 647
    .line 648
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    check-cast v1, Ljava/util/Map$Entry;

    .line 653
    .line 654
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    check-cast v2, Lj$/time/temporal/TemporalField;

    .line 659
    .line 660
    instance-of v7, v2, Lj$/time/temporal/ChronoField;

    .line 661
    .line 662
    if-eqz v7, :cond_19

    .line 663
    .line 664
    check-cast v2, Lj$/time/temporal/ChronoField;

    .line 665
    .line 666
    invoke-virtual {v2}, Lj$/time/temporal/ChronoField;->U()Z

    .line 667
    .line 668
    .line 669
    move-result v7

    .line 670
    if-eqz v7, :cond_19

    .line 671
    .line 672
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    check-cast v1, Ljava/lang/Long;

    .line 677
    .line 678
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 679
    .line 680
    .line 681
    move-result-wide v7

    .line 682
    invoke-virtual {v2, v7, v8}, Lj$/time/temporal/ChronoField;->L(J)V

    .line 683
    .line 684
    .line 685
    goto :goto_e

    .line 686
    :cond_1a
    :goto_f
    iget-object v0, v9, Lj$/time/format/u;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 687
    .line 688
    if-eqz v0, :cond_1b

    .line 689
    .line 690
    invoke-virtual {v9, v0}, Lj$/time/format/u;->h(Lj$/time/temporal/TemporalAccessor;)V

    .line 691
    .line 692
    .line 693
    :cond_1b
    iget-object v0, v9, Lj$/time/format/u;->g:Lj$/time/LocalTime;

    .line 694
    .line 695
    if-eqz v0, :cond_1c

    .line 696
    .line 697
    invoke-virtual {v9, v0}, Lj$/time/format/u;->h(Lj$/time/temporal/TemporalAccessor;)V

    .line 698
    .line 699
    .line 700
    iget-object v0, v9, Lj$/time/format/u;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 701
    .line 702
    if-eqz v0, :cond_1c

    .line 703
    .line 704
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 705
    .line 706
    check-cast v0, Ljava/util/HashMap;

    .line 707
    .line 708
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    if-lez v0, :cond_1c

    .line 713
    .line 714
    iget-object v0, v9, Lj$/time/format/u;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 715
    .line 716
    iget-object v1, v9, Lj$/time/format/u;->g:Lj$/time/LocalTime;

    .line 717
    .line 718
    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->K(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {v9, v0}, Lj$/time/format/u;->h(Lj$/time/temporal/TemporalAccessor;)V

    .line 723
    .line 724
    .line 725
    :cond_1c
    iget-object v0, v9, Lj$/time/format/u;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 726
    .line 727
    if-eqz v0, :cond_1e

    .line 728
    .line 729
    iget-object v0, v9, Lj$/time/format/u;->g:Lj$/time/LocalTime;

    .line 730
    .line 731
    if-eqz v0, :cond_1e

    .line 732
    .line 733
    iget-object v0, v9, Lj$/time/format/u;->h:Lj$/time/o;

    .line 734
    .line 735
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    .line 737
    .line 738
    sget-object v1, Lj$/time/o;->d:Lj$/time/o;

    .line 739
    .line 740
    if-ne v0, v1, :cond_1d

    .line 741
    .line 742
    goto :goto_10

    .line 743
    :cond_1d
    iget-object v0, v9, Lj$/time/format/u;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 744
    .line 745
    iget-object v2, v9, Lj$/time/format/u;->h:Lj$/time/o;

    .line 746
    .line 747
    invoke-interface {v0, v2}, Lj$/time/chrono/ChronoLocalDate;->Q(Lj$/time/temporal/m;)Lj$/time/chrono/ChronoLocalDate;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    iput-object v0, v9, Lj$/time/format/u;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 752
    .line 753
    iput-object v1, v9, Lj$/time/format/u;->h:Lj$/time/o;

    .line 754
    .line 755
    :cond_1e
    :goto_10
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 756
    .line 757
    .line 758
    move-result-object v0

    .line 759
    iget-object v1, v9, Lj$/time/format/u;->g:Lj$/time/LocalTime;

    .line 760
    .line 761
    if-nez v1, :cond_21

    .line 762
    .line 763
    iget-object v1, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 764
    .line 765
    sget-object v2, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    .line 766
    .line 767
    check-cast v1, Ljava/util/HashMap;

    .line 768
    .line 769
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 770
    .line 771
    .line 772
    move-result v1

    .line 773
    if-nez v1, :cond_1f

    .line 774
    .line 775
    iget-object v1, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 776
    .line 777
    sget-object v2, Lj$/time/temporal/ChronoField;->SECOND_OF_DAY:Lj$/time/temporal/ChronoField;

    .line 778
    .line 779
    check-cast v1, Ljava/util/HashMap;

    .line 780
    .line 781
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    if-nez v1, :cond_1f

    .line 786
    .line 787
    iget-object v1, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 788
    .line 789
    sget-object v2, Lj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Lj$/time/temporal/ChronoField;

    .line 790
    .line 791
    check-cast v1, Ljava/util/HashMap;

    .line 792
    .line 793
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 794
    .line 795
    .line 796
    move-result v1

    .line 797
    if-eqz v1, :cond_21

    .line 798
    .line 799
    :cond_1f
    iget-object v1, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 800
    .line 801
    sget-object v2, Lj$/time/temporal/ChronoField;->NANO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 802
    .line 803
    check-cast v1, Ljava/util/HashMap;

    .line 804
    .line 805
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v1

    .line 809
    iget-object v5, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 810
    .line 811
    if-eqz v1, :cond_20

    .line 812
    .line 813
    check-cast v5, Ljava/util/HashMap;

    .line 814
    .line 815
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    check-cast v0, Ljava/lang/Long;

    .line 820
    .line 821
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 822
    .line 823
    .line 824
    move-result-wide v0

    .line 825
    iget-object v2, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 826
    .line 827
    sget-object v5, Lj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 828
    .line 829
    div-long v3, v0, v3

    .line 830
    .line 831
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 832
    .line 833
    .line 834
    move-result-object v3

    .line 835
    check-cast v2, Ljava/util/HashMap;

    .line 836
    .line 837
    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    iget-object v2, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 841
    .line 842
    sget-object v3, Lj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 843
    .line 844
    div-long v0, v0, p0

    .line 845
    .line 846
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    check-cast v2, Ljava/util/HashMap;

    .line 851
    .line 852
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    goto :goto_11

    .line 856
    :cond_20
    check-cast v5, Ljava/util/HashMap;

    .line 857
    .line 858
    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    iget-object v1, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 862
    .line 863
    sget-object v2, Lj$/time/temporal/ChronoField;->MICRO_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 864
    .line 865
    check-cast v1, Ljava/util/HashMap;

    .line 866
    .line 867
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    iget-object v1, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 871
    .line 872
    sget-object v2, Lj$/time/temporal/ChronoField;->MILLI_OF_SECOND:Lj$/time/temporal/ChronoField;

    .line 873
    .line 874
    check-cast v1, Ljava/util/HashMap;

    .line 875
    .line 876
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    :cond_21
    :goto_11
    iget-object v0, v9, Lj$/time/format/u;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 880
    .line 881
    if-eqz v0, :cond_23

    .line 882
    .line 883
    iget-object v0, v9, Lj$/time/format/u;->g:Lj$/time/LocalTime;

    .line 884
    .line 885
    if-eqz v0, :cond_23

    .line 886
    .line 887
    iget-object v0, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 888
    .line 889
    sget-object v1, Lj$/time/temporal/ChronoField;->OFFSET_SECONDS:Lj$/time/temporal/ChronoField;

    .line 890
    .line 891
    check-cast v0, Ljava/util/HashMap;

    .line 892
    .line 893
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    check-cast v0, Ljava/lang/Long;

    .line 898
    .line 899
    if-eqz v0, :cond_22

    .line 900
    .line 901
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    .line 902
    .line 903
    .line 904
    move-result v0

    .line 905
    invoke-static {v0}, Lj$/time/ZoneOffset;->ofTotalSeconds(I)Lj$/time/ZoneOffset;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    iget-object v1, v9, Lj$/time/format/u;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 910
    .line 911
    iget-object v2, v9, Lj$/time/format/u;->g:Lj$/time/LocalTime;

    .line 912
    .line 913
    invoke-interface {v1, v2}, Lj$/time/chrono/ChronoLocalDate;->K(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    invoke-interface {v1, v0}, Lj$/time/chrono/ChronoLocalDateTime;->G(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->T()J

    .line 922
    .line 923
    .line 924
    move-result-wide v0

    .line 925
    iget-object v2, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 926
    .line 927
    sget-object v3, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    .line 928
    .line 929
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    check-cast v2, Ljava/util/HashMap;

    .line 934
    .line 935
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    .line 937
    .line 938
    return-object v9

    .line 939
    :cond_22
    iget-object v0, v9, Lj$/time/format/u;->b:Lj$/time/ZoneId;

    .line 940
    .line 941
    if-eqz v0, :cond_23

    .line 942
    .line 943
    iget-object v0, v9, Lj$/time/format/u;->f:Lj$/time/chrono/ChronoLocalDate;

    .line 944
    .line 945
    iget-object v1, v9, Lj$/time/format/u;->g:Lj$/time/LocalTime;

    .line 946
    .line 947
    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDate;->K(Lj$/time/LocalTime;)Lj$/time/chrono/ChronoLocalDateTime;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    iget-object v1, v9, Lj$/time/format/u;->b:Lj$/time/ZoneId;

    .line 952
    .line 953
    invoke-interface {v0, v1}, Lj$/time/chrono/ChronoLocalDateTime;->G(Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;

    .line 954
    .line 955
    .line 956
    move-result-object v0

    .line 957
    invoke-interface {v0}, Lj$/time/chrono/ChronoZonedDateTime;->T()J

    .line 958
    .line 959
    .line 960
    move-result-wide v0

    .line 961
    iget-object v2, v9, Lj$/time/format/u;->a:Ljava/util/Map;

    .line 962
    .line 963
    sget-object v3, Lj$/time/temporal/ChronoField;->INSTANT_SECONDS:Lj$/time/temporal/ChronoField;

    .line 964
    .line 965
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    check-cast v2, Ljava/util/HashMap;

    .line 970
    .line 971
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    :cond_23
    return-object v9

    .line 975
    :cond_24
    :goto_12
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 976
    .line 977
    .line 978
    move-result v0

    .line 979
    const/16 v4, 0x40

    .line 980
    .line 981
    if-le v0, v4, :cond_25

    .line 982
    .line 983
    invoke-interface {v1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    new-instance v3, Ljava/lang/StringBuilder;

    .line 992
    .line 993
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    .line 998
    .line 999
    const-string v0, "..."

    .line 1000
    .line 1001
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v0

    .line 1008
    goto :goto_13

    .line 1009
    :cond_25
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    :goto_13
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 1014
    .line 1015
    .line 1016
    move-result v3

    .line 1017
    const-string v4, "Text \'"

    .line 1018
    .line 1019
    if-ltz v3, :cond_26

    .line 1020
    .line 1021
    new-instance v3, Lj$/time/format/DateTimeParseException;

    .line 1022
    .line 1023
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 1024
    .line 1025
    .line 1026
    move-result v5

    .line 1027
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    const-string v0, "\' could not be parsed at index "

    .line 1036
    .line 1037
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getErrorIndex()I

    .line 1048
    .line 1049
    .line 1050
    invoke-direct {v3, v0, v1}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1051
    .line 1052
    .line 1053
    throw v3

    .line 1054
    :cond_26
    new-instance v3, Lj$/time/format/DateTimeParseException;

    .line 1055
    .line 1056
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 1057
    .line 1058
    .line 1059
    move-result v5

    .line 1060
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    const-string v0, "\' could not be parsed, unparsed text found at index "

    .line 1069
    .line 1070
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    .line 1081
    .line 1082
    .line 1083
    invoke-direct {v3, v0, v1}, Lj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1084
    .line 1085
    .line 1086
    throw v3
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
    new-instance v2, Lj$/time/format/r;

    .line 21
    .line 22
    invoke-direct {v2, p1, p0}, Lj$/time/format/r;-><init>(Lj$/time/temporal/TemporalAccessor;Lj$/time/format/DateTimeFormatter;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2, v0}, Lj$/time/format/d;->k(Lj$/time/format/r;Ljava/lang/StringBuilder;)Z
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

.method public parse(Ljava/lang/CharSequence;Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Lj$/time/temporal/TemporalQuery<",
            "TT;>;)TT;"
        }
    .end annotation

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
    invoke-virtual {p0, p1}, Lj$/time/format/DateTimeFormatter;->a(Ljava/lang/CharSequence;)Lj$/time/format/u;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Lj$/time/format/u;->L(Lj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

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
    .locals 8

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
    iget-object v6, p0, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    .line 13
    .line 14
    iget-object v7, p0, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/ZoneId;

    .line 15
    .line 16
    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    .line 17
    .line 18
    iget-object v4, p0, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/t;

    .line 19
    .line 20
    iget-object v5, p0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/v;

    .line 21
    .line 22
    move-object v3, p1

    .line 23
    invoke-direct/range {v1 .. v7}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/d;Ljava/util/Locale;Lj$/time/format/t;Lj$/time/format/v;Lj$/time/chrono/j;Lj$/time/ZoneId;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method

.method public withZone(Lj$/time/ZoneId;)Lj$/time/format/DateTimeFormatter;
    .locals 8

    .line 1
    iget-object v0, p0, Lj$/time/format/DateTimeFormatter;->f:Lj$/time/ZoneId;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v3, p0, Lj$/time/format/DateTimeFormatter;->b:Ljava/util/Locale;

    .line 13
    .line 14
    iget-object v5, p0, Lj$/time/format/DateTimeFormatter;->d:Lj$/time/format/v;

    .line 15
    .line 16
    iget-object v6, p0, Lj$/time/format/DateTimeFormatter;->e:Lj$/time/chrono/j;

    .line 17
    .line 18
    iget-object v2, p0, Lj$/time/format/DateTimeFormatter;->a:Lj$/time/format/d;

    .line 19
    .line 20
    iget-object v4, p0, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/t;

    .line 21
    .line 22
    move-object v7, p1

    .line 23
    invoke-direct/range {v1 .. v7}, Lj$/time/format/DateTimeFormatter;-><init>(Lj$/time/format/d;Ljava/util/Locale;Lj$/time/format/t;Lj$/time/format/v;Lj$/time/chrono/j;Lj$/time/ZoneId;)V

    .line 24
    .line 25
    .line 26
    return-object v1
.end method
