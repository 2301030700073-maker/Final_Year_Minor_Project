.class public final enum Lokhttp3/internal/http2/ErrorCode;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lokhttp3/internal/http2/ErrorCode;

.field public static final enum CANCEL:Lokhttp3/internal/http2/ErrorCode;

.field public static final Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

.field public static final enum FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

.field public static final enum REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;


# instance fields
.field public final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lokhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    const-string v1, "NO_ERROR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 10
    .line 11
    new-instance v1, Lokhttp3/internal/http2/ErrorCode;

    .line 12
    .line 13
    const-string v3, "PROTOCOL_ERROR"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 20
    .line 21
    new-instance v3, Lokhttp3/internal/http2/ErrorCode;

    .line 22
    .line 23
    const-string v5, "INTERNAL_ERROR"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lokhttp3/internal/http2/ErrorCode;->INTERNAL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 30
    .line 31
    new-instance v5, Lokhttp3/internal/http2/ErrorCode;

    .line 32
    .line 33
    const-string v7, "FLOW_CONTROL_ERROR"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    .line 40
    .line 41
    new-instance v7, Lokhttp3/internal/http2/ErrorCode;

    .line 42
    .line 43
    const-string v9, "SETTINGS_TIMEOUT"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v10}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    new-instance v9, Lokhttp3/internal/http2/ErrorCode;

    .line 50
    .line 51
    const-string v11, "STREAM_CLOSED"

    .line 52
    .line 53
    const/4 v12, 0x5

    .line 54
    invoke-direct {v9, v11, v12, v12}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    new-instance v11, Lokhttp3/internal/http2/ErrorCode;

    .line 58
    .line 59
    const-string v13, "FRAME_SIZE_ERROR"

    .line 60
    .line 61
    const/4 v14, 0x6

    .line 62
    invoke-direct {v11, v13, v14, v14}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    new-instance v13, Lokhttp3/internal/http2/ErrorCode;

    .line 66
    .line 67
    const-string v15, "REFUSED_STREAM"

    .line 68
    .line 69
    move/from16 v16, v2

    .line 70
    .line 71
    const/4 v2, 0x7

    .line 72
    invoke-direct {v13, v15, v2, v2}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 73
    .line 74
    .line 75
    sput-object v13, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    .line 76
    .line 77
    new-instance v15, Lokhttp3/internal/http2/ErrorCode;

    .line 78
    .line 79
    move/from16 v17, v2

    .line 80
    .line 81
    const-string v2, "CANCEL"

    .line 82
    .line 83
    move/from16 v18, v4

    .line 84
    .line 85
    const/16 v4, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v2, v4, v4}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    .line 91
    .line 92
    new-instance v2, Lokhttp3/internal/http2/ErrorCode;

    .line 93
    .line 94
    move/from16 v19, v4

    .line 95
    .line 96
    const-string v4, "COMPRESSION_ERROR"

    .line 97
    .line 98
    move/from16 v20, v6

    .line 99
    .line 100
    const/16 v6, 0x9

    .line 101
    .line 102
    invoke-direct {v2, v4, v6, v6}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 103
    .line 104
    .line 105
    new-instance v4, Lokhttp3/internal/http2/ErrorCode;

    .line 106
    .line 107
    move/from16 v21, v6

    .line 108
    .line 109
    const-string v6, "CONNECT_ERROR"

    .line 110
    .line 111
    move/from16 v22, v8

    .line 112
    .line 113
    const/16 v8, 0xa

    .line 114
    .line 115
    invoke-direct {v4, v6, v8, v8}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 116
    .line 117
    .line 118
    new-instance v6, Lokhttp3/internal/http2/ErrorCode;

    .line 119
    .line 120
    move/from16 v23, v8

    .line 121
    .line 122
    const-string v8, "ENHANCE_YOUR_CALM"

    .line 123
    .line 124
    move/from16 v24, v10

    .line 125
    .line 126
    const/16 v10, 0xb

    .line 127
    .line 128
    invoke-direct {v6, v8, v10, v10}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 129
    .line 130
    .line 131
    new-instance v8, Lokhttp3/internal/http2/ErrorCode;

    .line 132
    .line 133
    move/from16 v25, v10

    .line 134
    .line 135
    const-string v10, "INADEQUATE_SECURITY"

    .line 136
    .line 137
    move/from16 v26, v12

    .line 138
    .line 139
    const/16 v12, 0xc

    .line 140
    .line 141
    invoke-direct {v8, v10, v12, v12}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 142
    .line 143
    .line 144
    new-instance v10, Lokhttp3/internal/http2/ErrorCode;

    .line 145
    .line 146
    move/from16 v27, v12

    .line 147
    .line 148
    const-string v12, "HTTP_1_1_REQUIRED"

    .line 149
    .line 150
    move/from16 v28, v14

    .line 151
    .line 152
    const/16 v14, 0xd

    .line 153
    .line 154
    invoke-direct {v10, v12, v14, v14}, Lokhttp3/internal/http2/ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 155
    .line 156
    .line 157
    const/16 v12, 0xe

    .line 158
    .line 159
    new-array v12, v12, [Lokhttp3/internal/http2/ErrorCode;

    .line 160
    .line 161
    aput-object v0, v12, v16

    .line 162
    .line 163
    aput-object v1, v12, v18

    .line 164
    .line 165
    aput-object v3, v12, v20

    .line 166
    .line 167
    aput-object v5, v12, v22

    .line 168
    .line 169
    aput-object v7, v12, v24

    .line 170
    .line 171
    aput-object v9, v12, v26

    .line 172
    .line 173
    aput-object v11, v12, v28

    .line 174
    .line 175
    aput-object v13, v12, v17

    .line 176
    .line 177
    aput-object v15, v12, v19

    .line 178
    .line 179
    aput-object v2, v12, v21

    .line 180
    .line 181
    aput-object v4, v12, v23

    .line 182
    .line 183
    aput-object v6, v12, v25

    .line 184
    .line 185
    aput-object v8, v12, v27

    .line 186
    .line 187
    aput-object v10, v12, v14

    .line 188
    .line 189
    sput-object v12, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    .line 190
    .line 191
    new-instance v0, Lokhttp3/internal/http2/ErrorCode$Companion;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 194
    .line 195
    .line 196
    sput-object v0, Lokhttp3/internal/http2/ErrorCode;->Companion:Lokhttp3/internal/http2/ErrorCode$Companion;

    .line 197
    .line 198
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lokhttp3/internal/http2/ErrorCode;->httpCode:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lokhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lokhttp3/internal/http2/ErrorCode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lokhttp3/internal/http2/ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->$VALUES:[Lokhttp3/internal/http2/ErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lokhttp3/internal/http2/ErrorCode;

    .line 8
    .line 9
    return-object v0
.end method
