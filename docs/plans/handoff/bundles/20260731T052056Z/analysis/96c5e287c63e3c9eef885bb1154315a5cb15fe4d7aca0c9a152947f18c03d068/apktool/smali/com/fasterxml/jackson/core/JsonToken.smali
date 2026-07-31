.class public final enum Lcom/fasterxml/jackson/core/JsonToken;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

.field public static final enum VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;


# instance fields
.field final _id:I

.field final _isBoolean:Z

.field final _isNumber:Z

.field final _isScalar:Z

.field final _isStructEnd:Z

.field final _isStructStart:Z

.field final _serialized:Ljava/lang/String;

.field final _serializedBytes:[B

.field final _serializedChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/JsonToken;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "NOT_AVAILABLE"

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v2, v1, v3, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->NOT_AVAILABLE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 12
    .line 13
    new-instance v1, Lcom/fasterxml/jackson/core/JsonToken;

    .line 14
    .line 15
    const-string/jumbo v3, "{"

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    const-string v6, "START_OBJECT"

    .line 20
    .line 21
    invoke-direct {v1, v5, v5, v6, v3}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sput-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 25
    .line 26
    new-instance v3, Lcom/fasterxml/jackson/core/JsonToken;

    .line 27
    .line 28
    const-string/jumbo v6, "}"

    .line 29
    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    const-string v8, "END_OBJECT"

    .line 33
    .line 34
    invoke-direct {v3, v7, v7, v8, v6}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sput-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 38
    .line 39
    new-instance v6, Lcom/fasterxml/jackson/core/JsonToken;

    .line 40
    .line 41
    const-string v8, "["

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    const-string v10, "START_ARRAY"

    .line 45
    .line 46
    invoke-direct {v6, v9, v9, v10, v8}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v6, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 50
    .line 51
    new-instance v8, Lcom/fasterxml/jackson/core/JsonToken;

    .line 52
    .line 53
    const-string v10, "]"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    const-string v12, "END_ARRAY"

    .line 57
    .line 58
    invoke-direct {v8, v11, v11, v12, v10}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    .line 62
    .line 63
    new-instance v10, Lcom/fasterxml/jackson/core/JsonToken;

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "FIELD_NAME"

    .line 67
    .line 68
    invoke-direct {v10, v12, v12, v13, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    .line 72
    .line 73
    new-instance v13, Lcom/fasterxml/jackson/core/JsonToken;

    .line 74
    .line 75
    const/4 v14, 0x6

    .line 76
    const/16 v15, 0xc

    .line 77
    .line 78
    move/from16 v16, v2

    .line 79
    .line 80
    const-string v2, "VALUE_EMBEDDED_OBJECT"

    .line 81
    .line 82
    invoke-direct {v13, v14, v15, v2, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v13, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 86
    .line 87
    new-instance v2, Lcom/fasterxml/jackson/core/JsonToken;

    .line 88
    .line 89
    move/from16 v17, v5

    .line 90
    .line 91
    const/4 v5, 0x7

    .line 92
    move/from16 v18, v7

    .line 93
    .line 94
    const-string v7, "VALUE_STRING"

    .line 95
    .line 96
    invoke-direct {v2, v5, v14, v7, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sput-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    .line 100
    .line 101
    new-instance v7, Lcom/fasterxml/jackson/core/JsonToken;

    .line 102
    .line 103
    move/from16 v19, v9

    .line 104
    .line 105
    const/16 v9, 0x8

    .line 106
    .line 107
    move/from16 v20, v11

    .line 108
    .line 109
    const-string v11, "VALUE_NUMBER_INT"

    .line 110
    .line 111
    invoke-direct {v7, v9, v5, v11, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sput-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 115
    .line 116
    new-instance v11, Lcom/fasterxml/jackson/core/JsonToken;

    .line 117
    .line 118
    move/from16 v21, v5

    .line 119
    .line 120
    const/16 v5, 0x9

    .line 121
    .line 122
    move/from16 v22, v12

    .line 123
    .line 124
    const-string v12, "VALUE_NUMBER_FLOAT"

    .line 125
    .line 126
    invoke-direct {v11, v5, v9, v12, v4}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sput-object v11, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    .line 130
    .line 131
    new-instance v4, Lcom/fasterxml/jackson/core/JsonToken;

    .line 132
    .line 133
    const-string/jumbo v12, "true"

    .line 134
    .line 135
    .line 136
    move/from16 v23, v9

    .line 137
    .line 138
    const/16 v9, 0xa

    .line 139
    .line 140
    move/from16 v24, v14

    .line 141
    .line 142
    const-string v14, "VALUE_TRUE"

    .line 143
    .line 144
    invoke-direct {v4, v9, v5, v14, v12}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 148
    .line 149
    new-instance v12, Lcom/fasterxml/jackson/core/JsonToken;

    .line 150
    .line 151
    const-string v14, "false"

    .line 152
    .line 153
    move/from16 v25, v5

    .line 154
    .line 155
    const/16 v5, 0xb

    .line 156
    .line 157
    const-string v15, "VALUE_FALSE"

    .line 158
    .line 159
    invoke-direct {v12, v5, v9, v15, v14}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sput-object v12, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    .line 163
    .line 164
    new-instance v14, Lcom/fasterxml/jackson/core/JsonToken;

    .line 165
    .line 166
    const-string v15, "VALUE_NULL"

    .line 167
    .line 168
    move/from16 v27, v9

    .line 169
    .line 170
    const-string v9, "null"

    .line 171
    .line 172
    move-object/from16 v28, v0

    .line 173
    .line 174
    const/16 v0, 0xc

    .line 175
    .line 176
    invoke-direct {v14, v0, v5, v15, v9}, Lcom/fasterxml/jackson/core/JsonToken;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sput-object v14, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    .line 180
    .line 181
    const/16 v0, 0xd

    .line 182
    .line 183
    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonToken;

    .line 184
    .line 185
    aput-object v28, v0, v16

    .line 186
    .line 187
    aput-object v1, v0, v17

    .line 188
    .line 189
    aput-object v3, v0, v18

    .line 190
    .line 191
    aput-object v6, v0, v19

    .line 192
    .line 193
    aput-object v8, v0, v20

    .line 194
    .line 195
    aput-object v10, v0, v22

    .line 196
    .line 197
    aput-object v13, v0, v24

    .line 198
    .line 199
    aput-object v2, v0, v21

    .line 200
    .line 201
    aput-object v7, v0, v23

    .line 202
    .line 203
    aput-object v11, v0, v25

    .line 204
    .line 205
    aput-object v4, v0, v27

    .line 206
    .line 207
    aput-object v12, v0, v5

    .line 208
    .line 209
    const/16 v26, 0xc

    .line 210
    .line 211
    aput-object v14, v0, v26

    .line 212
    .line 213
    sput-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    .line 214
    .line 215
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 11
    .line 12
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iput-object p4, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serialized:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iput-object p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 22
    .line 23
    array-length p3, p3

    .line 24
    new-array p4, p3, [B

    .line 25
    .line 26
    iput-object p4, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    .line 27
    .line 28
    move p4, p1

    .line 29
    :goto_0
    if-ge p4, p3, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedBytes:[B

    .line 32
    .line 33
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonToken;->_serializedChars:[C

    .line 34
    .line 35
    aget-char v1, v1, p4

    .line 36
    .line 37
    int-to-byte v1, v1

    .line 38
    aput-byte v1, v0, p4

    .line 39
    .line 40
    add-int/lit8 p4, p4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :goto_1
    iput p2, p0, Lcom/fasterxml/jackson/core/JsonToken;->_id:I

    .line 44
    .line 45
    const/16 p3, 0xa

    .line 46
    .line 47
    const/4 p4, 0x1

    .line 48
    if-eq p2, p3, :cond_3

    .line 49
    .line 50
    const/16 p3, 0x9

    .line 51
    .line 52
    if-ne p2, p3, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move p3, p1

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    :goto_2
    move p3, p4

    .line 58
    :goto_3
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isBoolean:Z

    .line 59
    .line 60
    const/4 p3, 0x7

    .line 61
    if-eq p2, p3, :cond_5

    .line 62
    .line 63
    const/16 p3, 0x8

    .line 64
    .line 65
    if-ne p2, p3, :cond_4

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_4
    move p3, p1

    .line 69
    goto :goto_5

    .line 70
    :cond_5
    :goto_4
    move p3, p4

    .line 71
    :goto_5
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isNumber:Z

    .line 72
    .line 73
    if-eq p2, p4, :cond_7

    .line 74
    .line 75
    const/4 p3, 0x3

    .line 76
    if-ne p2, p3, :cond_6

    .line 77
    .line 78
    goto :goto_6

    .line 79
    :cond_6
    move p3, p1

    .line 80
    goto :goto_7

    .line 81
    :cond_7
    :goto_6
    move p3, p4

    .line 82
    :goto_7
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructStart:Z

    .line 83
    .line 84
    const/4 v0, 0x2

    .line 85
    if-eq p2, v0, :cond_9

    .line 86
    .line 87
    const/4 v0, 0x4

    .line 88
    if-ne p2, v0, :cond_8

    .line 89
    .line 90
    goto :goto_8

    .line 91
    :cond_8
    move v0, p1

    .line 92
    goto :goto_9

    .line 93
    :cond_9
    :goto_8
    move v0, p4

    .line 94
    :goto_9
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isStructEnd:Z

    .line 95
    .line 96
    if-nez p3, :cond_a

    .line 97
    .line 98
    if-nez v0, :cond_a

    .line 99
    .line 100
    const/4 p3, 0x5

    .line 101
    if-eq p2, p3, :cond_a

    .line 102
    .line 103
    const/4 p3, -0x1

    .line 104
    if-eq p2, p3, :cond_a

    .line 105
    .line 106
    move p1, p4

    .line 107
    :cond_a
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/JsonToken;->_isScalar:Z

    .line 108
    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/core/JsonToken;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->$VALUES:[Lcom/fasterxml/jackson/core/JsonToken;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonToken;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/core/JsonToken;

    .line 8
    .line 9
    return-object v0
.end method
