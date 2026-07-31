.class public final Lj$/time/r;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field public a:B

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-byte p1, p0, Lj$/time/r;->a:B

    .line 5
    .line 6
    iput-object p2, p0, Lj$/time/r;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static a(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .locals 6

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/io/StreamCorruptedException;

    .line 5
    .line 6
    const-string p1, "Unknown serialized type"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0

    .line 12
    :pswitch_0
    sget-object p0, Lj$/time/q;->d:Lj$/time/q;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-static {p0, v0, p1}, Lj$/time/q;->a(III)Lj$/time/q;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_1
    sget p0, Lj$/time/MonthDay;->c:I

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p0, p1}, Lj$/time/MonthDay;->of(II)Lj$/time/MonthDay;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :pswitch_2
    sget p0, Lj$/time/u;->c:I

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    .line 57
    .line 58
    int-to-long v1, p0

    .line 59
    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->o(J)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    .line 63
    .line 64
    int-to-long v1, p1

    .line 65
    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->o(J)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lj$/time/u;

    .line 69
    .line 70
    invoke-direct {v0, p0, p1}, Lj$/time/u;-><init>(II)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :pswitch_3
    sget p0, Lj$/time/Year;->b:I

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    invoke-static {p0}, Lj$/time/Year;->u(I)Lj$/time/Year;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_4
    sget p0, Lj$/time/n;->c:I

    .line 86
    .line 87
    sget-object p0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {p1}, Lj$/time/LocalTime;->F(Ljava/io/DataInput;)Lj$/time/LocalTime;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p1}, Lj$/time/ZoneOffset;->F(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v0, Lj$/time/n;

    .line 118
    .line 119
    invoke-direct {v0, p0, p1}, Lj$/time/n;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneOffset;)V

    .line 120
    .line 121
    .line 122
    return-object v0

    .line 123
    :pswitch_5
    sget p0, Lj$/time/p;->c:I

    .line 124
    .line 125
    invoke-static {p1}, Lj$/time/LocalTime;->F(Ljava/io/DataInput;)Lj$/time/LocalTime;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-static {p1}, Lj$/time/ZoneOffset;->F(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-instance v0, Lj$/time/p;

    .line 134
    .line 135
    invoke-direct {v0, p0, p1}, Lj$/time/p;-><init>(Lj$/time/LocalTime;Lj$/time/ZoneOffset;)V

    .line 136
    .line 137
    .line 138
    return-object v0

    .line 139
    :pswitch_6
    invoke-static {p1}, Lj$/time/ZoneOffset;->F(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :pswitch_7
    sget p0, Lj$/time/v;->d:I

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const/4 p1, 0x0

    .line 151
    invoke-static {p0, p1}, Lj$/time/ZoneId;->w(Ljava/lang/String;Z)Lj$/time/ZoneId;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    return-object p0

    .line 156
    :pswitch_8
    sget-object p0, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    .line 157
    .line 158
    sget-object p0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    .line 159
    .line 160
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {p1}, Lj$/time/LocalTime;->F(Ljava/io/DataInput;)Lj$/time/LocalTime;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-static {p0, v0}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-static {p1}, Lj$/time/ZoneOffset;->F(Ljava/io/DataInput;)Lj$/time/ZoneOffset;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-static {v1, p1}, Lj$/time/r;->a(BLjava/io/ObjectInput;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    check-cast p1, Lj$/time/ZoneId;

    .line 197
    .line 198
    const-string v1, "localDateTime"

    .line 199
    .line 200
    invoke-static {p0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    const-string v1, "offset"

    .line 204
    .line 205
    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const-string v1, "zone"

    .line 209
    .line 210
    invoke-static {p1, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    instance-of v1, p1, Lj$/time/ZoneOffset;

    .line 214
    .line 215
    if-eqz v1, :cond_1

    .line 216
    .line 217
    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_0

    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_0
    const-string p0, "ZoneId must match ZoneOffset"

    .line 225
    .line 226
    invoke-static {p0}, Lj$/time/h;->c(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const/4 p0, 0x0

    .line 230
    return-object p0

    .line 231
    :cond_1
    :goto_0
    new-instance v1, Lj$/time/ZonedDateTime;

    .line 232
    .line 233
    invoke-direct {v1, p0, p1, v0}, Lj$/time/ZonedDateTime;-><init>(Lj$/time/LocalDateTime;Lj$/time/ZoneId;Lj$/time/ZoneOffset;)V

    .line 234
    .line 235
    .line 236
    return-object v1

    .line 237
    :pswitch_9
    sget-object p0, Lj$/time/LocalDateTime;->c:Lj$/time/LocalDateTime;

    .line 238
    .line 239
    sget-object p0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    .line 240
    .line 241
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    invoke-static {p0, v0, v1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    invoke-static {p1}, Lj$/time/LocalTime;->F(Ljava/io/DataInput;)Lj$/time/LocalTime;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {p0, p1}, Lj$/time/LocalDateTime;->of(Lj$/time/LocalDate;Lj$/time/LocalTime;)Lj$/time/LocalDateTime;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0

    .line 266
    :pswitch_a
    invoke-static {p1}, Lj$/time/LocalTime;->F(Ljava/io/DataInput;)Lj$/time/LocalTime;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    return-object p0

    .line 271
    :pswitch_b
    sget-object p0, Lj$/time/LocalDate;->d:Lj$/time/LocalDate;

    .line 272
    .line 273
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 274
    .line 275
    .line 276
    move-result p0

    .line 277
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    invoke-static {p0, v0, p1}, Lj$/time/LocalDate;->of(III)Lj$/time/LocalDate;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    return-object p0

    .line 290
    :pswitch_c
    sget-object p0, Lj$/time/Instant;->c:Lj$/time/Instant;

    .line 291
    .line 292
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    .line 293
    .line 294
    .line 295
    move-result-wide v0

    .line 296
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 297
    .line 298
    .line 299
    move-result p0

    .line 300
    int-to-long p0, p0

    .line 301
    invoke-static {v0, v1, p0, p1}, Lj$/time/Instant;->w(JJ)Lj$/time/Instant;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    return-object p0

    .line 306
    :pswitch_d
    sget-object p0, Lj$/time/Duration;->c:Lj$/time/Duration;

    .line 307
    .line 308
    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    .line 309
    .line 310
    .line 311
    move-result-wide v0

    .line 312
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    .line 313
    .line 314
    .line 315
    move-result p0

    .line 316
    int-to-long p0, p0

    .line 317
    const-wide/32 v2, 0x3b9aca00

    .line 318
    .line 319
    .line 320
    invoke-static {p0, p1, v2, v3}, Lj$/time/a;->T(JJ)J

    .line 321
    .line 322
    .line 323
    move-result-wide v4

    .line 324
    invoke-static {v0, v1, v4, v5}, Lj$/time/a;->P(JJ)J

    .line 325
    .line 326
    .line 327
    move-result-wide v0

    .line 328
    invoke-static {p0, p1, v2, v3}, Lj$/time/a;->S(JJ)J

    .line 329
    .line 330
    .line 331
    move-result-wide p0

    .line 332
    long-to-int p0, p0

    .line 333
    invoke-static {v0, v1, p0}, Lj$/time/Duration;->g(JI)Lj$/time/Duration;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    return-object p0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lj$/time/r;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-byte v0, p0, Lj$/time/r;->a:B

    .line 6
    .line 7
    invoke-static {v0, p1}, Lj$/time/r;->a(BLjava/io/ObjectInput;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lj$/time/r;->b:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3

    .line 1
    iget-byte v0, p0, Lj$/time/r;->a:B

    .line 2
    .line 3
    iget-object p0, p0, Lj$/time/r;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 6
    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    new-instance p0, Ljava/io/InvalidClassException;

    .line 12
    .line 13
    const-string p1, "Unknown serialized type"

    .line 14
    .line 15
    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0

    .line 19
    :pswitch_0
    check-cast p0, Lj$/time/q;

    .line 20
    .line 21
    iget v0, p0, Lj$/time/q;->a:I

    .line 22
    .line 23
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lj$/time/q;->b:I

    .line 27
    .line 28
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget p0, p0, Lj$/time/q;->c:I

    .line 32
    .line 33
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_1
    check-cast p0, Lj$/time/MonthDay;

    .line 38
    .line 39
    iget v0, p0, Lj$/time/MonthDay;->a:I

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 42
    .line 43
    .line 44
    iget p0, p0, Lj$/time/MonthDay;->b:I

    .line 45
    .line 46
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    check-cast p0, Lj$/time/u;

    .line 51
    .line 52
    iget v0, p0, Lj$/time/u;->a:I

    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    iget p0, p0, Lj$/time/u;->b:I

    .line 58
    .line 59
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_3
    check-cast p0, Lj$/time/Year;

    .line 64
    .line 65
    iget p0, p0, Lj$/time/Year;->a:I

    .line 66
    .line 67
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_4
    check-cast p0, Lj$/time/n;

    .line 72
    .line 73
    iget-object v0, p0, Lj$/time/n;->a:Lj$/time/LocalDateTime;

    .line 74
    .line 75
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 76
    .line 77
    iget v2, v1, Lj$/time/LocalDate;->a:I

    .line 78
    .line 79
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 80
    .line 81
    .line 82
    iget-short v2, v1, Lj$/time/LocalDate;->b:S

    .line 83
    .line 84
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 85
    .line 86
    .line 87
    iget-short v1, v1, Lj$/time/LocalDate;->c:S

    .line 88
    .line 89
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->J(Ljava/io/DataOutput;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lj$/time/n;->b:Lj$/time/ZoneOffset;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->G(Ljava/io/DataOutput;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_5
    check-cast p0, Lj$/time/p;

    .line 104
    .line 105
    iget-object v0, p0, Lj$/time/p;->a:Lj$/time/LocalTime;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->J(Ljava/io/DataOutput;)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lj$/time/p;->b:Lj$/time/ZoneOffset;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->G(Ljava/io/DataOutput;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_6
    check-cast p0, Lj$/time/ZoneOffset;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lj$/time/ZoneOffset;->G(Ljava/io/DataOutput;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_7
    check-cast p0, Lj$/time/v;

    .line 123
    .line 124
    iget-object p0, p0, Lj$/time/v;->b:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_8
    check-cast p0, Lj$/time/ZonedDateTime;

    .line 131
    .line 132
    iget-object v0, p0, Lj$/time/ZonedDateTime;->a:Lj$/time/LocalDateTime;

    .line 133
    .line 134
    iget-object v1, v0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 135
    .line 136
    iget v2, v1, Lj$/time/LocalDate;->a:I

    .line 137
    .line 138
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 139
    .line 140
    .line 141
    iget-short v2, v1, Lj$/time/LocalDate;->b:S

    .line 142
    .line 143
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 144
    .line 145
    .line 146
    iget-short v1, v1, Lj$/time/LocalDate;->c:S

    .line 147
    .line 148
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, v0, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Lj$/time/LocalTime;->J(Ljava/io/DataOutput;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lj$/time/ZonedDateTime;->b:Lj$/time/ZoneOffset;

    .line 157
    .line 158
    invoke-virtual {v0, p1}, Lj$/time/ZoneOffset;->G(Ljava/io/DataOutput;)V

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lj$/time/ZonedDateTime;->c:Lj$/time/ZoneId;

    .line 162
    .line 163
    invoke-virtual {p0, p1}, Lj$/time/ZoneId;->z(Ljava/io/DataOutput;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_9
    check-cast p0, Lj$/time/LocalDateTime;

    .line 168
    .line 169
    iget-object v0, p0, Lj$/time/LocalDateTime;->a:Lj$/time/LocalDate;

    .line 170
    .line 171
    iget v1, v0, Lj$/time/LocalDate;->a:I

    .line 172
    .line 173
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 174
    .line 175
    .line 176
    iget-short v1, v0, Lj$/time/LocalDate;->b:S

    .line 177
    .line 178
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 179
    .line 180
    .line 181
    iget-short v0, v0, Lj$/time/LocalDate;->c:S

    .line 182
    .line 183
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 184
    .line 185
    .line 186
    iget-object p0, p0, Lj$/time/LocalDateTime;->b:Lj$/time/LocalTime;

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->J(Ljava/io/DataOutput;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_a
    check-cast p0, Lj$/time/LocalTime;

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Lj$/time/LocalTime;->J(Ljava/io/DataOutput;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_b
    check-cast p0, Lj$/time/LocalDate;

    .line 199
    .line 200
    iget v0, p0, Lj$/time/LocalDate;->a:I

    .line 201
    .line 202
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 203
    .line 204
    .line 205
    iget-short v0, p0, Lj$/time/LocalDate;->b:S

    .line 206
    .line 207
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 208
    .line 209
    .line 210
    iget-short p0, p0, Lj$/time/LocalDate;->c:S

    .line 211
    .line 212
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 213
    .line 214
    .line 215
    return-void

    .line 216
    :pswitch_c
    check-cast p0, Lj$/time/Instant;

    .line 217
    .line 218
    iget-wide v0, p0, Lj$/time/Instant;->a:J

    .line 219
    .line 220
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 221
    .line 222
    .line 223
    iget p0, p0, Lj$/time/Instant;->b:I

    .line 224
    .line 225
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_d
    check-cast p0, Lj$/time/Duration;

    .line 230
    .line 231
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    .line 232
    .line 233
    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 234
    .line 235
    .line 236
    iget p0, p0, Lj$/time/Duration;->b:I

    .line 237
    .line 238
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 239
    .line 240
    .line 241
    return-void

    .line 242
    nop

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
