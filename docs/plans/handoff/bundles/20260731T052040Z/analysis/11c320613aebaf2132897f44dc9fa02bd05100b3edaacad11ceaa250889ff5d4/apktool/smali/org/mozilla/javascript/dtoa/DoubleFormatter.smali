.class public Lorg/mozilla/javascript/dtoa/DoubleFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BQ_MASK:I = 0x7ff

.field private static final C_MIN:J = 0x10000000000000L

.field static final C_TINY:J = 0x3L

.field static final E_MAX:I = 0x135

.field static final E_MIN:I = -0x143

.field static final H:I = 0x11

.field private static final MASK_63:J = 0x7fffffffffffffffL

.field static final P:I = 0x35

.field static final Q_MAX:I = 0x3cb

.field static final Q_MIN:I = -0x432

.field private static final T_MASK:J = 0xfffffffffffffL

.field private static final W:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static rop(JJJ)J
    .locals 17

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long v2, p2, v0

    .line 7
    .line 8
    const/16 v4, 0x20

    .line 9
    .line 10
    shr-long v5, p2, v4

    .line 11
    .line 12
    and-long v7, p4, v0

    .line 13
    .line 14
    shr-long v9, p4, v4

    .line 15
    .line 16
    mul-long v11, v2, v7

    .line 17
    .line 18
    ushr-long/2addr v11, v4

    .line 19
    mul-long v13, v5, v7

    .line 20
    .line 21
    add-long/2addr v13, v11

    .line 22
    and-long v11, v13, v0

    .line 23
    .line 24
    shr-long/2addr v13, v4

    .line 25
    mul-long/2addr v2, v9

    .line 26
    add-long/2addr v2, v11

    .line 27
    shr-long/2addr v2, v4

    .line 28
    mul-long/2addr v5, v9

    .line 29
    add-long/2addr v5, v13

    .line 30
    add-long/2addr v5, v2

    .line 31
    mul-long v2, p0, p4

    .line 32
    .line 33
    and-long v11, p0, v0

    .line 34
    .line 35
    shr-long v13, p0, v4

    .line 36
    .line 37
    mul-long v15, v11, v7

    .line 38
    .line 39
    ushr-long/2addr v15, v4

    .line 40
    mul-long/2addr v7, v13

    .line 41
    add-long/2addr v7, v15

    .line 42
    and-long/2addr v0, v7

    .line 43
    shr-long/2addr v7, v4

    .line 44
    mul-long/2addr v11, v9

    .line 45
    add-long/2addr v11, v0

    .line 46
    shr-long v0, v11, v4

    .line 47
    .line 48
    mul-long/2addr v13, v9

    .line 49
    add-long/2addr v13, v7

    .line 50
    add-long/2addr v13, v0

    .line 51
    const/4 v0, 0x1

    .line 52
    ushr-long v0, v2, v0

    .line 53
    .line 54
    add-long/2addr v0, v5

    .line 55
    const/16 v2, 0x3f

    .line 56
    .line 57
    ushr-long v3, v0, v2

    .line 58
    .line 59
    add-long/2addr v13, v3

    .line 60
    const-wide v3, 0x7fffffffffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    and-long/2addr v0, v3

    .line 66
    add-long/2addr v0, v3

    .line 67
    ushr-long/2addr v0, v2

    .line 68
    or-long/2addr v0, v13

    .line 69
    return-wide v0
.end method

.method public static toDecimal(D)Lorg/mozilla/javascript/dtoa/Decimal;
    .locals 4

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide v0, 0xfffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v0, p0

    .line 11
    const/16 v2, 0x34

    .line 12
    .line 13
    ushr-long v2, p0, v2

    .line 14
    .line 15
    long-to-int v2, v2

    .line 16
    and-int/lit16 v2, v2, 0x7ff

    .line 17
    .line 18
    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalImpl(JJI)Lorg/mozilla/javascript/dtoa/Decimal;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method private static toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;
    .locals 27

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move/from16 v3, p4

    .line 6
    .line 7
    long-to-int v4, v1

    .line 8
    const/4 v5, 0x1

    .line 9
    and-int/2addr v4, v5

    .line 10
    const/4 v6, 0x2

    .line 11
    shl-long v7, v1, v6

    .line 12
    .line 13
    const-wide/16 v9, 0x2

    .line 14
    .line 15
    add-long v11, v7, v9

    .line 16
    .line 17
    const-wide/high16 v13, 0x10000000000000L

    .line 18
    .line 19
    cmp-long v1, v1, v13

    .line 20
    .line 21
    const-wide/16 v13, 0x1

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const/16 v1, -0x432

    .line 26
    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sub-long v1, v7, v13

    .line 31
    .line 32
    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog10threeQuartersPow2(I)I

    .line 33
    .line 34
    .line 35
    move-result v9

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    sub-long v1, v7, v9

    .line 38
    .line 39
    invoke-static {v0}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog10pow2(I)I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    :goto_1
    neg-int v10, v9

    .line 44
    invoke-static {v10}, Lorg/mozilla/javascript/dtoa/MathUtils;->flog2pow10(I)I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    add-int/2addr v0, v10

    .line 49
    add-int/2addr v0, v6

    .line 50
    invoke-static {v9}, Lorg/mozilla/javascript/dtoa/MathUtils;->g1(I)J

    .line 51
    .line 52
    .line 53
    move-result-wide v15

    .line 54
    invoke-static {v9}, Lorg/mozilla/javascript/dtoa/MathUtils;->g0(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v17

    .line 58
    shl-long v19, v7, v0

    .line 59
    .line 60
    invoke-static/range {v15 .. v20}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->rop(JJJ)J

    .line 61
    .line 62
    .line 63
    move-result-wide v7

    .line 64
    shl-long v19, v1, v0

    .line 65
    .line 66
    invoke-static/range {v15 .. v20}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->rop(JJJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    shl-long v19, v11, v0

    .line 71
    .line 72
    invoke-static/range {v15 .. v20}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->rop(JJJ)J

    .line 73
    .line 74
    .line 75
    move-result-wide v10

    .line 76
    shr-long v15, v7, v6

    .line 77
    .line 78
    const-wide/16 v17, 0x64

    .line 79
    .line 80
    cmp-long v0, v15, v17

    .line 81
    .line 82
    if-ltz v0, :cond_5

    .line 83
    .line 84
    const-wide v17, 0xffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    and-long v19, v15, v17

    .line 90
    .line 91
    const/16 v0, 0x22

    .line 92
    .line 93
    shr-long v21, v7, v0

    .line 94
    .line 95
    const-wide v23, 0x999999a0L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    mul-long v25, v19, v23

    .line 101
    .line 102
    const/16 v0, 0x20

    .line 103
    .line 104
    ushr-long v25, v25, v0

    .line 105
    .line 106
    mul-long v23, v23, v21

    .line 107
    .line 108
    add-long v23, v23, v25

    .line 109
    .line 110
    and-long v17, v23, v17

    .line 111
    .line 112
    shr-long v23, v23, v0

    .line 113
    .line 114
    const-wide/32 v25, 0x19999999

    .line 115
    .line 116
    .line 117
    mul-long v19, v19, v25

    .line 118
    .line 119
    add-long v19, v19, v17

    .line 120
    .line 121
    shr-long v17, v19, v0

    .line 122
    .line 123
    mul-long v21, v21, v25

    .line 124
    .line 125
    add-long v21, v21, v23

    .line 126
    .line 127
    add-long v21, v21, v17

    .line 128
    .line 129
    const-wide/16 v17, 0xa

    .line 130
    .line 131
    mul-long v21, v21, v17

    .line 132
    .line 133
    add-long v17, v21, v17

    .line 134
    .line 135
    move v0, v5

    .line 136
    move/from16 v19, v6

    .line 137
    .line 138
    int-to-long v5, v4

    .line 139
    add-long v23, v1, v5

    .line 140
    .line 141
    shl-long v25, v21, v19

    .line 142
    .line 143
    cmp-long v20, v23, v25

    .line 144
    .line 145
    move/from16 p0, v0

    .line 146
    .line 147
    if-gtz v20, :cond_2

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_2
    const/4 v0, 0x0

    .line 151
    :goto_2
    shl-long v23, v17, v19

    .line 152
    .line 153
    add-long v23, v23, v5

    .line 154
    .line 155
    cmp-long v5, v23, v10

    .line 156
    .line 157
    if-gtz v5, :cond_3

    .line 158
    .line 159
    move/from16 v5, p0

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_3
    const/4 v5, 0x0

    .line 163
    :goto_3
    if-eq v0, v5, :cond_6

    .line 164
    .line 165
    new-instance v1, Lorg/mozilla/javascript/dtoa/Decimal;

    .line 166
    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    move-wide/from16 v4, v21

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_4
    move-wide/from16 v4, v17

    .line 173
    .line 174
    :goto_4
    invoke-direct {v1, v4, v5, v9, v3}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    .line 175
    .line 176
    .line 177
    return-object v1

    .line 178
    :cond_5
    move/from16 p0, v5

    .line 179
    .line 180
    move/from16 v19, v6

    .line 181
    .line 182
    :cond_6
    add-long v5, v15, v13

    .line 183
    .line 184
    move-wide/from16 p1, v13

    .line 185
    .line 186
    int-to-long v12, v4

    .line 187
    add-long/2addr v1, v12

    .line 188
    shl-long v17, v15, v19

    .line 189
    .line 190
    cmp-long v1, v1, v17

    .line 191
    .line 192
    if-gtz v1, :cond_7

    .line 193
    .line 194
    move/from16 v1, p0

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_7
    const/4 v1, 0x0

    .line 198
    :goto_5
    shl-long v17, v5, v19

    .line 199
    .line 200
    add-long v17, v17, v12

    .line 201
    .line 202
    cmp-long v2, v17, v10

    .line 203
    .line 204
    if-gtz v2, :cond_8

    .line 205
    .line 206
    move/from16 v12, p0

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_8
    const/4 v12, 0x0

    .line 210
    :goto_6
    if-eq v1, v12, :cond_a

    .line 211
    .line 212
    new-instance v0, Lorg/mozilla/javascript/dtoa/Decimal;

    .line 213
    .line 214
    if-eqz v1, :cond_9

    .line 215
    .line 216
    move-wide v5, v15

    .line 217
    :cond_9
    add-int v9, v9, p3

    .line 218
    .line 219
    invoke-direct {v0, v5, v6, v9, v3}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    .line 220
    .line 221
    .line 222
    return-object v0

    .line 223
    :cond_a
    add-long v0, v15, v5

    .line 224
    .line 225
    shl-long v0, v0, p0

    .line 226
    .line 227
    sub-long/2addr v7, v0

    .line 228
    new-instance v0, Lorg/mozilla/javascript/dtoa/Decimal;

    .line 229
    .line 230
    const-wide/16 v1, 0x0

    .line 231
    .line 232
    cmp-long v4, v7, v1

    .line 233
    .line 234
    if-ltz v4, :cond_b

    .line 235
    .line 236
    if-nez v4, :cond_c

    .line 237
    .line 238
    and-long v7, v15, p1

    .line 239
    .line 240
    cmp-long v1, v7, v1

    .line 241
    .line 242
    if-nez v1, :cond_c

    .line 243
    .line 244
    :cond_b
    move-wide v5, v15

    .line 245
    :cond_c
    add-int v9, v9, p3

    .line 246
    .line 247
    invoke-direct {v0, v5, v6, v9, v3}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    .line 248
    .line 249
    .line 250
    return-object v0
.end method

.method private static toDecimalImpl(JJI)Lorg/mozilla/javascript/dtoa/Decimal;
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p0, p0, v0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-gez p0, :cond_0

    .line 8
    .line 9
    move p0, p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move p0, v2

    .line 12
    :goto_0
    if-eqz p4, :cond_2

    .line 13
    .line 14
    rsub-int p1, p4, 0x433

    .line 15
    .line 16
    const-wide/high16 v0, 0x10000000000000L

    .line 17
    .line 18
    or-long/2addr p2, v0

    .line 19
    if-lez p1, :cond_1

    .line 20
    .line 21
    const/16 p4, 0x35

    .line 22
    .line 23
    if-ge p1, p4, :cond_1

    .line 24
    .line 25
    shr-long v0, p2, p1

    .line 26
    .line 27
    shl-long v3, v0, p1

    .line 28
    .line 29
    cmp-long p4, v3, p2

    .line 30
    .line 31
    if-nez p4, :cond_1

    .line 32
    .line 33
    new-instance p1, Lorg/mozilla/javascript/dtoa/Decimal;

    .line 34
    .line 35
    invoke-direct {p1, v0, v1, v2, p0}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    neg-int p1, p1

    .line 40
    invoke-static {p1, p2, p3, v2, p0}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_2
    cmp-long p4, p2, v0

    .line 46
    .line 47
    if-eqz p4, :cond_4

    .line 48
    .line 49
    const-wide/16 v0, 0x3

    .line 50
    .line 51
    cmp-long p1, p2, v0

    .line 52
    .line 53
    const/16 p4, -0x432

    .line 54
    .line 55
    if-gez p1, :cond_3

    .line 56
    .line 57
    const-wide/16 v0, 0xa

    .line 58
    .line 59
    mul-long/2addr p2, v0

    .line 60
    const/4 p1, -0x1

    .line 61
    invoke-static {p4, p2, p3, p1, p0}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_3
    invoke-static {p4, p2, p3, v2, p0}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalFull(IJIZ)Lorg/mozilla/javascript/dtoa/Decimal;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_4
    new-instance p0, Lorg/mozilla/javascript/dtoa/Decimal;

    .line 72
    .line 73
    invoke-direct {p0, v0, v1, p1, v2}, Lorg/mozilla/javascript/dtoa/Decimal;-><init>(JIZ)V

    .line 74
    .line 75
    .line 76
    return-object p0
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide v0, 0xfffffffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr v0, p0

    .line 11
    const/16 v2, 0x34

    .line 12
    .line 13
    ushr-long v2, p0, v2

    .line 14
    .line 15
    long-to-int v2, v2

    .line 16
    const/16 v3, 0x7ff

    .line 17
    .line 18
    and-int/2addr v2, v3

    .line 19
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    if-ge v2, v3, :cond_1

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    cmp-long v3, v0, v4

    .line 26
    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    const-string p0, "0"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_0
    invoke-static {p0, p1, v0, v1, v2}, Lorg/mozilla/javascript/dtoa/DoubleFormatter;->toDecimalImpl(JJI)Lorg/mozilla/javascript/dtoa/Decimal;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lorg/mozilla/javascript/dtoa/Decimal;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    cmp-long v0, v0, v4

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const-string p0, "NaN"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_2
    cmp-long p0, p0, v4

    .line 49
    .line 50
    if-lez p0, :cond_3

    .line 51
    .line 52
    const-string p0, "Infinity"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_3
    const-string p0, "-Infinity"

    .line 56
    .line 57
    return-object p0
.end method
