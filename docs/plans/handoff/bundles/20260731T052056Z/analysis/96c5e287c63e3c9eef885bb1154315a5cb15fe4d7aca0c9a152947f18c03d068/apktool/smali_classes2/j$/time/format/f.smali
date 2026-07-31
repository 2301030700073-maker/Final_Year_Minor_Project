.class public final Lj$/time/format/f;
.super Lj$/time/format/j;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final g:Z


# direct methods
.method public constructor <init>(Lj$/time/temporal/n;IIZ)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lj$/time/format/f;-><init>(Lj$/time/temporal/n;IIZI)V

    .line 8
    .line 9
    .line 10
    const-string p0, "field"

    .line 11
    .line 12
    invoke-static {v1, p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Lj$/time/temporal/n;->range()Lj$/time/temporal/q;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-wide p1, p0, Lj$/time/temporal/q;->a:J

    .line 20
    .line 21
    iget-wide p3, p0, Lj$/time/temporal/q;->b:J

    .line 22
    .line 23
    cmp-long p1, p1, p3

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    iget-wide p3, p0, Lj$/time/temporal/q;->c:J

    .line 29
    .line 30
    iget-wide p0, p0, Lj$/time/temporal/q;->d:J

    .line 31
    .line 32
    cmp-long p0, p3, p0

    .line 33
    .line 34
    if-nez p0, :cond_3

    .line 35
    .line 36
    if-ltz v2, :cond_2

    .line 37
    .line 38
    const/16 p0, 0x9

    .line 39
    .line 40
    if-gt v2, p0, :cond_2

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    if-lt v3, p1, :cond_1

    .line 44
    .line 45
    if-gt v3, p0, :cond_1

    .line 46
    .line 47
    if-lt v3, v2, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string p2, "Maximum width must exceed or equal the minimum width but "

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p2, " < "

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :cond_1
    const-string p0, "Maximum width must be from 1 to 9 inclusive but was "

    .line 79
    .line 80
    invoke-static {p0, v3}, Lj$/time/h;->m(Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    throw p2

    .line 84
    :cond_2
    const-string p0, "Minimum width must be from 0 to 9 inclusive but was "

    .line 85
    .line 86
    invoke-static {p0, v2}, Lj$/time/h;->m(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    throw p2

    .line 90
    :cond_3
    const-string p0, "Field must have a fixed set of values: "

    .line 91
    .line 92
    invoke-static {p0, v1}, Lj$/time/d;->a(Ljava/lang/String;Lj$/time/temporal/n;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-static {p0}, Lj$/time/h;->c(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p2
.end method

.method public constructor <init>(Lj$/time/temporal/n;IIZI)V
    .locals 6

    .line 100
    sget-object v4, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/n;IILj$/time/format/f0;I)V

    .line 101
    iput-boolean p4, v0, Lj$/time/format/f;->g:Z

    return-void
.end method


# virtual methods
.method public final b(Lj$/time/format/w;)Z
    .locals 1

    .line 1
    iget-boolean p1, p1, Lj$/time/format/w;->c:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lj$/time/format/j;->b:I

    .line 6
    .line 7
    iget v0, p0, Lj$/time/format/j;->c:I

    .line 8
    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-boolean p0, p0, Lj$/time/format/f;->g:Z

    .line 12
    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final d()Lj$/time/format/j;
    .locals 8

    .line 1
    iget v0, p0, Lj$/time/format/j;->e:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v2, Lj$/time/format/f;

    .line 8
    .line 9
    iget-boolean v6, p0, Lj$/time/format/f;->g:Z

    .line 10
    .line 11
    const/4 v7, -0x1

    .line 12
    iget-object v3, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 13
    .line 14
    iget v4, p0, Lj$/time/format/j;->b:I

    .line 15
    .line 16
    iget v5, p0, Lj$/time/format/j;->c:I

    .line 17
    .line 18
    invoke-direct/range {v2 .. v7}, Lj$/time/format/f;-><init>(Lj$/time/temporal/n;IIZI)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method

.method public final e(I)Lj$/time/format/j;
    .locals 6

    .line 1
    new-instance v0, Lj$/time/format/f;

    .line 2
    .line 3
    iget v1, p0, Lj$/time/format/j;->e:I

    .line 4
    .line 5
    add-int v5, v1, p1

    .line 6
    .line 7
    iget-object v1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 8
    .line 9
    iget v2, p0, Lj$/time/format/j;->b:I

    .line 10
    .line 11
    iget v3, p0, Lj$/time/format/j;->c:I

    .line 12
    .line 13
    iget-boolean v4, p0, Lj$/time/format/f;->g:Z

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lj$/time/format/f;-><init>(Lj$/time/temporal/n;IIZI)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final f(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lj$/time/format/y;->a(Lj$/time/temporal/n;)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-object p1, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    .line 12
    .line 13
    iget-object p1, p1, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-interface {v0}, Lj$/time/temporal/n;->range()Lj$/time/temporal/q;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, v3, v4, v0}, Lj$/time/temporal/q;->b(JLj$/time/temporal/n;)V

    .line 24
    .line 25
    .line 26
    iget-wide v5, v1, Lj$/time/temporal/q;->a:J

    .line 27
    .line 28
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-wide v5, v1, Lj$/time/temporal/q;->d:J

    .line 33
    .line 34
    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v5, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 57
    .line 58
    const/16 v4, 0x9

    .line 59
    .line 60
    invoke-virtual {v0, v1, v4, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-nez v4, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    new-instance v1, Ljava/math/BigDecimal;

    .line 80
    .line 81
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 82
    .line 83
    invoke-direct {v1, v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    :goto_0
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    const/4 v4, 0x1

    .line 96
    const/16 v5, 0x2e

    .line 97
    .line 98
    iget-boolean v6, p0, Lj$/time/format/f;->g:Z

    .line 99
    .line 100
    iget v7, p0, Lj$/time/format/j;->b:I

    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    if-lez v7, :cond_4

    .line 105
    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    if-ge v2, v7, :cond_4

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    const/16 p0, 0x30

    .line 120
    .line 121
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_4
    return v4

    .line 128
    :cond_5
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iget p0, p0, Lj$/time/format/j;->c:I

    .line 137
    .line 138
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    invoke-virtual {v1, p0, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const/4 v0, 0x2

    .line 151
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    if-eqz v6, :cond_6

    .line 159
    .line 160
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    :cond_6
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    return v4
.end method

.method public final g(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 12

    .line 1
    iget-boolean v0, p1, Lj$/time/format/w;->c:Z

    .line 2
    .line 3
    iget-object v1, p1, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    .line 4
    .line 5
    iget-object v1, v1, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lj$/time/format/f;->b(Lj$/time/format/w;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget v0, p0, Lj$/time/format/j;->b:I

    .line 20
    .line 21
    :goto_1
    iget-boolean v3, p1, Lj$/time/format/w;->c:Z

    .line 22
    .line 23
    const/16 v4, 0x9

    .line 24
    .line 25
    if-nez v3, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lj$/time/format/f;->b(Lj$/time/format/w;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move v3, v4

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    :goto_2
    iget v3, p0, Lj$/time/format/j;->c:I

    .line 37
    .line 38
    :goto_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-ne p3, v5, :cond_4

    .line 43
    .line 44
    if-lez v0, :cond_5

    .line 45
    .line 46
    not-int p0, p3

    .line 47
    return p0

    .line 48
    :cond_4
    iget-boolean v6, p0, Lj$/time/format/f;->g:Z

    .line 49
    .line 50
    if-eqz v6, :cond_7

    .line 51
    .line 52
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    const/16 v7, 0x2e

    .line 60
    .line 61
    if-eq v6, v7, :cond_6

    .line 62
    .line 63
    if-lez v0, :cond_5

    .line 64
    .line 65
    not-int p0, p3

    .line 66
    return p0

    .line 67
    :cond_5
    return p3

    .line 68
    :cond_6
    add-int/lit8 p3, p3, 0x1

    .line 69
    .line 70
    :cond_7
    move v10, p3

    .line 71
    add-int/2addr v0, v10

    .line 72
    if-le v0, v5, :cond_8

    .line 73
    .line 74
    not-int p0, v10

    .line 75
    return p0

    .line 76
    :cond_8
    add-int/2addr v3, v10

    .line 77
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    move v3, v2

    .line 82
    move v11, v10

    .line 83
    :goto_4
    if-ge v11, p3, :cond_b

    .line 84
    .line 85
    add-int/lit8 v5, v11, 0x1

    .line 86
    .line 87
    invoke-interface {p2, v11}, Ljava/lang/CharSequence;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    add-int/lit8 v6, v6, -0x30

    .line 95
    .line 96
    if-ltz v6, :cond_9

    .line 97
    .line 98
    if-gt v6, v4, :cond_9

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_9
    const/4 v6, -0x1

    .line 102
    :goto_5
    if-gez v6, :cond_a

    .line 103
    .line 104
    if-ge v5, v0, :cond_b

    .line 105
    .line 106
    not-int p0, v10

    .line 107
    return p0

    .line 108
    :cond_a
    mul-int/lit8 v3, v3, 0xa

    .line 109
    .line 110
    add-int/2addr v3, v6

    .line 111
    move v11, v5

    .line 112
    goto :goto_4

    .line 113
    :cond_b
    new-instance p2, Ljava/math/BigDecimal;

    .line 114
    .line 115
    invoke-direct {p2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    .line 116
    .line 117
    .line 118
    sub-int p3, v11, v10

    .line 119
    .line 120
    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    iget-object p3, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 125
    .line 126
    invoke-interface {p3}, Lj$/time/temporal/n;->range()Lj$/time/temporal/q;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    iget-wide v0, p3, Lj$/time/temporal/q;->a:J

    .line 131
    .line 132
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-wide v3, p3, Lj$/time/temporal/q;->d:J

    .line 137
    .line 138
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    invoke-virtual {p3, v0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 143
    .line 144
    .line 145
    move-result-object p3

    .line 146
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 147
    .line 148
    invoke-virtual {p3, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    sget-object p3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 157
    .line 158
    invoke-virtual {p2, v2, p3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p2}, Ljava/math/BigDecimal;->longValueExact()J

    .line 167
    .line 168
    .line 169
    move-result-wide v8

    .line 170
    iget-object v7, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 171
    .line 172
    move-object v6, p1

    .line 173
    invoke-virtual/range {v6 .. v11}, Lj$/time/format/w;->g(Lj$/time/temporal/n;JII)I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lj$/time/format/f;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, ",DecimalPoint"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "Fraction("

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ","

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v3, p0, Lj$/time/format/j;->b:I

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget p0, p0, Lj$/time/format/j;->c:I

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method
