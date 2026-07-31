.class public final enum Lcom/fasterxml/jackson/core/JsonParser$Feature;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum IGNORE_UNDEFINED:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum INCLUDE_SOURCE_IN_LOCATION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

.field public static final enum STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;


# instance fields
.field private final _defaultState:Z

.field private final _mask:I


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AUTO_CLOSE_SOURCE"

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 11
    .line 12
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 13
    .line 14
    const-string v4, "ALLOW_COMMENTS"

    .line 15
    .line 16
    invoke-direct {v2, v3, v4, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 20
    .line 21
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    const-string v6, "ALLOW_YAML_COMMENTS"

    .line 25
    .line 26
    invoke-direct {v4, v5, v6, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    sput-object v4, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 30
    .line 31
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 32
    .line 33
    const/4 v7, 0x3

    .line 34
    const-string v8, "ALLOW_UNQUOTED_FIELD_NAMES"

    .line 35
    .line 36
    invoke-direct {v6, v7, v8, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    sput-object v6, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 40
    .line 41
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 42
    .line 43
    const/4 v9, 0x4

    .line 44
    const-string v10, "ALLOW_SINGLE_QUOTES"

    .line 45
    .line 46
    invoke-direct {v8, v9, v10, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 50
    .line 51
    new-instance v10, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 52
    .line 53
    const/4 v11, 0x5

    .line 54
    const-string v12, "ALLOW_UNQUOTED_CONTROL_CHARS"

    .line 55
    .line 56
    invoke-direct {v10, v11, v12, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 60
    .line 61
    new-instance v12, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 62
    .line 63
    const/4 v13, 0x6

    .line 64
    const-string v14, "ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER"

    .line 65
    .line 66
    invoke-direct {v12, v13, v14, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    sput-object v12, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 70
    .line 71
    new-instance v14, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 72
    .line 73
    const/4 v15, 0x7

    .line 74
    move/from16 v16, v5

    .line 75
    .line 76
    const-string v5, "ALLOW_NUMERIC_LEADING_ZEROS"

    .line 77
    .line 78
    invoke-direct {v14, v15, v5, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    sput-object v14, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 82
    .line 83
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 84
    .line 85
    move/from16 v17, v7

    .line 86
    .line 87
    const/16 v7, 0x8

    .line 88
    .line 89
    move/from16 v18, v9

    .line 90
    .line 91
    const-string v9, "ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS"

    .line 92
    .line 93
    invoke-direct {v5, v7, v9, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 94
    .line 95
    .line 96
    sput-object v5, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 97
    .line 98
    new-instance v9, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 99
    .line 100
    move/from16 v19, v7

    .line 101
    .line 102
    const/16 v7, 0x9

    .line 103
    .line 104
    move/from16 v20, v11

    .line 105
    .line 106
    const-string v11, "ALLOW_NON_NUMERIC_NUMBERS"

    .line 107
    .line 108
    invoke-direct {v9, v7, v11, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    sput-object v9, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 112
    .line 113
    new-instance v11, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 114
    .line 115
    move/from16 v21, v7

    .line 116
    .line 117
    const/16 v7, 0xa

    .line 118
    .line 119
    move/from16 v22, v13

    .line 120
    .line 121
    const-string v13, "ALLOW_MISSING_VALUES"

    .line 122
    .line 123
    invoke-direct {v11, v7, v13, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    sput-object v11, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_MISSING_VALUES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 127
    .line 128
    new-instance v13, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 129
    .line 130
    move/from16 v23, v7

    .line 131
    .line 132
    const/16 v7, 0xb

    .line 133
    .line 134
    move/from16 v24, v15

    .line 135
    .line 136
    const-string v15, "ALLOW_TRAILING_COMMA"

    .line 137
    .line 138
    invoke-direct {v13, v7, v15, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 139
    .line 140
    .line 141
    sput-object v13, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_TRAILING_COMMA:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 142
    .line 143
    new-instance v15, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 144
    .line 145
    move/from16 v25, v7

    .line 146
    .line 147
    const/16 v7, 0xc

    .line 148
    .line 149
    const-string v3, "STRICT_DUPLICATE_DETECTION"

    .line 150
    .line 151
    invoke-direct {v15, v7, v3, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    sput-object v15, Lcom/fasterxml/jackson/core/JsonParser$Feature;->STRICT_DUPLICATE_DETECTION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 155
    .line 156
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 157
    .line 158
    move/from16 v26, v7

    .line 159
    .line 160
    const/16 v7, 0xd

    .line 161
    .line 162
    move-object/from16 v27, v0

    .line 163
    .line 164
    const-string v0, "IGNORE_UNDEFINED"

    .line 165
    .line 166
    invoke-direct {v3, v7, v0, v1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    sput-object v3, Lcom/fasterxml/jackson/core/JsonParser$Feature;->IGNORE_UNDEFINED:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 170
    .line 171
    new-instance v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 172
    .line 173
    move/from16 v28, v1

    .line 174
    .line 175
    const/16 v1, 0xe

    .line 176
    .line 177
    move/from16 v29, v7

    .line 178
    .line 179
    const-string v7, "INCLUDE_SOURCE_IN_LOCATION"

    .line 180
    .line 181
    move-object/from16 v30, v2

    .line 182
    .line 183
    const/4 v2, 0x1

    .line 184
    invoke-direct {v0, v1, v7, v2}, Lcom/fasterxml/jackson/core/JsonParser$Feature;-><init>(ILjava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    sput-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->INCLUDE_SOURCE_IN_LOCATION:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 188
    .line 189
    const/16 v7, 0xf

    .line 190
    .line 191
    new-array v7, v7, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 192
    .line 193
    aput-object v27, v7, v28

    .line 194
    .line 195
    aput-object v30, v7, v2

    .line 196
    .line 197
    aput-object v4, v7, v16

    .line 198
    .line 199
    aput-object v6, v7, v17

    .line 200
    .line 201
    aput-object v8, v7, v18

    .line 202
    .line 203
    aput-object v10, v7, v20

    .line 204
    .line 205
    aput-object v12, v7, v22

    .line 206
    .line 207
    aput-object v14, v7, v24

    .line 208
    .line 209
    aput-object v5, v7, v19

    .line 210
    .line 211
    aput-object v9, v7, v21

    .line 212
    .line 213
    aput-object v11, v7, v23

    .line 214
    .line 215
    aput-object v13, v7, v25

    .line 216
    .line 217
    aput-object v15, v7, v26

    .line 218
    .line 219
    aput-object v3, v7, v29

    .line 220
    .line 221
    aput-object v0, v7, v1

    .line 222
    .line 223
    sput-object v7, Lcom/fasterxml/jackson/core/JsonParser$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 224
    .line 225
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    shl-int/2addr p1, p2

    .line 10
    iput p1, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_mask:I

    .line 11
    .line 12
    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_defaultState:Z

    .line 13
    .line 14
    return-void
.end method

.method public static collectDefaults()I
    .locals 6

    .line 1
    invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget-object v4, v0, v2

    .line 11
    .line 12
    iget-boolean v5, v4, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_defaultState:Z

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    iget v4, v4, Lcom/fasterxml/jackson/core/JsonParser$Feature;->_mask:I

    .line 17
    .line 18
    or-int/2addr v3, v4

    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    return v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .locals 1

    .line 1
    const-class v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->$VALUES:[Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fasterxml/jackson/core/JsonParser$Feature;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 8
    .line 9
    return-object v0
.end method
