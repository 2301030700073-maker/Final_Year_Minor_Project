.class public Lj$/time/format/j;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lj$/time/format/e;


# static fields
.field public static final f:[J


# instance fields
.field public final a:Lj$/time/temporal/n;

.field public final b:I

.field public final c:I

.field public final d:Lj$/time/format/f0;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v0, v0, [J

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lj$/time/format/j;->f:[J

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method public constructor <init>(Lj$/time/temporal/n;IILj$/time/format/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 5
    .line 6
    iput p2, p0, Lj$/time/format/j;->b:I

    .line 7
    .line 8
    iput p3, p0, Lj$/time/format/j;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lj$/time/format/j;->d:Lj$/time/format/f0;

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lj$/time/format/j;->e:I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lj$/time/temporal/n;IILj$/time/format/f0;I)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 18
    iput p2, p0, Lj$/time/format/j;->b:I

    .line 19
    iput p3, p0, Lj$/time/format/j;->c:I

    .line 20
    iput-object p4, p0, Lj$/time/format/j;->d:Lj$/time/format/f0;

    .line 21
    iput p5, p0, Lj$/time/format/j;->e:I

    return-void
.end method


# virtual methods
.method public a(Lj$/time/format/y;J)J
    .locals 0

    .line 1
    return-wide p2
.end method

.method public b(Lj$/time/format/w;)Z
    .locals 1

    .line 1
    const/4 p1, -0x1

    .line 2
    iget v0, p0, Lj$/time/format/j;->e:I

    .line 3
    .line 4
    if-eq v0, p1, :cond_1

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lj$/time/format/j;->b:I

    .line 9
    .line 10
    iget v0, p0, Lj$/time/format/j;->c:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lj$/time/format/j;->d:Lj$/time/format/f0;

    .line 15
    .line 16
    sget-object p1, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 17
    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public c(Lj$/time/format/w;JII)I
    .locals 1

    .line 1
    iget-object p0, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 2
    .line 3
    move-object v0, p1

    .line 4
    move-object p1, p0

    .line 5
    move-object p0, v0

    .line 6
    invoke-virtual/range {p0 .. p5}, Lj$/time/format/w;->g(Lj$/time/temporal/n;JII)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public d()Lj$/time/format/j;
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
    new-instance v2, Lj$/time/format/j;

    .line 8
    .line 9
    iget-object v6, p0, Lj$/time/format/j;->d:Lj$/time/format/f0;

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
    invoke-direct/range {v2 .. v7}, Lj$/time/format/j;-><init>(Lj$/time/temporal/n;IILj$/time/format/f0;I)V

    .line 19
    .line 20
    .line 21
    return-object v2
.end method

.method public e(I)Lj$/time/format/j;
    .locals 6

    .line 1
    new-instance v0, Lj$/time/format/j;

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
    iget-object v4, p0, Lj$/time/format/j;->d:Lj$/time/format/f0;

    .line 14
    .line 15
    invoke-direct/range {v0 .. v5}, Lj$/time/format/j;-><init>(Lj$/time/temporal/n;IILj$/time/format/f0;I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public f(Lj$/time/format/y;Ljava/lang/StringBuilder;)Z
    .locals 10

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
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {p0, p1, v3, v4}, Lj$/time/format/j;->a(Lj$/time/format/y;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    iget-object p1, p1, Lj$/time/format/y;->b:Lj$/time/format/DateTimeFormatter;

    .line 20
    .line 21
    iget-object p1, p1, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 22
    .line 23
    const-wide/high16 v5, -0x8000000000000000L

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-string v1, "9223372036854775808"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    const-string v6, " cannot be printed as the value "

    .line 45
    .line 46
    const-string v7, "Field "

    .line 47
    .line 48
    iget v8, p0, Lj$/time/format/j;->c:I

    .line 49
    .line 50
    if-gt v5, v8, :cond_9

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    const-wide/16 v8, 0x0

    .line 56
    .line 57
    cmp-long p1, v3, v8

    .line 58
    .line 59
    iget v5, p0, Lj$/time/format/j;->b:I

    .line 60
    .line 61
    const/4 v8, 0x2

    .line 62
    iget-object p0, p0, Lj$/time/format/j;->d:Lj$/time/format/f0;

    .line 63
    .line 64
    const/4 v9, 0x1

    .line 65
    if-ltz p1, :cond_4

    .line 66
    .line 67
    sget-object p1, Lj$/time/format/b;->a:[I

    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    aget p0, p1, p0

    .line 74
    .line 75
    const/16 p1, 0x2b

    .line 76
    .line 77
    if-eq p0, v9, :cond_3

    .line 78
    .line 79
    if-eq p0, v8, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    const/16 p0, 0x13

    .line 87
    .line 88
    if-ge v5, p0, :cond_7

    .line 89
    .line 90
    sget-object p0, Lj$/time/format/j;->f:[J

    .line 91
    .line 92
    aget-wide v6, p0, v5

    .line 93
    .line 94
    cmp-long p0, v3, v6

    .line 95
    .line 96
    if-ltz p0, :cond_7

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    sget-object p1, Lj$/time/format/b;->a:[I

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    aget p0, p1, p0

    .line 109
    .line 110
    if-eq p0, v9, :cond_6

    .line 111
    .line 112
    if-eq p0, v8, :cond_6

    .line 113
    .line 114
    const/4 p1, 0x3

    .line 115
    if-eq p0, p1, :cond_6

    .line 116
    .line 117
    const/4 p1, 0x4

    .line 118
    if-eq p0, p1, :cond_5

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    new-instance p0, Lj$/time/c;

    .line 122
    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p2, " cannot be negative according to the SignStyle"

    .line 138
    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw p0

    .line 150
    :cond_6
    const/16 p0, 0x2d

    .line 151
    .line 152
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    :cond_7
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    sub-int p0, v5, p0

    .line 160
    .line 161
    if-ge v2, p0, :cond_8

    .line 162
    .line 163
    const/16 p0, 0x30

    .line 164
    .line 165
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    return v9

    .line 175
    :cond_9
    new-instance p0, Lj$/time/c;

    .line 176
    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p2, " exceeds the maximum print width of "

    .line 192
    .line 193
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0
.end method

.method public g(Lj$/time/format/w;Ljava/lang/CharSequence;I)I
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    not-int v0, v2

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iget-object v5, v1, Lj$/time/format/w;->a:Lj$/time/format/DateTimeFormatter;

    .line 20
    .line 21
    iget-object v6, v5, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 22
    .line 23
    iget-object v5, v5, Lj$/time/format/DateTimeFormatter;->c:Lj$/time/format/c0;

    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/16 v5, 0x2b

    .line 29
    .line 30
    const/4 v7, 0x4

    .line 31
    iget v8, v0, Lj$/time/format/j;->c:I

    .line 32
    .line 33
    iget-object v9, v0, Lj$/time/format/j;->d:Lj$/time/format/f0;

    .line 34
    .line 35
    iget v10, v0, Lj$/time/format/j;->b:I

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x1

    .line 39
    if-ne v4, v5, :cond_5

    .line 40
    .line 41
    iget-boolean v4, v1, Lj$/time/format/w;->c:Z

    .line 42
    .line 43
    if-ne v10, v8, :cond_1

    .line 44
    .line 45
    move v5, v12

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v5, v11

    .line 48
    :goto_0
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    if-eqz v13, :cond_2

    .line 53
    .line 54
    if-eq v13, v12, :cond_3

    .line 55
    .line 56
    if-eq v13, v7, :cond_3

    .line 57
    .line 58
    if-nez v4, :cond_4

    .line 59
    .line 60
    if-nez v5, :cond_4

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    if-nez v4, :cond_4

    .line 64
    .line 65
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 66
    .line 67
    move v4, v2

    .line 68
    move v2, v11

    .line 69
    move v5, v12

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    not-int v0, v2

    .line 72
    return v0

    .line 73
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const/16 v5, 0x2d

    .line 77
    .line 78
    if-ne v4, v5, :cond_9

    .line 79
    .line 80
    iget-boolean v4, v1, Lj$/time/format/w;->c:Z

    .line 81
    .line 82
    if-ne v10, v8, :cond_6

    .line 83
    .line 84
    move v5, v12

    .line 85
    goto :goto_2

    .line 86
    :cond_6
    move v5, v11

    .line 87
    :goto_2
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    if-eqz v13, :cond_8

    .line 92
    .line 93
    if-eq v13, v12, :cond_8

    .line 94
    .line 95
    if-eq v13, v7, :cond_8

    .line 96
    .line 97
    if-nez v4, :cond_7

    .line 98
    .line 99
    if-nez v5, :cond_7

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_7
    not-int v0, v2

    .line 103
    return v0

    .line 104
    :cond_8
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    move v4, v2

    .line 107
    move v5, v11

    .line 108
    move v2, v12

    .line 109
    goto :goto_4

    .line 110
    :cond_9
    sget-object v4, Lj$/time/format/f0;->ALWAYS:Lj$/time/format/f0;

    .line 111
    .line 112
    if-ne v9, v4, :cond_a

    .line 113
    .line 114
    iget-boolean v4, v1, Lj$/time/format/w;->c:Z

    .line 115
    .line 116
    if-eqz v4, :cond_a

    .line 117
    .line 118
    not-int v0, v2

    .line 119
    return v0

    .line 120
    :cond_a
    move v4, v2

    .line 121
    move v2, v11

    .line 122
    move v5, v2

    .line 123
    :goto_4
    iget-boolean v7, v1, Lj$/time/format/w;->c:Z

    .line 124
    .line 125
    if-nez v7, :cond_c

    .line 126
    .line 127
    invoke-virtual/range {p0 .. p1}, Lj$/time/format/j;->b(Lj$/time/format/w;)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_b

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_b
    move v7, v12

    .line 135
    goto :goto_6

    .line 136
    :cond_c
    :goto_5
    move v7, v10

    .line 137
    :goto_6
    add-int v13, v4, v7

    .line 138
    .line 139
    if-le v13, v3, :cond_d

    .line 140
    .line 141
    not-int v0, v4

    .line 142
    return v0

    .line 143
    :cond_d
    iget-boolean v14, v1, Lj$/time/format/w;->c:Z

    .line 144
    .line 145
    if-nez v14, :cond_f

    .line 146
    .line 147
    invoke-virtual/range {p0 .. p1}, Lj$/time/format/j;->b(Lj$/time/format/w;)Z

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-eqz v14, :cond_e

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_e
    const/16 v8, 0x9

    .line 155
    .line 156
    :cond_f
    :goto_7
    iget v14, v0, Lj$/time/format/j;->e:I

    .line 157
    .line 158
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    .line 159
    .line 160
    .line 161
    move-result v16

    .line 162
    add-int v16, v16, v8

    .line 163
    .line 164
    :goto_8
    const/4 v8, 0x2

    .line 165
    const-wide/16 v17, 0x0

    .line 166
    .line 167
    const/16 v19, 0x0

    .line 168
    .line 169
    if-ge v11, v8, :cond_17

    .line 170
    .line 171
    add-int v8, v4, v16

    .line 172
    .line 173
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    move/from16 v16, v12

    .line 178
    .line 179
    move-wide/from16 v20, v17

    .line 180
    .line 181
    move v12, v4

    .line 182
    :goto_9
    if-ge v12, v8, :cond_15

    .line 183
    .line 184
    add-int/lit8 v22, v12, 0x1

    .line 185
    .line 186
    move-object/from16 v15, p2

    .line 187
    .line 188
    invoke-interface {v15, v12}, Ljava/lang/CharSequence;->charAt(I)C

    .line 189
    .line 190
    .line 191
    move-result v23

    .line 192
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    add-int/lit8 v0, v23, -0x30

    .line 196
    .line 197
    move/from16 v23, v2

    .line 198
    .line 199
    const/16 v2, 0x9

    .line 200
    .line 201
    if-ltz v0, :cond_10

    .line 202
    .line 203
    if-gt v0, v2, :cond_10

    .line 204
    .line 205
    goto :goto_a

    .line 206
    :cond_10
    const/4 v0, -0x1

    .line 207
    :goto_a
    if-gez v0, :cond_12

    .line 208
    .line 209
    if-ge v12, v13, :cond_11

    .line 210
    .line 211
    not-int v0, v4

    .line 212
    return v0

    .line 213
    :cond_11
    :goto_b
    move/from16 v25, v5

    .line 214
    .line 215
    move-object/from16 v24, v6

    .line 216
    .line 217
    goto :goto_d

    .line 218
    :cond_12
    sub-int v12, v22, v4

    .line 219
    .line 220
    const/16 v2, 0x12

    .line 221
    .line 222
    if-le v12, v2, :cond_14

    .line 223
    .line 224
    if-nez v19, :cond_13

    .line 225
    .line 226
    invoke-static/range {v20 .. v21}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 227
    .line 228
    .line 229
    move-result-object v19

    .line 230
    :cond_13
    move-object/from16 v2, v19

    .line 231
    .line 232
    sget-object v12, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 233
    .line 234
    invoke-virtual {v2, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    move/from16 v25, v5

    .line 239
    .line 240
    move-object/from16 v24, v6

    .line 241
    .line 242
    int-to-long v5, v0

    .line 243
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    move-object/from16 v19, v0

    .line 252
    .line 253
    goto :goto_c

    .line 254
    :cond_14
    move/from16 v25, v5

    .line 255
    .line 256
    move-object/from16 v24, v6

    .line 257
    .line 258
    const-wide/16 v5, 0xa

    .line 259
    .line 260
    mul-long v20, v20, v5

    .line 261
    .line 262
    int-to-long v5, v0

    .line 263
    add-long v20, v20, v5

    .line 264
    .line 265
    :goto_c
    move-object/from16 v0, p0

    .line 266
    .line 267
    move/from16 v12, v22

    .line 268
    .line 269
    move/from16 v2, v23

    .line 270
    .line 271
    move-object/from16 v6, v24

    .line 272
    .line 273
    move/from16 v5, v25

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_15
    move-object/from16 v15, p2

    .line 277
    .line 278
    move/from16 v23, v2

    .line 279
    .line 280
    goto :goto_b

    .line 281
    :goto_d
    if-lez v14, :cond_16

    .line 282
    .line 283
    if-nez v11, :cond_16

    .line 284
    .line 285
    sub-int/2addr v12, v4

    .line 286
    sub-int/2addr v12, v14

    .line 287
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    add-int/lit8 v11, v11, 0x1

    .line 292
    .line 293
    move/from16 v12, v16

    .line 294
    .line 295
    move/from16 v2, v23

    .line 296
    .line 297
    move-object/from16 v6, v24

    .line 298
    .line 299
    move/from16 v5, v25

    .line 300
    .line 301
    move/from16 v16, v0

    .line 302
    .line 303
    move-object/from16 v0, p0

    .line 304
    .line 305
    goto/16 :goto_8

    .line 306
    .line 307
    :cond_16
    move v5, v12

    .line 308
    move-wide/from16 v2, v20

    .line 309
    .line 310
    :goto_e
    move-object/from16 v0, v19

    .line 311
    .line 312
    goto :goto_f

    .line 313
    :cond_17
    move/from16 v23, v2

    .line 314
    .line 315
    move/from16 v25, v5

    .line 316
    .line 317
    move/from16 v16, v12

    .line 318
    .line 319
    move v5, v4

    .line 320
    move-wide/from16 v2, v17

    .line 321
    .line 322
    goto :goto_e

    .line 323
    :goto_f
    if-eqz v23, :cond_1b

    .line 324
    .line 325
    if-eqz v0, :cond_19

    .line 326
    .line 327
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 328
    .line 329
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v6

    .line 333
    if-eqz v6, :cond_18

    .line 334
    .line 335
    iget-boolean v6, v1, Lj$/time/format/w;->c:Z

    .line 336
    .line 337
    if-eqz v6, :cond_18

    .line 338
    .line 339
    add-int/lit8 v4, v4, -0x1

    .line 340
    .line 341
    not-int v0, v4

    .line 342
    return v0

    .line 343
    :cond_18
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    goto :goto_10

    .line 348
    :cond_19
    cmp-long v6, v2, v17

    .line 349
    .line 350
    if-nez v6, :cond_1a

    .line 351
    .line 352
    iget-boolean v6, v1, Lj$/time/format/w;->c:Z

    .line 353
    .line 354
    if-eqz v6, :cond_1a

    .line 355
    .line 356
    add-int/lit8 v4, v4, -0x1

    .line 357
    .line 358
    not-int v0, v4

    .line 359
    return v0

    .line 360
    :cond_1a
    neg-long v2, v2

    .line 361
    goto :goto_10

    .line 362
    :cond_1b
    sget-object v6, Lj$/time/format/f0;->EXCEEDS_PAD:Lj$/time/format/f0;

    .line 363
    .line 364
    if-ne v9, v6, :cond_1d

    .line 365
    .line 366
    iget-boolean v6, v1, Lj$/time/format/w;->c:Z

    .line 367
    .line 368
    if-eqz v6, :cond_1d

    .line 369
    .line 370
    sub-int v6, v5, v4

    .line 371
    .line 372
    if-eqz v25, :cond_1c

    .line 373
    .line 374
    if-gt v6, v10, :cond_1d

    .line 375
    .line 376
    add-int/lit8 v4, v4, -0x1

    .line 377
    .line 378
    not-int v0, v4

    .line 379
    return v0

    .line 380
    :cond_1c
    if-le v6, v10, :cond_1d

    .line 381
    .line 382
    not-int v0, v4

    .line 383
    return v0

    .line 384
    :cond_1d
    :goto_10
    if-eqz v0, :cond_1f

    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    const/16 v3, 0x3f

    .line 391
    .line 392
    if-le v2, v3, :cond_1e

    .line 393
    .line 394
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    add-int/lit8 v5, v5, -0x1

    .line 401
    .line 402
    :cond_1e
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    .line 403
    .line 404
    .line 405
    move-result-wide v2

    .line 406
    move-object/from16 v0, p0

    .line 407
    .line 408
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/j;->c(Lj$/time/format/w;JII)I

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    return v0

    .line 413
    :cond_1f
    move-object/from16 v0, p0

    .line 414
    .line 415
    invoke-virtual/range {v0 .. v5}, Lj$/time/format/j;->c(Lj$/time/format/w;JII)I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lj$/time/format/j;->c:I

    .line 3
    .line 4
    const-string v2, ")"

    .line 5
    .line 6
    const-string v3, "Value("

    .line 7
    .line 8
    iget-object v4, p0, Lj$/time/format/j;->a:Lj$/time/temporal/n;

    .line 9
    .line 10
    iget-object v5, p0, Lj$/time/format/j;->d:Lj$/time/format/f0;

    .line 11
    .line 12
    iget p0, p0, Lj$/time/format/j;->b:I

    .line 13
    .line 14
    if-ne p0, v0, :cond_0

    .line 15
    .line 16
    const/16 v0, 0x13

    .line 17
    .line 18
    if-ne v1, v0, :cond_0

    .line 19
    .line 20
    sget-object v0, Lj$/time/format/f0;->NORMAL:Lj$/time/format/f0;

    .line 21
    .line 22
    if-ne v5, v0, :cond_0

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :cond_0
    const-string v0, ","

    .line 41
    .line 42
    if-ne p0, v1, :cond_1

    .line 43
    .line 44
    sget-object v6, Lj$/time/format/f0;->NOT_NEGATIVE:Lj$/time/format/f0;

    .line 45
    .line 46
    if-ne v5, v6, :cond_1

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method
