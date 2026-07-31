.class public final Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


# static fields
.field public static commentNest:I

.field public static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field public static final jjtoSkip:[J

.field public static final jjtoSpecial:[J

.field public static final jjtoToken:[J


# instance fields
.field public curChar:C

.field public curLexState:I

.field public image:Ljava/lang/StringBuilder;

.field public final input_stream:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

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
    .locals 50

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    .line 8
    .line 9
    const/16 v48, 0x0

    .line 10
    .line 11
    const/16 v49, 0x0

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    const-string v2, "\r"

    .line 16
    .line 17
    const-string v3, "\n"

    .line 18
    .line 19
    const-string v4, ","

    .line 20
    .line 21
    const-string v5, ":"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v7, "UT"

    .line 25
    .line 26
    const-string v8, "GMT"

    .line 27
    .line 28
    const-string v9, "EST"

    .line 29
    .line 30
    const-string v10, "EDT"

    .line 31
    .line 32
    const-string v11, "CST"

    .line 33
    .line 34
    const-string v12, "CDT"

    .line 35
    .line 36
    const-string v13, "MST"

    .line 37
    .line 38
    const-string v14, "MDT"

    .line 39
    .line 40
    const-string v15, "PST"

    .line 41
    .line 42
    const-string v16, "PDT"

    .line 43
    .line 44
    const/16 v17, 0x0

    .line 45
    .line 46
    const/16 v18, 0x0

    .line 47
    .line 48
    const/16 v19, 0x0

    .line 49
    .line 50
    const/16 v20, 0x0

    .line 51
    .line 52
    const/16 v21, 0x0

    .line 53
    .line 54
    const/16 v22, 0x0

    .line 55
    .line 56
    const/16 v23, 0x0

    .line 57
    .line 58
    const/16 v24, 0x0

    .line 59
    .line 60
    const/16 v25, 0x0

    .line 61
    .line 62
    const/16 v26, 0x0

    .line 63
    .line 64
    const/16 v27, 0x0

    .line 65
    .line 66
    const/16 v28, 0x0

    .line 67
    .line 68
    const/16 v29, 0x0

    .line 69
    .line 70
    const/16 v30, 0x0

    .line 71
    .line 72
    const/16 v31, 0x0

    .line 73
    .line 74
    const/16 v32, 0x0

    .line 75
    .line 76
    const/16 v33, 0x0

    .line 77
    .line 78
    const/16 v34, 0x0

    .line 79
    .line 80
    const/16 v35, 0x0

    .line 81
    .line 82
    const/16 v36, 0x0

    .line 83
    .line 84
    const/16 v37, 0x0

    .line 85
    .line 86
    const/16 v38, 0x0

    .line 87
    .line 88
    const/16 v39, 0x0

    .line 89
    .line 90
    const/16 v40, 0x0

    .line 91
    .line 92
    const/16 v41, 0x0

    .line 93
    .line 94
    const/16 v42, 0x0

    .line 95
    .line 96
    const/16 v43, 0x0

    .line 97
    .line 98
    const/16 v44, 0x0

    .line 99
    .line 100
    const/16 v45, 0x0

    .line 101
    .line 102
    const/16 v46, 0x0

    .line 103
    .line 104
    const/16 v47, 0x0

    .line 105
    .line 106
    filled-new-array/range {v1 .. v49}, [Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 111
    .line 112
    const/16 v0, 0x31

    .line 113
    .line 114
    new-array v0, v0, [I

    .line 115
    .line 116
    fill-array-data v0, :array_1

    .line 117
    .line 118
    .line 119
    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    new-array v1, v0, [J

    .line 123
    .line 124
    const-wide v2, 0x7ffff801ffffL

    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    aput-wide v2, v1, v4

    .line 131
    .line 132
    sput-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    .line 133
    .line 134
    new-array v1, v0, [J

    .line 135
    .line 136
    const-wide/32 v2, 0xa0000

    .line 137
    .line 138
    .line 139
    aput-wide v2, v1, v4

    .line 140
    .line 141
    sput-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    .line 142
    .line 143
    new-array v0, v0, [J

    .line 144
    .line 145
    const-wide/32 v1, 0x20000

    .line 146
    .line 147
    .line 148
    aput-wide v1, v0, v4

    .line 149
    .line 150
    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    .line 151
    .line 152
    return-void

    .line 153
    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_1
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
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
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
    .end array-data
.end method

.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;)V
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
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    new-array v0, v0, [I

    .line 12
    .line 13
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 26
    .line 27
    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final ReInitRounds()V
    .locals 3

    .line 1
    const v0, -0x7fffffff

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

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
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

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

.method public final getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    iget-object v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

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
    iput v7, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C

    .line 14
    .line 15
    .line 16
    move-result v8

    .line 17
    iget v9, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 18
    .line 19
    iput v9, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 20
    .line 21
    :try_start_1
    iput-char v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 22
    .line 23
    iget-object v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 24
    .line 25
    iput-object v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 28
    .line 29
    .line 30
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 31
    .line 32
    :goto_1
    iget v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 33
    .line 34
    const/4 v9, 0x3

    .line 35
    const/4 v14, 0x2

    .line 36
    const v15, 0x7fffffff

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v8, :cond_2d

    .line 41
    .line 42
    const-wide/16 v16, 0x1

    .line 43
    .line 44
    const/16 v11, 0x80

    .line 45
    .line 46
    const-wide/16 v18, 0x0

    .line 47
    .line 48
    const/16 v12, 0x40

    .line 49
    .line 50
    iget-object v13, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    .line 51
    .line 52
    sget-object v20, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    .line 53
    .line 54
    move/from16 v21, v7

    .line 55
    .line 56
    const/16 v7, 0x29

    .line 57
    .line 58
    const/16 v10, 0x28

    .line 59
    .line 60
    if-eq v8, v3, :cond_16

    .line 61
    .line 62
    if-eq v8, v14, :cond_0

    .line 63
    .line 64
    move v3, v6

    .line 65
    goto/16 :goto_17

    .line 66
    .line 67
    :cond_0
    iput v15, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 68
    .line 69
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 70
    .line 71
    iget-char v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 72
    .line 73
    if-eq v6, v10, :cond_15

    .line 74
    .line 75
    if-eq v6, v7, :cond_14

    .line 76
    .line 77
    iput v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 78
    .line 79
    aput v4, v13, v4

    .line 80
    .line 81
    move v6, v3

    .line 82
    move v8, v4

    .line 83
    move v9, v8

    .line 84
    move v7, v15

    .line 85
    :goto_2
    iget v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 86
    .line 87
    add-int/2addr v10, v3

    .line 88
    iput v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 89
    .line 90
    if-ne v10, v15, :cond_1

    .line 91
    .line 92
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 93
    .line 94
    .line 95
    :cond_1
    iget-char v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 96
    .line 97
    const/16 v4, 0x17

    .line 98
    .line 99
    const/16 v15, 0x1a

    .line 100
    .line 101
    if-ge v10, v12, :cond_6

    .line 102
    .line 103
    :cond_2
    add-int/lit8 v6, v6, -0x1

    .line 104
    .line 105
    aget v10, v13, v6

    .line 106
    .line 107
    if-eqz v10, :cond_4

    .line 108
    .line 109
    if-eq v10, v3, :cond_3

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    if-le v7, v4, :cond_5

    .line 113
    .line 114
    move v7, v4

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    if-le v7, v15, :cond_5

    .line 117
    .line 118
    move v7, v15

    .line 119
    :cond_5
    :goto_3
    if-ne v6, v8, :cond_2

    .line 120
    .line 121
    :goto_4
    const v4, 0x7fffffff

    .line 122
    .line 123
    .line 124
    goto/16 :goto_8

    .line 125
    .line 126
    :cond_6
    if-ge v10, v11, :cond_d

    .line 127
    .line 128
    :goto_5
    add-int/lit8 v6, v6, -0x1

    .line 129
    .line 130
    aget v10, v13, v6

    .line 131
    .line 132
    if-eqz v10, :cond_9

    .line 133
    .line 134
    if-eq v10, v3, :cond_8

    .line 135
    .line 136
    if-eq v10, v14, :cond_7

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_7
    if-le v7, v15, :cond_b

    .line 140
    .line 141
    move v7, v15

    .line 142
    goto :goto_6

    .line 143
    :cond_8
    if-le v7, v4, :cond_b

    .line 144
    .line 145
    move v7, v4

    .line 146
    goto :goto_6

    .line 147
    :cond_9
    if-le v7, v15, :cond_a

    .line 148
    .line 149
    move v7, v15

    .line 150
    :cond_a
    iget-char v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 151
    .line 152
    const/16 v14, 0x5c

    .line 153
    .line 154
    if-ne v10, v14, :cond_b

    .line 155
    .line 156
    iget v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 157
    .line 158
    add-int/lit8 v14, v10, 0x1

    .line 159
    .line 160
    iput v14, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 161
    .line 162
    aput v3, v13, v10

    .line 163
    .line 164
    :cond_b
    :goto_6
    if-ne v6, v8, :cond_c

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_c
    const/4 v14, 0x2

    .line 168
    goto :goto_5

    .line 169
    :cond_d
    and-int/lit16 v14, v10, 0xff

    .line 170
    .line 171
    shr-int/lit8 v14, v14, 0x6

    .line 172
    .line 173
    and-int/lit8 v10, v10, 0x3f

    .line 174
    .line 175
    shl-long v24, v16, v10

    .line 176
    .line 177
    :cond_e
    add-int/lit8 v6, v6, -0x1

    .line 178
    .line 179
    aget v10, v13, v6

    .line 180
    .line 181
    if-eqz v10, :cond_10

    .line 182
    .line 183
    if-eq v10, v3, :cond_f

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_f
    aget-wide v26, v20, v14

    .line 187
    .line 188
    and-long v26, v26, v24

    .line 189
    .line 190
    cmp-long v10, v26, v18

    .line 191
    .line 192
    if-eqz v10, :cond_11

    .line 193
    .line 194
    if-le v7, v4, :cond_11

    .line 195
    .line 196
    move v7, v4

    .line 197
    goto :goto_7

    .line 198
    :cond_10
    aget-wide v26, v20, v14

    .line 199
    .line 200
    and-long v26, v26, v24

    .line 201
    .line 202
    cmp-long v10, v26, v18

    .line 203
    .line 204
    if-eqz v10, :cond_11

    .line 205
    .line 206
    if-le v7, v15, :cond_11

    .line 207
    .line 208
    move v7, v15

    .line 209
    :cond_11
    :goto_7
    if-ne v6, v8, :cond_e

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :goto_8
    if-eq v7, v4, :cond_12

    .line 213
    .line 214
    iput v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 215
    .line 216
    iput v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 217
    .line 218
    const v7, 0x7fffffff

    .line 219
    .line 220
    .line 221
    :cond_12
    add-int/lit8 v9, v9, 0x1

    .line 222
    .line 223
    iget v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 224
    .line 225
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 226
    .line 227
    rsub-int/lit8 v8, v8, 0x3

    .line 228
    .line 229
    if-ne v6, v8, :cond_13

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_13
    :try_start_2
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    iput-char v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 237
    .line 238
    const/4 v4, 0x0

    .line 239
    const/4 v14, 0x2

    .line 240
    const v15, 0x7fffffff

    .line 241
    .line 242
    .line 243
    goto/16 :goto_2

    .line 244
    .line 245
    :catch_0
    :goto_9
    const/4 v4, 0x0

    .line 246
    goto :goto_b

    .line 247
    :cond_14
    const/16 v4, 0x19

    .line 248
    .line 249
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 250
    .line 251
    const/4 v4, 0x0

    .line 252
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 253
    .line 254
    :goto_a
    move v9, v3

    .line 255
    goto :goto_b

    .line 256
    :cond_15
    const/16 v6, 0x18

    .line 257
    .line 258
    iput v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 259
    .line 260
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 261
    .line 262
    goto :goto_a

    .line 263
    :goto_b
    move v3, v9

    .line 264
    goto/16 :goto_17

    .line 265
    .line 266
    :cond_16
    move v6, v15

    .line 267
    iput v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 268
    .line 269
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 270
    .line 271
    iget-char v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 272
    .line 273
    if-eq v8, v10, :cond_2c

    .line 274
    .line 275
    if-eq v8, v7, :cond_2b

    .line 276
    .line 277
    iput v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 278
    .line 279
    aput v4, v13, v4

    .line 280
    .line 281
    move v9, v3

    .line 282
    move v8, v6

    .line 283
    const/4 v4, 0x0

    .line 284
    const/4 v7, 0x0

    .line 285
    :goto_c
    iget v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 286
    .line 287
    add-int/2addr v10, v3

    .line 288
    iput v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 289
    .line 290
    if-ne v10, v6, :cond_17

    .line 291
    .line 292
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 293
    .line 294
    .line 295
    :cond_17
    iget-char v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 296
    .line 297
    const/16 v10, 0x14

    .line 298
    .line 299
    const/16 v14, 0x16

    .line 300
    .line 301
    if-ge v6, v12, :cond_1c

    .line 302
    .line 303
    :cond_18
    add-int/lit8 v9, v9, -0x1

    .line 304
    .line 305
    aget v6, v13, v9

    .line 306
    .line 307
    if-eqz v6, :cond_1a

    .line 308
    .line 309
    if-eq v6, v3, :cond_19

    .line 310
    .line 311
    goto :goto_d

    .line 312
    :cond_19
    if-le v8, v10, :cond_1b

    .line 313
    .line 314
    move v8, v10

    .line 315
    goto :goto_d

    .line 316
    :cond_1a
    if-le v8, v14, :cond_1b

    .line 317
    .line 318
    move v8, v14

    .line 319
    :cond_1b
    :goto_d
    if-ne v9, v4, :cond_18

    .line 320
    .line 321
    const v6, 0x7fffffff

    .line 322
    .line 323
    .line 324
    const/16 v15, 0x5c

    .line 325
    .line 326
    goto/16 :goto_13

    .line 327
    .line 328
    :cond_1c
    if-ge v6, v11, :cond_24

    .line 329
    .line 330
    :goto_e
    add-int/lit8 v9, v9, -0x1

    .line 331
    .line 332
    aget v6, v13, v9

    .line 333
    .line 334
    if-eqz v6, :cond_20

    .line 335
    .line 336
    if-eq v6, v3, :cond_1f

    .line 337
    .line 338
    const/4 v15, 0x2

    .line 339
    if-eq v6, v15, :cond_1d

    .line 340
    .line 341
    goto :goto_f

    .line 342
    :cond_1d
    if-le v8, v14, :cond_1e

    .line 343
    .line 344
    move v8, v14

    .line 345
    :cond_1e
    :goto_f
    const/16 v15, 0x5c

    .line 346
    .line 347
    goto :goto_10

    .line 348
    :cond_1f
    if-le v8, v10, :cond_1e

    .line 349
    .line 350
    move v8, v10

    .line 351
    goto :goto_f

    .line 352
    :cond_20
    if-le v8, v14, :cond_21

    .line 353
    .line 354
    move v8, v14

    .line 355
    :cond_21
    iget-char v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 356
    .line 357
    const/16 v15, 0x5c

    .line 358
    .line 359
    if-ne v6, v15, :cond_22

    .line 360
    .line 361
    iget v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 362
    .line 363
    add-int/lit8 v11, v6, 0x1

    .line 364
    .line 365
    iput v11, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 366
    .line 367
    aput v3, v13, v6

    .line 368
    .line 369
    :cond_22
    :goto_10
    if-ne v9, v4, :cond_23

    .line 370
    .line 371
    :goto_11
    const v6, 0x7fffffff

    .line 372
    .line 373
    .line 374
    goto :goto_13

    .line 375
    :cond_23
    const/16 v11, 0x80

    .line 376
    .line 377
    goto :goto_e

    .line 378
    :cond_24
    const/16 v15, 0x5c

    .line 379
    .line 380
    and-int/lit16 v11, v6, 0xff

    .line 381
    .line 382
    shr-int/lit8 v11, v11, 0x6

    .line 383
    .line 384
    and-int/lit8 v6, v6, 0x3f

    .line 385
    .line 386
    shl-long v24, v16, v6

    .line 387
    .line 388
    :cond_25
    add-int/lit8 v9, v9, -0x1

    .line 389
    .line 390
    aget v6, v13, v9

    .line 391
    .line 392
    if-eqz v6, :cond_27

    .line 393
    .line 394
    if-eq v6, v3, :cond_26

    .line 395
    .line 396
    goto :goto_12

    .line 397
    :cond_26
    aget-wide v26, v20, v11

    .line 398
    .line 399
    and-long v26, v26, v24

    .line 400
    .line 401
    cmp-long v6, v26, v18

    .line 402
    .line 403
    if-eqz v6, :cond_28

    .line 404
    .line 405
    if-le v8, v10, :cond_28

    .line 406
    .line 407
    move v8, v10

    .line 408
    goto :goto_12

    .line 409
    :cond_27
    aget-wide v26, v20, v11

    .line 410
    .line 411
    and-long v26, v26, v24

    .line 412
    .line 413
    cmp-long v6, v26, v18

    .line 414
    .line 415
    if-eqz v6, :cond_28

    .line 416
    .line 417
    if-le v8, v14, :cond_28

    .line 418
    .line 419
    move v8, v14

    .line 420
    :cond_28
    :goto_12
    if-ne v9, v4, :cond_25

    .line 421
    .line 422
    goto :goto_11

    .line 423
    :goto_13
    if-eq v8, v6, :cond_29

    .line 424
    .line 425
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 426
    .line 427
    iput v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 428
    .line 429
    const v8, 0x7fffffff

    .line 430
    .line 431
    .line 432
    :cond_29
    add-int/lit8 v7, v7, 0x1

    .line 433
    .line 434
    iget v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 435
    .line 436
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 437
    .line 438
    rsub-int/lit8 v4, v4, 0x3

    .line 439
    .line 440
    if-ne v9, v4, :cond_2a

    .line 441
    .line 442
    goto :goto_14

    .line 443
    :cond_2a
    :try_start_3
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    iput-char v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 448
    .line 449
    const v6, 0x7fffffff

    .line 450
    .line 451
    .line 452
    const/16 v11, 0x80

    .line 453
    .line 454
    goto/16 :goto_c

    .line 455
    .line 456
    :catch_1
    :goto_14
    const/4 v4, 0x0

    .line 457
    goto :goto_16

    .line 458
    :cond_2b
    const/16 v4, 0x13

    .line 459
    .line 460
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 461
    .line 462
    const/4 v4, 0x0

    .line 463
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 464
    .line 465
    :goto_15
    move v7, v3

    .line 466
    goto :goto_16

    .line 467
    :cond_2c
    const/16 v6, 0x15

    .line 468
    .line 469
    iput v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 470
    .line 471
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 472
    .line 473
    goto :goto_15

    .line 474
    :goto_16
    move v3, v7

    .line 475
    goto/16 :goto_17

    .line 476
    .line 477
    :cond_2d
    move/from16 v21, v7

    .line 478
    .line 479
    move v6, v15

    .line 480
    const-wide/16 v16, 0x1

    .line 481
    .line 482
    const-wide/16 v18, 0x0

    .line 483
    .line 484
    iput v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 485
    .line 486
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 487
    .line 488
    iget-char v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 489
    .line 490
    const/16 v6, 0x73

    .line 491
    .line 492
    const-wide v7, 0x601000000000L

    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    if-eq v4, v6, :cond_2f

    .line 498
    .line 499
    const/16 v6, 0x74

    .line 500
    .line 501
    const-wide v10, 0xa0000000000L

    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    if-eq v4, v6, :cond_2e

    .line 507
    .line 508
    const-wide v14, 0x8000000000L

    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    move/from16 v20, v4

    .line 514
    .line 515
    const-wide v3, 0x100020000000L    # 8.6919600092676E-311

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    const-wide v12, 0x40000000000L

    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    sparse-switch v20, :sswitch_data_0

    .line 526
    .line 527
    .line 528
    packed-switch v20, :pswitch_data_0

    .line 529
    .line 530
    .line 531
    const-wide v3, 0x4000000000L

    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    const-wide v12, 0x2000000000L

    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    packed-switch v20, :pswitch_data_1

    .line 542
    .line 543
    .line 544
    packed-switch v20, :pswitch_data_2

    .line 545
    .line 546
    .line 547
    packed-switch v20, :pswitch_data_3

    .line 548
    .line 549
    .line 550
    const/4 v7, 0x0

    .line 551
    invoke-virtual {v0, v7}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 552
    .line 553
    .line 554
    move-result v3

    .line 555
    goto/16 :goto_17

    .line 556
    .line 557
    :pswitch_0
    invoke-virtual {v0, v12, v13}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    goto/16 :goto_17

    .line 562
    .line 563
    :pswitch_1
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    goto/16 :goto_17

    .line 568
    .line 569
    :pswitch_2
    const-wide v3, 0x10140000000L

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    goto/16 :goto_17

    .line 579
    .line 580
    :pswitch_3
    const-wide/16 v3, 0x40

    .line 581
    .line 582
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    goto/16 :goto_17

    .line 587
    .line 588
    :pswitch_4
    invoke-virtual {v0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    goto/16 :goto_17

    .line 593
    .line 594
    :pswitch_5
    invoke-virtual {v0, v7, v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    goto/16 :goto_17

    .line 599
    .line 600
    :pswitch_6
    const-wide/32 v3, 0xc000

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 604
    .line 605
    .line 606
    move-result v3

    .line 607
    goto/16 :goto_17

    .line 608
    .line 609
    :pswitch_7
    invoke-virtual {v0, v12, v13}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    goto/16 :goto_17

    .line 614
    .line 615
    :pswitch_8
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    goto/16 :goto_17

    .line 620
    .line 621
    :pswitch_9
    const-wide v3, 0x10140003000L

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    goto/16 :goto_17

    .line 631
    .line 632
    :pswitch_a
    const-wide/16 v3, 0x80

    .line 633
    .line 634
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    goto/16 :goto_17

    .line 639
    .line 640
    :pswitch_b
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 641
    .line 642
    .line 643
    move-result v3

    .line 644
    goto/16 :goto_17

    .line 645
    .line 646
    :pswitch_c
    const-wide/16 v3, 0x300

    .line 647
    .line 648
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    goto/16 :goto_17

    .line 653
    .line 654
    :pswitch_d
    invoke-virtual {v0, v14, v15}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 655
    .line 656
    .line 657
    move-result v3

    .line 658
    goto/16 :goto_17

    .line 659
    .line 660
    :pswitch_e
    const-wide/16 v3, 0xc00

    .line 661
    .line 662
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    goto/16 :goto_17

    .line 667
    .line 668
    :sswitch_0
    invoke-virtual {v0, v12, v13}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 669
    .line 670
    .line 671
    move-result v3

    .line 672
    goto/16 :goto_17

    .line 673
    .line 674
    :sswitch_1
    const-wide v3, 0x610000000L

    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 680
    .line 681
    .line 682
    move-result v3

    .line 683
    goto :goto_17

    .line 684
    :sswitch_2
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 685
    .line 686
    .line 687
    move-result v3

    .line 688
    goto :goto_17

    .line 689
    :sswitch_3
    invoke-virtual {v0, v14, v15}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    goto :goto_17

    .line 694
    :sswitch_4
    const-wide v3, 0x880000000L

    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 700
    .line 701
    .line 702
    move-result v3

    .line 703
    goto :goto_17

    .line 704
    :sswitch_5
    invoke-virtual {v0, v12, v13}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    goto :goto_17

    .line 709
    :sswitch_6
    const-wide v3, 0x610000000L

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    goto :goto_17

    .line 719
    :sswitch_7
    const-wide v3, 0x880000000L

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    invoke-virtual {v0, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    goto :goto_17

    .line 729
    :sswitch_8
    const/4 v3, 0x4

    .line 730
    iput v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 731
    .line 732
    const/4 v4, 0x0

    .line 733
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 734
    .line 735
    .line 736
    move-result v3

    .line 737
    goto :goto_17

    .line 738
    :sswitch_9
    const/4 v4, 0x0

    .line 739
    iput v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 740
    .line 741
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 742
    .line 743
    .line 744
    move-result v3

    .line 745
    goto :goto_17

    .line 746
    :sswitch_a
    const/4 v4, 0x0

    .line 747
    const/16 v3, 0x12

    .line 748
    .line 749
    iput v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 750
    .line 751
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 752
    .line 753
    .line 754
    move-result v3

    .line 755
    goto :goto_17

    .line 756
    :sswitch_b
    const/4 v4, 0x0

    .line 757
    const/4 v6, 0x1

    .line 758
    iput v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 759
    .line 760
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    goto :goto_17

    .line 765
    :sswitch_c
    const/4 v4, 0x0

    .line 766
    const/4 v15, 0x2

    .line 767
    iput v15, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 768
    .line 769
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 770
    .line 771
    .line 772
    move-result v3

    .line 773
    goto :goto_17

    .line 774
    :cond_2e
    invoke-virtual {v0, v10, v11}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    goto :goto_17

    .line 779
    :cond_2f
    invoke-virtual {v0, v7, v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    .line 780
    .line 781
    .line 782
    move-result v3

    .line 783
    :goto_17
    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 784
    .line 785
    const v7, 0x7fffffff

    .line 786
    .line 787
    .line 788
    if-eq v4, v7, :cond_39

    .line 789
    .line 790
    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 791
    .line 792
    add-int/lit8 v7, v4, 0x1

    .line 793
    .line 794
    if-ge v7, v3, :cond_30

    .line 795
    .line 796
    sub-int v4, v3, v4

    .line 797
    .line 798
    const/4 v6, 0x1

    .line 799
    sub-int/2addr v4, v6

    .line 800
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->backup(I)V

    .line 801
    .line 802
    .line 803
    :cond_30
    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 804
    .line 805
    shr-int/lit8 v7, v4, 0x6

    .line 806
    .line 807
    sget-object v8, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    .line 808
    .line 809
    aget-wide v9, v8, v7

    .line 810
    .line 811
    and-int/lit8 v8, v4, 0x3f

    .line 812
    .line 813
    shl-long v11, v16, v8

    .line 814
    .line 815
    and-long/2addr v9, v11

    .line 816
    cmp-long v8, v9, v18

    .line 817
    .line 818
    sget-object v9, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    .line 819
    .line 820
    if-eqz v8, :cond_32

    .line 821
    .line 822
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 823
    .line 824
    .line 825
    move-result-object v1

    .line 826
    iget v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 827
    .line 828
    aget v2, v9, v2

    .line 829
    .line 830
    move/from16 v3, v21

    .line 831
    .line 832
    if-eq v2, v3, :cond_31

    .line 833
    .line 834
    iput v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 835
    .line 836
    :cond_31
    return-object v1

    .line 837
    :cond_32
    sget-object v8, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    .line 838
    .line 839
    aget-wide v13, v8, v7

    .line 840
    .line 841
    and-long/2addr v13, v11

    .line 842
    cmp-long v8, v13, v18

    .line 843
    .line 844
    if-eqz v8, :cond_36

    .line 845
    .line 846
    sget-object v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    .line 847
    .line 848
    aget-wide v6, v4, v7

    .line 849
    .line 850
    and-long/2addr v6, v11

    .line 851
    cmp-long v4, v6, v18

    .line 852
    .line 853
    if-eqz v4, :cond_34

    .line 854
    .line 855
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 856
    .line 857
    .line 858
    move-result-object v4

    .line 859
    if-nez v5, :cond_33

    .line 860
    .line 861
    goto :goto_18

    .line 862
    :cond_33
    iput-object v4, v5, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 863
    .line 864
    :goto_18
    move-object v5, v4

    .line 865
    :cond_34
    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 866
    .line 867
    aget v4, v9, v4

    .line 868
    .line 869
    const/4 v6, -0x1

    .line 870
    if-eq v4, v6, :cond_35

    .line 871
    .line 872
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 873
    .line 874
    :cond_35
    move v6, v3

    .line 875
    const/4 v4, 0x0

    .line 876
    goto/16 :goto_0

    .line 877
    .line 878
    :cond_36
    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 879
    .line 880
    iget v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 881
    .line 882
    const/4 v6, 0x1

    .line 883
    add-int/2addr v7, v6

    .line 884
    add-int/2addr v7, v3

    .line 885
    iput v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 886
    .line 887
    packed-switch v4, :pswitch_data_4

    .line 888
    .line 889
    .line 890
    :pswitch_f
    goto :goto_19

    .line 891
    :pswitch_10
    iget-object v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 892
    .line 893
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->GetSuffix(I)[C

    .line 894
    .line 895
    .line 896
    move-result-object v4

    .line 897
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const/4 v4, 0x0

    .line 901
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 902
    .line 903
    sget v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    .line 904
    .line 905
    sub-int/2addr v3, v6

    .line 906
    sput v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    .line 907
    .line 908
    if-nez v3, :cond_37

    .line 909
    .line 910
    iput v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 911
    .line 912
    goto :goto_19

    .line 913
    :pswitch_11
    iget-object v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 914
    .line 915
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->GetSuffix(I)[C

    .line 916
    .line 917
    .line 918
    move-result-object v4

    .line 919
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    const/4 v4, 0x0

    .line 923
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 924
    .line 925
    sget v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    .line 926
    .line 927
    add-int/2addr v3, v6

    .line 928
    sput v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    .line 929
    .line 930
    goto :goto_19

    .line 931
    :pswitch_12
    const/4 v4, 0x0

    .line 932
    iget-object v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 933
    .line 934
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->GetSuffix(I)[C

    .line 935
    .line 936
    .line 937
    move-result-object v7

    .line 938
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 939
    .line 940
    .line 941
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 942
    .line 943
    iget-object v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 944
    .line 945
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 946
    .line 947
    .line 948
    move-result v7

    .line 949
    const/16 v23, 0x2

    .line 950
    .line 951
    add-int/lit8 v7, v7, -0x2

    .line 952
    .line 953
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    goto :goto_19

    .line 957
    :pswitch_13
    const/4 v4, 0x0

    .line 958
    iget-object v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 959
    .line 960
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->GetSuffix(I)[C

    .line 961
    .line 962
    .line 963
    move-result-object v7

    .line 964
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 965
    .line 966
    .line 967
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 968
    .line 969
    const/4 v6, 0x1

    .line 970
    sput v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    .line 971
    .line 972
    goto :goto_19

    .line 973
    :pswitch_14
    const/4 v4, 0x0

    .line 974
    iget-object v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 975
    .line 976
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->GetSuffix(I)[C

    .line 977
    .line 978
    .line 979
    move-result-object v7

    .line 980
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    .line 984
    .line 985
    iget-object v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 986
    .line 987
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 988
    .line 989
    .line 990
    move-result v4

    .line 991
    const/16 v23, 0x2

    .line 992
    .line 993
    add-int/lit8 v4, v4, -0x2

    .line 994
    .line 995
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    :cond_37
    :goto_19
    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 999
    .line 1000
    aget v3, v9, v3

    .line 1001
    .line 1002
    const/4 v4, -0x1

    .line 1003
    if-eq v3, v4, :cond_38

    .line 1004
    .line 1005
    iput v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    .line 1006
    .line 1007
    :cond_38
    const v7, 0x7fffffff

    .line 1008
    .line 1009
    .line 1010
    iput v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 1011
    .line 1012
    :try_start_4
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    iput-char v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1017
    .line 1018
    move v7, v4

    .line 1019
    const/4 v4, 0x0

    .line 1020
    const/4 v6, 0x0

    .line 1021
    goto/16 :goto_1

    .line 1022
    .line 1023
    :catch_2
    const/4 v4, 0x0

    .line 1024
    goto :goto_1a

    .line 1025
    :cond_39
    move v4, v3

    .line 1026
    :goto_1a
    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 1027
    .line 1028
    iget v5, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 1029
    .line 1030
    aget v3, v3, v5

    .line 1031
    .line 1032
    iget-object v7, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 1033
    .line 1034
    check-cast v7, [I

    .line 1035
    .line 1036
    aget v5, v7, v5

    .line 1037
    .line 1038
    :try_start_5
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1039
    .line 1040
    .line 1041
    const/4 v6, 0x1

    .line 1042
    :try_start_6
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->backup(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1043
    .line 1044
    .line 1045
    const/4 v7, 0x0

    .line 1046
    const/16 v22, 0x0

    .line 1047
    .line 1048
    goto :goto_1e

    .line 1049
    :catch_3
    const/4 v6, 0x1

    .line 1050
    :catch_4
    if-gt v4, v6, :cond_3a

    .line 1051
    .line 1052
    move-object v7, v1

    .line 1053
    goto :goto_1b

    .line 1054
    :cond_3a
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->GetImage()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v7

    .line 1058
    :goto_1b
    iget-char v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 1059
    .line 1060
    const/16 v9, 0xa

    .line 1061
    .line 1062
    if-eq v8, v9, :cond_3c

    .line 1063
    .line 1064
    const/16 v9, 0xd

    .line 1065
    .line 1066
    if-ne v8, v9, :cond_3b

    .line 1067
    .line 1068
    goto :goto_1d

    .line 1069
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    .line 1070
    .line 1071
    :goto_1c
    const/16 v22, 0x1

    .line 1072
    .line 1073
    goto :goto_1e

    .line 1074
    :cond_3c
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    .line 1075
    .line 1076
    const/4 v5, 0x0

    .line 1077
    goto :goto_1c

    .line 1078
    :goto_1e
    if-nez v22, :cond_3e

    .line 1079
    .line 1080
    const/4 v6, 0x1

    .line 1081
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->backup(I)V

    .line 1082
    .line 1083
    .line 1084
    if-gt v4, v6, :cond_3d

    .line 1085
    .line 1086
    goto :goto_1f

    .line 1087
    :cond_3d
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->GetImage()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v1

    .line 1091
    :goto_1f
    move-object v7, v1

    .line 1092
    :cond_3e
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;

    .line 1093
    .line 1094
    iget-char v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 1095
    .line 1096
    const-string v2, ", column "

    .line 1097
    .line 1098
    const-string v4, ".  Encountered: "

    .line 1099
    .line 1100
    const-string v6, "Lexical error at line "

    .line 1101
    .line 1102
    invoke-static {v6, v3, v2, v5, v4}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v2

    .line 1106
    const-string v3, "\""

    .line 1107
    .line 1108
    if-eqz v22, :cond_3f

    .line 1109
    .line 1110
    const-string v0, "<EOF> "

    .line 1111
    .line 1112
    goto :goto_20

    .line 1113
    :cond_3f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1116
    .line 1117
    .line 1118
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v5

    .line 1122
    invoke-static {v5}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v5

    .line 1126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    const-string v5, "\" ("

    .line 1130
    .line 1131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1135
    .line 1136
    .line 1137
    const-string v0, "), "

    .line 1138
    .line 1139
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    :goto_20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    const-string v0, "after : \""

    .line 1150
    .line 1151
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    invoke-static {v7}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->addEscapes(Ljava/lang/String;)Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v0

    .line 1158
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 1169
    .line 1170
    .line 1171
    throw v1

    .line 1172
    :catch_5
    const/4 v4, 0x0

    .line 1173
    :catch_6
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 1174
    .line 1175
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    return-object v0

    .line 1180
    nop

    .line 1181
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0xd -> :sswitch_b
        0x28 -> :sswitch_a
        0x2c -> :sswitch_9
        0x3a -> :sswitch_8
        0x41 -> :sswitch_7
        0x4a -> :sswitch_6
        0x57 -> :sswitch_5
        0x61 -> :sswitch_4
        0x64 -> :sswitch_3
        0x66 -> :sswitch_2
        0x6a -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch

    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    :pswitch_data_2
    .packed-switch 0x53
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    :pswitch_data_3
    .packed-switch 0x6d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    :pswitch_data_4
    .packed-switch 0x14
        :pswitch_14
        :pswitch_13
        :pswitch_f
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final jjCheckNAdd(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    .line 2
    .line 3
    aget v1, v0, p1

    .line 4
    .line 5
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 10
    .line 11
    add-int/lit8 v3, v1, 0x1

    .line 12
    .line 13
    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 14
    .line 15
    iget-object p0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

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

.method public final jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .locals 6

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 4
    .line 5
    aget-object v0, v0, v1

    .line 6
    .line 7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->GetImage()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 16
    .line 17
    iget v3, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 18
    .line 19
    aget v4, v2, v3

    .line 20
    .line 21
    iget-object v5, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v5, [I

    .line 24
    .line 25
    aget v3, v5, v3

    .line 26
    .line 27
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 28
    .line 29
    aget v2, v2, v1

    .line 30
    .line 31
    aget v1, v5, v1

    .line 32
    .line 33
    iget p0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 34
    .line 35
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput p0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    .line 41
    .line 42
    iput-object v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 43
    .line 44
    iput v4, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    .line 45
    .line 46
    iput v3, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    .line 47
    .line 48
    return-object v1
.end method

.method public final jjMoveNfa_0(I)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 4
    .line 5
    iget v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    add-int/lit8 v4, p1, 0x1

    .line 9
    .line 10
    iget-object v5, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 11
    .line 12
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->backup(I)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    iput-char v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    .line 21
    const/4 v6, 0x4

    .line 22
    iput v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 23
    .line 24
    iget-object v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    aput v7, v6, v7

    .line 28
    .line 29
    const v8, 0x7fffffff

    .line 30
    .line 31
    .line 32
    move v10, v3

    .line 33
    move v9, v7

    .line 34
    move v11, v8

    .line 35
    :goto_0
    iget v12, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 36
    .line 37
    add-int/2addr v12, v3

    .line 38
    iput v12, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    .line 39
    .line 40
    if-ne v12, v8, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-char v12, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    .line 46
    .line 47
    const/16 v13, 0x40

    .line 48
    .line 49
    const-wide/16 v14, 0x1

    .line 50
    .line 51
    const-wide/16 v16, 0x0

    .line 52
    .line 53
    if-ge v12, v13, :cond_c

    .line 54
    .line 55
    shl-long v18, v14, v12

    .line 56
    .line 57
    :goto_1
    add-int/lit8 v10, v10, -0x1

    .line 58
    .line 59
    aget v12, v6, v10

    .line 60
    .line 61
    const-wide/high16 v20, 0x3ff000000000000L

    .line 62
    .line 63
    const/16 v15, 0x11

    .line 64
    .line 65
    const/16 v3, 0x1b

    .line 66
    .line 67
    const-wide v22, 0x100000200L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/4 v13, 0x3

    .line 73
    const/4 v14, 0x2

    .line 74
    if-eqz v12, :cond_5

    .line 75
    .line 76
    if-eq v12, v14, :cond_3

    .line 77
    .line 78
    if-eq v12, v13, :cond_1

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_1
    and-long v14, v18, v20

    .line 82
    .line 83
    cmp-long v12, v14, v16

    .line 84
    .line 85
    if-nez v12, :cond_2

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_2
    invoke-virtual {v0, v13}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 89
    .line 90
    .line 91
    :goto_2
    move v11, v3

    .line 92
    goto :goto_3

    .line 93
    :cond_3
    and-long v12, v18, v22

    .line 94
    .line 95
    cmp-long v3, v12, v16

    .line 96
    .line 97
    if-nez v3, :cond_4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    invoke-virtual {v0, v14}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 101
    .line 102
    .line 103
    move v11, v15

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    and-long v20, v18, v20

    .line 106
    .line 107
    cmp-long v12, v20, v16

    .line 108
    .line 109
    if-eqz v12, :cond_7

    .line 110
    .line 111
    if-le v11, v3, :cond_6

    .line 112
    .line 113
    move v11, v3

    .line 114
    :cond_6
    invoke-virtual {v0, v13}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_7
    and-long v12, v18, v22

    .line 119
    .line 120
    cmp-long v3, v12, v16

    .line 121
    .line 122
    if-eqz v3, :cond_9

    .line 123
    .line 124
    if-le v11, v15, :cond_8

    .line 125
    .line 126
    move v11, v15

    .line 127
    :cond_8
    invoke-virtual {v0, v14}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_9
    const-wide v12, 0x280000000000L

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    and-long v12, v18, v12

    .line 137
    .line 138
    cmp-long v3, v12, v16

    .line 139
    .line 140
    if-eqz v3, :cond_a

    .line 141
    .line 142
    const/4 v3, 0x5

    .line 143
    if-le v11, v3, :cond_a

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_a
    :goto_3
    if-ne v10, v7, :cond_b

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_b
    const/4 v3, 0x1

    .line 150
    goto :goto_1

    .line 151
    :cond_c
    const/16 v3, 0x80

    .line 152
    .line 153
    if-ge v12, v3, :cond_10

    .line 154
    .line 155
    and-int/lit8 v3, v12, 0x3f

    .line 156
    .line 157
    shl-long v12, v14, v3

    .line 158
    .line 159
    :cond_d
    add-int/lit8 v10, v10, -0x1

    .line 160
    .line 161
    aget v3, v6, v10

    .line 162
    .line 163
    if-eqz v3, :cond_e

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_e
    const-wide v14, 0x7fffbfe07fffbfeL

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    and-long/2addr v14, v12

    .line 172
    cmp-long v3, v14, v16

    .line 173
    .line 174
    if-eqz v3, :cond_f

    .line 175
    .line 176
    const/16 v3, 0x10

    .line 177
    .line 178
    move v11, v3

    .line 179
    :cond_f
    :goto_4
    if-ne v10, v7, :cond_d

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_10
    add-int/lit8 v10, v10, -0x1

    .line 183
    .line 184
    aget v3, v6, v10

    .line 185
    .line 186
    if-ne v10, v7, :cond_10

    .line 187
    .line 188
    :goto_5
    if-eq v11, v8, :cond_11

    .line 189
    .line 190
    iput v11, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 191
    .line 192
    iput v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 193
    .line 194
    move v11, v8

    .line 195
    :cond_11
    add-int/lit8 v9, v9, 0x1

    .line 196
    .line 197
    iget v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 198
    .line 199
    iput v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    .line 200
    .line 201
    rsub-int/lit8 v7, v7, 0x4

    .line 202
    .line 203
    if-ne v10, v7, :cond_12

    .line 204
    .line 205
    goto :goto_6

    .line 206
    :cond_12
    :try_start_1
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    iput-char v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    .line 212
    const/4 v3, 0x1

    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :catch_0
    :goto_6
    iget v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 216
    .line 217
    if-le v3, v2, :cond_13

    .line 218
    .line 219
    return v9

    .line 220
    :cond_13
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-ge v9, v3, :cond_14

    .line 225
    .line 226
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    .line 227
    .line 228
    .line 229
    move-result v4

    .line 230
    sub-int v4, v3, v4

    .line 231
    .line 232
    :goto_7
    add-int/lit8 v6, v4, -0x1

    .line 233
    .line 234
    if-lez v4, :cond_14

    .line 235
    .line 236
    :try_start_2
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    iput-char v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    .line 242
    move v4, v6

    .line 243
    goto :goto_7

    .line 244
    :catch_1
    new-instance v0, Ljava/lang/Error;

    .line 245
    .line 246
    const-string v1, "Internal Error : Please send a bug report."

    .line 247
    .line 248
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw v0

    .line 252
    :cond_14
    iget v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 253
    .line 254
    if-ge v4, v2, :cond_15

    .line 255
    .line 256
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 257
    .line 258
    iput v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 259
    .line 260
    goto :goto_8

    .line 261
    :cond_15
    if-ne v4, v2, :cond_16

    .line 262
    .line 263
    iget v2, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 264
    .line 265
    if-le v2, v1, :cond_16

    .line 266
    .line 267
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 268
    .line 269
    :cond_16
    :goto_8
    return v3

    .line 270
    :catch_2
    new-instance v0, Ljava/lang/Error;

    .line 271
    .line 272
    const-string v1, "Internal Error"

    .line 273
    .line 274
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v0
.end method

.method public final jjMoveStringLiteralDfa1_0(J)I
    .locals 15

    .line 1
    move-wide/from16 v1, p1

    .line 2
    .line 3
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 4
    .line 5
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iput-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    const/16 v4, 0x41

    .line 12
    .line 13
    const-wide v5, 0x200150000000L

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eq v3, v4, :cond_d

    .line 19
    .line 20
    const/16 v4, 0x48

    .line 21
    .line 22
    const-wide v7, 0x80000000000L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    if-eq v3, v4, :cond_c

    .line 28
    .line 29
    const/16 v4, 0x4d

    .line 30
    .line 31
    if-eq v3, v4, :cond_b

    .line 32
    .line 33
    const/16 v4, 0x61

    .line 34
    .line 35
    if-eq v3, v4, :cond_a

    .line 36
    .line 37
    const/16 v4, 0x63

    .line 38
    .line 39
    const-wide v5, 0x2000000000L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    if-eq v3, v4, :cond_9

    .line 45
    .line 46
    const/16 v4, 0x65

    .line 47
    .line 48
    const-wide v9, 0x49020000000L

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    if-eq v3, v4, :cond_8

    .line 54
    .line 55
    const/16 v4, 0x68

    .line 56
    .line 57
    if-eq v3, v4, :cond_7

    .line 58
    .line 59
    const/16 v4, 0x72

    .line 60
    .line 61
    const-wide v7, 0x100000000000L

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    if-eq v3, v4, :cond_6

    .line 67
    .line 68
    const/16 v4, 0x75

    .line 69
    .line 70
    const-wide v11, 0x420e00000000L

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    if-eq v3, v4, :cond_5

    .line 76
    .line 77
    const/16 v4, 0x4f

    .line 78
    .line 79
    if-eq v3, v4, :cond_4

    .line 80
    .line 81
    const/16 v4, 0x50

    .line 82
    .line 83
    const-wide v13, 0x80000000L

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    if-eq v3, v4, :cond_3

    .line 89
    .line 90
    const/16 v4, 0x6f

    .line 91
    .line 92
    if-eq v3, v4, :cond_2

    .line 93
    .line 94
    const/16 v4, 0x70

    .line 95
    .line 96
    if-eq v3, v4, :cond_1

    .line 97
    .line 98
    packed-switch v3, :pswitch_data_0

    .line 99
    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    packed-switch v3, :pswitch_data_1

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_0
    invoke-virtual {p0, v1, v2, v11, v12}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    return v0

    .line 111
    :pswitch_1
    const-wide/16 v5, 0x40

    .line 112
    .line 113
    and-long/2addr v1, v5

    .line 114
    const-wide/16 v5, 0x0

    .line 115
    .line 116
    cmp-long v1, v1, v5

    .line 117
    .line 118
    if-eqz v1, :cond_0

    .line 119
    .line 120
    const/4 v1, 0x6

    .line 121
    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 122
    .line 123
    iput v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 124
    .line 125
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    return v0

    .line 130
    :pswitch_2
    const-wide/16 v3, 0x5500

    .line 131
    .line 132
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    return v0

    .line 137
    :pswitch_3
    invoke-virtual {p0, v1, v2, v7, v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    return v0

    .line 142
    :pswitch_4
    invoke-virtual {p0, v1, v2, v9, v10}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    return v0

    .line 147
    :pswitch_5
    const-wide/32 v3, 0xaa00

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    return v0

    .line 155
    :pswitch_6
    invoke-virtual {p0, v1, v2, v5, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    return v0

    .line 160
    :cond_1
    invoke-virtual {p0, v1, v2, v13, v14}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    return v0

    .line 165
    :cond_2
    const-wide v3, 0x14000000000L

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    return v0

    .line 175
    :cond_3
    invoke-virtual {p0, v1, v2, v13, v14}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    return v0

    .line 180
    :cond_4
    const-wide v3, 0x14000000000L

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    return v0

    .line 190
    :cond_5
    invoke-virtual {p0, v1, v2, v11, v12}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    return v0

    .line 195
    :cond_6
    invoke-virtual {p0, v1, v2, v7, v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    return v0

    .line 200
    :cond_7
    invoke-virtual {p0, v1, v2, v7, v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    return v0

    .line 205
    :cond_8
    invoke-virtual {p0, v1, v2, v9, v10}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    return v0

    .line 210
    :cond_9
    invoke-virtual {p0, v1, v2, v5, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    return v0

    .line 215
    :cond_a
    invoke-virtual {p0, v1, v2, v5, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    return v0

    .line 220
    :cond_b
    const-wide/16 v3, 0x80

    .line 221
    .line 222
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    return v0

    .line 227
    :cond_c
    invoke-virtual {p0, v1, v2, v7, v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    return v0

    .line 232
    :cond_d
    invoke-virtual {p0, v1, v2, v5, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    return v0

    .line 237
    :catch_0
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    return v0

    .line 243
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final jjMoveStringLiteralDfa2_0(JJ)I
    .locals 52

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    and-long v1, p3, p1

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v5, v1, v3

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :cond_0
    :try_start_0
    iget-object v5, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 18
    .line 19
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->readChar()C

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    iput-char v5, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    const-wide v16, 0x20000000000L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    move-wide/from16 p1, v3

    .line 31
    .line 32
    const-wide v18, 0x800000000L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v20, 0x100000000000L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const-wide/32 p3, 0x20000000

    .line 43
    .line 44
    .line 45
    const-wide v22, 0x400000000L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide v24, 0x400000000000L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    const-wide v26, 0x8000000000L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    const/16 v10, 0x28

    .line 61
    .line 62
    const-wide v28, 0x10000000000L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const/16 v11, 0x21

    .line 68
    .line 69
    const-wide v30, 0x200000000L

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const-wide v32, 0x40000000000L

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    const/16 v13, 0x1c

    .line 80
    .line 81
    const-wide/32 v34, 0x10000000

    .line 82
    .line 83
    .line 84
    const/16 v14, 0x24

    .line 85
    .line 86
    const-wide v36, 0x1000000000L

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    const/16 v6, 0x1f

    .line 92
    .line 93
    const-wide v38, 0x80000000L

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    const/16 v9, 0x1e

    .line 99
    .line 100
    const-wide/32 v40, 0x40000000

    .line 101
    .line 102
    .line 103
    const/16 v12, 0x2d

    .line 104
    .line 105
    const-wide v42, 0x200000000000L

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    const/16 v15, 0x25

    .line 111
    .line 112
    const-wide v44, 0x2000000000L

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    const/16 v3, 0x2b

    .line 118
    .line 119
    const-wide v46, 0x80000000000L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    const/16 v4, 0x26

    .line 125
    .line 126
    const-wide v48, 0x4000000000L

    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    const/16 v7, 0x20

    .line 132
    .line 133
    const-wide v50, 0x100000000L

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    const/4 v8, 0x2

    .line 139
    sparse-switch v5, :sswitch_data_0

    .line 140
    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :sswitch_0
    and-long v1, v1, v50

    .line 145
    .line 146
    cmp-long v1, v1, p1

    .line 147
    .line 148
    if-eqz v1, :cond_14

    .line 149
    .line 150
    iput v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 151
    .line 152
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :sswitch_1
    and-long v1, v1, v48

    .line 157
    .line 158
    cmp-long v1, v1, p1

    .line 159
    .line 160
    if-eqz v1, :cond_14

    .line 161
    .line 162
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 163
    .line 164
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :sswitch_2
    and-long v1, v1, v46

    .line 169
    .line 170
    cmp-long v1, v1, p1

    .line 171
    .line 172
    if-eqz v1, :cond_14

    .line 173
    .line 174
    iput v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 175
    .line 176
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :sswitch_3
    and-long v3, v1, v44

    .line 181
    .line 182
    cmp-long v3, v3, p1

    .line 183
    .line 184
    if-eqz v3, :cond_1

    .line 185
    .line 186
    iput v15, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 187
    .line 188
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_1
    and-long v1, v1, v42

    .line 193
    .line 194
    cmp-long v1, v1, p1

    .line 195
    .line 196
    if-eqz v1, :cond_14

    .line 197
    .line 198
    iput v12, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 199
    .line 200
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :sswitch_4
    and-long v3, v1, v40

    .line 205
    .line 206
    cmp-long v3, v3, p1

    .line 207
    .line 208
    if-eqz v3, :cond_2

    .line 209
    .line 210
    iput v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 211
    .line 212
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 213
    .line 214
    goto/16 :goto_0

    .line 215
    .line 216
    :cond_2
    and-long v1, v1, v38

    .line 217
    .line 218
    cmp-long v1, v1, p1

    .line 219
    .line 220
    if-eqz v1, :cond_14

    .line 221
    .line 222
    iput v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 223
    .line 224
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :sswitch_5
    and-long v1, v1, v36

    .line 229
    .line 230
    cmp-long v1, v1, p1

    .line 231
    .line 232
    if-eqz v1, :cond_14

    .line 233
    .line 234
    iput v14, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 235
    .line 236
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :sswitch_6
    and-long v3, v1, v34

    .line 241
    .line 242
    cmp-long v3, v3, p1

    .line 243
    .line 244
    if-eqz v3, :cond_3

    .line 245
    .line 246
    iput v13, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 247
    .line 248
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_3
    and-long v3, v1, v30

    .line 253
    .line 254
    cmp-long v3, v3, p1

    .line 255
    .line 256
    if-eqz v3, :cond_4

    .line 257
    .line 258
    iput v11, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 259
    .line 260
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_4
    and-long v3, v1, v28

    .line 265
    .line 266
    cmp-long v3, v3, p1

    .line 267
    .line 268
    if-eqz v3, :cond_5

    .line 269
    .line 270
    iput v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 271
    .line 272
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_5
    and-long v1, v1, v24

    .line 277
    .line 278
    cmp-long v1, v1, p1

    .line 279
    .line 280
    if-eqz v1, :cond_14

    .line 281
    .line 282
    const/16 v1, 0x2e

    .line 283
    .line 284
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 285
    .line 286
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :sswitch_7
    and-long v1, v1, v22

    .line 291
    .line 292
    cmp-long v1, v1, p1

    .line 293
    .line 294
    if-eqz v1, :cond_14

    .line 295
    .line 296
    const/16 v1, 0x22

    .line 297
    .line 298
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 299
    .line 300
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :sswitch_8
    and-long v1, v1, v20

    .line 305
    .line 306
    cmp-long v1, v1, p1

    .line 307
    .line 308
    if-eqz v1, :cond_14

    .line 309
    .line 310
    const/16 v1, 0x2c

    .line 311
    .line 312
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 313
    .line 314
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :sswitch_9
    and-long v1, v1, v18

    .line 319
    .line 320
    cmp-long v1, v1, p1

    .line 321
    .line 322
    if-eqz v1, :cond_14

    .line 323
    .line 324
    const/16 v1, 0x23

    .line 325
    .line 326
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 327
    .line 328
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 329
    .line 330
    goto/16 :goto_0

    .line 331
    .line 332
    :sswitch_a
    and-long v1, v1, v16

    .line 333
    .line 334
    cmp-long v1, v1, p1

    .line 335
    .line 336
    if-eqz v1, :cond_14

    .line 337
    .line 338
    const/16 v1, 0x29

    .line 339
    .line 340
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 341
    .line 342
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :sswitch_b
    and-long v1, v1, v32

    .line 347
    .line 348
    cmp-long v1, v1, p1

    .line 349
    .line 350
    if-eqz v1, :cond_14

    .line 351
    .line 352
    const/16 v1, 0x2a

    .line 353
    .line 354
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 355
    .line 356
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :sswitch_c
    and-long v1, v1, v26

    .line 361
    .line 362
    cmp-long v1, v1, p1

    .line 363
    .line 364
    if-eqz v1, :cond_14

    .line 365
    .line 366
    const/16 v1, 0x27

    .line 367
    .line 368
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 369
    .line 370
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 371
    .line 372
    goto/16 :goto_0

    .line 373
    .line 374
    :sswitch_d
    and-long v1, v1, p3

    .line 375
    .line 376
    cmp-long v1, v1, p1

    .line 377
    .line 378
    if-eqz v1, :cond_14

    .line 379
    .line 380
    const/16 v1, 0x1d

    .line 381
    .line 382
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 383
    .line 384
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 385
    .line 386
    goto/16 :goto_0

    .line 387
    .line 388
    :sswitch_e
    and-long v1, v1, v50

    .line 389
    .line 390
    cmp-long v1, v1, p1

    .line 391
    .line 392
    if-eqz v1, :cond_14

    .line 393
    .line 394
    iput v7, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 395
    .line 396
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :sswitch_f
    and-long v1, v1, v48

    .line 401
    .line 402
    cmp-long v1, v1, p1

    .line 403
    .line 404
    if-eqz v1, :cond_14

    .line 405
    .line 406
    iput v4, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 407
    .line 408
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 409
    .line 410
    goto/16 :goto_0

    .line 411
    .line 412
    :sswitch_10
    and-long v1, v1, v46

    .line 413
    .line 414
    cmp-long v1, v1, p1

    .line 415
    .line 416
    if-eqz v1, :cond_14

    .line 417
    .line 418
    iput v3, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 419
    .line 420
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 421
    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :sswitch_11
    const-wide/16 v3, 0x80

    .line 425
    .line 426
    and-long/2addr v3, v1

    .line 427
    cmp-long v3, v3, p1

    .line 428
    .line 429
    if-eqz v3, :cond_6

    .line 430
    .line 431
    const/4 v1, 0x7

    .line 432
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 433
    .line 434
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 435
    .line 436
    goto/16 :goto_0

    .line 437
    .line 438
    :cond_6
    const-wide/16 v3, 0x100

    .line 439
    .line 440
    and-long/2addr v3, v1

    .line 441
    cmp-long v3, v3, p1

    .line 442
    .line 443
    if-eqz v3, :cond_7

    .line 444
    .line 445
    const/16 v1, 0x8

    .line 446
    .line 447
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 448
    .line 449
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_7
    const-wide/16 v3, 0x200

    .line 454
    .line 455
    and-long/2addr v3, v1

    .line 456
    cmp-long v3, v3, p1

    .line 457
    .line 458
    if-eqz v3, :cond_8

    .line 459
    .line 460
    const/16 v1, 0x9

    .line 461
    .line 462
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 463
    .line 464
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 465
    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :cond_8
    const-wide/16 v3, 0x400

    .line 469
    .line 470
    and-long/2addr v3, v1

    .line 471
    cmp-long v3, v3, p1

    .line 472
    .line 473
    if-eqz v3, :cond_9

    .line 474
    .line 475
    const/16 v1, 0xa

    .line 476
    .line 477
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 478
    .line 479
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 480
    .line 481
    goto/16 :goto_0

    .line 482
    .line 483
    :cond_9
    const-wide/16 v3, 0x800

    .line 484
    .line 485
    and-long/2addr v3, v1

    .line 486
    cmp-long v3, v3, p1

    .line 487
    .line 488
    if-eqz v3, :cond_a

    .line 489
    .line 490
    const/16 v1, 0xb

    .line 491
    .line 492
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 493
    .line 494
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 495
    .line 496
    goto/16 :goto_0

    .line 497
    .line 498
    :cond_a
    const-wide/16 v3, 0x1000

    .line 499
    .line 500
    and-long/2addr v3, v1

    .line 501
    cmp-long v3, v3, p1

    .line 502
    .line 503
    if-eqz v3, :cond_b

    .line 504
    .line 505
    const/16 v1, 0xc

    .line 506
    .line 507
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 508
    .line 509
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 510
    .line 511
    goto/16 :goto_0

    .line 512
    .line 513
    :cond_b
    const-wide/16 v3, 0x2000

    .line 514
    .line 515
    and-long/2addr v3, v1

    .line 516
    cmp-long v3, v3, p1

    .line 517
    .line 518
    if-eqz v3, :cond_c

    .line 519
    .line 520
    const/16 v1, 0xd

    .line 521
    .line 522
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 523
    .line 524
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 525
    .line 526
    goto/16 :goto_0

    .line 527
    .line 528
    :cond_c
    const-wide/16 v3, 0x4000

    .line 529
    .line 530
    and-long/2addr v3, v1

    .line 531
    cmp-long v3, v3, p1

    .line 532
    .line 533
    if-eqz v3, :cond_d

    .line 534
    .line 535
    const/16 v1, 0xe

    .line 536
    .line 537
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 538
    .line 539
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 540
    .line 541
    goto/16 :goto_0

    .line 542
    .line 543
    :cond_d
    const-wide/32 v3, 0x8000

    .line 544
    .line 545
    .line 546
    and-long/2addr v3, v1

    .line 547
    cmp-long v3, v3, p1

    .line 548
    .line 549
    if-eqz v3, :cond_e

    .line 550
    .line 551
    const/16 v1, 0xf

    .line 552
    .line 553
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 554
    .line 555
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 556
    .line 557
    goto/16 :goto_0

    .line 558
    .line 559
    :cond_e
    and-long v3, v1, v44

    .line 560
    .line 561
    cmp-long v3, v3, p1

    .line 562
    .line 563
    if-eqz v3, :cond_f

    .line 564
    .line 565
    iput v15, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 566
    .line 567
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 568
    .line 569
    goto/16 :goto_0

    .line 570
    .line 571
    :cond_f
    and-long v1, v1, v42

    .line 572
    .line 573
    cmp-long v1, v1, p1

    .line 574
    .line 575
    if-eqz v1, :cond_14

    .line 576
    .line 577
    iput v12, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 578
    .line 579
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 580
    .line 581
    goto/16 :goto_0

    .line 582
    .line 583
    :sswitch_12
    and-long v3, v1, v40

    .line 584
    .line 585
    cmp-long v3, v3, p1

    .line 586
    .line 587
    if-eqz v3, :cond_10

    .line 588
    .line 589
    iput v9, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 590
    .line 591
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 592
    .line 593
    goto/16 :goto_0

    .line 594
    .line 595
    :cond_10
    and-long v1, v1, v38

    .line 596
    .line 597
    cmp-long v1, v1, p1

    .line 598
    .line 599
    if-eqz v1, :cond_14

    .line 600
    .line 601
    iput v6, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 602
    .line 603
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 604
    .line 605
    goto/16 :goto_0

    .line 606
    .line 607
    :sswitch_13
    and-long v1, v1, v36

    .line 608
    .line 609
    cmp-long v1, v1, p1

    .line 610
    .line 611
    if-eqz v1, :cond_14

    .line 612
    .line 613
    iput v14, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 614
    .line 615
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 616
    .line 617
    goto/16 :goto_0

    .line 618
    .line 619
    :sswitch_14
    and-long v3, v1, v34

    .line 620
    .line 621
    cmp-long v3, v3, p1

    .line 622
    .line 623
    if-eqz v3, :cond_11

    .line 624
    .line 625
    iput v13, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 626
    .line 627
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 628
    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :cond_11
    and-long v3, v1, v30

    .line 632
    .line 633
    cmp-long v3, v3, p1

    .line 634
    .line 635
    if-eqz v3, :cond_12

    .line 636
    .line 637
    iput v11, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 638
    .line 639
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 640
    .line 641
    goto/16 :goto_0

    .line 642
    .line 643
    :cond_12
    and-long v3, v1, v28

    .line 644
    .line 645
    cmp-long v3, v3, p1

    .line 646
    .line 647
    if-eqz v3, :cond_13

    .line 648
    .line 649
    iput v10, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 650
    .line 651
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 652
    .line 653
    goto/16 :goto_0

    .line 654
    .line 655
    :cond_13
    and-long v1, v1, v24

    .line 656
    .line 657
    cmp-long v1, v1, p1

    .line 658
    .line 659
    if-eqz v1, :cond_14

    .line 660
    .line 661
    const/16 v1, 0x2e

    .line 662
    .line 663
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 664
    .line 665
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 666
    .line 667
    goto :goto_0

    .line 668
    :sswitch_15
    and-long v1, v1, v22

    .line 669
    .line 670
    cmp-long v1, v1, p1

    .line 671
    .line 672
    if-eqz v1, :cond_14

    .line 673
    .line 674
    const/16 v1, 0x22

    .line 675
    .line 676
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 677
    .line 678
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 679
    .line 680
    goto :goto_0

    .line 681
    :sswitch_16
    and-long v1, v1, v20

    .line 682
    .line 683
    cmp-long v1, v1, p1

    .line 684
    .line 685
    if-eqz v1, :cond_14

    .line 686
    .line 687
    const/16 v1, 0x2c

    .line 688
    .line 689
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 690
    .line 691
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 692
    .line 693
    goto :goto_0

    .line 694
    :sswitch_17
    and-long v1, v1, v18

    .line 695
    .line 696
    cmp-long v1, v1, p1

    .line 697
    .line 698
    if-eqz v1, :cond_14

    .line 699
    .line 700
    const/16 v1, 0x23

    .line 701
    .line 702
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 703
    .line 704
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 705
    .line 706
    goto :goto_0

    .line 707
    :sswitch_18
    and-long v1, v1, v16

    .line 708
    .line 709
    cmp-long v1, v1, p1

    .line 710
    .line 711
    if-eqz v1, :cond_14

    .line 712
    .line 713
    const/16 v1, 0x29

    .line 714
    .line 715
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 716
    .line 717
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 718
    .line 719
    goto :goto_0

    .line 720
    :sswitch_19
    and-long v1, v1, v32

    .line 721
    .line 722
    cmp-long v1, v1, p1

    .line 723
    .line 724
    if-eqz v1, :cond_14

    .line 725
    .line 726
    const/16 v1, 0x2a

    .line 727
    .line 728
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 729
    .line 730
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 731
    .line 732
    goto :goto_0

    .line 733
    :sswitch_1a
    and-long v1, v1, v26

    .line 734
    .line 735
    cmp-long v1, v1, p1

    .line 736
    .line 737
    if-eqz v1, :cond_14

    .line 738
    .line 739
    const/16 v1, 0x27

    .line 740
    .line 741
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 742
    .line 743
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 744
    .line 745
    goto :goto_0

    .line 746
    :sswitch_1b
    and-long v1, v1, p3

    .line 747
    .line 748
    cmp-long v1, v1, p1

    .line 749
    .line 750
    if-eqz v1, :cond_14

    .line 751
    .line 752
    const/16 v1, 0x1d

    .line 753
    .line 754
    iput v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    .line 755
    .line 756
    iput v8, v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    .line 757
    .line 758
    :cond_14
    :goto_0
    invoke-virtual {v0, v8}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 759
    .line 760
    .line 761
    move-result v0

    .line 762
    return v0

    .line 763
    :catch_0
    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(I)I

    .line 764
    .line 765
    .line 766
    move-result v0

    .line 767
    return v0

    .line 768
    nop

    .line 769
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1b
        0x43 -> :sswitch_1a
        0x44 -> :sswitch_19
        0x45 -> :sswitch_18
        0x47 -> :sswitch_17
        0x49 -> :sswitch_16
        0x4c -> :sswitch_15
        0x4e -> :sswitch_14
        0x50 -> :sswitch_13
        0x52 -> :sswitch_12
        0x54 -> :sswitch_11
        0x55 -> :sswitch_10
        0x56 -> :sswitch_f
        0x59 -> :sswitch_e
        0x62 -> :sswitch_d
        0x63 -> :sswitch_c
        0x64 -> :sswitch_b
        0x65 -> :sswitch_a
        0x67 -> :sswitch_9
        0x69 -> :sswitch_8
        0x6c -> :sswitch_7
        0x6e -> :sswitch_6
        0x70 -> :sswitch_5
        0x72 -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_2
        0x76 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method
