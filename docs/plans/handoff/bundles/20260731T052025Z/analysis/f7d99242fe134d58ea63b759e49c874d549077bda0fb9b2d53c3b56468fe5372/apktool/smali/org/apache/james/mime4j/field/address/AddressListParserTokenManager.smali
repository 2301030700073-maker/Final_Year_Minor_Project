.class public final Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/AddressListParserConstants;


# static fields
.field public static commentNest:I

.field public static final jjbitVec0:[J

.field public static final jjbitVec2:[J

.field public static final jjnewLexState:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field public static final jjtoSkip:[J

.field public static final jjtoSpecial:[J

.field public static final jjtoToken:[J


# instance fields
.field public curChar:C

.field public curLexState:I

.field public image:Ljava/lang/StringBuilder;

.field public final input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

.field public final jjimage:Ljava/lang/StringBuilder;

.field public jjimageLen:I

.field public jjmatchedKind:I

.field public jjmatchedPos:I

.field public jjnewStateCnt:I

.field public jjround:I

.field public final jjrounds:[I

.field public final jjstateSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [J

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

    .line 8
    .line 9
    new-array v0, v0, [J

    .line 10
    .line 11
    fill-array-data v0, :array_1

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec2:[J

    .line 15
    .line 16
    const/16 v34, 0x0

    .line 17
    .line 18
    const/16 v35, 0x0

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    const-string v2, "\r"

    .line 23
    .line 24
    const-string v3, "\n"

    .line 25
    .line 26
    const-string v4, ","

    .line 27
    .line 28
    const-string v5, ":"

    .line 29
    .line 30
    const-string v6, ";"

    .line 31
    .line 32
    const-string v7, "<"

    .line 33
    .line 34
    const-string v8, ">"

    .line 35
    .line 36
    const-string v9, "@"

    .line 37
    .line 38
    const-string v10, "."

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    const/4 v13, 0x0

    .line 43
    const/4 v14, 0x0

    .line 44
    const/4 v15, 0x0

    .line 45
    const/16 v16, 0x0

    .line 46
    .line 47
    const/16 v17, 0x0

    .line 48
    .line 49
    const/16 v18, 0x0

    .line 50
    .line 51
    const/16 v19, 0x0

    .line 52
    .line 53
    const/16 v20, 0x0

    .line 54
    .line 55
    const/16 v21, 0x0

    .line 56
    .line 57
    const/16 v22, 0x0

    .line 58
    .line 59
    const/16 v23, 0x0

    .line 60
    .line 61
    const/16 v24, 0x0

    .line 62
    .line 63
    const/16 v25, 0x0

    .line 64
    .line 65
    const/16 v26, 0x0

    .line 66
    .line 67
    const/16 v27, 0x0

    .line 68
    .line 69
    const/16 v28, 0x0

    .line 70
    .line 71
    const/16 v29, 0x0

    .line 72
    .line 73
    const/16 v30, 0x0

    .line 74
    .line 75
    const/16 v31, 0x0

    .line 76
    .line 77
    const/16 v32, 0x0

    .line 78
    .line 79
    const/16 v33, 0x0

    .line 80
    .line 81
    filled-new-array/range {v1 .. v35}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 86
    .line 87
    const/16 v0, 0x23

    .line 88
    .line 89
    new-array v0, v0, [I

    .line 90
    .line 91
    fill-array-data v0, :array_2

    .line 92
    .line 93
    .line 94
    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewLexState:[I

    .line 95
    .line 96
    const/4 v0, 0x1

    .line 97
    new-array v1, v0, [J

    .line 98
    .line 99
    const-wide v2, 0x10008a3ffL

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    aput-wide v2, v1, v4

    .line 106
    .line 107
    sput-object v1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoToken:[J

    .line 108
    .line 109
    new-array v1, v0, [J

    .line 110
    .line 111
    const-wide/32 v2, 0x200400

    .line 112
    .line 113
    .line 114
    aput-wide v2, v1, v4

    .line 115
    .line 116
    sput-object v1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoSkip:[J

    .line 117
    .line 118
    new-array v0, v0, [J

    .line 119
    .line 120
    const-wide/16 v1, 0x400

    .line 121
    .line 122
    aput-wide v1, v0, v4

    .line 123
    .line 124
    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoSpecial:[J

    .line 125
    .line 126
    return-void

    .line 127
    :array_0
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_1
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        0x0
        0x2
        0x0
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [I

    .line 6
    .line 7
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjrounds:[I

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    .line 26
    .line 27
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    .line 28
    .line 29
    return-void
.end method

.method public static final jjCanMove_0(IIIJJ)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    sget-object p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

    .line 8
    .line 9
    aget-wide p1, p0, p1

    .line 10
    .line 11
    and-long/2addr p1, p3

    .line 12
    cmp-long p0, p1, v2

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    return v0

    .line 18
    :cond_1
    sget-object p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec2:[J

    .line 19
    .line 20
    aget-wide p1, p0, p2

    .line 21
    .line 22
    and-long/2addr p1, p5

    .line 23
    cmp-long p0, p1, v2

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    return v0
.end method


# virtual methods
.method public final ReInitRounds()V
    .locals 3

    .line 1
    const v0, -0x7fffffff

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjrounds:[I

    .line 12
    .line 13
    const/high16 v2, -0x80000000

    .line 14
    .line 15
    aput v2, v0, v1

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/address/Token;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    move v6, v4

    .line 9
    const/4 v5, 0x0

    .line 10
    :goto_0
    const/4 v7, -0x1

    .line 11
    :try_start_0
    iput v7, v2, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 12
    .line 13
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget v9, v2, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 18
    .line 19
    iput v9, v2, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 20
    .line 21
    :try_start_1
    iput-char v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 22
    .line 23
    iget-object v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iput-object v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 28
    .line 29
    .line 30
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 31
    .line 32
    :goto_1
    iget v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    .line 33
    .line 34
    move/from16 v16, v7

    .line 35
    .line 36
    const/16 v9, 0x22

    .line 37
    .line 38
    const/4 v11, 0x4

    .line 39
    const/16 v13, 0x40

    .line 40
    .line 41
    iget-object v14, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    .line 42
    .line 43
    const-wide/16 v17, 0x0

    .line 44
    .line 45
    const/4 v15, 0x3

    .line 46
    const/4 v10, 0x2

    .line 47
    const-wide/16 v20, 0x1

    .line 48
    .line 49
    const/16 v22, 0x6

    .line 50
    .line 51
    const v3, 0x7fffffff

    .line 52
    .line 53
    .line 54
    const/4 v12, 0x1

    .line 55
    if-eqz v8, :cond_5e

    .line 56
    .line 57
    if-eq v8, v12, :cond_48

    .line 58
    .line 59
    const/16 v7, 0x29

    .line 60
    .line 61
    if-eq v8, v10, :cond_32

    .line 62
    .line 63
    if-eq v8, v15, :cond_1c

    .line 64
    .line 65
    if-eq v8, v11, :cond_0

    .line 66
    .line 67
    goto/16 :goto_23

    .line 68
    .line 69
    :cond_0
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 70
    .line 71
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 72
    .line 73
    iget-char v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 74
    .line 75
    if-eq v6, v9, :cond_1b

    .line 76
    .line 77
    iput v15, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 78
    .line 79
    aput v4, v14, v4

    .line 80
    .line 81
    move v7, v3

    .line 82
    move v8, v4

    .line 83
    move v9, v8

    .line 84
    move v6, v12

    .line 85
    :goto_2
    iget v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 86
    .line 87
    add-int/2addr v11, v12

    .line 88
    iput v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 89
    .line 90
    if-ne v11, v3, :cond_1

    .line 91
    .line 92
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 96
    .line 97
    const/16 v15, 0x1f

    .line 98
    .line 99
    if-ge v11, v13, :cond_8

    .line 100
    .line 101
    shl-long v25, v20, v11

    .line 102
    .line 103
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 104
    .line 105
    aget v11, v14, v6

    .line 106
    .line 107
    if-eqz v11, :cond_4

    .line 108
    .line 109
    if-eq v11, v12, :cond_3

    .line 110
    .line 111
    if-eq v11, v10, :cond_4

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    const/16 v11, 0x1e

    .line 115
    .line 116
    if-le v7, v11, :cond_7

    .line 117
    .line 118
    const/16 v7, 0x1e

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_4
    const-wide v27, -0x400000001L

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    and-long v27, v25, v27

    .line 127
    .line 128
    cmp-long v11, v27, v17

    .line 129
    .line 130
    if-nez v11, :cond_5

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_5
    if-le v7, v15, :cond_6

    .line 134
    .line 135
    move v7, v15

    .line 136
    :cond_6
    invoke-virtual {v0, v10}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 137
    .line 138
    .line 139
    :cond_7
    :goto_3
    if-ne v6, v8, :cond_2

    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_8
    const/16 v13, 0x80

    .line 144
    .line 145
    if-ge v11, v13, :cond_12

    .line 146
    .line 147
    and-int/lit8 v11, v11, 0x3f

    .line 148
    .line 149
    shl-long v25, v20, v11

    .line 150
    .line 151
    :cond_9
    add-int/lit8 v6, v6, -0x1

    .line 152
    .line 153
    aget v11, v14, v6

    .line 154
    .line 155
    const-wide/32 v28, -0x10000001

    .line 156
    .line 157
    .line 158
    if-eqz v11, :cond_e

    .line 159
    .line 160
    if-eq v11, v12, :cond_d

    .line 161
    .line 162
    if-eq v11, v10, :cond_a

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_a
    and-long v28, v25, v28

    .line 166
    .line 167
    cmp-long v11, v28, v17

    .line 168
    .line 169
    if-nez v11, :cond_b

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_b
    if-le v7, v15, :cond_c

    .line 173
    .line 174
    move v7, v15

    .line 175
    :cond_c
    invoke-virtual {v0, v10}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_d
    const/16 v11, 0x1e

    .line 180
    .line 181
    if-le v7, v11, :cond_11

    .line 182
    .line 183
    const/16 v7, 0x1e

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_e
    and-long v28, v25, v28

    .line 187
    .line 188
    cmp-long v11, v28, v17

    .line 189
    .line 190
    if-eqz v11, :cond_10

    .line 191
    .line 192
    if-le v7, v15, :cond_f

    .line 193
    .line 194
    move v7, v15

    .line 195
    :cond_f
    invoke-virtual {v0, v10}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 196
    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_10
    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 200
    .line 201
    const/16 v13, 0x5c

    .line 202
    .line 203
    if-ne v11, v13, :cond_11

    .line 204
    .line 205
    iget v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 206
    .line 207
    add-int/lit8 v13, v11, 0x1

    .line 208
    .line 209
    iput v13, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 210
    .line 211
    aput v12, v14, v11

    .line 212
    .line 213
    :cond_11
    :goto_4
    if-ne v6, v8, :cond_9

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_12
    shr-int/lit8 v28, v11, 0x8

    .line 217
    .line 218
    shr-int/lit8 v29, v11, 0xe

    .line 219
    .line 220
    and-int/lit8 v13, v28, 0x3f

    .line 221
    .line 222
    shl-long v31, v20, v13

    .line 223
    .line 224
    and-int/lit16 v13, v11, 0xff

    .line 225
    .line 226
    shr-int/lit8 v30, v13, 0x6

    .line 227
    .line 228
    and-int/lit8 v11, v11, 0x3f

    .line 229
    .line 230
    shl-long v33, v20, v11

    .line 231
    .line 232
    :cond_13
    add-int/lit8 v6, v6, -0x1

    .line 233
    .line 234
    aget v11, v14, v6

    .line 235
    .line 236
    if-eqz v11, :cond_15

    .line 237
    .line 238
    if-eq v11, v12, :cond_14

    .line 239
    .line 240
    if-eq v11, v10, :cond_15

    .line 241
    .line 242
    goto :goto_5

    .line 243
    :cond_14
    invoke-static/range {v28 .. v34}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    if-eqz v11, :cond_18

    .line 248
    .line 249
    const/16 v11, 0x1e

    .line 250
    .line 251
    if-le v7, v11, :cond_18

    .line 252
    .line 253
    const/16 v7, 0x1e

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_15
    invoke-static/range {v28 .. v34}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 257
    .line 258
    .line 259
    move-result v11

    .line 260
    if-nez v11, :cond_16

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_16
    if-le v7, v15, :cond_17

    .line 264
    .line 265
    move v7, v15

    .line 266
    :cond_17
    invoke-virtual {v0, v10}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 267
    .line 268
    .line 269
    :cond_18
    :goto_5
    if-ne v6, v8, :cond_13

    .line 270
    .line 271
    :goto_6
    if-eq v7, v3, :cond_19

    .line 272
    .line 273
    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 274
    .line 275
    iput v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 276
    .line 277
    move v7, v3

    .line 278
    :cond_19
    add-int/lit8 v9, v9, 0x1

    .line 279
    .line 280
    iget v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 281
    .line 282
    iput v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 283
    .line 284
    rsub-int/lit8 v8, v8, 0x3

    .line 285
    .line 286
    if-ne v6, v8, :cond_1a

    .line 287
    .line 288
    goto :goto_8

    .line 289
    :cond_1a
    :try_start_2
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    .line 290
    .line 291
    .line 292
    move-result v11

    .line 293
    iput-char v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 294
    .line 295
    const/16 v13, 0x40

    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :cond_1b
    const/16 v6, 0x20

    .line 300
    .line 301
    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 302
    .line 303
    .line 304
    :goto_7
    move v9, v12

    .line 305
    :catch_0
    :goto_8
    move v6, v9

    .line 306
    goto/16 :goto_23

    .line 307
    .line 308
    :cond_1c
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 309
    .line 310
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 311
    .line 312
    iget-char v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 313
    .line 314
    const/16 v8, 0x28

    .line 315
    .line 316
    if-eq v6, v8, :cond_31

    .line 317
    .line 318
    if-eq v6, v7, :cond_30

    .line 319
    .line 320
    iput v15, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 321
    .line 322
    aput v4, v14, v4

    .line 323
    .line 324
    move v7, v3

    .line 325
    move v8, v4

    .line 326
    move v9, v8

    .line 327
    move v6, v12

    .line 328
    :goto_9
    iget v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 329
    .line 330
    add-int/2addr v11, v12

    .line 331
    iput v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 332
    .line 333
    if-ne v11, v3, :cond_1d

    .line 334
    .line 335
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 336
    .line 337
    .line 338
    :cond_1d
    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 339
    .line 340
    const/16 v13, 0x19

    .line 341
    .line 342
    const/16 v15, 0x1c

    .line 343
    .line 344
    const/16 v4, 0x40

    .line 345
    .line 346
    if-ge v11, v4, :cond_22

    .line 347
    .line 348
    :cond_1e
    add-int/lit8 v6, v6, -0x1

    .line 349
    .line 350
    aget v4, v14, v6

    .line 351
    .line 352
    if-eqz v4, :cond_20

    .line 353
    .line 354
    if-eq v4, v12, :cond_1f

    .line 355
    .line 356
    goto :goto_a

    .line 357
    :cond_1f
    if-le v7, v13, :cond_21

    .line 358
    .line 359
    move v7, v13

    .line 360
    goto :goto_a

    .line 361
    :cond_20
    if-le v7, v15, :cond_21

    .line 362
    .line 363
    move v7, v15

    .line 364
    :cond_21
    :goto_a
    if-ne v6, v8, :cond_1e

    .line 365
    .line 366
    goto/16 :goto_d

    .line 367
    .line 368
    :cond_22
    const/16 v4, 0x80

    .line 369
    .line 370
    if-ge v11, v4, :cond_29

    .line 371
    .line 372
    :cond_23
    add-int/lit8 v6, v6, -0x1

    .line 373
    .line 374
    aget v4, v14, v6

    .line 375
    .line 376
    if-eqz v4, :cond_26

    .line 377
    .line 378
    if-eq v4, v12, :cond_25

    .line 379
    .line 380
    if-eq v4, v10, :cond_24

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_24
    if-le v7, v15, :cond_28

    .line 384
    .line 385
    move v7, v15

    .line 386
    goto :goto_b

    .line 387
    :cond_25
    if-le v7, v13, :cond_28

    .line 388
    .line 389
    move v7, v13

    .line 390
    goto :goto_b

    .line 391
    :cond_26
    if-le v7, v15, :cond_27

    .line 392
    .line 393
    move v7, v15

    .line 394
    :cond_27
    iget-char v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 395
    .line 396
    const/16 v11, 0x5c

    .line 397
    .line 398
    if-ne v4, v11, :cond_28

    .line 399
    .line 400
    iget v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 401
    .line 402
    add-int/lit8 v11, v4, 0x1

    .line 403
    .line 404
    iput v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 405
    .line 406
    aput v12, v14, v4

    .line 407
    .line 408
    :cond_28
    :goto_b
    if-ne v6, v8, :cond_23

    .line 409
    .line 410
    goto :goto_d

    .line 411
    :cond_29
    shr-int/lit8 v28, v11, 0x8

    .line 412
    .line 413
    shr-int/lit8 v29, v11, 0xe

    .line 414
    .line 415
    and-int/lit8 v4, v28, 0x3f

    .line 416
    .line 417
    shl-long v31, v20, v4

    .line 418
    .line 419
    and-int/lit16 v4, v11, 0xff

    .line 420
    .line 421
    shr-int/lit8 v30, v4, 0x6

    .line 422
    .line 423
    and-int/lit8 v4, v11, 0x3f

    .line 424
    .line 425
    shl-long v33, v20, v4

    .line 426
    .line 427
    :cond_2a
    add-int/lit8 v6, v6, -0x1

    .line 428
    .line 429
    aget v4, v14, v6

    .line 430
    .line 431
    if-eqz v4, :cond_2c

    .line 432
    .line 433
    if-eq v4, v12, :cond_2b

    .line 434
    .line 435
    goto :goto_c

    .line 436
    :cond_2b
    invoke-static/range {v28 .. v34}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    if-eqz v4, :cond_2d

    .line 441
    .line 442
    if-le v7, v13, :cond_2d

    .line 443
    .line 444
    move v7, v13

    .line 445
    goto :goto_c

    .line 446
    :cond_2c
    invoke-static/range {v28 .. v34}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    if-eqz v4, :cond_2d

    .line 451
    .line 452
    if-le v7, v15, :cond_2d

    .line 453
    .line 454
    move v7, v15

    .line 455
    :cond_2d
    :goto_c
    if-ne v6, v8, :cond_2a

    .line 456
    .line 457
    :goto_d
    if-eq v7, v3, :cond_2e

    .line 458
    .line 459
    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 460
    .line 461
    iput v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 462
    .line 463
    move v7, v3

    .line 464
    :cond_2e
    add-int/lit8 v9, v9, 0x1

    .line 465
    .line 466
    iget v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 467
    .line 468
    iput v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 469
    .line 470
    rsub-int/lit8 v8, v8, 0x3

    .line 471
    .line 472
    if-ne v6, v8, :cond_2f

    .line 473
    .line 474
    goto/16 :goto_8

    .line 475
    .line 476
    :cond_2f
    :try_start_3
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    .line 477
    .line 478
    .line 479
    move-result v4

    .line 480
    iput-char v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 481
    .line 482
    const/4 v4, 0x0

    .line 483
    goto/16 :goto_9

    .line 484
    .line 485
    :cond_30
    const/16 v4, 0x1b

    .line 486
    .line 487
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 488
    .line 489
    .line 490
    goto/16 :goto_7

    .line 491
    .line 492
    :cond_31
    const/16 v4, 0x1a

    .line 493
    .line 494
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 495
    .line 496
    .line 497
    goto/16 :goto_7

    .line 498
    .line 499
    :cond_32
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 500
    .line 501
    const/4 v4, 0x0

    .line 502
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 503
    .line 504
    iget-char v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 505
    .line 506
    const/16 v8, 0x28

    .line 507
    .line 508
    if-eq v6, v8, :cond_47

    .line 509
    .line 510
    if-eq v6, v7, :cond_46

    .line 511
    .line 512
    iput v15, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 513
    .line 514
    aput v4, v14, v4

    .line 515
    .line 516
    move v8, v3

    .line 517
    move v7, v12

    .line 518
    const/4 v4, 0x0

    .line 519
    const/4 v6, 0x0

    .line 520
    :goto_e
    iget v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 521
    .line 522
    add-int/2addr v9, v12

    .line 523
    iput v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 524
    .line 525
    if-ne v9, v3, :cond_33

    .line 526
    .line 527
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 528
    .line 529
    .line 530
    :cond_33
    iget-char v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 531
    .line 532
    const/16 v11, 0x18

    .line 533
    .line 534
    const/16 v13, 0x40

    .line 535
    .line 536
    if-ge v9, v13, :cond_38

    .line 537
    .line 538
    :cond_34
    add-int/lit8 v7, v7, -0x1

    .line 539
    .line 540
    aget v9, v14, v7

    .line 541
    .line 542
    if-eqz v9, :cond_36

    .line 543
    .line 544
    if-eq v9, v12, :cond_35

    .line 545
    .line 546
    goto :goto_f

    .line 547
    :cond_35
    const/16 v9, 0x16

    .line 548
    .line 549
    if-le v8, v9, :cond_37

    .line 550
    .line 551
    const/16 v8, 0x16

    .line 552
    .line 553
    goto :goto_f

    .line 554
    :cond_36
    if-le v8, v11, :cond_37

    .line 555
    .line 556
    move v8, v11

    .line 557
    :cond_37
    :goto_f
    if-ne v7, v4, :cond_34

    .line 558
    .line 559
    goto/16 :goto_12

    .line 560
    .line 561
    :cond_38
    const/16 v13, 0x80

    .line 562
    .line 563
    if-ge v9, v13, :cond_3f

    .line 564
    .line 565
    :cond_39
    add-int/lit8 v7, v7, -0x1

    .line 566
    .line 567
    aget v9, v14, v7

    .line 568
    .line 569
    if-eqz v9, :cond_3c

    .line 570
    .line 571
    if-eq v9, v12, :cond_3b

    .line 572
    .line 573
    if-eq v9, v10, :cond_3a

    .line 574
    .line 575
    goto :goto_10

    .line 576
    :cond_3a
    if-le v8, v11, :cond_3e

    .line 577
    .line 578
    move v8, v11

    .line 579
    goto :goto_10

    .line 580
    :cond_3b
    const/16 v9, 0x16

    .line 581
    .line 582
    if-le v8, v9, :cond_3e

    .line 583
    .line 584
    const/16 v8, 0x16

    .line 585
    .line 586
    goto :goto_10

    .line 587
    :cond_3c
    if-le v8, v11, :cond_3d

    .line 588
    .line 589
    move v8, v11

    .line 590
    :cond_3d
    iget-char v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 591
    .line 592
    const/16 v13, 0x5c

    .line 593
    .line 594
    if-ne v9, v13, :cond_3e

    .line 595
    .line 596
    iget v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 597
    .line 598
    add-int/lit8 v13, v9, 0x1

    .line 599
    .line 600
    iput v13, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 601
    .line 602
    aput v12, v14, v9

    .line 603
    .line 604
    :cond_3e
    :goto_10
    if-ne v7, v4, :cond_39

    .line 605
    .line 606
    goto :goto_12

    .line 607
    :cond_3f
    shr-int/lit8 v28, v9, 0x8

    .line 608
    .line 609
    shr-int/lit8 v29, v9, 0xe

    .line 610
    .line 611
    and-int/lit8 v13, v28, 0x3f

    .line 612
    .line 613
    shl-long v31, v20, v13

    .line 614
    .line 615
    and-int/lit16 v13, v9, 0xff

    .line 616
    .line 617
    shr-int/lit8 v30, v13, 0x6

    .line 618
    .line 619
    and-int/lit8 v9, v9, 0x3f

    .line 620
    .line 621
    shl-long v33, v20, v9

    .line 622
    .line 623
    :cond_40
    add-int/lit8 v7, v7, -0x1

    .line 624
    .line 625
    aget v9, v14, v7

    .line 626
    .line 627
    if-eqz v9, :cond_42

    .line 628
    .line 629
    if-eq v9, v12, :cond_41

    .line 630
    .line 631
    goto :goto_11

    .line 632
    :cond_41
    invoke-static/range {v28 .. v34}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 633
    .line 634
    .line 635
    move-result v9

    .line 636
    if-eqz v9, :cond_43

    .line 637
    .line 638
    const/16 v9, 0x16

    .line 639
    .line 640
    if-le v8, v9, :cond_43

    .line 641
    .line 642
    const/16 v8, 0x16

    .line 643
    .line 644
    goto :goto_11

    .line 645
    :cond_42
    invoke-static/range {v28 .. v34}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 646
    .line 647
    .line 648
    move-result v9

    .line 649
    if-eqz v9, :cond_43

    .line 650
    .line 651
    if-le v8, v11, :cond_43

    .line 652
    .line 653
    move v8, v11

    .line 654
    :cond_43
    :goto_11
    if-ne v7, v4, :cond_40

    .line 655
    .line 656
    :goto_12
    if-eq v8, v3, :cond_44

    .line 657
    .line 658
    iput v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 659
    .line 660
    iput v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 661
    .line 662
    move v8, v3

    .line 663
    :cond_44
    add-int/lit8 v6, v6, 0x1

    .line 664
    .line 665
    iget v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 666
    .line 667
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 668
    .line 669
    rsub-int/lit8 v4, v4, 0x3

    .line 670
    .line 671
    if-ne v7, v4, :cond_45

    .line 672
    .line 673
    goto/16 :goto_23

    .line 674
    .line 675
    :cond_45
    :try_start_4
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    .line 676
    .line 677
    .line 678
    move-result v9

    .line 679
    iput-char v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 680
    .line 681
    goto/16 :goto_e

    .line 682
    .line 683
    :cond_46
    const/16 v4, 0x15

    .line 684
    .line 685
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 686
    .line 687
    .line 688
    :goto_13
    move v6, v12

    .line 689
    goto/16 :goto_23

    .line 690
    .line 691
    :cond_47
    const/16 v4, 0x17

    .line 692
    .line 693
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 694
    .line 695
    .line 696
    goto :goto_13

    .line 697
    :cond_48
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 698
    .line 699
    const/4 v4, 0x0

    .line 700
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 701
    .line 702
    iget-char v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 703
    .line 704
    const/16 v7, 0x5d

    .line 705
    .line 706
    if-eq v6, v7, :cond_5d

    .line 707
    .line 708
    iput v15, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 709
    .line 710
    aput v4, v14, v4

    .line 711
    .line 712
    move v8, v3

    .line 713
    move v7, v12

    .line 714
    const/4 v4, 0x0

    .line 715
    const/4 v6, 0x0

    .line 716
    :goto_14
    iget v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 717
    .line 718
    add-int/2addr v9, v12

    .line 719
    iput v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 720
    .line 721
    if-ne v9, v3, :cond_49

    .line 722
    .line 723
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 724
    .line 725
    .line 726
    :cond_49
    iget-char v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 727
    .line 728
    const/16 v11, 0x12

    .line 729
    .line 730
    const/16 v13, 0x40

    .line 731
    .line 732
    if-ge v9, v13, :cond_4e

    .line 733
    .line 734
    :cond_4a
    add-int/lit8 v7, v7, -0x1

    .line 735
    .line 736
    aget v9, v14, v7

    .line 737
    .line 738
    if-eqz v9, :cond_4c

    .line 739
    .line 740
    if-eq v9, v12, :cond_4b

    .line 741
    .line 742
    goto :goto_15

    .line 743
    :cond_4b
    const/16 v9, 0x11

    .line 744
    .line 745
    if-le v8, v9, :cond_4d

    .line 746
    .line 747
    const/16 v8, 0x11

    .line 748
    .line 749
    goto :goto_15

    .line 750
    :cond_4c
    if-le v8, v11, :cond_4d

    .line 751
    .line 752
    move v8, v11

    .line 753
    :cond_4d
    :goto_15
    if-ne v7, v4, :cond_4a

    .line 754
    .line 755
    const/16 v13, 0x5c

    .line 756
    .line 757
    goto/16 :goto_1a

    .line 758
    .line 759
    :cond_4e
    const/16 v13, 0x80

    .line 760
    .line 761
    if-ge v9, v13, :cond_56

    .line 762
    .line 763
    and-int/lit8 v9, v9, 0x3f

    .line 764
    .line 765
    shl-long v28, v20, v9

    .line 766
    .line 767
    :cond_4f
    add-int/lit8 v7, v7, -0x1

    .line 768
    .line 769
    aget v9, v14, v7

    .line 770
    .line 771
    const-wide/32 v30, -0x38000001

    .line 772
    .line 773
    .line 774
    if-eqz v9, :cond_53

    .line 775
    .line 776
    if-eq v9, v12, :cond_52

    .line 777
    .line 778
    if-eq v9, v10, :cond_50

    .line 779
    .line 780
    goto :goto_17

    .line 781
    :cond_50
    and-long v30, v28, v30

    .line 782
    .line 783
    cmp-long v9, v30, v17

    .line 784
    .line 785
    if-eqz v9, :cond_51

    .line 786
    .line 787
    if-le v8, v11, :cond_51

    .line 788
    .line 789
    :goto_16
    move v8, v11

    .line 790
    :cond_51
    :goto_17
    const/16 v13, 0x5c

    .line 791
    .line 792
    goto :goto_18

    .line 793
    :cond_52
    const/16 v9, 0x11

    .line 794
    .line 795
    if-le v8, v9, :cond_51

    .line 796
    .line 797
    const/16 v8, 0x11

    .line 798
    .line 799
    goto :goto_17

    .line 800
    :cond_53
    and-long v30, v28, v30

    .line 801
    .line 802
    cmp-long v9, v30, v17

    .line 803
    .line 804
    if-eqz v9, :cond_54

    .line 805
    .line 806
    if-le v8, v11, :cond_51

    .line 807
    .line 808
    goto :goto_16

    .line 809
    :cond_54
    iget-char v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 810
    .line 811
    const/16 v13, 0x5c

    .line 812
    .line 813
    if-ne v9, v13, :cond_55

    .line 814
    .line 815
    iget v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 816
    .line 817
    add-int/lit8 v15, v9, 0x1

    .line 818
    .line 819
    iput v15, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 820
    .line 821
    aput v12, v14, v9

    .line 822
    .line 823
    :cond_55
    :goto_18
    if-ne v7, v4, :cond_4f

    .line 824
    .line 825
    goto :goto_1a

    .line 826
    :cond_56
    const/16 v13, 0x5c

    .line 827
    .line 828
    shr-int/lit8 v30, v9, 0x8

    .line 829
    .line 830
    shr-int/lit8 v31, v9, 0xe

    .line 831
    .line 832
    and-int/lit8 v15, v30, 0x3f

    .line 833
    .line 834
    shl-long v33, v20, v15

    .line 835
    .line 836
    and-int/lit16 v15, v9, 0xff

    .line 837
    .line 838
    shr-int/lit8 v32, v15, 0x6

    .line 839
    .line 840
    and-int/lit8 v9, v9, 0x3f

    .line 841
    .line 842
    shl-long v35, v20, v9

    .line 843
    .line 844
    :cond_57
    add-int/lit8 v7, v7, -0x1

    .line 845
    .line 846
    aget v9, v14, v7

    .line 847
    .line 848
    if-eqz v9, :cond_59

    .line 849
    .line 850
    if-eq v9, v12, :cond_58

    .line 851
    .line 852
    goto :goto_19

    .line 853
    :cond_58
    invoke-static/range {v30 .. v36}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 854
    .line 855
    .line 856
    move-result v9

    .line 857
    if-eqz v9, :cond_5a

    .line 858
    .line 859
    const/16 v9, 0x11

    .line 860
    .line 861
    if-le v8, v9, :cond_5a

    .line 862
    .line 863
    const/16 v8, 0x11

    .line 864
    .line 865
    goto :goto_19

    .line 866
    :cond_59
    invoke-static/range {v30 .. v36}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 867
    .line 868
    .line 869
    move-result v9

    .line 870
    if-eqz v9, :cond_5a

    .line 871
    .line 872
    if-le v8, v11, :cond_5a

    .line 873
    .line 874
    move v8, v11

    .line 875
    :cond_5a
    :goto_19
    if-ne v7, v4, :cond_57

    .line 876
    .line 877
    :goto_1a
    if-eq v8, v3, :cond_5b

    .line 878
    .line 879
    iput v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 880
    .line 881
    iput v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 882
    .line 883
    move v8, v3

    .line 884
    :cond_5b
    add-int/lit8 v6, v6, 0x1

    .line 885
    .line 886
    iget v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 887
    .line 888
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 889
    .line 890
    rsub-int/lit8 v4, v4, 0x3

    .line 891
    .line 892
    if-ne v7, v4, :cond_5c

    .line 893
    .line 894
    goto/16 :goto_23

    .line 895
    .line 896
    :cond_5c
    :try_start_5
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    .line 897
    .line 898
    .line 899
    move-result v9

    .line 900
    iput-char v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 901
    .line 902
    goto/16 :goto_14

    .line 903
    .line 904
    :cond_5d
    const/16 v7, 0x13

    .line 905
    .line 906
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 907
    .line 908
    .line 909
    goto/16 :goto_13

    .line 910
    .line 911
    :cond_5e
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 912
    .line 913
    const/4 v4, 0x0

    .line 914
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 915
    .line 916
    iget-char v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 917
    .line 918
    const/16 v6, 0xa

    .line 919
    .line 920
    if-eq v4, v6, :cond_86

    .line 921
    .line 922
    const/16 v6, 0xd

    .line 923
    .line 924
    if-eq v4, v6, :cond_85

    .line 925
    .line 926
    if-eq v4, v9, :cond_84

    .line 927
    .line 928
    const/16 v8, 0x28

    .line 929
    .line 930
    if-eq v4, v8, :cond_83

    .line 931
    .line 932
    const/16 v6, 0x2c

    .line 933
    .line 934
    if-eq v4, v6, :cond_82

    .line 935
    .line 936
    const/16 v6, 0x2e

    .line 937
    .line 938
    if-eq v4, v6, :cond_81

    .line 939
    .line 940
    const/16 v6, 0x3e

    .line 941
    .line 942
    if-eq v4, v6, :cond_80

    .line 943
    .line 944
    const/16 v13, 0x40

    .line 945
    .line 946
    if-eq v4, v13, :cond_7f

    .line 947
    .line 948
    const/16 v6, 0x5b

    .line 949
    .line 950
    if-eq v4, v6, :cond_7e

    .line 951
    .line 952
    packed-switch v4, :pswitch_data_0

    .line 953
    .line 954
    .line 955
    iput v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 956
    .line 957
    const/16 v25, 0x0

    .line 958
    .line 959
    aput v12, v14, v25

    .line 960
    .line 961
    move v8, v3

    .line 962
    move v7, v12

    .line 963
    const/4 v4, 0x0

    .line 964
    const/4 v6, 0x0

    .line 965
    :goto_1b
    iget v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 966
    .line 967
    add-int/2addr v9, v12

    .line 968
    iput v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 969
    .line 970
    if-ne v9, v3, :cond_5f

    .line 971
    .line 972
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 973
    .line 974
    .line 975
    :cond_5f
    iget-char v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 976
    .line 977
    const/16 v11, 0xf

    .line 978
    .line 979
    const/16 v13, 0x40

    .line 980
    .line 981
    if-ge v9, v13, :cond_6e

    .line 982
    .line 983
    shl-long v26, v20, v9

    .line 984
    .line 985
    :cond_60
    add-int/lit8 v7, v7, -0x1

    .line 986
    .line 987
    aget v9, v14, v7

    .line 988
    .line 989
    const-wide v28, 0x100000200L

    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    if-eqz v9, :cond_6c

    .line 995
    .line 996
    const-wide v30, -0x5c00530600000000L

    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    if-eq v9, v12, :cond_68

    .line 1002
    .line 1003
    if-eq v9, v10, :cond_65

    .line 1004
    .line 1005
    if-eq v9, v15, :cond_62

    .line 1006
    .line 1007
    :cond_61
    :goto_1c
    const/4 v9, 0x0

    .line 1008
    goto :goto_1d

    .line 1009
    :cond_62
    const-wide v28, -0x5c00130600000000L

    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    and-long v28, v26, v28

    .line 1015
    .line 1016
    cmp-long v9, v28, v17

    .line 1017
    .line 1018
    if-nez v9, :cond_63

    .line 1019
    .line 1020
    goto :goto_1c

    .line 1021
    :cond_63
    if-le v8, v11, :cond_64

    .line 1022
    .line 1023
    move v8, v11

    .line 1024
    :cond_64
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 1025
    .line 1026
    .line 1027
    goto :goto_1d

    .line 1028
    :cond_65
    and-long v28, v26, v30

    .line 1029
    .line 1030
    cmp-long v9, v28, v17

    .line 1031
    .line 1032
    if-nez v9, :cond_66

    .line 1033
    .line 1034
    goto :goto_1c

    .line 1035
    :cond_66
    if-le v8, v11, :cond_67

    .line 1036
    .line 1037
    move v8, v11

    .line 1038
    :cond_67
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 1039
    .line 1040
    .line 1041
    goto :goto_1d

    .line 1042
    :cond_68
    and-long v30, v26, v30

    .line 1043
    .line 1044
    cmp-long v9, v30, v17

    .line 1045
    .line 1046
    if-eqz v9, :cond_6a

    .line 1047
    .line 1048
    if-le v8, v11, :cond_69

    .line 1049
    .line 1050
    move v8, v11

    .line 1051
    :cond_69
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 1052
    .line 1053
    .line 1054
    goto :goto_1d

    .line 1055
    :cond_6a
    and-long v28, v26, v28

    .line 1056
    .line 1057
    cmp-long v9, v28, v17

    .line 1058
    .line 1059
    if-eqz v9, :cond_61

    .line 1060
    .line 1061
    const/16 v9, 0xa

    .line 1062
    .line 1063
    if-le v8, v9, :cond_6b

    .line 1064
    .line 1065
    const/16 v8, 0xa

    .line 1066
    .line 1067
    :cond_6b
    const/4 v9, 0x0

    .line 1068
    invoke-virtual {v0, v9}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 1069
    .line 1070
    .line 1071
    goto :goto_1d

    .line 1072
    :cond_6c
    const/4 v9, 0x0

    .line 1073
    and-long v24, v26, v28

    .line 1074
    .line 1075
    cmp-long v19, v24, v17

    .line 1076
    .line 1077
    if-nez v19, :cond_6d

    .line 1078
    .line 1079
    goto :goto_1d

    .line 1080
    :cond_6d
    invoke-virtual {v0, v9}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 1081
    .line 1082
    .line 1083
    const/16 v8, 0xa

    .line 1084
    .line 1085
    :goto_1d
    if-ne v7, v6, :cond_60

    .line 1086
    .line 1087
    goto/16 :goto_20

    .line 1088
    .line 1089
    :cond_6e
    const/16 v13, 0x80

    .line 1090
    .line 1091
    if-ge v9, v13, :cond_73

    .line 1092
    .line 1093
    and-int/lit8 v9, v9, 0x3f

    .line 1094
    .line 1095
    shl-long v26, v20, v9

    .line 1096
    .line 1097
    :cond_6f
    add-int/lit8 v7, v7, -0x1

    .line 1098
    .line 1099
    aget v9, v14, v7

    .line 1100
    .line 1101
    if-eq v9, v12, :cond_70

    .line 1102
    .line 1103
    if-eq v9, v15, :cond_70

    .line 1104
    .line 1105
    goto :goto_1e

    .line 1106
    :cond_70
    const-wide v28, 0x7fffffffc7fffffeL

    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    and-long v28, v26, v28

    .line 1112
    .line 1113
    cmp-long v9, v28, v17

    .line 1114
    .line 1115
    if-nez v9, :cond_71

    .line 1116
    .line 1117
    goto :goto_1e

    .line 1118
    :cond_71
    if-le v8, v11, :cond_72

    .line 1119
    .line 1120
    move v8, v11

    .line 1121
    :cond_72
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 1122
    .line 1123
    .line 1124
    :goto_1e
    if-ne v7, v6, :cond_6f

    .line 1125
    .line 1126
    goto :goto_20

    .line 1127
    :cond_73
    shr-int/lit8 v28, v9, 0x8

    .line 1128
    .line 1129
    shr-int/lit8 v29, v9, 0xe

    .line 1130
    .line 1131
    and-int/lit8 v23, v28, 0x3f

    .line 1132
    .line 1133
    shl-long v31, v20, v23

    .line 1134
    .line 1135
    and-int/lit16 v13, v9, 0xff

    .line 1136
    .line 1137
    shr-int/lit8 v30, v13, 0x6

    .line 1138
    .line 1139
    and-int/lit8 v9, v9, 0x3f

    .line 1140
    .line 1141
    shl-long v33, v20, v9

    .line 1142
    .line 1143
    :cond_74
    add-int/lit8 v7, v7, -0x1

    .line 1144
    .line 1145
    aget v9, v14, v7

    .line 1146
    .line 1147
    if-eq v9, v12, :cond_78

    .line 1148
    .line 1149
    if-eq v9, v10, :cond_75

    .line 1150
    .line 1151
    if-eq v9, v15, :cond_75

    .line 1152
    .line 1153
    goto :goto_1f

    .line 1154
    :cond_75
    invoke-static/range {v28 .. v34}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 1155
    .line 1156
    .line 1157
    move-result v9

    .line 1158
    if-nez v9, :cond_76

    .line 1159
    .line 1160
    goto :goto_1f

    .line 1161
    :cond_76
    if-le v8, v11, :cond_77

    .line 1162
    .line 1163
    move v8, v11

    .line 1164
    :cond_77
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 1165
    .line 1166
    .line 1167
    goto :goto_1f

    .line 1168
    :cond_78
    invoke-static/range {v28 .. v34}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 1169
    .line 1170
    .line 1171
    move-result v9

    .line 1172
    if-eqz v9, :cond_79

    .line 1173
    .line 1174
    const/16 v9, 0xd

    .line 1175
    .line 1176
    if-le v8, v9, :cond_79

    .line 1177
    .line 1178
    const/16 v8, 0xd

    .line 1179
    .line 1180
    :cond_79
    invoke-static/range {v28 .. v34}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCanMove_0(IIIJJ)Z

    .line 1181
    .line 1182
    .line 1183
    move-result v9

    .line 1184
    if-eqz v9, :cond_7b

    .line 1185
    .line 1186
    if-le v8, v11, :cond_7a

    .line 1187
    .line 1188
    move v8, v11

    .line 1189
    :cond_7a
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 1190
    .line 1191
    .line 1192
    :cond_7b
    :goto_1f
    if-ne v7, v6, :cond_74

    .line 1193
    .line 1194
    :goto_20
    if-eq v8, v3, :cond_7c

    .line 1195
    .line 1196
    iput v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 1197
    .line 1198
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 1199
    .line 1200
    move v8, v3

    .line 1201
    :cond_7c
    add-int/lit8 v4, v4, 0x1

    .line 1202
    .line 1203
    iget v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 1204
    .line 1205
    iput v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 1206
    .line 1207
    rsub-int/lit8 v6, v6, 0x4

    .line 1208
    .line 1209
    if-ne v7, v6, :cond_7d

    .line 1210
    .line 1211
    goto :goto_22

    .line 1212
    :cond_7d
    :try_start_6
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    .line 1213
    .line 1214
    .line 1215
    move-result v9

    .line 1216
    iput-char v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1217
    .line 1218
    goto/16 :goto_1b

    .line 1219
    .line 1220
    :pswitch_0
    move/from16 v7, v22

    .line 1221
    .line 1222
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1223
    .line 1224
    .line 1225
    :goto_21
    move v4, v12

    .line 1226
    goto :goto_22

    .line 1227
    :pswitch_1
    const/4 v4, 0x5

    .line 1228
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1229
    .line 1230
    .line 1231
    goto :goto_21

    .line 1232
    :pswitch_2
    invoke-virtual {v0, v11}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1233
    .line 1234
    .line 1235
    goto :goto_21

    .line 1236
    :cond_7e
    const/16 v4, 0x10

    .line 1237
    .line 1238
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1239
    .line 1240
    .line 1241
    goto :goto_21

    .line 1242
    :cond_7f
    const/16 v4, 0x8

    .line 1243
    .line 1244
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1245
    .line 1246
    .line 1247
    goto :goto_21

    .line 1248
    :cond_80
    const/4 v4, 0x7

    .line 1249
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1250
    .line 1251
    .line 1252
    goto :goto_21

    .line 1253
    :cond_81
    const/16 v4, 0x9

    .line 1254
    .line 1255
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1256
    .line 1257
    .line 1258
    goto :goto_21

    .line 1259
    :cond_82
    invoke-virtual {v0, v15}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1260
    .line 1261
    .line 1262
    goto :goto_21

    .line 1263
    :cond_83
    const/16 v4, 0x14

    .line 1264
    .line 1265
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1266
    .line 1267
    .line 1268
    goto :goto_21

    .line 1269
    :cond_84
    const/16 v4, 0x1d

    .line 1270
    .line 1271
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1272
    .line 1273
    .line 1274
    goto :goto_21

    .line 1275
    :cond_85
    invoke-virtual {v0, v12}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1276
    .line 1277
    .line 1278
    goto :goto_21

    .line 1279
    :cond_86
    invoke-virtual {v0, v10}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(I)I

    .line 1280
    .line 1281
    .line 1282
    goto :goto_21

    .line 1283
    :catch_1
    :goto_22
    move v6, v4

    .line 1284
    :catch_2
    :goto_23
    iget v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 1285
    .line 1286
    if-eq v4, v3, :cond_97

    .line 1287
    .line 1288
    iget v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 1289
    .line 1290
    add-int/lit8 v7, v4, 0x1

    .line 1291
    .line 1292
    if-ge v7, v6, :cond_87

    .line 1293
    .line 1294
    sub-int v4, v6, v4

    .line 1295
    .line 1296
    sub-int/2addr v4, v12

    .line 1297
    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->backup(I)V

    .line 1298
    .line 1299
    .line 1300
    :cond_87
    iget v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 1301
    .line 1302
    shr-int/lit8 v7, v4, 0x6

    .line 1303
    .line 1304
    sget-object v8, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoToken:[J

    .line 1305
    .line 1306
    aget-wide v13, v8, v7

    .line 1307
    .line 1308
    and-int/lit8 v8, v4, 0x3f

    .line 1309
    .line 1310
    shl-long v8, v20, v8

    .line 1311
    .line 1312
    and-long/2addr v13, v8

    .line 1313
    cmp-long v11, v13, v17

    .line 1314
    .line 1315
    sget-object v13, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewLexState:[I

    .line 1316
    .line 1317
    if-eqz v11, :cond_8b

    .line 1318
    .line 1319
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/Token;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v1

    .line 1323
    iput-object v5, v1, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 1324
    .line 1325
    iget v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 1326
    .line 1327
    const/16 v7, 0x13

    .line 1328
    .line 1329
    if-eq v3, v7, :cond_89

    .line 1330
    .line 1331
    const/16 v6, 0x20

    .line 1332
    .line 1333
    if-eq v3, v6, :cond_88

    .line 1334
    .line 1335
    goto :goto_24

    .line 1336
    :cond_88
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1337
    .line 1338
    iget v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1339
    .line 1340
    iget v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 1341
    .line 1342
    add-int/2addr v5, v12

    .line 1343
    add-int/2addr v5, v4

    .line 1344
    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1345
    .line 1346
    .line 1347
    move-result-object v2

    .line 1348
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 1354
    .line 1355
    .line 1356
    move-result v3

    .line 1357
    sub-int/2addr v3, v12

    .line 1358
    const/4 v4, 0x0

    .line 1359
    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v2

    .line 1363
    iput-object v2, v1, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 1364
    .line 1365
    goto :goto_24

    .line 1366
    :cond_89
    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1367
    .line 1368
    iget v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1369
    .line 1370
    iget v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 1371
    .line 1372
    add-int/2addr v5, v12

    .line 1373
    add-int/2addr v5, v4

    .line 1374
    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1375
    .line 1376
    .line 1377
    move-result-object v2

    .line 1378
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1379
    .line 1380
    .line 1381
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1382
    .line 1383
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v2

    .line 1387
    iput-object v2, v1, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 1388
    .line 1389
    :goto_24
    iget v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 1390
    .line 1391
    aget v2, v13, v2

    .line 1392
    .line 1393
    move/from16 v3, v16

    .line 1394
    .line 1395
    if-eq v2, v3, :cond_8a

    .line 1396
    .line 1397
    iput v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    .line 1398
    .line 1399
    :cond_8a
    return-object v1

    .line 1400
    :cond_8b
    sget-object v11, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoSkip:[J

    .line 1401
    .line 1402
    aget-wide v14, v11, v7

    .line 1403
    .line 1404
    and-long/2addr v14, v8

    .line 1405
    cmp-long v11, v14, v17

    .line 1406
    .line 1407
    if-eqz v11, :cond_8f

    .line 1408
    .line 1409
    sget-object v3, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoSpecial:[J

    .line 1410
    .line 1411
    aget-wide v10, v3, v7

    .line 1412
    .line 1413
    and-long v3, v10, v8

    .line 1414
    .line 1415
    cmp-long v3, v3, v17

    .line 1416
    .line 1417
    if-eqz v3, :cond_8d

    .line 1418
    .line 1419
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/Token;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v3

    .line 1423
    if-nez v5, :cond_8c

    .line 1424
    .line 1425
    goto :goto_25

    .line 1426
    :cond_8c
    iput-object v5, v3, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 1427
    .line 1428
    iput-object v3, v5, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 1429
    .line 1430
    :goto_25
    move-object v5, v3

    .line 1431
    :cond_8d
    iget v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 1432
    .line 1433
    aget v3, v13, v3

    .line 1434
    .line 1435
    const/4 v4, -0x1

    .line 1436
    if-eq v3, v4, :cond_8e

    .line 1437
    .line 1438
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    .line 1439
    .line 1440
    :cond_8e
    const/4 v4, 0x0

    .line 1441
    goto/16 :goto_0

    .line 1442
    .line 1443
    :cond_8f
    iget v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1444
    .line 1445
    iget v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 1446
    .line 1447
    add-int/2addr v7, v12

    .line 1448
    add-int/2addr v7, v6

    .line 1449
    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1450
    .line 1451
    const/16 v9, 0x11

    .line 1452
    .line 1453
    if-eq v4, v9, :cond_94

    .line 1454
    .line 1455
    const/16 v9, 0x16

    .line 1456
    .line 1457
    if-eq v4, v9, :cond_93

    .line 1458
    .line 1459
    const/16 v6, 0x17

    .line 1460
    .line 1461
    if-eq v4, v6, :cond_92

    .line 1462
    .line 1463
    const/16 v6, 0x1d

    .line 1464
    .line 1465
    if-eq v4, v6, :cond_91

    .line 1466
    .line 1467
    const/16 v11, 0x1e

    .line 1468
    .line 1469
    if-eq v4, v11, :cond_90

    .line 1470
    .line 1471
    packed-switch v4, :pswitch_data_1

    .line 1472
    .line 1473
    .line 1474
    goto/16 :goto_26

    .line 1475
    .line 1476
    :pswitch_3
    iget-object v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1477
    .line 1478
    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1479
    .line 1480
    .line 1481
    move-result-object v6

    .line 1482
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1483
    .line 1484
    .line 1485
    const/4 v4, 0x0

    .line 1486
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1487
    .line 1488
    sget v4, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    .line 1489
    .line 1490
    sub-int/2addr v4, v12

    .line 1491
    sput v4, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    .line 1492
    .line 1493
    if-nez v4, :cond_95

    .line 1494
    .line 1495
    iput v10, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    .line 1496
    .line 1497
    goto/16 :goto_26

    .line 1498
    .line 1499
    :pswitch_4
    iget-object v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1502
    .line 1503
    .line 1504
    move-result-object v6

    .line 1505
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1506
    .line 1507
    .line 1508
    const/4 v4, 0x0

    .line 1509
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1510
    .line 1511
    sget v6, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    .line 1512
    .line 1513
    add-int/2addr v6, v12

    .line 1514
    sput v6, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    .line 1515
    .line 1516
    goto/16 :goto_26

    .line 1517
    .line 1518
    :pswitch_5
    const/4 v4, 0x0

    .line 1519
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1522
    .line 1523
    .line 1524
    move-result-object v7

    .line 1525
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1526
    .line 1527
    .line 1528
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1529
    .line 1530
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 1533
    .line 1534
    .line 1535
    move-result v7

    .line 1536
    sub-int/2addr v7, v10

    .line 1537
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1538
    .line 1539
    .line 1540
    goto :goto_26

    .line 1541
    :cond_90
    const/4 v4, 0x0

    .line 1542
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1543
    .line 1544
    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1545
    .line 1546
    .line 1547
    move-result-object v7

    .line 1548
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1549
    .line 1550
    .line 1551
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1552
    .line 1553
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1554
    .line 1555
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 1556
    .line 1557
    .line 1558
    move-result v7

    .line 1559
    sub-int/2addr v7, v10

    .line 1560
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1561
    .line 1562
    .line 1563
    goto :goto_26

    .line 1564
    :cond_91
    const/4 v4, 0x0

    .line 1565
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1566
    .line 1567
    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1568
    .line 1569
    .line 1570
    move-result-object v7

    .line 1571
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1575
    .line 1576
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1577
    .line 1578
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 1579
    .line 1580
    .line 1581
    move-result v7

    .line 1582
    sub-int/2addr v7, v12

    .line 1583
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1584
    .line 1585
    .line 1586
    goto :goto_26

    .line 1587
    :cond_92
    const/4 v4, 0x0

    .line 1588
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1589
    .line 1590
    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1591
    .line 1592
    .line 1593
    move-result-object v7

    .line 1594
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1595
    .line 1596
    .line 1597
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1598
    .line 1599
    sput v12, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    .line 1600
    .line 1601
    goto :goto_26

    .line 1602
    :cond_93
    const/4 v4, 0x0

    .line 1603
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1604
    .line 1605
    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1606
    .line 1607
    .line 1608
    move-result-object v7

    .line 1609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1610
    .line 1611
    .line 1612
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1613
    .line 1614
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1615
    .line 1616
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 1617
    .line 1618
    .line 1619
    move-result v7

    .line 1620
    sub-int/2addr v7, v10

    .line 1621
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    goto :goto_26

    .line 1625
    :cond_94
    const/4 v4, 0x0

    .line 1626
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1627
    .line 1628
    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    .line 1629
    .line 1630
    .line 1631
    move-result-object v7

    .line 1632
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1633
    .line 1634
    .line 1635
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 1636
    .line 1637
    iget-object v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 1640
    .line 1641
    .line 1642
    move-result v6

    .line 1643
    sub-int/2addr v6, v10

    .line 1644
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1645
    .line 1646
    .line 1647
    :cond_95
    :goto_26
    iget v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 1648
    .line 1649
    aget v4, v13, v4

    .line 1650
    .line 1651
    const/4 v6, -0x1

    .line 1652
    if-eq v4, v6, :cond_96

    .line 1653
    .line 1654
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    .line 1655
    .line 1656
    :cond_96
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 1657
    .line 1658
    :try_start_7
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    .line 1659
    .line 1660
    .line 1661
    move-result v3

    .line 1662
    iput-char v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1663
    .line 1664
    move v7, v6

    .line 1665
    const/4 v4, 0x0

    .line 1666
    const/4 v6, 0x0

    .line 1667
    goto/16 :goto_1

    .line 1668
    .line 1669
    :catch_3
    const/4 v4, 0x0

    .line 1670
    goto :goto_27

    .line 1671
    :cond_97
    move v4, v6

    .line 1672
    :goto_27
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufline:[I

    .line 1673
    .line 1674
    iget v5, v2, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 1675
    .line 1676
    aget v3, v3, v5

    .line 1677
    .line 1678
    iget-object v6, v2, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufcolumn:[I

    .line 1679
    .line 1680
    aget v5, v6, v5

    .line 1681
    .line 1682
    :try_start_8
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    .line 1683
    .line 1684
    .line 1685
    invoke-virtual {v2, v12}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->backup(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1686
    .line 1687
    .line 1688
    const/4 v6, 0x0

    .line 1689
    const/16 v25, 0x0

    .line 1690
    .line 1691
    goto :goto_2a

    .line 1692
    :catch_4
    if-gt v4, v12, :cond_98

    .line 1693
    .line 1694
    move-object v6, v1

    .line 1695
    goto :goto_28

    .line 1696
    :cond_98
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetImage()Ljava/lang/String;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v6

    .line 1700
    :goto_28
    iget-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 1701
    .line 1702
    const/16 v9, 0xa

    .line 1703
    .line 1704
    if-eq v7, v9, :cond_9a

    .line 1705
    .line 1706
    const/16 v9, 0xd

    .line 1707
    .line 1708
    if-ne v7, v9, :cond_99

    .line 1709
    .line 1710
    goto :goto_29

    .line 1711
    :cond_99
    add-int/lit8 v5, v5, 0x1

    .line 1712
    .line 1713
    move/from16 v25, v12

    .line 1714
    .line 1715
    goto :goto_2a

    .line 1716
    :cond_9a
    :goto_29
    add-int/lit8 v3, v3, 0x1

    .line 1717
    .line 1718
    move/from16 v25, v12

    .line 1719
    .line 1720
    const/4 v5, 0x0

    .line 1721
    :goto_2a
    if-nez v25, :cond_9c

    .line 1722
    .line 1723
    invoke-virtual {v2, v12}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->backup(I)V

    .line 1724
    .line 1725
    .line 1726
    if-gt v4, v12, :cond_9b

    .line 1727
    .line 1728
    goto :goto_2b

    .line 1729
    :cond_9b
    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetImage()Ljava/lang/String;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v1

    .line 1733
    :goto_2b
    move-object v6, v1

    .line 1734
    :cond_9c
    new-instance v1, Lorg/apache/james/mime4j/field/address/TokenMgrError;

    .line 1735
    .line 1736
    iget-char v0, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    .line 1737
    .line 1738
    const-string v2, ", column "

    .line 1739
    .line 1740
    const-string v4, ".  Encountered: "

    .line 1741
    .line 1742
    const-string v7, "Lexical error at line "

    .line 1743
    .line 1744
    invoke-static {v7, v3, v2, v5, v4}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v2

    .line 1748
    const-string v3, "\""

    .line 1749
    .line 1750
    if-eqz v25, :cond_9d

    .line 1751
    .line 1752
    const-string v0, "<EOF> "

    .line 1753
    .line 1754
    goto :goto_2c

    .line 1755
    :cond_9d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1756
    .line 1757
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1758
    .line 1759
    .line 1760
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v5

    .line 1764
    invoke-static {v5}, Lorg/apache/james/mime4j/field/address/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v5

    .line 1768
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    .line 1770
    .line 1771
    const-string v5, "\" ("

    .line 1772
    .line 1773
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1777
    .line 1778
    .line 1779
    const-string v0, "), "

    .line 1780
    .line 1781
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    .line 1783
    .line 1784
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1785
    .line 1786
    .line 1787
    move-result-object v0

    .line 1788
    :goto_2c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    .line 1790
    .line 1791
    const-string v0, "after : \""

    .line 1792
    .line 1793
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    .line 1795
    .line 1796
    invoke-static {v6}, Lorg/apache/james/mime4j/field/address/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v0

    .line 1800
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    .line 1805
    .line 1806
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v0

    .line 1810
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 1811
    .line 1812
    .line 1813
    throw v1

    .line 1814
    :catch_5
    const/4 v4, 0x0

    .line 1815
    :catch_6
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 1816
    .line 1817
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/Token;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v0

    .line 1821
    iput-object v5, v0, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 1822
    .line 1823
    return-object v0

    .line 1824
    nop

    .line 1825
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final jjCheckNAdd(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjrounds:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 10
    .line 11
    add-int/lit8 v3, v1, 0x1

    .line 12
    .line 13
    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 14
    .line 15
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    .line 16
    .line 17
    aput p1, p0, v1

    .line 18
    .line 19
    aput v2, v0, p1

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final jjFillToken()Lorg/apache/james/mime4j/field/address/Token;
    .locals 6

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetImage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufline:[I

    .line 16
    .line 17
    iget v3, v1, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->tokenBegin:I

    .line 18
    .line 19
    aget v4, v2, v3

    .line 20
    .line 21
    iget-object v5, v1, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufcolumn:[I

    .line 22
    .line 23
    aget v3, v5, v3

    .line 24
    .line 25
    iget v1, v1, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->bufpos:I

    .line 26
    .line 27
    aget v2, v2, v1

    .line 28
    .line 29
    aget v1, v5, v1

    .line 30
    .line 31
    iget p0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 32
    .line 33
    new-instance v1, Lorg/apache/james/mime4j/field/address/Token;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput p0, v1, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    .line 39
    .line 40
    iput-object v0, v1, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    .line 41
    .line 42
    iput v4, v1, Lorg/apache/james/mime4j/field/address/Token;->beginLine:I

    .line 43
    .line 44
    iput v3, v1, Lorg/apache/james/mime4j/field/address/Token;->beginColumn:I

    .line 45
    .line 46
    return-object v1
.end method

.method public final jjStopAtPos(I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0
.end method
