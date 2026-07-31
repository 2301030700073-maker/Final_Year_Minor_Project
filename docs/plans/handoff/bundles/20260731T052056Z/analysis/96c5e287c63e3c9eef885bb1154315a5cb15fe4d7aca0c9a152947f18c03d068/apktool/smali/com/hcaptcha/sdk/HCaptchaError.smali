.class public final enum Lcom/hcaptcha/sdk/HCaptchaError;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final synthetic $VALUES:[Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum CHALLENGE_CLOSED:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum CHALLENGE_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum INSECURE_HTTP_REQUEST_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum INTERNAL_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum INVALID_CUSTOM_THEME:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum INVALID_DATA:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum NETWORK_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum RATE_LIMITED:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum SESSION_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum TOKEN_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

.field public static final enum VERIFY_PARAMS_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;


# instance fields
.field private final errorId:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 2
    .line 3
    const-string v1, "No internet connection"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x7

    .line 7
    const-string v4, "NETWORK_ERROR"

    .line 8
    .line 9
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/hcaptcha/sdk/HCaptchaError;->NETWORK_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 13
    .line 14
    new-instance v1, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 15
    .line 16
    const-string v4, "Invalid data is not accepted by endpoints"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    const/16 v6, 0x8

    .line 20
    .line 21
    const-string v7, "INVALID_DATA"

    .line 22
    .line 23
    invoke-direct {v1, v5, v6, v7, v4}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/hcaptcha/sdk/HCaptchaError;->INVALID_DATA:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 27
    .line 28
    new-instance v4, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 29
    .line 30
    const-string v7, "Challenge encountered error on setup"

    .line 31
    .line 32
    const/4 v8, 0x2

    .line 33
    const/16 v9, 0x9

    .line 34
    .line 35
    const-string v10, "CHALLENGE_ERROR"

    .line 36
    .line 37
    invoke-direct {v4, v8, v9, v10, v7}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object v4, Lcom/hcaptcha/sdk/HCaptchaError;->CHALLENGE_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 41
    .line 42
    new-instance v7, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 43
    .line 44
    const-string v10, "hCaptcha client encountered an internal error"

    .line 45
    .line 46
    const/4 v11, 0x3

    .line 47
    const/16 v12, 0xa

    .line 48
    .line 49
    const-string v13, "INTERNAL_ERROR"

    .line 50
    .line 51
    invoke-direct {v7, v11, v12, v13, v10}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v7, Lcom/hcaptcha/sdk/HCaptchaError;->INTERNAL_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 55
    .line 56
    new-instance v10, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 57
    .line 58
    const/16 v13, 0xf

    .line 59
    .line 60
    const-string v14, "Session Timeout"

    .line 61
    .line 62
    const/4 v15, 0x4

    .line 63
    move/from16 v16, v2

    .line 64
    .line 65
    const-string v2, "SESSION_TIMEOUT"

    .line 66
    .line 67
    invoke-direct {v10, v15, v13, v2, v14}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sput-object v10, Lcom/hcaptcha/sdk/HCaptchaError;->SESSION_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 71
    .line 72
    new-instance v2, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 73
    .line 74
    const/16 v13, 0x10

    .line 75
    .line 76
    const-string v14, "Token Timeout"

    .line 77
    .line 78
    move/from16 v17, v5

    .line 79
    .line 80
    const/4 v5, 0x5

    .line 81
    move/from16 v18, v8

    .line 82
    .line 83
    const-string v8, "TOKEN_TIMEOUT"

    .line 84
    .line 85
    invoke-direct {v2, v5, v13, v8, v14}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sput-object v2, Lcom/hcaptcha/sdk/HCaptchaError;->TOKEN_TIMEOUT:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 89
    .line 90
    new-instance v8, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 91
    .line 92
    const/16 v13, 0x1e

    .line 93
    .line 94
    const-string v14, "Challenge Closed"

    .line 95
    .line 96
    move/from16 v19, v5

    .line 97
    .line 98
    const/4 v5, 0x6

    .line 99
    move/from16 v20, v11

    .line 100
    .line 101
    const-string v11, "CHALLENGE_CLOSED"

    .line 102
    .line 103
    invoke-direct {v8, v5, v13, v11, v14}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sput-object v8, Lcom/hcaptcha/sdk/HCaptchaError;->CHALLENGE_CLOSED:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 107
    .line 108
    new-instance v11, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 109
    .line 110
    const/16 v13, 0x1f

    .line 111
    .line 112
    const-string v14, "Rate Limited"

    .line 113
    .line 114
    move/from16 v21, v5

    .line 115
    .line 116
    const-string v5, "RATE_LIMITED"

    .line 117
    .line 118
    invoke-direct {v11, v3, v13, v5, v14}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v11, Lcom/hcaptcha/sdk/HCaptchaError;->RATE_LIMITED:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 122
    .line 123
    new-instance v5, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 124
    .line 125
    const/16 v13, 0x20

    .line 126
    .line 127
    const-string v14, "Invalid custom theme"

    .line 128
    .line 129
    move/from16 v22, v3

    .line 130
    .line 131
    const-string v3, "INVALID_CUSTOM_THEME"

    .line 132
    .line 133
    invoke-direct {v5, v6, v13, v3, v14}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sput-object v5, Lcom/hcaptcha/sdk/HCaptchaError;->INVALID_CUSTOM_THEME:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 137
    .line 138
    new-instance v3, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 139
    .line 140
    const/16 v13, 0x21

    .line 141
    .line 142
    const-string v14, "Insecure resource requested"

    .line 143
    .line 144
    move/from16 v23, v6

    .line 145
    .line 146
    const-string v6, "INSECURE_HTTP_REQUEST_ERROR"

    .line 147
    .line 148
    invoke-direct {v3, v9, v13, v6, v14}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sput-object v3, Lcom/hcaptcha/sdk/HCaptchaError;->INSECURE_HTTP_REQUEST_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 152
    .line 153
    new-instance v6, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 154
    .line 155
    const/16 v13, 0x22

    .line 156
    .line 157
    const-string v14, "Error handling verify parameters"

    .line 158
    .line 159
    move/from16 v24, v9

    .line 160
    .line 161
    const-string v9, "VERIFY_PARAMS_ERROR"

    .line 162
    .line 163
    invoke-direct {v6, v12, v13, v9, v14}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    sput-object v6, Lcom/hcaptcha/sdk/HCaptchaError;->VERIFY_PARAMS_ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 167
    .line 168
    new-instance v9, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 169
    .line 170
    const/16 v13, 0x1d

    .line 171
    .line 172
    const-string v14, "Unknown error"

    .line 173
    .line 174
    move/from16 v25, v12

    .line 175
    .line 176
    const/16 v12, 0xb

    .line 177
    .line 178
    move/from16 v26, v15

    .line 179
    .line 180
    const-string v15, "ERROR"

    .line 181
    .line 182
    invoke-direct {v9, v12, v13, v15, v14}, Lcom/hcaptcha/sdk/HCaptchaError;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    sput-object v9, Lcom/hcaptcha/sdk/HCaptchaError;->ERROR:Lcom/hcaptcha/sdk/HCaptchaError;

    .line 186
    .line 187
    const/16 v13, 0xc

    .line 188
    .line 189
    new-array v13, v13, [Lcom/hcaptcha/sdk/HCaptchaError;

    .line 190
    .line 191
    aput-object v0, v13, v16

    .line 192
    .line 193
    aput-object v1, v13, v17

    .line 194
    .line 195
    aput-object v4, v13, v18

    .line 196
    .line 197
    aput-object v7, v13, v20

    .line 198
    .line 199
    aput-object v10, v13, v26

    .line 200
    .line 201
    aput-object v2, v13, v19

    .line 202
    .line 203
    aput-object v8, v13, v21

    .line 204
    .line 205
    aput-object v11, v13, v22

    .line 206
    .line 207
    aput-object v5, v13, v23

    .line 208
    .line 209
    aput-object v3, v13, v24

    .line 210
    .line 211
    aput-object v6, v13, v25

    .line 212
    .line 213
    aput-object v9, v13, v12

    .line 214
    .line 215
    sput-object v13, Lcom/hcaptcha/sdk/HCaptchaError;->$VALUES:[Lcom/hcaptcha/sdk/HCaptchaError;

    .line 216
    .line 217
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/hcaptcha/sdk/HCaptchaError;->errorId:I

    .line 5
    .line 6
    iput-object p4, p0, Lcom/hcaptcha/sdk/HCaptchaError;->message:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static fromId(I)Lcom/hcaptcha/sdk/HCaptchaError;
    .locals 5

    .line 1
    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaError;->values()[Lcom/hcaptcha/sdk/HCaptchaError;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/hcaptcha/sdk/HCaptchaError;->errorId:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const-string v0, "Unsupported error id: "

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroidx/compose/animation/core/Animation$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptchaError;
    .locals 1

    .line 1
    const-class v0, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hcaptcha/sdk/HCaptchaError;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hcaptcha/sdk/HCaptchaError;
    .locals 1

    .line 1
    sget-object v0, Lcom/hcaptcha/sdk/HCaptchaError;->$VALUES:[Lcom/hcaptcha/sdk/HCaptchaError;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/hcaptcha/sdk/HCaptchaError;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hcaptcha/sdk/HCaptchaError;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getErrorId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hcaptcha/sdk/HCaptchaError;->errorId:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaError;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptchaError;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
