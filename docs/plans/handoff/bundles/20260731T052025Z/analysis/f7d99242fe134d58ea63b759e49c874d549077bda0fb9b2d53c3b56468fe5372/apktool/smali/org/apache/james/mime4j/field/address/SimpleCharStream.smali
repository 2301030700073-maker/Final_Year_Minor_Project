.class public final Lorg/apache/james/mime4j/field/address/SimpleCharStream;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public available:I

.field public bufcolumn:[I

.field public buffer:[C

.field public bufline:[I

.field public bufpos:I

.field public bufsize:I

.field public column:I

.field public inBuf:I

.field public final inputStream:Ljava/io/InputStreamReader;

.field public line:I

.field public maxNextCharInd:I

.field public prevCharIsCR:Z

.field public prevCharIsLF:Z

.field public final tabSize:I

.field public tokenBegin:I


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/io/TextInputStream;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->prevCharIsCR:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->prevCharIsLF:Z

    .line 16
    .line 17
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->maxNextCharInd:I

    .line 18
    .line 19
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->inBuf:I

    .line 20
    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tabSize:I

    .line 24
    .line 25
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->inputStream:Ljava/io/InputStreamReader;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->line:I

    .line 29
    .line 30
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->column:I

    .line 31
    .line 32
    const/16 p1, 0x1000

    .line 33
    .line 34
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 35
    .line 36
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->available:I

    .line 37
    .line 38
    new-array v0, p1, [C

    .line 39
    .line 40
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 41
    .line 42
    new-array v0, p1, [I

    .line 43
    .line 44
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufline:[I

    .line 45
    .line 46
    new-array p1, p1, [I

    .line 47
    .line 48
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufcolumn:[I

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final ExpandBuff(Z)V
    .locals 7

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 2
    .line 3
    add-int/lit16 v1, v0, 0x800

    .line 4
    .line 5
    new-array v2, v1, [C

    .line 6
    .line 7
    new-array v3, v1, [I

    .line 8
    .line 9
    new-array v1, v1, [I

    .line 10
    .line 11
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 12
    .line 13
    iget v5, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    sub-int/2addr v0, v5

    .line 19
    :try_start_0
    invoke-static {v4, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 23
    .line 24
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 25
    .line 26
    iget v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 27
    .line 28
    sub-int/2addr v0, v4

    .line 29
    iget v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 30
    .line 31
    invoke-static {p1, v6, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 35
    .line 36
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufline:[I

    .line 37
    .line 38
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 39
    .line 40
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 41
    .line 42
    sub-int/2addr v2, v0

    .line 43
    invoke-static {p1, v0, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufline:[I

    .line 47
    .line 48
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 49
    .line 50
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 51
    .line 52
    sub-int/2addr v0, v2

    .line 53
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 54
    .line 55
    invoke-static {p1, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufline:[I

    .line 59
    .line 60
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufcolumn:[I

    .line 61
    .line 62
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 63
    .line 64
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 65
    .line 66
    sub-int/2addr v2, v0

    .line 67
    invoke-static {p1, v0, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufcolumn:[I

    .line 71
    .line 72
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 73
    .line 74
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 75
    .line 76
    sub-int/2addr v0, v2

    .line 77
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 78
    .line 79
    invoke-static {p1, v6, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufcolumn:[I

    .line 83
    .line 84
    iget p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 85
    .line 86
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 87
    .line 88
    iget v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 89
    .line 90
    sub-int/2addr v0, v1

    .line 91
    add-int/2addr v0, p1

    .line 92
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 93
    .line 94
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->maxNextCharInd:I

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    sub-int/2addr v0, v5

    .line 98
    invoke-static {v4, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    .line 100
    .line 101
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 102
    .line 103
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufline:[I

    .line 104
    .line 105
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 106
    .line 107
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 108
    .line 109
    sub-int/2addr v2, v0

    .line 110
    invoke-static {p1, v0, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    .line 112
    .line 113
    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufline:[I

    .line 114
    .line 115
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufcolumn:[I

    .line 116
    .line 117
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 118
    .line 119
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 120
    .line 121
    sub-int/2addr v2, v0

    .line 122
    invoke-static {p1, v0, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufcolumn:[I

    .line 126
    .line 127
    iget p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 128
    .line 129
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 130
    .line 131
    sub-int/2addr p1, v0

    .line 132
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 133
    .line 134
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->maxNextCharInd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    :goto_0
    iget p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 137
    .line 138
    add-int/lit16 p1, p1, 0x800

    .line 139
    .line 140
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 141
    .line 142
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->available:I

    .line 143
    .line 144
    iput v6, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 145
    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    new-instance p1, Ljava/lang/Error;

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-direct {p1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1
.end method

.method public final GetImage()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 4
    .line 5
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/String;

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    invoke-direct {p0, v2, v1, v0}, Ljava/lang/String;-><init>([CII)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 19
    .line 20
    iget v3, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 21
    .line 22
    sub-int/2addr v3, v1

    .line 23
    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 29
    .line 30
    iget p0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 31
    .line 32
    add-int/lit8 p0, p0, 0x1

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v1, v2, v3, p0}, Ljava/lang/String;-><init>([CII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public final GetSuffix(I)[C
    .locals 6

    .line 1
    new-array v0, p1, [C

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-lt v2, p1, :cond_0

    .line 11
    .line 12
    sub-int/2addr v1, p1

    .line 13
    add-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    invoke-static {v3, v1, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 20
    .line 21
    sub-int v5, p1, v1

    .line 22
    .line 23
    add-int/lit8 v5, v5, -0x1

    .line 24
    .line 25
    sub-int/2addr v2, v5

    .line 26
    sub-int v1, p1, v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    invoke-static {v3, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 34
    .line 35
    iget p0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 36
    .line 37
    sub-int/2addr p1, p0

    .line 38
    add-int/lit8 p1, p1, -0x1

    .line 39
    .line 40
    add-int/lit8 p0, p0, 0x1

    .line 41
    .line 42
    invoke-static {v1, v4, v0, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public final backup(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->inBuf:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->inBuf:I

    .line 5
    .line 6
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 7
    .line 8
    sub-int/2addr v0, p1

    .line 9
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 14
    .line 15
    add-int/2addr v0, p1

    .line 16
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final readChar()C
    .locals 7

    .line 1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->inBuf:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    sub-int/2addr v0, v2

    .line 8
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->inBuf:I

    .line 9
    .line 10
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 11
    .line 12
    add-int/2addr v0, v2

    .line 13
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 14
    .line 15
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 16
    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 22
    .line 23
    iget p0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 24
    .line 25
    aget-char p0, v0, p0

    .line 26
    .line 27
    return p0

    .line 28
    :cond_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 29
    .line 30
    add-int/2addr v0, v2

    .line 31
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 32
    .line 33
    iget v3, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->maxNextCharInd:I

    .line 34
    .line 35
    if-lt v0, v3, :cond_a

    .line 36
    .line 37
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->inputStream:Ljava/io/InputStreamReader;

    .line 38
    .line 39
    iget v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->available:I

    .line 40
    .line 41
    if-ne v3, v4, :cond_7

    .line 42
    .line 43
    iget v3, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufsize:I

    .line 44
    .line 45
    iget v5, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 46
    .line 47
    const/16 v6, 0x800

    .line 48
    .line 49
    if-ne v4, v3, :cond_4

    .line 50
    .line 51
    if-le v5, v6, :cond_2

    .line 52
    .line 53
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->maxNextCharInd:I

    .line 54
    .line 55
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 56
    .line 57
    iput v5, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->available:I

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    if-gez v5, :cond_3

    .line 61
    .line 62
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->maxNextCharInd:I

    .line 63
    .line 64
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->ExpandBuff(Z)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    if-le v4, v5, :cond_5

    .line 72
    .line 73
    iput v3, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->available:I

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    sub-int v3, v5, v4

    .line 77
    .line 78
    if-ge v3, v6, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->ExpandBuff(Z)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    iput v5, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->available:I

    .line 85
    .line 86
    :cond_7
    :goto_0
    const/4 v3, -0x1

    .line 87
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 88
    .line 89
    iget v5, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->maxNextCharInd:I

    .line 90
    .line 91
    iget v6, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->available:I

    .line 92
    .line 93
    sub-int/2addr v6, v5

    .line 94
    invoke-virtual {v0, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eq v4, v3, :cond_8

    .line 99
    .line 100
    iget v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->maxNextCharInd:I

    .line 101
    .line 102
    add-int/2addr v0, v4

    .line 103
    iput v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->maxNextCharInd:I

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto :goto_1

    .line 108
    :cond_8
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/io/IOException;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 114
    .line 115
    .line 116
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    iget v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 118
    .line 119
    sub-int/2addr v4, v2

    .line 120
    iput v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->backup(I)V

    .line 123
    .line 124
    .line 125
    iget v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 126
    .line 127
    if-ne v1, v3, :cond_9

    .line 128
    .line 129
    iget v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 130
    .line 131
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 132
    .line 133
    :cond_9
    throw v0

    .line 134
    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->buffer:[C

    .line 135
    .line 136
    iget v3, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 137
    .line 138
    aget-char v0, v0, v3

    .line 139
    .line 140
    iget v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->column:I

    .line 141
    .line 142
    add-int/2addr v4, v2

    .line 143
    iput v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->column:I

    .line 144
    .line 145
    iget-boolean v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->prevCharIsLF:Z

    .line 146
    .line 147
    const/16 v5, 0xa

    .line 148
    .line 149
    if-eqz v4, :cond_b

    .line 150
    .line 151
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->prevCharIsLF:Z

    .line 152
    .line 153
    iget v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->line:I

    .line 154
    .line 155
    iput v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->column:I

    .line 156
    .line 157
    add-int/2addr v1, v2

    .line 158
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->line:I

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_b
    iget-boolean v4, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->prevCharIsCR:Z

    .line 162
    .line 163
    if-eqz v4, :cond_d

    .line 164
    .line 165
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->prevCharIsCR:Z

    .line 166
    .line 167
    if-ne v0, v5, :cond_c

    .line 168
    .line 169
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->prevCharIsLF:Z

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_c
    iget v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->line:I

    .line 173
    .line 174
    iput v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->column:I

    .line 175
    .line 176
    add-int/2addr v1, v2

    .line 177
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->line:I

    .line 178
    .line 179
    :cond_d
    :goto_3
    const/16 v1, 0x9

    .line 180
    .line 181
    if-eq v0, v1, :cond_10

    .line 182
    .line 183
    if-eq v0, v5, :cond_f

    .line 184
    .line 185
    const/16 v1, 0xd

    .line 186
    .line 187
    if-eq v0, v1, :cond_e

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_e
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->prevCharIsCR:Z

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_f
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->prevCharIsLF:Z

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_10
    iget v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->column:I

    .line 197
    .line 198
    sub-int/2addr v1, v2

    .line 199
    iput v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->column:I

    .line 200
    .line 201
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tabSize:I

    .line 202
    .line 203
    rem-int v4, v1, v2

    .line 204
    .line 205
    sub-int/2addr v2, v4

    .line 206
    add-int/2addr v2, v1

    .line 207
    iput v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->column:I

    .line 208
    .line 209
    :goto_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufline:[I

    .line 210
    .line 211
    iget v2, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->line:I

    .line 212
    .line 213
    aput v2, v1, v3

    .line 214
    .line 215
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufcolumn:[I

    .line 216
    .line 217
    iget p0, p0, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->column:I

    .line 218
    .line 219
    aput p0, v1, v3

    .line 220
    .line 221
    return v0
.end method
