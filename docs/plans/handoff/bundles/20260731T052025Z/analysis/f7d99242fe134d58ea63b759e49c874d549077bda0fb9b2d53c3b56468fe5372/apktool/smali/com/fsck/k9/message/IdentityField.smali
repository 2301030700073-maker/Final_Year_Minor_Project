.class public final enum Lcom/fsck/k9/message/IdentityField;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/message/IdentityField;

.field public static final enum CURSOR_POSITION:Lcom/fsck/k9/message/IdentityField;

.field public static final enum EMAIL:Lcom/fsck/k9/message/IdentityField;

.field public static final enum FOOTER_OFFSET:Lcom/fsck/k9/message/IdentityField;

.field public static final enum LENGTH:Lcom/fsck/k9/message/IdentityField;

.field public static final enum MESSAGE_FORMAT:Lcom/fsck/k9/message/IdentityField;

.field public static final enum NAME:Lcom/fsck/k9/message/IdentityField;

.field public static final enum OFFSET:Lcom/fsck/k9/message/IdentityField;

.field public static final enum ORIGINAL_MESSAGE:Lcom/fsck/k9/message/IdentityField;

.field public static final enum PLAIN_LENGTH:Lcom/fsck/k9/message/IdentityField;

.field public static final enum PLAIN_OFFSET:Lcom/fsck/k9/message/IdentityField;

.field public static final enum QUOTED_TEXT_MODE:Lcom/fsck/k9/message/IdentityField;

.field public static final enum QUOTE_STYLE:Lcom/fsck/k9/message/IdentityField;

.field public static final enum SIGNATURE:Lcom/fsck/k9/message/IdentityField;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    new-instance v0, Lcom/fsck/k9/message/IdentityField;

    .line 2
    .line 3
    const-string v1, "l"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "LENGTH"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/fsck/k9/message/IdentityField;->LENGTH:Lcom/fsck/k9/message/IdentityField;

    .line 12
    .line 13
    new-instance v1, Lcom/fsck/k9/message/IdentityField;

    .line 14
    .line 15
    const-string v3, "o"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "OFFSET"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/fsck/k9/message/IdentityField;->OFFSET:Lcom/fsck/k9/message/IdentityField;

    .line 24
    .line 25
    new-instance v3, Lcom/fsck/k9/message/IdentityField;

    .line 26
    .line 27
    const-string v5, "fo"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "FOOTER_OFFSET"

    .line 31
    .line 32
    invoke-direct {v3, v6, v7, v5}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/fsck/k9/message/IdentityField;->FOOTER_OFFSET:Lcom/fsck/k9/message/IdentityField;

    .line 36
    .line 37
    new-instance v5, Lcom/fsck/k9/message/IdentityField;

    .line 38
    .line 39
    const-string v7, "pl"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "PLAIN_LENGTH"

    .line 43
    .line 44
    invoke-direct {v5, v8, v9, v7}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lcom/fsck/k9/message/IdentityField;->PLAIN_LENGTH:Lcom/fsck/k9/message/IdentityField;

    .line 48
    .line 49
    new-instance v7, Lcom/fsck/k9/message/IdentityField;

    .line 50
    .line 51
    const-string v9, "po"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "PLAIN_OFFSET"

    .line 55
    .line 56
    invoke-direct {v7, v10, v11, v9}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lcom/fsck/k9/message/IdentityField;->PLAIN_OFFSET:Lcom/fsck/k9/message/IdentityField;

    .line 60
    .line 61
    new-instance v9, Lcom/fsck/k9/message/IdentityField;

    .line 62
    .line 63
    const-string v11, "f"

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "MESSAGE_FORMAT"

    .line 67
    .line 68
    invoke-direct {v9, v12, v13, v11}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lcom/fsck/k9/message/IdentityField;->MESSAGE_FORMAT:Lcom/fsck/k9/message/IdentityField;

    .line 72
    .line 73
    new-instance v11, Lcom/fsck/k9/message/IdentityField;

    .line 74
    .line 75
    const-string v13, "r"

    .line 76
    .line 77
    const/4 v14, 0x6

    .line 78
    const-string v15, "MESSAGE_READ_RECEIPT"

    .line 79
    .line 80
    invoke-direct {v11, v14, v15, v13}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v13, Lcom/fsck/k9/message/IdentityField;

    .line 84
    .line 85
    const-string v15, "s"

    .line 86
    .line 87
    move/from16 v16, v2

    .line 88
    .line 89
    const/4 v2, 0x7

    .line 90
    move/from16 v17, v4

    .line 91
    .line 92
    const-string v4, "SIGNATURE"

    .line 93
    .line 94
    invoke-direct {v13, v2, v4, v15}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sput-object v13, Lcom/fsck/k9/message/IdentityField;->SIGNATURE:Lcom/fsck/k9/message/IdentityField;

    .line 98
    .line 99
    new-instance v4, Lcom/fsck/k9/message/IdentityField;

    .line 100
    .line 101
    const-string v15, "n"

    .line 102
    .line 103
    move/from16 v18, v2

    .line 104
    .line 105
    const/16 v2, 0x8

    .line 106
    .line 107
    move/from16 v19, v6

    .line 108
    .line 109
    const-string v6, "NAME"

    .line 110
    .line 111
    invoke-direct {v4, v2, v6, v15}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sput-object v4, Lcom/fsck/k9/message/IdentityField;->NAME:Lcom/fsck/k9/message/IdentityField;

    .line 115
    .line 116
    new-instance v6, Lcom/fsck/k9/message/IdentityField;

    .line 117
    .line 118
    const-string v15, "e"

    .line 119
    .line 120
    move/from16 v20, v2

    .line 121
    .line 122
    const/16 v2, 0x9

    .line 123
    .line 124
    move/from16 v21, v8

    .line 125
    .line 126
    const-string v8, "EMAIL"

    .line 127
    .line 128
    invoke-direct {v6, v2, v8, v15}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-object v6, Lcom/fsck/k9/message/IdentityField;->EMAIL:Lcom/fsck/k9/message/IdentityField;

    .line 132
    .line 133
    new-instance v8, Lcom/fsck/k9/message/IdentityField;

    .line 134
    .line 135
    const-string v15, "m"

    .line 136
    .line 137
    move/from16 v22, v2

    .line 138
    .line 139
    const/16 v2, 0xa

    .line 140
    .line 141
    move/from16 v23, v10

    .line 142
    .line 143
    const-string v10, "ORIGINAL_MESSAGE"

    .line 144
    .line 145
    invoke-direct {v8, v2, v10, v15}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sput-object v8, Lcom/fsck/k9/message/IdentityField;->ORIGINAL_MESSAGE:Lcom/fsck/k9/message/IdentityField;

    .line 149
    .line 150
    new-instance v10, Lcom/fsck/k9/message/IdentityField;

    .line 151
    .line 152
    const-string v15, "p"

    .line 153
    .line 154
    move/from16 v24, v2

    .line 155
    .line 156
    const/16 v2, 0xb

    .line 157
    .line 158
    move/from16 v25, v12

    .line 159
    .line 160
    const-string v12, "CURSOR_POSITION"

    .line 161
    .line 162
    invoke-direct {v10, v2, v12, v15}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    sput-object v10, Lcom/fsck/k9/message/IdentityField;->CURSOR_POSITION:Lcom/fsck/k9/message/IdentityField;

    .line 166
    .line 167
    new-instance v12, Lcom/fsck/k9/message/IdentityField;

    .line 168
    .line 169
    const-string v15, "q"

    .line 170
    .line 171
    move/from16 v26, v2

    .line 172
    .line 173
    const/16 v2, 0xc

    .line 174
    .line 175
    move/from16 v27, v14

    .line 176
    .line 177
    const-string v14, "QUOTED_TEXT_MODE"

    .line 178
    .line 179
    invoke-direct {v12, v2, v14, v15}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    sput-object v12, Lcom/fsck/k9/message/IdentityField;->QUOTED_TEXT_MODE:Lcom/fsck/k9/message/IdentityField;

    .line 183
    .line 184
    new-instance v14, Lcom/fsck/k9/message/IdentityField;

    .line 185
    .line 186
    const-string v15, "qs"

    .line 187
    .line 188
    move/from16 v28, v2

    .line 189
    .line 190
    const/16 v2, 0xd

    .line 191
    .line 192
    move-object/from16 v29, v0

    .line 193
    .line 194
    const-string v0, "QUOTE_STYLE"

    .line 195
    .line 196
    invoke-direct {v14, v2, v0, v15}, Lcom/fsck/k9/message/IdentityField;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object v14, Lcom/fsck/k9/message/IdentityField;->QUOTE_STYLE:Lcom/fsck/k9/message/IdentityField;

    .line 200
    .line 201
    const/16 v0, 0xe

    .line 202
    .line 203
    new-array v0, v0, [Lcom/fsck/k9/message/IdentityField;

    .line 204
    .line 205
    aput-object v29, v0, v16

    .line 206
    .line 207
    aput-object v1, v0, v17

    .line 208
    .line 209
    aput-object v3, v0, v19

    .line 210
    .line 211
    aput-object v5, v0, v21

    .line 212
    .line 213
    aput-object v7, v0, v23

    .line 214
    .line 215
    aput-object v9, v0, v25

    .line 216
    .line 217
    aput-object v11, v0, v27

    .line 218
    .line 219
    aput-object v13, v0, v18

    .line 220
    .line 221
    aput-object v4, v0, v20

    .line 222
    .line 223
    aput-object v6, v0, v22

    .line 224
    .line 225
    aput-object v8, v0, v24

    .line 226
    .line 227
    aput-object v10, v0, v26

    .line 228
    .line 229
    aput-object v12, v0, v28

    .line 230
    .line 231
    aput-object v14, v0, v2

    .line 232
    .line 233
    sput-object v0, Lcom/fsck/k9/message/IdentityField;->$VALUES:[Lcom/fsck/k9/message/IdentityField;

    .line 234
    .line 235
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/fsck/k9/message/IdentityField;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/message/IdentityField;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/message/IdentityField;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/message/IdentityField;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/message/IdentityField;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/message/IdentityField;->$VALUES:[Lcom/fsck/k9/message/IdentityField;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/fsck/k9/message/IdentityField;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/message/IdentityField;

    .line 8
    .line 9
    return-object v0
.end method
