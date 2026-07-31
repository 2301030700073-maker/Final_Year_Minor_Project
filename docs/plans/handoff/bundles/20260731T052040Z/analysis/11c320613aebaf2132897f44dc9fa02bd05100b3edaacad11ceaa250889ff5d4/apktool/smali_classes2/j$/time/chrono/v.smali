.class public final Lj$/time/chrono/v;
.super Lj$/time/chrono/a;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lj$/time/chrono/v;

.field private static final serialVersionUID:J = 0x6623c4799cb0ddcL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/time/chrono/v;

    .line 2
    .line 3
    invoke-direct {v0}, Lj$/time/chrono/v;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj$/time/chrono/v;->c:Lj$/time/chrono/v;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/io/InvalidObjectException;

    .line 2
    .line 3
    const-string p1, "Deserialization via serialization delegate"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 1

    .line 1
    sget-object p0, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, [Lj$/time/chrono/y;

    .line 9
    .line 10
    invoke-static {p0}, Lj$/com/android/tools/r8/a;->G([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final B(I)Lj$/time/chrono/m;
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/time/chrono/y;->j(I)Lj$/time/chrono/y;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final D(Lj$/time/chrono/m;I)I
    .locals 2

    .line 1
    instance-of p0, p1, Lj$/time/chrono/y;

    .line 2
    .line 3
    if-eqz p0, :cond_2

    .line 4
    .line 5
    move-object p0, p1

    .line 6
    check-cast p0, Lj$/time/chrono/y;

    .line 7
    .line 8
    iget-object p0, p0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 9
    .line 10
    iget p0, p0, Lj$/time/LocalDate;->a:I

    .line 11
    .line 12
    add-int v0, p0, p2

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    sub-int/2addr v0, v1

    .line 16
    if-ne p2, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const p2, -0x3b9ac9ff

    .line 20
    .line 21
    .line 22
    if-lt v0, p2, :cond_1

    .line 23
    .line 24
    const p2, 0x3b9ac9ff

    .line 25
    .line 26
    .line 27
    if-gt v0, p2, :cond_1

    .line 28
    .line 29
    if-lt v0, p0, :cond_1

    .line 30
    .line 31
    invoke-static {v0, v1, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lj$/time/chrono/y;->h(Lj$/time/LocalDate;)Lj$/time/chrono/y;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-ne p1, p0, :cond_1

    .line 40
    .line 41
    :goto_0
    return v0

    .line 42
    :cond_1
    const-string p0, "Invalid yearOfEra value"

    .line 43
    .line 44
    invoke-static {p0}, Lj$/nio/file/m;->k(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return p0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    .line 50
    .line 51
    const-string p1, "Era must be JapaneseEra"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0
.end method

.method public final J(Lj$/time/temporal/TemporalAccessor;)Lj$/time/chrono/b;
    .locals 0

    .line 1
    instance-of p0, p1, Lj$/time/chrono/x;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lj$/time/chrono/x;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p0, Lj$/time/chrono/x;

    .line 9
    .line 10
    invoke-static {p1}, Lj$/time/LocalDate;->b0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final M(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/b;
    .locals 12

    .line 1
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Long;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lj$/time/chrono/v;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v4

    .line 20
    invoke-virtual {v3, v4, v5, v0}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Lj$/time/chrono/y;->j(I)Lj$/time/chrono/y;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v1, v2

    .line 30
    :goto_0
    sget-object v3, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    .line 31
    .line 32
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/Long;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lj$/time/chrono/v;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    invoke-virtual {v5, v6, v7, v3}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v5, 0x0

    .line 54
    :goto_1
    const/4 v6, 0x1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    sget-object v7, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 60
    .line 61
    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-nez v7, :cond_2

    .line 66
    .line 67
    sget-object v7, Lj$/time/format/e0;->STRICT:Lj$/time/format/e0;

    .line 68
    .line 69
    if-eq p2, v7, :cond_2

    .line 70
    .line 71
    sget-object v1, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    .line 72
    .line 73
    array-length v7, v1

    .line 74
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    check-cast v7, [Lj$/time/chrono/y;

    .line 79
    .line 80
    array-length v8, v1

    .line 81
    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, [Lj$/time/chrono/y;

    .line 86
    .line 87
    array-length v1, v1

    .line 88
    sub-int/2addr v1, v6

    .line 89
    aget-object v1, v7, v1

    .line 90
    .line 91
    :cond_2
    if-eqz v4, :cond_d

    .line 92
    .line 93
    if-eqz v1, :cond_d

    .line 94
    .line 95
    sget-object v4, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 96
    .line 97
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    const-string v8, "era"

    .line 102
    .line 103
    const-wide/16 v9, 0x1

    .line 104
    .line 105
    if-eqz v7, :cond_9

    .line 106
    .line 107
    sget-object v7, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    .line 108
    .line 109
    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_9

    .line 114
    .line 115
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    sget-object v0, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 122
    .line 123
    if-ne p2, v0, :cond_3

    .line 124
    .line 125
    iget-object p0, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 126
    .line 127
    iget p0, p0, Lj$/time/LocalDate;->a:I

    .line 128
    .line 129
    add-int/2addr p0, v5

    .line 130
    sub-int/2addr p0, v6

    .line 131
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Ljava/lang/Long;

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    invoke-static {v0, v1, v9, v10}, Lj$/com/android/tools/r8/a;->U(JJ)J

    .line 142
    .line 143
    .line 144
    move-result-wide v0

    .line 145
    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Ljava/lang/Long;

    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide p1

    .line 155
    invoke-static {p1, p2, v9, v10}, Lj$/com/android/tools/r8/a;->U(JJ)J

    .line 156
    .line 157
    .line 158
    move-result-wide p1

    .line 159
    new-instance v2, Lj$/time/chrono/x;

    .line 160
    .line 161
    invoke-static {p0, v6, v6}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-direct {v2, p0}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    .line 166
    .line 167
    .line 168
    sget-object p0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    .line 169
    .line 170
    invoke-virtual {v2, v0, v1, p0}, Lj$/time/chrono/x;->d0(JLj$/time/temporal/ChronoUnit;)Lj$/time/chrono/x;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 175
    .line 176
    invoke-virtual {p0, p1, p2, v0}, Lj$/time/chrono/x;->d0(JLj$/time/temporal/ChronoUnit;)Lj$/time/chrono/x;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0

    .line 181
    :cond_3
    invoke-virtual {p0, v4}, Lj$/time/chrono/v;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Ljava/lang/Long;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 192
    .line 193
    .line 194
    move-result-wide v9

    .line 195
    invoke-virtual {v0, v9, v10, v4}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    invoke-virtual {p0, v7}, Lj$/time/chrono/v;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-interface {p1, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Ljava/lang/Long;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 210
    .line 211
    .line 212
    move-result-wide v3

    .line 213
    invoke-virtual {p0, v3, v4, v7}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    sget-object p1, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    .line 218
    .line 219
    if-ne p2, p1, :cond_7

    .line 220
    .line 221
    if-lt v5, v6, :cond_6

    .line 222
    .line 223
    iget-object p1, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 224
    .line 225
    iget p1, p1, Lj$/time/LocalDate;->a:I

    .line 226
    .line 227
    add-int/2addr p1, v5

    .line 228
    sub-int/2addr p1, v6

    .line 229
    :try_start_0
    new-instance p2, Lj$/time/chrono/x;

    .line 230
    .line 231
    invoke-static {p1, v0, p0}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-direct {p2, p0}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :catch_0
    new-instance p0, Lj$/time/chrono/x;

    .line 240
    .line 241
    invoke-static {p1, v0, v6}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-direct {p0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    .line 246
    .line 247
    .line 248
    new-instance p1, Lj$/desugar/sun/nio/fs/m;

    .line 249
    .line 250
    const/4 p2, 0x7

    .line 251
    invoke-direct {p1, p2}, Lj$/desugar/sun/nio/fs/m;-><init>(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, p1}, Lj$/time/chrono/x;->f0(Lj$/desugar/sun/nio/fs/m;)Lj$/time/chrono/x;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    :goto_2
    iget-object p0, p2, Lj$/time/chrono/x;->b:Lj$/time/chrono/y;

    .line 259
    .line 260
    if-eq p0, v1, :cond_5

    .line 261
    .line 262
    sget-object p0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    .line 263
    .line 264
    invoke-static {p2, p0}, Lj$/time/temporal/q;->a(Lj$/time/temporal/TemporalAccessor;Lj$/time/temporal/p;)I

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    if-le p0, v6, :cond_5

    .line 269
    .line 270
    if-gt v5, v6, :cond_4

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_4
    new-instance p0, Lj$/time/DateTimeException;

    .line 274
    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string p2, "Invalid YearOfEra for Era: "

    .line 278
    .line 279
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string p2, " "

    .line 286
    .line 287
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw p0

    .line 301
    :cond_5
    :goto_3
    return-object p2

    .line 302
    :cond_6
    const-string p0, "Invalid YearOfEra: "

    .line 303
    .line 304
    invoke-static {p0, v5}, Lj$/nio/file/m;->d(Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    return-object v2

    .line 308
    :cond_7
    sget-object p1, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    .line 309
    .line 310
    invoke-static {v1, v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    iget-object p1, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 314
    .line 315
    iget p1, p1, Lj$/time/LocalDate;->a:I

    .line 316
    .line 317
    add-int/2addr p1, v5

    .line 318
    sub-int/2addr p1, v6

    .line 319
    invoke-static {p1, v0, p0}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    iget-object p1, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 324
    .line 325
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->f0(Lj$/time/chrono/b;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_8

    .line 330
    .line 331
    invoke-static {p0}, Lj$/time/chrono/y;->h(Lj$/time/LocalDate;)Lj$/time/chrono/y;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    if-ne v1, p1, :cond_8

    .line 336
    .line 337
    new-instance p1, Lj$/time/chrono/x;

    .line 338
    .line 339
    invoke-direct {p1, v1, v5, p0}, Lj$/time/chrono/x;-><init>(Lj$/time/chrono/y;ILj$/time/LocalDate;)V

    .line 340
    .line 341
    .line 342
    return-object p1

    .line 343
    :cond_8
    const-string p0, "year, month, and day not valid for Era"

    .line 344
    .line 345
    invoke-static {p0}, Lj$/nio/file/m;->k(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-object v2

    .line 349
    :cond_9
    sget-object v4, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 350
    .line 351
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    if-eqz v7, :cond_d

    .line 356
    .line 357
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    invoke-interface {p1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    sget-object v0, Lj$/time/format/e0;->LENIENT:Lj$/time/format/e0;

    .line 364
    .line 365
    if-ne p2, v0, :cond_a

    .line 366
    .line 367
    iget-object p0, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 368
    .line 369
    iget p0, p0, Lj$/time/LocalDate;->a:I

    .line 370
    .line 371
    add-int/2addr p0, v5

    .line 372
    sub-int/2addr p0, v6

    .line 373
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    check-cast p1, Ljava/lang/Long;

    .line 378
    .line 379
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 380
    .line 381
    .line 382
    move-result-wide p1

    .line 383
    invoke-static {p1, p2, v9, v10}, Lj$/com/android/tools/r8/a;->U(JJ)J

    .line 384
    .line 385
    .line 386
    move-result-wide p1

    .line 387
    new-instance v0, Lj$/time/chrono/x;

    .line 388
    .line 389
    invoke-static {p0, v6}, Lj$/time/LocalDate;->k0(II)Lj$/time/LocalDate;

    .line 390
    .line 391
    .line 392
    move-result-object p0

    .line 393
    invoke-direct {v0, p0}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    .line 394
    .line 395
    .line 396
    sget-object p0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    .line 397
    .line 398
    invoke-virtual {v0, p1, p2, p0}, Lj$/time/chrono/x;->d0(JLj$/time/temporal/ChronoUnit;)Lj$/time/chrono/x;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    return-object p0

    .line 403
    :cond_a
    invoke-virtual {p0, v4}, Lj$/time/chrono/v;->y(Lj$/time/temporal/a;)Lj$/time/temporal/s;

    .line 404
    .line 405
    .line 406
    move-result-object p0

    .line 407
    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    check-cast p1, Ljava/lang/Long;

    .line 412
    .line 413
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 414
    .line 415
    .line 416
    move-result-wide p1

    .line 417
    invoke-virtual {p0, p1, p2, v4}, Lj$/time/temporal/s;->a(JLj$/time/temporal/p;)I

    .line 418
    .line 419
    .line 420
    move-result p0

    .line 421
    sget-object p1, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    .line 422
    .line 423
    invoke-static {v1, v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    iget-object p1, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 427
    .line 428
    if-ne v5, v6, :cond_b

    .line 429
    .line 430
    iget p2, p1, Lj$/time/LocalDate;->a:I

    .line 431
    .line 432
    invoke-virtual {p1}, Lj$/time/LocalDate;->e0()I

    .line 433
    .line 434
    .line 435
    move-result p1

    .line 436
    add-int/2addr p1, p0

    .line 437
    sub-int/2addr p1, v6

    .line 438
    invoke-static {p2, p1}, Lj$/time/LocalDate;->k0(II)Lj$/time/LocalDate;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    goto :goto_4

    .line 443
    :cond_b
    iget p1, p1, Lj$/time/LocalDate;->a:I

    .line 444
    .line 445
    add-int/2addr p1, v5

    .line 446
    sub-int/2addr p1, v6

    .line 447
    invoke-static {p1, p0}, Lj$/time/LocalDate;->k0(II)Lj$/time/LocalDate;

    .line 448
    .line 449
    .line 450
    move-result-object p0

    .line 451
    :goto_4
    iget-object p1, v1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 452
    .line 453
    invoke-virtual {p0, p1}, Lj$/time/LocalDate;->f0(Lj$/time/chrono/b;)Z

    .line 454
    .line 455
    .line 456
    move-result p1

    .line 457
    if-nez p1, :cond_c

    .line 458
    .line 459
    invoke-static {p0}, Lj$/time/chrono/y;->h(Lj$/time/LocalDate;)Lj$/time/chrono/y;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    if-ne v1, p1, :cond_c

    .line 464
    .line 465
    new-instance p1, Lj$/time/chrono/x;

    .line 466
    .line 467
    invoke-direct {p1, v1, v5, p0}, Lj$/time/chrono/x;-><init>(Lj$/time/chrono/y;ILj$/time/LocalDate;)V

    .line 468
    .line 469
    .line 470
    return-object p1

    .line 471
    :cond_c
    const-string p0, "Invalid parameters"

    .line 472
    .line 473
    invoke-static {p0}, Lj$/nio/file/m;->k(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    :cond_d
    return-object v2
.end method

.method public final S(III)Lj$/time/chrono/b;
    .locals 0

    .line 1
    new-instance p0, Lj$/time/chrono/x;

    .line 2
    .line 3
    invoke-static {p1, p2, p3}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final U(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lj$/time/chrono/a;->U(Ljava/util/Map;Lj$/time/format/e0;)Lj$/time/chrono/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lj$/time/chrono/x;

    .line 6
    .line 7
    return-object p0
.end method

.method public final V(Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/ChronoZonedDateTime;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/time/chrono/k;->a0(Lj$/time/chrono/l;Lj$/time/Instant;Lj$/time/ZoneId;)Lj$/time/chrono/k;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final Y(J)Z
    .locals 0

    .line 1
    sget-object p0, Lj$/time/chrono/s;->c:Lj$/time/chrono/s;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lj$/time/chrono/s;->Y(J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final h(J)Lj$/time/chrono/b;
    .locals 0

    .line 1
    new-instance p0, Lj$/time/chrono/x;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lj$/time/LocalDate;->j0(J)Lj$/time/LocalDate;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Japanese"

    .line 2
    .line 3
    return-object p0
.end method

.method public final n()Lj$/time/chrono/b;
    .locals 1

    .line 1
    invoke-static {}, Lj$/com/android/tools/r8/a;->X()Lj$/time/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lj$/time/LocalDate;->i0(Lj$/time/a;)Lj$/time/LocalDate;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Lj$/time/chrono/x;

    .line 10
    .line 11
    invoke-static {p0}, Lj$/time/LocalDate;->b0(Lj$/time/temporal/TemporalAccessor;)Lj$/time/LocalDate;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, p0}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "japanese"

    .line 2
    .line 3
    return-object p0
.end method

.method public final s(II)Lj$/time/chrono/b;
    .locals 0

    .line 1
    new-instance p0, Lj$/time/chrono/x;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lj$/time/LocalDate;->k0(II)Lj$/time/LocalDate;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lj$/time/chrono/x;-><init>(Lj$/time/LocalDate;)V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lj$/time/chrono/e0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1, p0}, Lj$/time/chrono/e0;-><init>(BLjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final y(Lj$/time/temporal/a;)Lj$/time/temporal/s;
    .locals 10

    .line 1
    sget-object p0, Lj$/time/chrono/u;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    aget p0, p0, v0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_0
    sget-object p0, Lj$/time/chrono/y;->d:Lj$/time/chrono/y;

    .line 18
    .line 19
    iget p0, p0, Lj$/time/chrono/y;->a:I

    .line 20
    .line 21
    int-to-long p0, p0

    .line 22
    sget-object v0, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    .line 23
    .line 24
    array-length v2, v0

    .line 25
    sub-int/2addr v2, v1

    .line 26
    aget-object v0, v0, v2

    .line 27
    .line 28
    iget v0, v0, Lj$/time/chrono/y;->a:I

    .line 29
    .line 30
    int-to-long v0, v0

    .line 31
    invoke-static {p0, p1, v0, v1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :pswitch_1
    sget-object p0, Lj$/time/chrono/x;->d:Lj$/time/LocalDate;

    .line 37
    .line 38
    iget p0, p0, Lj$/time/LocalDate;->a:I

    .line 39
    .line 40
    int-to-long p0, p0

    .line 41
    const-wide/32 v0, 0x3b9ac9ff

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1, v0, v1}, Lj$/time/temporal/s;->f(JJ)Lj$/time/temporal/s;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_2
    sget-object p0, Lj$/time/chrono/y;->d:Lj$/time/chrono/y;

    .line 50
    .line 51
    sget-object p0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 52
    .line 53
    iget-object p0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 54
    .line 55
    iget-wide p0, p0, Lj$/time/temporal/s;->c:J

    .line 56
    .line 57
    sget-object v2, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    .line 58
    .line 59
    array-length v3, v2

    .line 60
    move-wide v6, p0

    .line 61
    :goto_0
    if-ge v0, v3, :cond_1

    .line 62
    .line 63
    aget-object p0, v2, v0

    .line 64
    .line 65
    iget-object p1, p0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 66
    .line 67
    invoke-virtual {p1}, Lj$/time/LocalDate;->W()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iget-object v4, p0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 72
    .line 73
    invoke-virtual {v4}, Lj$/time/LocalDate;->e0()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    sub-int/2addr p1, v4

    .line 78
    add-int/2addr p1, v1

    .line 79
    int-to-long v4, p1

    .line 80
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-virtual {p0}, Lj$/time/chrono/y;->i()Lj$/time/chrono/y;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    .line 90
    invoke-virtual {p0}, Lj$/time/chrono/y;->i()Lj$/time/chrono/y;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    iget-object p0, p0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 95
    .line 96
    invoke-virtual {p0}, Lj$/time/LocalDate;->e0()I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    sub-int/2addr p0, v1

    .line 101
    int-to-long p0, p0

    .line 102
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->min(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide p0

    .line 106
    move-wide v6, p0

    .line 107
    goto :goto_1

    .line 108
    :cond_0
    move-wide v6, v4

    .line 109
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    sget-object p0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    .line 113
    .line 114
    iget-object p0, p0, Lj$/time/temporal/a;->b:Lj$/time/temporal/s;

    .line 115
    .line 116
    iget-wide v8, p0, Lj$/time/temporal/s;->d:J

    .line 117
    .line 118
    const-wide/16 v4, 0x1

    .line 119
    .line 120
    invoke-static/range {v4 .. v9}, Lj$/time/temporal/s;->g(JJJ)Lj$/time/temporal/s;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    return-object p0

    .line 125
    :pswitch_3
    sget-object p0, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    .line 126
    .line 127
    array-length p1, p0

    .line 128
    sub-int/2addr p1, v1

    .line 129
    aget-object p1, p0, p1

    .line 130
    .line 131
    iget-object p1, p1, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 132
    .line 133
    iget p1, p1, Lj$/time/LocalDate;->a:I

    .line 134
    .line 135
    array-length v2, p0

    .line 136
    sub-int/2addr v2, v1

    .line 137
    aget-object v2, p0, v2

    .line 138
    .line 139
    iget-object v2, v2, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 140
    .line 141
    iget v2, v2, Lj$/time/LocalDate;->a:I

    .line 142
    .line 143
    const v3, 0x3b9aca00

    .line 144
    .line 145
    .line 146
    sub-int/2addr v3, v2

    .line 147
    aget-object p0, p0, v0

    .line 148
    .line 149
    iget-object p0, p0, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 150
    .line 151
    iget p0, p0, Lj$/time/LocalDate;->a:I

    .line 152
    .line 153
    move v0, v1

    .line 154
    :goto_2
    sget-object v2, Lj$/time/chrono/y;->e:[Lj$/time/chrono/y;

    .line 155
    .line 156
    array-length v4, v2

    .line 157
    if-ge v0, v4, :cond_2

    .line 158
    .line 159
    aget-object v2, v2, v0

    .line 160
    .line 161
    iget-object v4, v2, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 162
    .line 163
    iget v4, v4, Lj$/time/LocalDate;->a:I

    .line 164
    .line 165
    sub-int/2addr v4, p0

    .line 166
    add-int/2addr v4, v1

    .line 167
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    iget-object p0, v2, Lj$/time/chrono/y;->b:Lj$/time/LocalDate;

    .line 172
    .line 173
    iget p0, p0, Lj$/time/LocalDate;->a:I

    .line 174
    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_2
    int-to-long v6, v3

    .line 179
    const p0, 0x3b9ac9ff

    .line 180
    .line 181
    .line 182
    sub-int/2addr p0, p1

    .line 183
    int-to-long v8, p0

    .line 184
    const-wide/16 v4, 0x1

    .line 185
    .line 186
    invoke-static/range {v4 .. v9}, Lj$/time/temporal/s;->g(JJJ)Lj$/time/temporal/s;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    return-object p0

    .line 191
    :pswitch_4
    const-string p0, "Unsupported field: "

    .line 192
    .line 193
    invoke-static {p1, p0}, Lj$/nio/file/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const/4 p0, 0x0

    .line 197
    return-object p0

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
