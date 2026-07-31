.class public final enum Lcom/google/zxing/qrcode/decoder/Mode;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum ECI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

.field public static final enum TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;


# instance fields
.field public final characterCountBitsForVersions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    filled-new-array {v1, v1, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-string v3, "TERMINATOR"

    .line 9
    .line 10
    invoke-direct {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 14
    .line 15
    new-instance v2, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 16
    .line 17
    const/16 v3, 0xe

    .line 18
    .line 19
    const/16 v4, 0xa

    .line 20
    .line 21
    const/16 v5, 0xc

    .line 22
    .line 23
    filled-new-array {v4, v5, v3}, [I

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v6, "NUMERIC"

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    invoke-direct {v2, v6, v7, v3}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 34
    .line 35
    new-instance v3, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 36
    .line 37
    const/16 v6, 0xb

    .line 38
    .line 39
    const/16 v8, 0xd

    .line 40
    .line 41
    const/16 v9, 0x9

    .line 42
    .line 43
    filled-new-array {v9, v6, v8}, [I

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    const-string v8, "ALPHANUMERIC"

    .line 48
    .line 49
    const/4 v10, 0x2

    .line 50
    invoke-direct {v3, v8, v10, v6}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 51
    .line 52
    .line 53
    sput-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 54
    .line 55
    new-instance v6, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 56
    .line 57
    filled-new-array {v1, v1, v1}, [I

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    const-string v11, "STRUCTURED_APPEND"

    .line 62
    .line 63
    const/4 v12, 0x3

    .line 64
    invoke-direct {v6, v11, v12, v8}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 65
    .line 66
    .line 67
    sput-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 68
    .line 69
    new-instance v8, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 70
    .line 71
    const/16 v11, 0x10

    .line 72
    .line 73
    const/16 v13, 0x8

    .line 74
    .line 75
    filled-new-array {v13, v11, v11}, [I

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    const-string v14, "BYTE"

    .line 80
    .line 81
    const/4 v15, 0x4

    .line 82
    invoke-direct {v8, v14, v15, v11}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 83
    .line 84
    .line 85
    sput-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 86
    .line 87
    new-instance v11, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 88
    .line 89
    filled-new-array {v1, v1, v1}, [I

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    move/from16 v16, v7

    .line 94
    .line 95
    const-string v7, "ECI"

    .line 96
    .line 97
    move/from16 v17, v10

    .line 98
    .line 99
    const/4 v10, 0x5

    .line 100
    invoke-direct {v11, v7, v10, v14}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 101
    .line 102
    .line 103
    sput-object v11, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 104
    .line 105
    new-instance v7, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 106
    .line 107
    filled-new-array {v13, v4, v5}, [I

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    move/from16 v18, v10

    .line 112
    .line 113
    const-string v10, "KANJI"

    .line 114
    .line 115
    move/from16 v19, v12

    .line 116
    .line 117
    const/4 v12, 0x6

    .line 118
    invoke-direct {v7, v10, v12, v14}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 119
    .line 120
    .line 121
    sput-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 122
    .line 123
    new-instance v10, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 124
    .line 125
    const-string v14, "FNC1_FIRST_POSITION"

    .line 126
    .line 127
    move/from16 v20, v12

    .line 128
    .line 129
    filled-new-array {v1, v1, v1}, [I

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    move/from16 v21, v15

    .line 134
    .line 135
    const/4 v15, 0x7

    .line 136
    invoke-direct {v10, v14, v15, v12}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 137
    .line 138
    .line 139
    sput-object v10, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 140
    .line 141
    new-instance v12, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 142
    .line 143
    const-string v14, "FNC1_SECOND_POSITION"

    .line 144
    .line 145
    move/from16 v22, v15

    .line 146
    .line 147
    filled-new-array {v1, v1, v1}, [I

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    invoke-direct {v12, v14, v13, v15}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 152
    .line 153
    .line 154
    sput-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 155
    .line 156
    new-instance v14, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 157
    .line 158
    const-string v15, "HANZI"

    .line 159
    .line 160
    filled-new-array {v13, v4, v5}, [I

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-direct {v14, v15, v9, v5}, Lcom/google/zxing/qrcode/decoder/Mode;-><init>(Ljava/lang/String;I[I)V

    .line 165
    .line 166
    .line 167
    sput-object v14, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 168
    .line 169
    new-array v4, v4, [Lcom/google/zxing/qrcode/decoder/Mode;

    .line 170
    .line 171
    aput-object v0, v4, v1

    .line 172
    .line 173
    aput-object v2, v4, v16

    .line 174
    .line 175
    aput-object v3, v4, v17

    .line 176
    .line 177
    aput-object v6, v4, v19

    .line 178
    .line 179
    aput-object v8, v4, v21

    .line 180
    .line 181
    aput-object v11, v4, v18

    .line 182
    .line 183
    aput-object v7, v4, v20

    .line 184
    .line 185
    aput-object v10, v4, v22

    .line 186
    .line 187
    aput-object v12, v4, v13

    .line 188
    .line 189
    aput-object v14, v4, v9

    .line 190
    .line 191
    sput-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    .line 192
    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Mode;->characterCountBitsForVersions:[I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/qrcode/decoder/Mode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->$VALUES:[Lcom/google/zxing/qrcode/decoder/Mode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/qrcode/decoder/Mode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/qrcode/decoder/Mode;

    .line 8
    .line 9
    return-object v0
.end method
