.class public final Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public cursor:I

.field public dirtyLine:Z

.field public lineEndChar:I

.field public lineno:I

.field public sourceCursor:I

.field public final sourceString:Ljava/lang/String;

.field public stringBuffer:[C

.field public stringBufferTop:I

.field public tokenBeg:I

.field public tokenEnd:I

.field public final ungetBuffer:[I

.field public ungetCursor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x80

    .line 5
    .line 6
    new-array v0, v0, [C

    .line 7
    .line 8
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    .line 17
    .line 18
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceString:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    .line 22
    .line 23
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 24
    .line 25
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 26
    .line 27
    return-void
.end method

.method public static isDigit(I)Z
    .locals 1

    .line 64
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDigit(II)Z
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_5

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x10

    .line 12
    .line 13
    const/16 v1, 0x30

    .line 14
    .line 15
    if-ne p0, v0, :cond_3

    .line 16
    .line 17
    if-gt v1, p1, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x39

    .line 20
    .line 21
    if-le p1, v0, :cond_5

    .line 22
    .line 23
    :cond_1
    const/16 v0, 0x61

    .line 24
    .line 25
    if-gt v0, p1, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x66

    .line 28
    .line 29
    if-le p1, v0, :cond_5

    .line 30
    .line 31
    :cond_2
    const/16 v0, 0x41

    .line 32
    .line 33
    if-gt v0, p1, :cond_3

    .line 34
    .line 35
    const/16 v0, 0x46

    .line 36
    .line 37
    if-gt p1, v0, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/16 v0, 0x8

    .line 41
    .line 42
    if-ne p0, v0, :cond_4

    .line 43
    .line 44
    if-gt v1, p1, :cond_4

    .line 45
    .line 46
    const/16 v0, 0x37

    .line 47
    .line 48
    if-gt p1, v0, :cond_4

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    const/4 v0, 0x2

    .line 52
    if-ne p0, v0, :cond_6

    .line 53
    .line 54
    if-eq v1, p1, :cond_5

    .line 55
    .line 56
    const/16 p0, 0x31

    .line 57
    .line 58
    if-ne p1, p0, :cond_6

    .line 59
    .line 60
    :cond_5
    :goto_0
    const/4 p0, 0x1

    .line 61
    return p0

    .line 62
    :cond_6
    const/4 p0, 0x0

    .line 63
    return p0
.end method


# virtual methods
.method public final addToString(I)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    mul-int/lit8 v2, v2, 0x2

    .line 10
    .line 11
    new-array v2, v2, [C

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    .line 20
    .line 21
    int-to-char p1, p1

    .line 22
    aput-char p1, v1, v0

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 27
    .line 28
    return-void
.end method

.method public final getChar(ZZ)I
    .locals 5

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    .line 14
    .line 15
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    .line 16
    .line 17
    aget p0, p0, v0

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    :goto_0
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    .line 21
    .line 22
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceString:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, -0x1

    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    return v3

    .line 32
    :cond_1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 37
    .line 38
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    .line 39
    .line 40
    add-int/lit8 v2, v0, 0x1

    .line 41
    .line 42
    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->sourceCursor:I

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/16 v1, 0xd

    .line 49
    .line 50
    const/16 v2, 0xa

    .line 51
    .line 52
    if-nez p2, :cond_3

    .line 53
    .line 54
    iget v4, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    .line 55
    .line 56
    if-ltz v4, :cond_3

    .line 57
    .line 58
    if-ne v4, v1, :cond_2

    .line 59
    .line 60
    if-ne v0, v2, :cond_2

    .line 61
    .line 62
    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    .line 66
    .line 67
    iget v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    iput v3, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineno:I

    .line 72
    .line 73
    :cond_3
    const/16 v3, 0x7f

    .line 74
    .line 75
    if-gt v0, v3, :cond_5

    .line 76
    .line 77
    if-eq v0, v2, :cond_4

    .line 78
    .line 79
    if-ne v0, v1, :cond_8

    .line 80
    .line 81
    :cond_4
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    .line 82
    .line 83
    return v2

    .line 84
    :cond_5
    const v1, 0xfeff

    .line 85
    .line 86
    .line 87
    if-ne v0, v1, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    if-eqz p1, :cond_7

    .line 91
    .line 92
    if-le v0, v3, :cond_7

    .line 93
    .line 94
    int-to-char v1, v0

    .line 95
    invoke-static {v1}, Ljava/lang/Character;->getType(C)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const/16 v3, 0x10

    .line 100
    .line 101
    if-ne v1, v3, :cond_7

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_8

    .line 109
    .line 110
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    .line 111
    .line 112
    return v2

    .line 113
    :cond_8
    :goto_1
    return v0
.end method

.method public final getToken()Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    sget-object v4, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    if-ne v3, v5, :cond_1

    .line 13
    .line 14
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 15
    .line 16
    add-int/lit8 v2, v1, -0x1

    .line 17
    .line 18
    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 19
    .line 20
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 21
    .line 22
    return-object v4

    .line 23
    :cond_1
    const/16 v6, 0xa

    .line 24
    .line 25
    if-ne v3, v6, :cond_2

    .line 26
    .line 27
    iput-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    .line 28
    .line 29
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 30
    .line 31
    add-int/lit8 v2, v1, -0x1

    .line 32
    .line 33
    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 34
    .line 35
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 36
    .line 37
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EOL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    const/16 v7, 0x7f

    .line 41
    .line 42
    const/16 v8, 0x20

    .line 43
    .line 44
    const v9, 0xfeff

    .line 45
    .line 46
    .line 47
    const/16 v10, 0xb

    .line 48
    .line 49
    const/16 v11, 0x9

    .line 50
    .line 51
    const/16 v12, 0xc

    .line 52
    .line 53
    if-gt v3, v7, :cond_3

    .line 54
    .line 55
    if-eq v3, v8, :cond_0

    .line 56
    .line 57
    if-eq v3, v11, :cond_0

    .line 58
    .line 59
    if-eq v3, v12, :cond_0

    .line 60
    .line 61
    if-ne v3, v10, :cond_4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/16 v7, 0xa0

    .line 65
    .line 66
    if-eq v3, v7, :cond_0

    .line 67
    .line 68
    if-eq v3, v9, :cond_0

    .line 69
    .line 70
    int-to-char v7, v3

    .line 71
    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-ne v7, v12, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/16 v7, 0x2d

    .line 79
    .line 80
    if-eq v3, v7, :cond_5

    .line 81
    .line 82
    iput-boolean v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    .line 83
    .line 84
    :cond_5
    iget v13, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 85
    .line 86
    add-int/lit8 v14, v13, -0x1

    .line 87
    .line 88
    iput v14, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 89
    .line 90
    iput v13, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 91
    .line 92
    const/16 v13, 0x75

    .line 93
    .line 94
    const/16 v14, 0x5c

    .line 95
    .line 96
    if-ne v3, v14, :cond_7

    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-ne v3, v13, :cond_6

    .line 103
    .line 104
    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 105
    .line 106
    move v15, v1

    .line 107
    move/from16 v16, v15

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 111
    .line 112
    .line 113
    move v15, v2

    .line 114
    move/from16 v16, v15

    .line 115
    .line 116
    move v3, v14

    .line 117
    goto :goto_1

    .line 118
    :cond_7
    int-to-char v15, v3

    .line 119
    invoke-static {v15}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    .line 120
    .line 121
    .line 122
    move-result v15

    .line 123
    if-eqz v15, :cond_8

    .line 124
    .line 125
    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 128
    .line 129
    .line 130
    :cond_8
    move/from16 v16, v2

    .line 131
    .line 132
    :goto_1
    const/16 v8, 0x25

    .line 133
    .line 134
    const/16 v10, 0x22

    .line 135
    .line 136
    const/16 v17, 0x0

    .line 137
    .line 138
    const-string v12, "illegal character: \'%c\'"

    .line 139
    .line 140
    const/16 v6, 0x21

    .line 141
    .line 142
    const/4 v7, 0x4

    .line 143
    const/16 v18, 0x2

    .line 144
    .line 145
    if-eqz v15, :cond_39

    .line 146
    .line 147
    move/from16 v3, v16

    .line 148
    .line 149
    :goto_2
    if-eqz v16, :cond_c

    .line 150
    .line 151
    move v11, v2

    .line 152
    move v15, v11

    .line 153
    :goto_3
    move/from16 v19, v7

    .line 154
    .line 155
    if-eq v15, v7, :cond_a

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    invoke-static {v7, v11}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 162
    .line 163
    .line 164
    move-result v11

    .line 165
    if-gez v11, :cond_9

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_9
    add-int/lit8 v15, v15, 0x1

    .line 169
    .line 170
    move/from16 v7, v19

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_a
    :goto_4
    if-ltz v11, :cond_b

    .line 174
    .line 175
    invoke-virtual {v0, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 176
    .line 177
    .line 178
    move/from16 v16, v2

    .line 179
    .line 180
    :goto_5
    move/from16 v7, v19

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_b
    const-string v0, "invalid unicode escape"

    .line 184
    .line 185
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-object v17

    .line 189
    :cond_c
    move/from16 v19, v7

    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    if-ne v7, v14, :cond_e

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-ne v3, v13, :cond_d

    .line 202
    .line 203
    move v3, v1

    .line 204
    move/from16 v16, v3

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_d
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    new-array v1, v1, [Ljava/lang/Object;

    .line 214
    .line 215
    aput-object v3, v1, v2

    .line 216
    .line 217
    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0

    .line 225
    :cond_e
    if-eq v7, v5, :cond_10

    .line 226
    .line 227
    if-eq v7, v9, :cond_10

    .line 228
    .line 229
    int-to-char v11, v7

    .line 230
    invoke-static {v11}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    if-nez v11, :cond_f

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_f
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_10
    :goto_6
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 242
    .line 243
    .line 244
    iget v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 245
    .line 246
    iput v7, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 247
    .line 248
    new-instance v7, Ljava/lang/String;

    .line 249
    .line 250
    iget-object v9, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBuffer:[C

    .line 251
    .line 252
    iget v0, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 253
    .line 254
    invoke-direct {v7, v9, v2, v0}, Ljava/lang/String;-><init>([CII)V

    .line 255
    .line 256
    .line 257
    if-nez v3, :cond_38

    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    sparse-switch v0, :sswitch_data_0

    .line 264
    .line 265
    .line 266
    :goto_7
    move v1, v5

    .line 267
    goto/16 :goto_8

    .line 268
    .line 269
    :sswitch_0
    const-string v0, "default"

    .line 270
    .line 271
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_11

    .line 276
    .line 277
    goto :goto_7

    .line 278
    :cond_11
    const/16 v1, 0x26

    .line 279
    .line 280
    goto/16 :goto_8

    .line 281
    .line 282
    :sswitch_1
    const-string v0, "function"

    .line 283
    .line 284
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v0

    .line 288
    if-nez v0, :cond_12

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_12
    move v1, v8

    .line 292
    goto/16 :goto_8

    .line 293
    .line 294
    :sswitch_2
    const-string v0, "instanceof"

    .line 295
    .line 296
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_13

    .line 301
    .line 302
    goto :goto_7

    .line 303
    :cond_13
    const/16 v1, 0x24

    .line 304
    .line 305
    goto/16 :goto_8

    .line 306
    .line 307
    :sswitch_3
    const-string v0, "debugger"

    .line 308
    .line 309
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-nez v0, :cond_14

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_14
    const/16 v1, 0x23

    .line 317
    .line 318
    goto/16 :goto_8

    .line 319
    .line 320
    :sswitch_4
    const-string/jumbo v0, "yield"

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-nez v0, :cond_15

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_15
    move v1, v10

    .line 331
    goto/16 :goto_8

    .line 332
    .line 333
    :sswitch_5
    const-string/jumbo v0, "while"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-nez v0, :cond_16

    .line 341
    .line 342
    goto :goto_7

    .line 343
    :cond_16
    move v1, v6

    .line 344
    goto/16 :goto_8

    .line 345
    .line 346
    :sswitch_6
    const-string/jumbo v0, "throw"

    .line 347
    .line 348
    .line 349
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-nez v0, :cond_17

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_17
    const/16 v1, 0x20

    .line 357
    .line 358
    goto/16 :goto_8

    .line 359
    .line 360
    :sswitch_7
    const-string/jumbo v0, "super"

    .line 361
    .line 362
    .line 363
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-nez v0, :cond_18

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_18
    const/16 v1, 0x1f

    .line 371
    .line 372
    goto/16 :goto_8

    .line 373
    .line 374
    :sswitch_8
    const-string v0, "false"

    .line 375
    .line 376
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-nez v0, :cond_19

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_19
    const/16 v1, 0x1e

    .line 384
    .line 385
    goto/16 :goto_8

    .line 386
    .line 387
    :sswitch_9
    const-string v0, "const"

    .line 388
    .line 389
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-nez v0, :cond_1a

    .line 394
    .line 395
    goto/16 :goto_7

    .line 396
    .line 397
    :cond_1a
    const/16 v1, 0x1d

    .line 398
    .line 399
    goto/16 :goto_8

    .line 400
    .line 401
    :sswitch_a
    const-string v0, "class"

    .line 402
    .line 403
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-nez v0, :cond_1b

    .line 408
    .line 409
    goto/16 :goto_7

    .line 410
    .line 411
    :cond_1b
    const/16 v1, 0x1c

    .line 412
    .line 413
    goto/16 :goto_8

    .line 414
    .line 415
    :sswitch_b
    const-string v0, "catch"

    .line 416
    .line 417
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-nez v0, :cond_1c

    .line 422
    .line 423
    goto/16 :goto_7

    .line 424
    .line 425
    :cond_1c
    const/16 v1, 0x1b

    .line 426
    .line 427
    goto/16 :goto_8

    .line 428
    .line 429
    :sswitch_c
    const-string v0, "break"

    .line 430
    .line 431
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_1d

    .line 436
    .line 437
    goto/16 :goto_7

    .line 438
    .line 439
    :cond_1d
    const/16 v1, 0x1a

    .line 440
    .line 441
    goto/16 :goto_8

    .line 442
    .line 443
    :sswitch_d
    const-string v0, "await"

    .line 444
    .line 445
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    if-nez v0, :cond_1e

    .line 450
    .line 451
    goto/16 :goto_7

    .line 452
    .line 453
    :cond_1e
    const/16 v1, 0x19

    .line 454
    .line 455
    goto/16 :goto_8

    .line 456
    .line 457
    :sswitch_e
    const-string/jumbo v0, "with"

    .line 458
    .line 459
    .line 460
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    if-nez v0, :cond_1f

    .line 465
    .line 466
    goto/16 :goto_7

    .line 467
    .line 468
    :cond_1f
    const/16 v1, 0x18

    .line 469
    .line 470
    goto/16 :goto_8

    .line 471
    .line 472
    :sswitch_f
    const-string/jumbo v0, "void"

    .line 473
    .line 474
    .line 475
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-nez v0, :cond_20

    .line 480
    .line 481
    goto/16 :goto_7

    .line 482
    .line 483
    :cond_20
    const/16 v1, 0x17

    .line 484
    .line 485
    goto/16 :goto_8

    .line 486
    .line 487
    :sswitch_10
    const-string/jumbo v0, "true"

    .line 488
    .line 489
    .line 490
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-nez v0, :cond_21

    .line 495
    .line 496
    goto/16 :goto_7

    .line 497
    .line 498
    :cond_21
    const/16 v1, 0x16

    .line 499
    .line 500
    goto/16 :goto_8

    .line 501
    .line 502
    :sswitch_11
    const-string/jumbo v0, "this"

    .line 503
    .line 504
    .line 505
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    move-result v0

    .line 509
    if-nez v0, :cond_22

    .line 510
    .line 511
    goto/16 :goto_7

    .line 512
    .line 513
    :cond_22
    const/16 v1, 0x15

    .line 514
    .line 515
    goto/16 :goto_8

    .line 516
    .line 517
    :sswitch_12
    const-string v0, "null"

    .line 518
    .line 519
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-nez v0, :cond_23

    .line 524
    .line 525
    goto/16 :goto_7

    .line 526
    .line 527
    :cond_23
    const/16 v1, 0x14

    .line 528
    .line 529
    goto/16 :goto_8

    .line 530
    .line 531
    :sswitch_13
    const-string v0, "enum"

    .line 532
    .line 533
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-nez v0, :cond_24

    .line 538
    .line 539
    goto/16 :goto_7

    .line 540
    .line 541
    :cond_24
    const/16 v1, 0x13

    .line 542
    .line 543
    goto/16 :goto_8

    .line 544
    .line 545
    :sswitch_14
    const-string v0, "else"

    .line 546
    .line 547
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-nez v0, :cond_25

    .line 552
    .line 553
    goto/16 :goto_7

    .line 554
    .line 555
    :cond_25
    const/16 v1, 0x12

    .line 556
    .line 557
    goto/16 :goto_8

    .line 558
    .line 559
    :sswitch_15
    const-string v0, "case"

    .line 560
    .line 561
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-nez v0, :cond_26

    .line 566
    .line 567
    goto/16 :goto_7

    .line 568
    .line 569
    :cond_26
    const/16 v1, 0x11

    .line 570
    .line 571
    goto/16 :goto_8

    .line 572
    .line 573
    :sswitch_16
    const-string/jumbo v0, "var"

    .line 574
    .line 575
    .line 576
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    move-result v0

    .line 580
    if-nez v0, :cond_27

    .line 581
    .line 582
    goto/16 :goto_7

    .line 583
    .line 584
    :cond_27
    const/16 v1, 0x10

    .line 585
    .line 586
    goto/16 :goto_8

    .line 587
    .line 588
    :sswitch_17
    const-string/jumbo v0, "try"

    .line 589
    .line 590
    .line 591
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-nez v0, :cond_28

    .line 596
    .line 597
    goto/16 :goto_7

    .line 598
    .line 599
    :cond_28
    const/16 v1, 0xf

    .line 600
    .line 601
    goto/16 :goto_8

    .line 602
    .line 603
    :sswitch_18
    const-string v0, "new"

    .line 604
    .line 605
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    if-nez v0, :cond_29

    .line 610
    .line 611
    goto/16 :goto_7

    .line 612
    .line 613
    :cond_29
    const/16 v1, 0xe

    .line 614
    .line 615
    goto/16 :goto_8

    .line 616
    .line 617
    :sswitch_19
    const-string v0, "let"

    .line 618
    .line 619
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-nez v0, :cond_2a

    .line 624
    .line 625
    goto/16 :goto_7

    .line 626
    .line 627
    :cond_2a
    const/16 v1, 0xd

    .line 628
    .line 629
    goto/16 :goto_8

    .line 630
    .line 631
    :sswitch_1a
    const-string v0, "for"

    .line 632
    .line 633
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-nez v0, :cond_2b

    .line 638
    .line 639
    goto/16 :goto_7

    .line 640
    .line 641
    :cond_2b
    const/16 v1, 0xc

    .line 642
    .line 643
    goto/16 :goto_8

    .line 644
    .line 645
    :sswitch_1b
    const-string v0, "in"

    .line 646
    .line 647
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-nez v0, :cond_2c

    .line 652
    .line 653
    goto/16 :goto_7

    .line 654
    .line 655
    :cond_2c
    const/16 v1, 0xb

    .line 656
    .line 657
    goto/16 :goto_8

    .line 658
    .line 659
    :sswitch_1c
    const-string v0, "if"

    .line 660
    .line 661
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result v0

    .line 665
    if-nez v0, :cond_2d

    .line 666
    .line 667
    goto/16 :goto_7

    .line 668
    .line 669
    :cond_2d
    const/16 v1, 0xa

    .line 670
    .line 671
    goto/16 :goto_8

    .line 672
    .line 673
    :sswitch_1d
    const-string v0, "do"

    .line 674
    .line 675
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    if-nez v0, :cond_2e

    .line 680
    .line 681
    goto/16 :goto_7

    .line 682
    .line 683
    :cond_2e
    const/16 v1, 0x9

    .line 684
    .line 685
    goto/16 :goto_8

    .line 686
    .line 687
    :sswitch_1e
    const-string v0, "continue"

    .line 688
    .line 689
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v0

    .line 693
    if-nez v0, :cond_2f

    .line 694
    .line 695
    goto/16 :goto_7

    .line 696
    .line 697
    :cond_2f
    const/16 v1, 0x8

    .line 698
    .line 699
    goto/16 :goto_8

    .line 700
    .line 701
    :sswitch_1f
    const-string v0, "finally"

    .line 702
    .line 703
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v0

    .line 707
    if-nez v0, :cond_30

    .line 708
    .line 709
    goto/16 :goto_7

    .line 710
    .line 711
    :cond_30
    const/4 v1, 0x7

    .line 712
    goto :goto_8

    .line 713
    :sswitch_20
    const-string/jumbo v0, "typeof"

    .line 714
    .line 715
    .line 716
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 717
    .line 718
    .line 719
    move-result v0

    .line 720
    if-nez v0, :cond_31

    .line 721
    .line 722
    goto/16 :goto_7

    .line 723
    .line 724
    :cond_31
    const/4 v1, 0x6

    .line 725
    goto :goto_8

    .line 726
    :sswitch_21
    const-string/jumbo v0, "switch"

    .line 727
    .line 728
    .line 729
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    if-nez v0, :cond_32

    .line 734
    .line 735
    goto/16 :goto_7

    .line 736
    .line 737
    :cond_32
    const/4 v1, 0x5

    .line 738
    goto :goto_8

    .line 739
    :sswitch_22
    const-string v0, "return"

    .line 740
    .line 741
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result v0

    .line 745
    if-nez v0, :cond_33

    .line 746
    .line 747
    goto/16 :goto_7

    .line 748
    .line 749
    :cond_33
    move/from16 v1, v19

    .line 750
    .line 751
    goto :goto_8

    .line 752
    :sswitch_23
    const-string v0, "import"

    .line 753
    .line 754
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 755
    .line 756
    .line 757
    move-result v0

    .line 758
    if-nez v0, :cond_34

    .line 759
    .line 760
    goto/16 :goto_7

    .line 761
    .line 762
    :cond_34
    const/4 v1, 0x3

    .line 763
    goto :goto_8

    .line 764
    :sswitch_24
    const-string v0, "export"

    .line 765
    .line 766
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 767
    .line 768
    .line 769
    move-result v0

    .line 770
    if-nez v0, :cond_35

    .line 771
    .line 772
    goto/16 :goto_7

    .line 773
    .line 774
    :cond_35
    move/from16 v1, v18

    .line 775
    .line 776
    goto :goto_8

    .line 777
    :sswitch_25
    const-string v0, "extends"

    .line 778
    .line 779
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    if-nez v0, :cond_37

    .line 784
    .line 785
    goto/16 :goto_7

    .line 786
    .line 787
    :sswitch_26
    const-string v0, "delete"

    .line 788
    .line 789
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v0

    .line 793
    if-nez v0, :cond_36

    .line 794
    .line 795
    goto/16 :goto_7

    .line 796
    .line 797
    :cond_36
    move v1, v2

    .line 798
    :cond_37
    :goto_8
    packed-switch v1, :pswitch_data_0

    .line 799
    .line 800
    .line 801
    move-object v0, v4

    .line 802
    goto/16 :goto_9

    .line 803
    .line 804
    :pswitch_0
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEFAULT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 805
    .line 806
    goto/16 :goto_9

    .line 807
    .line 808
    :pswitch_1
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FUNCTION:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 809
    .line 810
    goto/16 :goto_9

    .line 811
    .line 812
    :pswitch_2
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INSTANCEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 813
    .line 814
    goto/16 :goto_9

    .line 815
    .line 816
    :pswitch_3
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEBUGGER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 817
    .line 818
    goto/16 :goto_9

    .line 819
    .line 820
    :pswitch_4
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->YIELD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 821
    .line 822
    goto/16 :goto_9

    .line 823
    .line 824
    :pswitch_5
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WHILE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 825
    .line 826
    goto/16 :goto_9

    .line 827
    .line 828
    :pswitch_6
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 829
    .line 830
    goto/16 :goto_9

    .line 831
    .line 832
    :pswitch_7
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FALSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 833
    .line 834
    goto/16 :goto_9

    .line 835
    .line 836
    :pswitch_8
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONST:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 837
    .line 838
    goto/16 :goto_9

    .line 839
    .line 840
    :pswitch_9
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CATCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 841
    .line 842
    goto :goto_9

    .line 843
    :pswitch_a
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BREAK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 844
    .line 845
    goto :goto_9

    .line 846
    :pswitch_b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->WITH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 847
    .line 848
    goto :goto_9

    .line 849
    :pswitch_c
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VOID:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 850
    .line 851
    goto :goto_9

    .line 852
    :pswitch_d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 853
    .line 854
    goto :goto_9

    .line 855
    :pswitch_e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->THIS:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 856
    .line 857
    goto :goto_9

    .line 858
    :pswitch_f
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NULL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 859
    .line 860
    goto :goto_9

    .line 861
    :pswitch_10
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ELSE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 862
    .line 863
    goto :goto_9

    .line 864
    :pswitch_11
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CASE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 865
    .line 866
    goto :goto_9

    .line 867
    :pswitch_12
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->VAR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 868
    .line 869
    goto :goto_9

    .line 870
    :pswitch_13
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TRY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 871
    .line 872
    goto :goto_9

    .line 873
    :pswitch_14
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NEW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 874
    .line 875
    goto :goto_9

    .line 876
    :pswitch_15
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LET:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 877
    .line 878
    goto :goto_9

    .line 879
    :pswitch_16
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 880
    .line 881
    goto :goto_9

    .line 882
    :pswitch_17
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 883
    .line 884
    goto :goto_9

    .line 885
    :pswitch_18
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 886
    .line 887
    goto :goto_9

    .line 888
    :pswitch_19
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DO:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 889
    .line 890
    goto :goto_9

    .line 891
    :pswitch_1a
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->CONTINUE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 892
    .line 893
    goto :goto_9

    .line 894
    :pswitch_1b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->FINALLY:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 895
    .line 896
    goto :goto_9

    .line 897
    :pswitch_1c
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TYPEOF:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 898
    .line 899
    goto :goto_9

    .line 900
    :pswitch_1d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SWITCH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 901
    .line 902
    goto :goto_9

    .line 903
    :pswitch_1e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RETURN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 904
    .line 905
    goto :goto_9

    .line 906
    :pswitch_1f
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->IMPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 907
    .line 908
    goto :goto_9

    .line 909
    :pswitch_20
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXPORT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 910
    .line 911
    goto :goto_9

    .line 912
    :pswitch_21
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RESERVED:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 913
    .line 914
    goto :goto_9

    .line 915
    :pswitch_22
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DELPROP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 916
    .line 917
    :goto_9
    if-eq v0, v4, :cond_38

    .line 918
    .line 919
    return-object v0

    .line 920
    :cond_38
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NAME:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 921
    .line 922
    return-object v0

    .line 923
    :cond_39
    move/from16 v19, v7

    .line 924
    .line 925
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    .line 926
    .line 927
    .line 928
    move-result v4

    .line 929
    const/16 v7, 0x6e

    .line 930
    .line 931
    const/16 v9, 0x62

    .line 932
    .line 933
    const/16 v11, 0x2b

    .line 934
    .line 935
    const/16 v15, 0x2e

    .line 936
    .line 937
    const/16 v13, 0x30

    .line 938
    .line 939
    if-nez v4, :cond_7e

    .line 940
    .line 941
    if-ne v3, v15, :cond_3a

    .line 942
    .line 943
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 944
    .line 945
    .line 946
    move-result v4

    .line 947
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 948
    .line 949
    .line 950
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    .line 951
    .line 952
    .line 953
    move-result v4

    .line 954
    if-eqz v4, :cond_3a

    .line 955
    .line 956
    goto/16 :goto_17

    .line 957
    .line 958
    :cond_3a
    const/16 v4, 0x60

    .line 959
    .line 960
    if-eq v3, v10, :cond_68

    .line 961
    .line 962
    const/16 v10, 0x27

    .line 963
    .line 964
    if-eq v3, v10, :cond_68

    .line 965
    .line 966
    if-ne v3, v4, :cond_3b

    .line 967
    .line 968
    goto/16 :goto_e

    .line 969
    .line 970
    :cond_3b
    const/16 v4, 0x3d

    .line 971
    .line 972
    if-eq v3, v6, :cond_65

    .line 973
    .line 974
    const/16 v7, 0x5b

    .line 975
    .line 976
    if-eq v3, v7, :cond_64

    .line 977
    .line 978
    if-eq v3, v8, :cond_62

    .line 979
    .line 980
    const/16 v7, 0x26

    .line 981
    .line 982
    if-eq v3, v7, :cond_5f

    .line 983
    .line 984
    const/16 v7, 0x5d

    .line 985
    .line 986
    if-eq v3, v7, :cond_5e

    .line 987
    .line 988
    const/16 v7, 0x5e

    .line 989
    .line 990
    if-eq v3, v7, :cond_5c

    .line 991
    .line 992
    const/16 v7, 0x2a

    .line 993
    .line 994
    sget-object v8, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMENT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 995
    .line 996
    const/16 v9, 0x3e

    .line 997
    .line 998
    packed-switch v3, :pswitch_data_1

    .line 999
    .line 1000
    .line 1001
    packed-switch v3, :pswitch_data_2

    .line 1002
    .line 1003
    .line 1004
    packed-switch v3, :pswitch_data_3

    .line 1005
    .line 1006
    .line 1007
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 1008
    .line 1009
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v3

    .line 1013
    new-array v1, v1, [Ljava/lang/Object;

    .line 1014
    .line 1015
    aput-object v3, v1, v2

    .line 1016
    .line 1017
    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v1

    .line 1021
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    throw v0

    .line 1025
    :pswitch_23
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITNOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1026
    .line 1027
    return-object v0

    .line 1028
    :pswitch_24
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1029
    .line 1030
    return-object v0

    .line 1031
    :pswitch_25
    const/16 v1, 0x7c

    .line 1032
    .line 1033
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1034
    .line 1035
    .line 1036
    move-result v1

    .line 1037
    if-eqz v1, :cond_3c

    .line 1038
    .line 1039
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->OR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1040
    .line 1041
    return-object v0

    .line 1042
    :cond_3c
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v0

    .line 1046
    if-eqz v0, :cond_3d

    .line 1047
    .line 1048
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1049
    .line 1050
    return-object v0

    .line 1051
    :cond_3d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1052
    .line 1053
    return-object v0

    .line 1054
    :pswitch_26
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1055
    .line 1056
    return-object v0

    .line 1057
    :pswitch_27
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->HOOK:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1058
    .line 1059
    return-object v0

    .line 1060
    :pswitch_28
    invoke-virtual {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    if-eqz v1, :cond_41

    .line 1065
    .line 1066
    invoke-virtual {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1067
    .line 1068
    .line 1069
    move-result v1

    .line 1070
    if-eqz v1, :cond_3f

    .line 1071
    .line 1072
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1073
    .line 1074
    .line 1075
    move-result v0

    .line 1076
    if-eqz v0, :cond_3e

    .line 1077
    .line 1078
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1079
    .line 1080
    return-object v0

    .line 1081
    :cond_3e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->URSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1082
    .line 1083
    return-object v0

    .line 1084
    :cond_3f
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1085
    .line 1086
    .line 1087
    move-result v0

    .line 1088
    if-eqz v0, :cond_40

    .line 1089
    .line 1090
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1091
    .line 1092
    return-object v0

    .line 1093
    :cond_40
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1094
    .line 1095
    return-object v0

    .line 1096
    :cond_41
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v0

    .line 1100
    if-eqz v0, :cond_42

    .line 1101
    .line 1102
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->GE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1103
    .line 1104
    return-object v0

    .line 1105
    :cond_42
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->GT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1106
    .line 1107
    return-object v0

    .line 1108
    :pswitch_29
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v1

    .line 1112
    if-eqz v1, :cond_44

    .line 1113
    .line 1114
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    if-eqz v0, :cond_43

    .line 1119
    .line 1120
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SHEQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1121
    .line 1122
    return-object v0

    .line 1123
    :cond_43
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EQ:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1124
    .line 1125
    return-object v0

    .line 1126
    :cond_44
    invoke-virtual {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1127
    .line 1128
    .line 1129
    move-result v0

    .line 1130
    if-eqz v0, :cond_45

    .line 1131
    .line 1132
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ARROW:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1133
    .line 1134
    return-object v0

    .line 1135
    :cond_45
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1136
    .line 1137
    return-object v0

    .line 1138
    :pswitch_2a
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v1

    .line 1142
    if-eqz v1, :cond_48

    .line 1143
    .line 1144
    const/16 v1, 0x2d

    .line 1145
    .line 1146
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v2

    .line 1150
    if-eqz v2, :cond_47

    .line 1151
    .line 1152
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1153
    .line 1154
    .line 1155
    move-result v2

    .line 1156
    if-eqz v2, :cond_46

    .line 1157
    .line 1158
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 1159
    .line 1160
    add-int/lit8 v1, v1, -0x4

    .line 1161
    .line 1162
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 1163
    .line 1164
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->skipLine()V

    .line 1165
    .line 1166
    .line 1167
    return-object v8

    .line 1168
    :cond_46
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 1169
    .line 1170
    .line 1171
    :cond_47
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 1172
    .line 1173
    .line 1174
    :cond_48
    const/16 v1, 0x3c

    .line 1175
    .line 1176
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v1

    .line 1180
    if-eqz v1, :cond_4a

    .line 1181
    .line 1182
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1183
    .line 1184
    .line 1185
    move-result v0

    .line 1186
    if-eqz v0, :cond_49

    .line 1187
    .line 1188
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1189
    .line 1190
    return-object v0

    .line 1191
    :cond_49
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LSH:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1192
    .line 1193
    return-object v0

    .line 1194
    :cond_4a
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v0

    .line 1198
    if-eqz v0, :cond_4b

    .line 1199
    .line 1200
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1201
    .line 1202
    return-object v0

    .line 1203
    :cond_4b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1204
    .line 1205
    return-object v0

    .line 1206
    :pswitch_2b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SEMI:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1207
    .line 1208
    return-object v0

    .line 1209
    :pswitch_2c
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COLON:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1210
    .line 1211
    return-object v0

    .line 1212
    :pswitch_2d
    const/16 v3, 0x2f

    .line 1213
    .line 1214
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1215
    .line 1216
    .line 1217
    move-result v6

    .line 1218
    if-eqz v6, :cond_4c

    .line 1219
    .line 1220
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 1221
    .line 1222
    add-int/lit8 v1, v1, -0x2

    .line 1223
    .line 1224
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 1225
    .line 1226
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->skipLine()V

    .line 1227
    .line 1228
    .line 1229
    return-object v8

    .line 1230
    :cond_4c
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v6

    .line 1234
    if-eqz v6, :cond_52

    .line 1235
    .line 1236
    iget v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 1237
    .line 1238
    add-int/lit8 v4, v4, -0x2

    .line 1239
    .line 1240
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenBeg:I

    .line 1241
    .line 1242
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v4

    .line 1246
    if-eqz v4, :cond_4d

    .line 1247
    .line 1248
    :goto_a
    move v4, v1

    .line 1249
    goto :goto_c

    .line 1250
    :cond_4d
    :goto_b
    move v4, v2

    .line 1251
    :cond_4e
    :goto_c
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1252
    .line 1253
    .line 1254
    move-result v6

    .line 1255
    if-eq v6, v5, :cond_51

    .line 1256
    .line 1257
    if-ne v6, v7, :cond_4f

    .line 1258
    .line 1259
    goto :goto_a

    .line 1260
    :cond_4f
    if-ne v6, v3, :cond_50

    .line 1261
    .line 1262
    if-eqz v4, :cond_4e

    .line 1263
    .line 1264
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 1265
    .line 1266
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 1267
    .line 1268
    return-object v8

    .line 1269
    :cond_50
    iget v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 1270
    .line 1271
    iput v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 1272
    .line 1273
    goto :goto_b

    .line 1274
    :cond_51
    iget v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 1275
    .line 1276
    sub-int/2addr v2, v1

    .line 1277
    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 1278
    .line 1279
    const-string/jumbo v0, "unterminated comment"

    .line 1280
    .line 1281
    .line 1282
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    return-object v17

    .line 1286
    :cond_52
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    if-eqz v0, :cond_53

    .line 1291
    .line 1292
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1293
    .line 1294
    return-object v0

    .line 1295
    :cond_53
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DIV:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1296
    .line 1297
    return-object v0

    .line 1298
    :pswitch_2e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1299
    .line 1300
    return-object v0

    .line 1301
    :pswitch_2f
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1302
    .line 1303
    .line 1304
    move-result v2

    .line 1305
    if-eqz v2, :cond_54

    .line 1306
    .line 1307
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1308
    .line 1309
    goto :goto_d

    .line 1310
    :cond_54
    const/16 v2, 0x2d

    .line 1311
    .line 1312
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v2

    .line 1316
    if-eqz v2, :cond_56

    .line 1317
    .line 1318
    iget-boolean v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    .line 1319
    .line 1320
    if-nez v2, :cond_55

    .line 1321
    .line 1322
    invoke-virtual {v0, v9}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1323
    .line 1324
    .line 1325
    move-result v2

    .line 1326
    if-eqz v2, :cond_55

    .line 1327
    .line 1328
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->skipLine()V

    .line 1329
    .line 1330
    .line 1331
    return-object v8

    .line 1332
    :cond_55
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->DEC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1333
    .line 1334
    goto :goto_d

    .line 1335
    :cond_56
    sget-object v2, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SUB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1336
    .line 1337
    :goto_d
    iput-boolean v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->dirtyLine:Z

    .line 1338
    .line 1339
    return-object v2

    .line 1340
    :pswitch_30
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->COMMA:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1341
    .line 1342
    return-object v0

    .line 1343
    :pswitch_31
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1344
    .line 1345
    .line 1346
    move-result v1

    .line 1347
    if-eqz v1, :cond_57

    .line 1348
    .line 1349
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1350
    .line 1351
    return-object v0

    .line 1352
    :cond_57
    invoke-virtual {v0, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1353
    .line 1354
    .line 1355
    move-result v0

    .line 1356
    if-eqz v0, :cond_58

    .line 1357
    .line 1358
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->INC:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1359
    .line 1360
    return-object v0

    .line 1361
    :cond_58
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ADD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1362
    .line 1363
    return-object v0

    .line 1364
    :pswitch_32
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1365
    .line 1366
    .line 1367
    move-result v1

    .line 1368
    if-eqz v1, :cond_5a

    .line 1369
    .line 1370
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    if-eqz v0, :cond_59

    .line 1375
    .line 1376
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1377
    .line 1378
    return-object v0

    .line 1379
    :cond_59
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->EXP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1380
    .line 1381
    return-object v0

    .line 1382
    :cond_5a
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v0

    .line 1386
    if-eqz v0, :cond_5b

    .line 1387
    .line 1388
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1389
    .line 1390
    return-object v0

    .line 1391
    :cond_5b
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->MUL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1392
    .line 1393
    return-object v0

    .line 1394
    :pswitch_33
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1395
    .line 1396
    return-object v0

    .line 1397
    :pswitch_34
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LP:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1398
    .line 1399
    return-object v0

    .line 1400
    :cond_5c
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1401
    .line 1402
    .line 1403
    move-result v0

    .line 1404
    if-eqz v0, :cond_5d

    .line 1405
    .line 1406
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1407
    .line 1408
    return-object v0

    .line 1409
    :cond_5d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITXOR:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1410
    .line 1411
    return-object v0

    .line 1412
    :cond_5e
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->RB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1413
    .line 1414
    return-object v0

    .line 1415
    :cond_5f
    invoke-virtual {v0, v7}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1416
    .line 1417
    .line 1418
    move-result v1

    .line 1419
    if-eqz v1, :cond_60

    .line 1420
    .line 1421
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->AND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1422
    .line 1423
    return-object v0

    .line 1424
    :cond_60
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1425
    .line 1426
    .line 1427
    move-result v0

    .line 1428
    if-eqz v0, :cond_61

    .line 1429
    .line 1430
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1431
    .line 1432
    return-object v0

    .line 1433
    :cond_61
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->BITAND:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1434
    .line 1435
    return-object v0

    .line 1436
    :cond_62
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1437
    .line 1438
    .line 1439
    move-result v0

    .line 1440
    if-eqz v0, :cond_63

    .line 1441
    .line 1442
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->ASSIGN_MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1443
    .line 1444
    return-object v0

    .line 1445
    :cond_63
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->MOD:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1446
    .line 1447
    return-object v0

    .line 1448
    :cond_64
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->LB:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1449
    .line 1450
    return-object v0

    .line 1451
    :cond_65
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1452
    .line 1453
    .line 1454
    move-result v1

    .line 1455
    if-eqz v1, :cond_67

    .line 1456
    .line 1457
    invoke-virtual {v0, v4}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->matchChar(I)Z

    .line 1458
    .line 1459
    .line 1460
    move-result v0

    .line 1461
    if-eqz v0, :cond_66

    .line 1462
    .line 1463
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->SHNE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1464
    .line 1465
    return-object v0

    .line 1466
    :cond_66
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NE:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1467
    .line 1468
    return-object v0

    .line 1469
    :cond_67
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NOT:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1470
    .line 1471
    return-object v0

    .line 1472
    :cond_68
    :goto_e
    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 1473
    .line 1474
    invoke-virtual {v0, v2, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1475
    .line 1476
    .line 1477
    move-result v6

    .line 1478
    :goto_f
    if-eq v6, v3, :cond_7c

    .line 1479
    .line 1480
    if-ne v6, v5, :cond_69

    .line 1481
    .line 1482
    move v10, v1

    .line 1483
    const/16 v8, 0xd

    .line 1484
    .line 1485
    goto :goto_11

    .line 1486
    :cond_69
    const/16 v8, 0xa

    .line 1487
    .line 1488
    if-ne v6, v8, :cond_6d

    .line 1489
    .line 1490
    iget v10, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->lineEndChar:I

    .line 1491
    .line 1492
    if-eq v10, v8, :cond_6b

    .line 1493
    .line 1494
    const/16 v8, 0xd

    .line 1495
    .line 1496
    if-eq v10, v8, :cond_6c

    .line 1497
    .line 1498
    const/16 v11, 0x2028

    .line 1499
    .line 1500
    if-eq v10, v11, :cond_6a

    .line 1501
    .line 1502
    const/16 v11, 0x2029

    .line 1503
    .line 1504
    if-eq v10, v11, :cond_6a

    .line 1505
    .line 1506
    goto :goto_10

    .line 1507
    :cond_6a
    move v6, v10

    .line 1508
    :goto_10
    move v10, v2

    .line 1509
    goto :goto_11

    .line 1510
    :cond_6b
    const/16 v8, 0xd

    .line 1511
    .line 1512
    :cond_6c
    move v10, v1

    .line 1513
    goto :goto_11

    .line 1514
    :cond_6d
    const/16 v8, 0xd

    .line 1515
    .line 1516
    goto :goto_10

    .line 1517
    :goto_11
    if-nez v10, :cond_7b

    .line 1518
    .line 1519
    if-ne v6, v14, :cond_7a

    .line 1520
    .line 1521
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1522
    .line 1523
    .line 1524
    move-result v6

    .line 1525
    const/16 v10, 0xa

    .line 1526
    .line 1527
    if-eq v6, v10, :cond_79

    .line 1528
    .line 1529
    if-eq v6, v9, :cond_78

    .line 1530
    .line 1531
    const/16 v10, 0x66

    .line 1532
    .line 1533
    if-eq v6, v10, :cond_77

    .line 1534
    .line 1535
    if-eq v6, v7, :cond_76

    .line 1536
    .line 1537
    const/16 v10, 0x72

    .line 1538
    .line 1539
    if-eq v6, v10, :cond_75

    .line 1540
    .line 1541
    const/16 v10, 0x78

    .line 1542
    .line 1543
    if-eq v6, v10, :cond_72

    .line 1544
    .line 1545
    packed-switch v6, :pswitch_data_4

    .line 1546
    .line 1547
    .line 1548
    if-gt v13, v6, :cond_7a

    .line 1549
    .line 1550
    const/16 v10, 0x38

    .line 1551
    .line 1552
    if-ge v6, v10, :cond_7a

    .line 1553
    .line 1554
    add-int/lit8 v6, v6, -0x30

    .line 1555
    .line 1556
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1557
    .line 1558
    .line 1559
    move-result v11

    .line 1560
    if-gt v13, v11, :cond_6e

    .line 1561
    .line 1562
    if-ge v11, v10, :cond_6e

    .line 1563
    .line 1564
    mul-int/lit8 v6, v6, 0x8

    .line 1565
    .line 1566
    add-int/2addr v6, v11

    .line 1567
    sub-int/2addr v6, v13

    .line 1568
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1569
    .line 1570
    .line 1571
    move-result v11

    .line 1572
    if-gt v13, v11, :cond_6e

    .line 1573
    .line 1574
    if-ge v11, v10, :cond_6e

    .line 1575
    .line 1576
    const/16 v10, 0x1f

    .line 1577
    .line 1578
    if-gt v6, v10, :cond_6f

    .line 1579
    .line 1580
    mul-int/lit8 v6, v6, 0x8

    .line 1581
    .line 1582
    add-int/2addr v6, v11

    .line 1583
    sub-int/2addr v6, v13

    .line 1584
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1585
    .line 1586
    .line 1587
    move-result v11

    .line 1588
    goto :goto_12

    .line 1589
    :cond_6e
    const/16 v10, 0x1f

    .line 1590
    .line 1591
    :cond_6f
    :goto_12
    invoke-virtual {v0, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 1592
    .line 1593
    .line 1594
    :goto_13
    const/16 v11, 0x75

    .line 1595
    .line 1596
    goto/16 :goto_16

    .line 1597
    .line 1598
    :pswitch_35
    const/16 v10, 0x1f

    .line 1599
    .line 1600
    const/16 v6, 0xb

    .line 1601
    .line 1602
    goto :goto_13

    .line 1603
    :pswitch_36
    const/16 v10, 0x1f

    .line 1604
    .line 1605
    iget v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 1606
    .line 1607
    const/16 v11, 0x75

    .line 1608
    .line 1609
    invoke-virtual {v0, v11}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1610
    .line 1611
    .line 1612
    move v12, v2

    .line 1613
    move v15, v12

    .line 1614
    move/from16 v5, v19

    .line 1615
    .line 1616
    :goto_14
    if-eq v15, v5, :cond_71

    .line 1617
    .line 1618
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1619
    .line 1620
    .line 1621
    move-result v5

    .line 1622
    invoke-static {v5, v12}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 1623
    .line 1624
    .line 1625
    move-result v12

    .line 1626
    if-gez v12, :cond_70

    .line 1627
    .line 1628
    move v6, v5

    .line 1629
    :goto_15
    const/4 v5, -0x1

    .line 1630
    const/16 v19, 0x4

    .line 1631
    .line 1632
    goto/16 :goto_f

    .line 1633
    .line 1634
    :cond_70
    invoke-virtual {v0, v5}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1635
    .line 1636
    .line 1637
    add-int/lit8 v15, v15, 0x1

    .line 1638
    .line 1639
    const/4 v5, 0x4

    .line 1640
    goto :goto_14

    .line 1641
    :cond_71
    iput v6, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 1642
    .line 1643
    move v6, v12

    .line 1644
    goto :goto_16

    .line 1645
    :pswitch_37
    const/16 v10, 0x1f

    .line 1646
    .line 1647
    const/16 v11, 0x75

    .line 1648
    .line 1649
    const/16 v6, 0x9

    .line 1650
    .line 1651
    goto :goto_16

    .line 1652
    :cond_72
    const/16 v10, 0x1f

    .line 1653
    .line 1654
    const/16 v11, 0x75

    .line 1655
    .line 1656
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1657
    .line 1658
    .line 1659
    move-result v6

    .line 1660
    invoke-static {v6, v2}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 1661
    .line 1662
    .line 1663
    move-result v5

    .line 1664
    if-gez v5, :cond_73

    .line 1665
    .line 1666
    const/16 v12, 0x78

    .line 1667
    .line 1668
    invoke-virtual {v0, v12}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1669
    .line 1670
    .line 1671
    goto :goto_15

    .line 1672
    :cond_73
    const/16 v12, 0x78

    .line 1673
    .line 1674
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1675
    .line 1676
    .line 1677
    move-result v15

    .line 1678
    invoke-static {v15, v5}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    .line 1679
    .line 1680
    .line 1681
    move-result v5

    .line 1682
    if-gez v5, :cond_74

    .line 1683
    .line 1684
    invoke-virtual {v0, v12}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1685
    .line 1686
    .line 1687
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1688
    .line 1689
    .line 1690
    move v6, v15

    .line 1691
    goto :goto_15

    .line 1692
    :cond_74
    move v6, v5

    .line 1693
    goto :goto_16

    .line 1694
    :cond_75
    const/16 v10, 0x1f

    .line 1695
    .line 1696
    const/16 v11, 0x75

    .line 1697
    .line 1698
    move v6, v8

    .line 1699
    goto :goto_16

    .line 1700
    :cond_76
    const/16 v10, 0x1f

    .line 1701
    .line 1702
    const/16 v11, 0x75

    .line 1703
    .line 1704
    const/16 v6, 0xa

    .line 1705
    .line 1706
    goto :goto_16

    .line 1707
    :cond_77
    const/16 v10, 0x1f

    .line 1708
    .line 1709
    const/16 v11, 0x75

    .line 1710
    .line 1711
    const/16 v6, 0xc

    .line 1712
    .line 1713
    goto :goto_16

    .line 1714
    :cond_78
    const/16 v10, 0x1f

    .line 1715
    .line 1716
    const/16 v11, 0x75

    .line 1717
    .line 1718
    const/16 v6, 0x8

    .line 1719
    .line 1720
    goto :goto_16

    .line 1721
    :cond_79
    const/16 v10, 0x1f

    .line 1722
    .line 1723
    const/16 v11, 0x75

    .line 1724
    .line 1725
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1726
    .line 1727
    .line 1728
    move-result v6

    .line 1729
    goto :goto_15

    .line 1730
    :cond_7a
    const/16 v10, 0x1f

    .line 1731
    .line 1732
    goto/16 :goto_13

    .line 1733
    .line 1734
    :goto_16
    invoke-virtual {v0, v6}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {v0, v2, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1738
    .line 1739
    .line 1740
    move-result v6

    .line 1741
    goto :goto_15

    .line 1742
    :cond_7b
    const-string/jumbo v0, "unterminated string literal"

    .line 1743
    .line 1744
    .line 1745
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1746
    .line 1747
    .line 1748
    return-object v17

    .line 1749
    :cond_7c
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 1750
    .line 1751
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 1752
    .line 1753
    if-ne v3, v4, :cond_7d

    .line 1754
    .line 1755
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->TEMPLATE_LITERAL:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1756
    .line 1757
    return-object v0

    .line 1758
    :cond_7d
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->STRING:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 1759
    .line 1760
    return-object v0

    .line 1761
    :cond_7e
    :goto_17
    iput v2, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 1762
    .line 1763
    if-ne v3, v13, :cond_83

    .line 1764
    .line 1765
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1766
    .line 1767
    .line 1768
    move-result v3

    .line 1769
    const/16 v10, 0x78

    .line 1770
    .line 1771
    if-eq v3, v10, :cond_86

    .line 1772
    .line 1773
    const/16 v4, 0x58

    .line 1774
    .line 1775
    if-ne v3, v4, :cond_7f

    .line 1776
    .line 1777
    goto :goto_1b

    .line 1778
    :cond_7f
    const/16 v4, 0x6f

    .line 1779
    .line 1780
    if-eq v3, v4, :cond_85

    .line 1781
    .line 1782
    const/16 v4, 0x4f

    .line 1783
    .line 1784
    if-ne v3, v4, :cond_80

    .line 1785
    .line 1786
    goto :goto_1a

    .line 1787
    :cond_80
    if-eq v3, v9, :cond_84

    .line 1788
    .line 1789
    const/16 v4, 0x42

    .line 1790
    .line 1791
    if-ne v3, v4, :cond_81

    .line 1792
    .line 1793
    goto :goto_19

    .line 1794
    :cond_81
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    .line 1795
    .line 1796
    .line 1797
    move-result v4

    .line 1798
    if-eqz v4, :cond_82

    .line 1799
    .line 1800
    move v4, v1

    .line 1801
    :goto_18
    const/16 v8, 0x8

    .line 1802
    .line 1803
    goto :goto_1c

    .line 1804
    :cond_82
    invoke-virtual {v0, v13}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1805
    .line 1806
    .line 1807
    :cond_83
    move v4, v2

    .line 1808
    const/16 v8, 0xa

    .line 1809
    .line 1810
    goto :goto_1c

    .line 1811
    :cond_84
    :goto_19
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1812
    .line 1813
    .line 1814
    move-result v3

    .line 1815
    move v4, v2

    .line 1816
    move/from16 v8, v18

    .line 1817
    .line 1818
    goto :goto_1c

    .line 1819
    :cond_85
    :goto_1a
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1820
    .line 1821
    .line 1822
    move-result v3

    .line 1823
    move v4, v2

    .line 1824
    goto :goto_18

    .line 1825
    :cond_86
    :goto_1b
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1826
    .line 1827
    .line 1828
    move-result v3

    .line 1829
    move v4, v2

    .line 1830
    const/16 v8, 0x10

    .line 1831
    .line 1832
    :goto_1c
    iget v5, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 1833
    .line 1834
    const/4 v6, -0x2

    .line 1835
    const-string v9, "number format error"

    .line 1836
    .line 1837
    const/16 v10, 0xa

    .line 1838
    .line 1839
    if-eq v8, v10, :cond_8b

    .line 1840
    .line 1841
    const/16 v10, 0x10

    .line 1842
    .line 1843
    if-eq v8, v10, :cond_8b

    .line 1844
    .line 1845
    const/16 v10, 0x8

    .line 1846
    .line 1847
    if-ne v8, v10, :cond_87

    .line 1848
    .line 1849
    if-eqz v4, :cond_8b

    .line 1850
    .line 1851
    :cond_87
    move/from16 v4, v18

    .line 1852
    .line 1853
    if-ne v8, v4, :cond_88

    .line 1854
    .line 1855
    goto :goto_1e

    .line 1856
    :cond_88
    :goto_1d
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    .line 1857
    .line 1858
    .line 1859
    move-result v4

    .line 1860
    if-eqz v4, :cond_8c

    .line 1861
    .line 1862
    const/16 v10, 0x38

    .line 1863
    .line 1864
    if-lt v3, v10, :cond_8a

    .line 1865
    .line 1866
    const/16 v4, 0xa

    .line 1867
    .line 1868
    invoke-virtual {v0, v4, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    .line 1869
    .line 1870
    .line 1871
    move-result v3

    .line 1872
    if-eq v3, v6, :cond_89

    .line 1873
    .line 1874
    const/16 v8, 0xa

    .line 1875
    .line 1876
    goto :goto_1f

    .line 1877
    :cond_89
    invoke-static {v9}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1878
    .line 1879
    .line 1880
    return-object v17

    .line 1881
    :cond_8a
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1882
    .line 1883
    .line 1884
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1885
    .line 1886
    .line 1887
    move-result v3

    .line 1888
    goto :goto_1d

    .line 1889
    :cond_8b
    :goto_1e
    invoke-virtual {v0, v8, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    .line 1890
    .line 1891
    .line 1892
    move-result v3

    .line 1893
    if-eq v3, v6, :cond_99

    .line 1894
    .line 1895
    :cond_8c
    :goto_1f
    iget v4, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->stringBufferTop:I

    .line 1896
    .line 1897
    const/16 v10, 0xa

    .line 1898
    .line 1899
    if-ne v4, v5, :cond_8e

    .line 1900
    .line 1901
    if-ne v8, v10, :cond_8d

    .line 1902
    .line 1903
    goto :goto_20

    .line 1904
    :cond_8d
    invoke-static {v9}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1905
    .line 1906
    .line 1907
    return-object v17

    .line 1908
    :cond_8e
    :goto_20
    if-ne v3, v7, :cond_8f

    .line 1909
    .line 1910
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1911
    .line 1912
    .line 1913
    move-result v3

    .line 1914
    goto :goto_22

    .line 1915
    :cond_8f
    if-ne v8, v10, :cond_98

    .line 1916
    .line 1917
    const/16 v4, 0x45

    .line 1918
    .line 1919
    const/16 v5, 0x65

    .line 1920
    .line 1921
    if-eq v3, v15, :cond_90

    .line 1922
    .line 1923
    if-eq v3, v5, :cond_90

    .line 1924
    .line 1925
    if-ne v3, v4, :cond_98

    .line 1926
    .line 1927
    :cond_90
    if-ne v3, v15, :cond_92

    .line 1928
    .line 1929
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1930
    .line 1931
    .line 1932
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1933
    .line 1934
    .line 1935
    move-result v3

    .line 1936
    invoke-virtual {v0, v8, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    .line 1937
    .line 1938
    .line 1939
    move-result v3

    .line 1940
    if-eq v3, v6, :cond_91

    .line 1941
    .line 1942
    goto :goto_21

    .line 1943
    :cond_91
    invoke-static {v9}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1944
    .line 1945
    .line 1946
    return-object v17

    .line 1947
    :cond_92
    :goto_21
    if-eq v3, v5, :cond_93

    .line 1948
    .line 1949
    if-ne v3, v4, :cond_98

    .line 1950
    .line 1951
    :cond_93
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1955
    .line 1956
    .line 1957
    move-result v3

    .line 1958
    if-eq v3, v11, :cond_94

    .line 1959
    .line 1960
    const/16 v4, 0x2d

    .line 1961
    .line 1962
    if-ne v3, v4, :cond_95

    .line 1963
    .line 1964
    :cond_94
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 1965
    .line 1966
    .line 1967
    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 1968
    .line 1969
    .line 1970
    move-result v3

    .line 1971
    :cond_95
    invoke-static {v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(I)Z

    .line 1972
    .line 1973
    .line 1974
    move-result v1

    .line 1975
    if-eqz v1, :cond_97

    .line 1976
    .line 1977
    invoke-virtual {v0, v8, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->readDigits(II)I

    .line 1978
    .line 1979
    .line 1980
    move-result v3

    .line 1981
    if-eq v3, v6, :cond_96

    .line 1982
    .line 1983
    goto :goto_22

    .line 1984
    :cond_96
    invoke-static {v9}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1985
    .line 1986
    .line 1987
    return-object v17

    .line 1988
    :cond_97
    const-string v0, "missing exponent"

    .line 1989
    .line 1990
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1991
    .line 1992
    .line 1993
    return-object v17

    .line 1994
    :cond_98
    :goto_22
    invoke-virtual {v0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 1995
    .line 1996
    .line 1997
    iget v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 1998
    .line 1999
    iput v1, v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 2000
    .line 2001
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;->NUMBER:Lorg/schabi/newpipe/extractor/utils/jsextractor/Token;

    .line 2002
    .line 2003
    return-object v0

    .line 2004
    :cond_99
    invoke-static {v9}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 2005
    .line 2006
    .line 2007
    return-object v17

    .line 2008
    nop

    .line 2009
    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_26
        -0x4dd2db67 -> :sswitch_25
        -0x4cd6ec4c -> :sswitch_24
        -0x469e8c5b -> :sswitch_23
        -0x37b1c2d0 -> :sswitch_22
        -0x350448cc -> :sswitch_21
        -0x3330496f -> :sswitch_20
        -0x32dbb67d -> :sswitch_1f
        -0x21ced359 -> :sswitch_1e
        0xc8b -> :sswitch_1d
        0xd1d -> :sswitch_1c
        0xd25 -> :sswitch_1b
        0x18cc9 -> :sswitch_1a
        0x1a21b -> :sswitch_19
        0x1a9a0 -> :sswitch_18
        0x1c1bb -> :sswitch_17
        0x1c727 -> :sswitch_16
        0x2e7b30 -> :sswitch_15
        0x2f8d39 -> :sswitch_14
        0x2f9501 -> :sswitch_13
        0x33c587 -> :sswitch_12
        0x364e9e -> :sswitch_11
        0x36758e -> :sswitch_10
        0x375194 -> :sswitch_f
        0x37b0c6 -> :sswitch_e
        0x58e7956 -> :sswitch_d
        0x59a58ff -> :sswitch_c
        0x5a0eebb -> :sswitch_b
        0x5a5a978 -> :sswitch_a
        0x5a73763 -> :sswitch_9
        0x5cb1923 -> :sswitch_8
        0x68b6f7b -> :sswitch_7
        0x693a6e6 -> :sswitch_6
        0x6bdcb31 -> :sswitch_5
        0x6da5f8d -> :sswitch_4
        0x20a6f421 -> :sswitch_3
        0x35c3d12c -> :sswitch_2
        0x524f73d8 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_21
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_21
        :pswitch_a
        :pswitch_9
        :pswitch_21
        :pswitch_8
        :pswitch_7
        :pswitch_21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    :pswitch_data_2
    .packed-switch 0x3a
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    :pswitch_data_3
    .packed-switch 0x7b
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    :pswitch_data_4
    .packed-switch 0x74
        :pswitch_37
        :pswitch_36
        :pswitch_35
    .end packed-switch
.end method

.method public final matchChar(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 9
    .line 10
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final readDigits(II)I
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p2, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    :goto_0
    const/16 v3, 0x5f

    .line 21
    .line 22
    if-ne v1, v3, :cond_4

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v4, 0xa

    .line 29
    .line 30
    if-eq v1, v4, :cond_3

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(II)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 42
    .line 43
    .line 44
    return v3

    .line 45
    :cond_2
    invoke-virtual {p0, v3}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_1
    const/4 p0, -0x2

    .line 50
    return p0

    .line 51
    :cond_4
    invoke-static {p1, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->isDigit(II)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->addToString(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-ne v1, v2, :cond_0

    .line 65
    .line 66
    return v2

    .line 67
    :cond_5
    return v1

    .line 68
    :cond_6
    return p2
.end method

.method public final skipLine()V
    .locals 2

    .line 1
    :goto_0
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->getChar(ZZ)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetChar(I)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 19
    .line 20
    iput v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->tokenEnd:I

    .line 21
    .line 22
    return-void
.end method

.method public final ungetChar(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 8
    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/16 v2, 0xa

    .line 12
    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    .line 19
    .line 20
    add-int/lit8 v2, v0, 0x1

    .line 21
    .line 22
    iput v2, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    .line 23
    .line 24
    aput p1, v1, v0

    .line 25
    .line 26
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, -0x1

    .line 29
    .line 30
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 31
    .line 32
    return-void
.end method

.method public final ungetCharIgnoreLineEnd(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetCursor:I

    .line 6
    .line 7
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->ungetBuffer:[I

    .line 8
    .line 9
    aput p1, v1, v0

    .line 10
    .line 11
    iget p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 12
    .line 13
    add-int/lit8 p1, p1, -0x1

    .line 14
    .line 15
    iput p1, p0, Lorg/schabi/newpipe/extractor/utils/jsextractor/EcmaScriptTokenStream;->cursor:I

    .line 16
    .line 17
    return-void
.end method
