.class public abstract Lcom/fasterxml/jackson/core/io/NumberOutput;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final SMALLEST_INT:Ljava/lang/String;

.field public static final SMALLEST_LONG:Ljava/lang/String;

.field public static final TRIPLET_TO_CHARS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    .line 8
    .line 9
    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v0, 0x3e8

    .line 18
    .line 19
    new-array v0, v0, [I

    .line 20
    .line 21
    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    move v1, v0

    .line 25
    move v2, v1

    .line 26
    :goto_0
    const/16 v3, 0xa

    .line 27
    .line 28
    if-ge v1, v3, :cond_2

    .line 29
    .line 30
    move v4, v0

    .line 31
    :goto_1
    if-ge v4, v3, :cond_1

    .line 32
    .line 33
    move v5, v0

    .line 34
    :goto_2
    if-ge v5, v3, :cond_0

    .line 35
    .line 36
    add-int/lit8 v6, v1, 0x30

    .line 37
    .line 38
    shl-int/lit8 v6, v6, 0x10

    .line 39
    .line 40
    add-int/lit8 v7, v4, 0x30

    .line 41
    .line 42
    shl-int/lit8 v7, v7, 0x8

    .line 43
    .line 44
    or-int/2addr v6, v7

    .line 45
    add-int/lit8 v7, v5, 0x30

    .line 46
    .line 47
    or-int/2addr v6, v7

    .line 48
    sget-object v7, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    .line 49
    .line 50
    add-int/lit8 v8, v2, 0x1

    .line 51
    .line 52
    aput v6, v7, v2

    .line 53
    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 55
    .line 56
    move v2, v8

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void
.end method

.method public static _full3([CII)I
    .locals 3

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    .line 2
    .line 3
    aget p1, v0, p1

    .line 4
    .line 5
    add-int/lit8 v0, p2, 0x1

    .line 6
    .line 7
    shr-int/lit8 v1, p1, 0x10

    .line 8
    .line 9
    int-to-char v1, v1

    .line 10
    aput-char v1, p0, p2

    .line 11
    .line 12
    add-int/lit8 v1, p2, 0x2

    .line 13
    .line 14
    shr-int/lit8 v2, p1, 0x8

    .line 15
    .line 16
    and-int/lit8 v2, v2, 0x7f

    .line 17
    .line 18
    int-to-char v2, v2

    .line 19
    aput-char v2, p0, v0

    .line 20
    .line 21
    add-int/lit8 p2, p2, 0x3

    .line 22
    .line 23
    and-int/lit8 p1, p1, 0x7f

    .line 24
    .line 25
    int-to-char p1, p1

    .line 26
    aput-char p1, p0, v1

    .line 27
    .line 28
    return p2
.end method

.method public static _leading3([CII)I
    .locals 2

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    if-le p1, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x63

    .line 10
    .line 11
    if-le p1, v1, :cond_0

    .line 12
    .line 13
    add-int/lit8 p1, p2, 0x1

    .line 14
    .line 15
    shr-int/lit8 v1, v0, 0x10

    .line 16
    .line 17
    int-to-char v1, v1

    .line 18
    aput-char v1, p0, p2

    .line 19
    .line 20
    move p2, p1

    .line 21
    :cond_0
    add-int/lit8 p1, p2, 0x1

    .line 22
    .line 23
    shr-int/lit8 v1, v0, 0x8

    .line 24
    .line 25
    and-int/lit8 v1, v1, 0x7f

    .line 26
    .line 27
    int-to-char v1, v1

    .line 28
    aput-char v1, p0, p2

    .line 29
    .line 30
    move p2, p1

    .line 31
    :cond_1
    add-int/lit8 p1, p2, 0x1

    .line 32
    .line 33
    and-int/lit8 v0, v0, 0x7f

    .line 34
    .line 35
    int-to-char v0, v0

    .line 36
    aput-char v0, p0, p2

    .line 37
    .line 38
    return p1
.end method

.method public static _outputFullBillion([CII)I
    .locals 7

    .line 1
    div-int/lit16 v0, p1, 0x3e8

    .line 2
    .line 3
    mul-int/lit16 v1, v0, 0x3e8

    .line 4
    .line 5
    sub-int/2addr p1, v1

    .line 6
    div-int/lit16 v1, v0, 0x3e8

    .line 7
    .line 8
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    .line 9
    .line 10
    aget v3, v2, v1

    .line 11
    .line 12
    add-int/lit8 v4, p2, 0x1

    .line 13
    .line 14
    shr-int/lit8 v5, v3, 0x10

    .line 15
    .line 16
    int-to-char v5, v5

    .line 17
    aput-char v5, p0, p2

    .line 18
    .line 19
    add-int/lit8 v5, p2, 0x2

    .line 20
    .line 21
    shr-int/lit8 v6, v3, 0x8

    .line 22
    .line 23
    and-int/lit8 v6, v6, 0x7f

    .line 24
    .line 25
    int-to-char v6, v6

    .line 26
    aput-char v6, p0, v4

    .line 27
    .line 28
    add-int/lit8 v4, p2, 0x3

    .line 29
    .line 30
    and-int/lit8 v3, v3, 0x7f

    .line 31
    .line 32
    int-to-char v3, v3

    .line 33
    aput-char v3, p0, v5

    .line 34
    .line 35
    mul-int/lit16 v1, v1, 0x3e8

    .line 36
    .line 37
    sub-int/2addr v0, v1

    .line 38
    aget v0, v2, v0

    .line 39
    .line 40
    add-int/lit8 v1, p2, 0x4

    .line 41
    .line 42
    shr-int/lit8 v3, v0, 0x10

    .line 43
    .line 44
    int-to-char v3, v3

    .line 45
    aput-char v3, p0, v4

    .line 46
    .line 47
    add-int/lit8 v3, p2, 0x5

    .line 48
    .line 49
    shr-int/lit8 v4, v0, 0x8

    .line 50
    .line 51
    and-int/lit8 v4, v4, 0x7f

    .line 52
    .line 53
    int-to-char v4, v4

    .line 54
    aput-char v4, p0, v1

    .line 55
    .line 56
    add-int/lit8 v1, p2, 0x6

    .line 57
    .line 58
    and-int/lit8 v0, v0, 0x7f

    .line 59
    .line 60
    int-to-char v0, v0

    .line 61
    aput-char v0, p0, v3

    .line 62
    .line 63
    aget p1, v2, p1

    .line 64
    .line 65
    add-int/lit8 v0, p2, 0x7

    .line 66
    .line 67
    shr-int/lit8 v2, p1, 0x10

    .line 68
    .line 69
    int-to-char v2, v2

    .line 70
    aput-char v2, p0, v1

    .line 71
    .line 72
    add-int/lit8 v1, p2, 0x8

    .line 73
    .line 74
    shr-int/lit8 v2, p1, 0x8

    .line 75
    .line 76
    and-int/lit8 v2, v2, 0x7f

    .line 77
    .line 78
    int-to-char v2, v2

    .line 79
    aput-char v2, p0, v0

    .line 80
    .line 81
    add-int/lit8 p2, p2, 0x9

    .line 82
    .line 83
    and-int/lit8 p1, p1, 0x7f

    .line 84
    .line 85
    int-to-char p1, p1

    .line 86
    aput-char p1, p0, v1

    .line 87
    .line 88
    return p2
.end method

.method public static outputInt([CII)I
    .locals 3

    .line 1
    if-gez p1, :cond_1

    .line 2
    .line 3
    const/high16 v0, -0x80000000

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1, v0, p0, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 15
    .line 16
    .line 17
    add-int/2addr v0, p2

    .line 18
    return v0

    .line 19
    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 20
    .line 21
    const/16 v1, 0x2d

    .line 22
    .line 23
    aput-char v1, p0, p2

    .line 24
    .line 25
    neg-int p1, p1

    .line 26
    move p2, v0

    .line 27
    :cond_1
    const v0, 0xf4240

    .line 28
    .line 29
    .line 30
    if-ge p1, v0, :cond_4

    .line 31
    .line 32
    const/16 v0, 0x3e8

    .line 33
    .line 34
    if-ge p1, v0, :cond_3

    .line 35
    .line 36
    const/16 v0, 0xa

    .line 37
    .line 38
    if-ge p1, v0, :cond_2

    .line 39
    .line 40
    add-int/lit8 p1, p1, 0x30

    .line 41
    .line 42
    int-to-char p1, p1

    .line 43
    aput-char p1, p0, p2

    .line 44
    .line 45
    add-int/lit8 p2, p2, 0x1

    .line 46
    .line 47
    return p2

    .line 48
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3([CII)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_3
    div-int/lit16 v0, p1, 0x3e8

    .line 54
    .line 55
    mul-int/lit16 v1, v0, 0x3e8

    .line 56
    .line 57
    sub-int/2addr p1, v1

    .line 58
    invoke-static {p0, v0, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3([CII)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3([CII)I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    return p0

    .line 67
    :cond_4
    const v0, 0x3b9aca00

    .line 68
    .line 69
    .line 70
    if-lt p1, v0, :cond_6

    .line 71
    .line 72
    sub-int v1, p1, v0

    .line 73
    .line 74
    if-lt v1, v0, :cond_5

    .line 75
    .line 76
    const v0, 0x77359400

    .line 77
    .line 78
    .line 79
    sub-int v1, p1, v0

    .line 80
    .line 81
    add-int/lit8 p1, p2, 0x1

    .line 82
    .line 83
    const/16 v0, 0x32

    .line 84
    .line 85
    aput-char v0, p0, p2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    add-int/lit8 p1, p2, 0x1

    .line 89
    .line 90
    const/16 v0, 0x31

    .line 91
    .line 92
    aput-char v0, p0, p2

    .line 93
    .line 94
    :goto_0
    invoke-static {p0, v1, p1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion([CII)I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    return p0

    .line 99
    :cond_6
    div-int/lit16 v0, p1, 0x3e8

    .line 100
    .line 101
    mul-int/lit16 v1, v0, 0x3e8

    .line 102
    .line 103
    sub-int/2addr p1, v1

    .line 104
    div-int/lit16 v1, v0, 0x3e8

    .line 105
    .line 106
    mul-int/lit16 v2, v1, 0x3e8

    .line 107
    .line 108
    sub-int/2addr v0, v2

    .line 109
    invoke-static {p0, v1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3([CII)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-static {p0, v0, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3([CII)I

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3([CII)I

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    return p0
.end method

.method public static outputLong(J[CI)I
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    if-gez v0, :cond_2

    .line 6
    .line 7
    const-wide/32 v0, -0x80000000

    .line 8
    .line 9
    .line 10
    cmp-long v0, p0, v0

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    long-to-int p0, p0

    .line 15
    invoke-static {p2, p0, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt([CII)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    .line 22
    cmp-long v0, p0, v0

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    sget-object p0, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0, p1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 34
    .line 35
    .line 36
    add-int/2addr p1, p3

    .line 37
    return p1

    .line 38
    :cond_1
    add-int/lit8 v0, p3, 0x1

    .line 39
    .line 40
    const/16 v1, 0x2d

    .line 41
    .line 42
    aput-char v1, p2, p3

    .line 43
    .line 44
    neg-long p0, p0

    .line 45
    move p3, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-wide/32 v0, 0x7fffffff

    .line 48
    .line 49
    .line 50
    cmp-long v0, p0, v0

    .line 51
    .line 52
    if-gtz v0, :cond_3

    .line 53
    .line 54
    long-to-int p0, p0

    .line 55
    invoke-static {p2, p0, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt([CII)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    return p0

    .line 60
    :cond_3
    :goto_0
    const-wide/32 v0, 0x3b9aca00

    .line 61
    .line 62
    .line 63
    div-long v2, p0, v0

    .line 64
    .line 65
    mul-long v4, v2, v0

    .line 66
    .line 67
    sub-long/2addr p0, v4

    .line 68
    cmp-long v4, v2, v0

    .line 69
    .line 70
    if-gez v4, :cond_8

    .line 71
    .line 72
    long-to-int v0, v2

    .line 73
    const v1, 0xf4240

    .line 74
    .line 75
    .line 76
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    .line 77
    .line 78
    if-ge v0, v1, :cond_7

    .line 79
    .line 80
    const/16 v1, 0x3e8

    .line 81
    .line 82
    if-ge v0, v1, :cond_4

    .line 83
    .line 84
    invoke-static {p2, v0, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3([CII)I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :cond_4
    div-int/lit16 v1, v0, 0x3e8

    .line 91
    .line 92
    mul-int/lit16 v3, v1, 0x3e8

    .line 93
    .line 94
    sub-int/2addr v0, v3

    .line 95
    aget v3, v2, v1

    .line 96
    .line 97
    const/16 v4, 0x9

    .line 98
    .line 99
    if-le v1, v4, :cond_6

    .line 100
    .line 101
    const/16 v4, 0x63

    .line 102
    .line 103
    if-le v1, v4, :cond_5

    .line 104
    .line 105
    add-int/lit8 v1, p3, 0x1

    .line 106
    .line 107
    shr-int/lit8 v4, v3, 0x10

    .line 108
    .line 109
    int-to-char v4, v4

    .line 110
    aput-char v4, p2, p3

    .line 111
    .line 112
    move p3, v1

    .line 113
    :cond_5
    add-int/lit8 v1, p3, 0x1

    .line 114
    .line 115
    shr-int/lit8 v4, v3, 0x8

    .line 116
    .line 117
    and-int/lit8 v4, v4, 0x7f

    .line 118
    .line 119
    int-to-char v4, v4

    .line 120
    aput-char v4, p2, p3

    .line 121
    .line 122
    move p3, v1

    .line 123
    :cond_6
    add-int/lit8 v1, p3, 0x1

    .line 124
    .line 125
    and-int/lit8 v3, v3, 0x7f

    .line 126
    .line 127
    int-to-char v3, v3

    .line 128
    aput-char v3, p2, p3

    .line 129
    .line 130
    aget v0, v2, v0

    .line 131
    .line 132
    add-int/lit8 v2, p3, 0x2

    .line 133
    .line 134
    shr-int/lit8 v3, v0, 0x10

    .line 135
    .line 136
    int-to-char v3, v3

    .line 137
    aput-char v3, p2, v1

    .line 138
    .line 139
    add-int/lit8 v1, p3, 0x3

    .line 140
    .line 141
    shr-int/lit8 v3, v0, 0x8

    .line 142
    .line 143
    and-int/lit8 v3, v3, 0x7f

    .line 144
    .line 145
    int-to-char v3, v3

    .line 146
    aput-char v3, p2, v2

    .line 147
    .line 148
    add-int/lit8 p3, p3, 0x4

    .line 149
    .line 150
    and-int/lit8 v0, v0, 0x7f

    .line 151
    .line 152
    int-to-char v0, v0

    .line 153
    aput-char v0, p2, v1

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_7
    div-int/lit16 v1, v0, 0x3e8

    .line 157
    .line 158
    mul-int/lit16 v3, v1, 0x3e8

    .line 159
    .line 160
    sub-int/2addr v0, v3

    .line 161
    div-int/lit16 v3, v1, 0x3e8

    .line 162
    .line 163
    mul-int/lit16 v4, v3, 0x3e8

    .line 164
    .line 165
    sub-int/2addr v1, v4

    .line 166
    invoke-static {p2, v3, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3([CII)I

    .line 167
    .line 168
    .line 169
    move-result p3

    .line 170
    aget v1, v2, v1

    .line 171
    .line 172
    add-int/lit8 v3, p3, 0x1

    .line 173
    .line 174
    shr-int/lit8 v4, v1, 0x10

    .line 175
    .line 176
    int-to-char v4, v4

    .line 177
    aput-char v4, p2, p3

    .line 178
    .line 179
    add-int/lit8 v4, p3, 0x2

    .line 180
    .line 181
    shr-int/lit8 v5, v1, 0x8

    .line 182
    .line 183
    and-int/lit8 v5, v5, 0x7f

    .line 184
    .line 185
    int-to-char v5, v5

    .line 186
    aput-char v5, p2, v3

    .line 187
    .line 188
    add-int/lit8 v3, p3, 0x3

    .line 189
    .line 190
    and-int/lit8 v1, v1, 0x7f

    .line 191
    .line 192
    int-to-char v1, v1

    .line 193
    aput-char v1, p2, v4

    .line 194
    .line 195
    aget v0, v2, v0

    .line 196
    .line 197
    add-int/lit8 v1, p3, 0x4

    .line 198
    .line 199
    shr-int/lit8 v2, v0, 0x10

    .line 200
    .line 201
    int-to-char v2, v2

    .line 202
    aput-char v2, p2, v3

    .line 203
    .line 204
    add-int/lit8 v2, p3, 0x5

    .line 205
    .line 206
    shr-int/lit8 v3, v0, 0x8

    .line 207
    .line 208
    and-int/lit8 v3, v3, 0x7f

    .line 209
    .line 210
    int-to-char v3, v3

    .line 211
    aput-char v3, p2, v1

    .line 212
    .line 213
    add-int/lit8 p3, p3, 0x6

    .line 214
    .line 215
    and-int/lit8 v0, v0, 0x7f

    .line 216
    .line 217
    int-to-char v0, v0

    .line 218
    aput-char v0, p2, v2

    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_8
    div-long v4, v2, v0

    .line 222
    .line 223
    mul-long/2addr v0, v4

    .line 224
    sub-long/2addr v2, v0

    .line 225
    long-to-int v0, v4

    .line 226
    invoke-static {p2, v0, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3([CII)I

    .line 227
    .line 228
    .line 229
    move-result p3

    .line 230
    long-to-int v0, v2

    .line 231
    invoke-static {p2, v0, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion([CII)I

    .line 232
    .line 233
    .line 234
    move-result p3

    .line 235
    :goto_1
    long-to-int p0, p0

    .line 236
    invoke-static {p2, p0, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion([CII)I

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    return p0
.end method
