.class public final enum Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final INVERSE_LUT:Ljava/util/HashMap;

.field public static final enum NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;


# instance fields
.field public final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 1
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 2
    .line 3
    const-string v1, "NO_ERROR"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 10
    .line 11
    new-instance v1, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 12
    .line 13
    const-string v3, "FORMAT_ERR"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 20
    .line 21
    const-string v5, "SERVER_FAIL"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6, v6}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 28
    .line 29
    const-string v7, "NX_DOMAIN"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8, v8}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 36
    .line 37
    const-string v9, "NO_IMP"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v9, v10, v10}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 44
    .line 45
    const-string v11, "REFUSED"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    invoke-direct {v9, v11, v12, v12}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    new-instance v11, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 52
    .line 53
    const-string v13, "YXDOMAIN"

    .line 54
    .line 55
    const/4 v14, 0x6

    .line 56
    invoke-direct {v11, v13, v14, v14}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    new-instance v13, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 60
    .line 61
    const-string v15, "YXRRSET"

    .line 62
    .line 63
    move/from16 v16, v2

    .line 64
    .line 65
    const/4 v2, 0x7

    .line 66
    invoke-direct {v13, v15, v2, v2}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 67
    .line 68
    .line 69
    new-instance v15, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 70
    .line 71
    move/from16 v17, v2

    .line 72
    .line 73
    const-string v2, "NXRRSET"

    .line 74
    .line 75
    move/from16 v18, v4

    .line 76
    .line 77
    const/16 v4, 0x8

    .line 78
    .line 79
    invoke-direct {v15, v2, v4, v4}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    new-instance v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 83
    .line 84
    move/from16 v19, v4

    .line 85
    .line 86
    const-string v4, "NOT_AUTH"

    .line 87
    .line 88
    move/from16 v20, v6

    .line 89
    .line 90
    const/16 v6, 0x9

    .line 91
    .line 92
    invoke-direct {v2, v4, v6, v6}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 93
    .line 94
    .line 95
    new-instance v4, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 96
    .line 97
    move/from16 v21, v6

    .line 98
    .line 99
    const-string v6, "NOT_ZONE"

    .line 100
    .line 101
    move/from16 v22, v8

    .line 102
    .line 103
    const/16 v8, 0xa

    .line 104
    .line 105
    invoke-direct {v4, v6, v8, v8}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    new-instance v6, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 109
    .line 110
    move/from16 v23, v8

    .line 111
    .line 112
    const-string v8, "BADVERS_BADSIG"

    .line 113
    .line 114
    move/from16 v24, v10

    .line 115
    .line 116
    const/16 v10, 0xb

    .line 117
    .line 118
    move/from16 v25, v12

    .line 119
    .line 120
    const/16 v12, 0x10

    .line 121
    .line 122
    invoke-direct {v6, v8, v10, v12}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    new-instance v8, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 126
    .line 127
    move/from16 v26, v10

    .line 128
    .line 129
    const-string v10, "BADKEY"

    .line 130
    .line 131
    move/from16 v27, v14

    .line 132
    .line 133
    const/16 v14, 0xc

    .line 134
    .line 135
    const/16 v12, 0x11

    .line 136
    .line 137
    invoke-direct {v8, v10, v14, v12}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 138
    .line 139
    .line 140
    new-instance v10, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 141
    .line 142
    move/from16 v29, v14

    .line 143
    .line 144
    const-string v14, "BADTIME"

    .line 145
    .line 146
    const/16 v12, 0xd

    .line 147
    .line 148
    move-object/from16 v31, v0

    .line 149
    .line 150
    const/16 v0, 0x12

    .line 151
    .line 152
    invoke-direct {v10, v14, v12, v0}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 153
    .line 154
    .line 155
    new-instance v14, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 156
    .line 157
    move/from16 v32, v12

    .line 158
    .line 159
    const-string v12, "BADMODE"

    .line 160
    .line 161
    const/16 v0, 0xe

    .line 162
    .line 163
    move-object/from16 v34, v1

    .line 164
    .line 165
    const/16 v1, 0x13

    .line 166
    .line 167
    invoke-direct {v14, v12, v0, v1}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 168
    .line 169
    .line 170
    new-instance v12, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 171
    .line 172
    move/from16 v35, v0

    .line 173
    .line 174
    const/16 v0, 0x14

    .line 175
    .line 176
    const-string v1, "BADNAME"

    .line 177
    .line 178
    move-object/from16 v36, v2

    .line 179
    .line 180
    const/16 v2, 0xf

    .line 181
    .line 182
    invoke-direct {v12, v1, v2, v0}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 186
    .line 187
    const-string v1, "BADALG"

    .line 188
    .line 189
    move/from16 v37, v2

    .line 190
    .line 191
    const/16 v2, 0x15

    .line 192
    .line 193
    move-object/from16 v38, v3

    .line 194
    .line 195
    const/16 v3, 0x10

    .line 196
    .line 197
    invoke-direct {v0, v1, v3, v2}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 201
    .line 202
    const-string v2, "BADTRUNC"

    .line 203
    .line 204
    const/16 v3, 0x16

    .line 205
    .line 206
    move-object/from16 v39, v0

    .line 207
    .line 208
    const/16 v0, 0x11

    .line 209
    .line 210
    invoke-direct {v1, v2, v0, v3}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 211
    .line 212
    .line 213
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 214
    .line 215
    const-string v2, "BADCOOKIE"

    .line 216
    .line 217
    const/16 v3, 0x17

    .line 218
    .line 219
    move-object/from16 v40, v1

    .line 220
    .line 221
    const/16 v1, 0x12

    .line 222
    .line 223
    invoke-direct {v0, v2, v1, v3}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    .line 224
    .line 225
    .line 226
    const/16 v1, 0x13

    .line 227
    .line 228
    new-array v1, v1, [Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 229
    .line 230
    aput-object v31, v1, v16

    .line 231
    .line 232
    aput-object v34, v1, v18

    .line 233
    .line 234
    aput-object v38, v1, v20

    .line 235
    .line 236
    aput-object v5, v1, v22

    .line 237
    .line 238
    aput-object v7, v1, v24

    .line 239
    .line 240
    aput-object v9, v1, v25

    .line 241
    .line 242
    aput-object v11, v1, v27

    .line 243
    .line 244
    aput-object v13, v1, v17

    .line 245
    .line 246
    aput-object v15, v1, v19

    .line 247
    .line 248
    aput-object v36, v1, v21

    .line 249
    .line 250
    aput-object v4, v1, v23

    .line 251
    .line 252
    aput-object v6, v1, v26

    .line 253
    .line 254
    aput-object v8, v1, v29

    .line 255
    .line 256
    aput-object v10, v1, v32

    .line 257
    .line 258
    aput-object v14, v1, v35

    .line 259
    .line 260
    aput-object v12, v1, v37

    .line 261
    .line 262
    const/16 v28, 0x10

    .line 263
    .line 264
    aput-object v39, v1, v28

    .line 265
    .line 266
    const/16 v30, 0x11

    .line 267
    .line 268
    aput-object v40, v1, v30

    .line 269
    .line 270
    const/16 v33, 0x12

    .line 271
    .line 272
    aput-object v0, v1, v33

    .line 273
    .line 274
    sput-object v1, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 275
    .line 276
    new-instance v0, Ljava/util/HashMap;

    .line 277
    .line 278
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->values()[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    array-length v1, v1

    .line 283
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 284
    .line 285
    .line 286
    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->INVERSE_LUT:Ljava/util/HashMap;

    .line 287
    .line 288
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->values()[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    array-length v1, v0

    .line 293
    move/from16 v2, v16

    .line 294
    .line 295
    :goto_0
    if-ge v2, v1, :cond_0

    .line 296
    .line 297
    aget-object v3, v0, v2

    .line 298
    .line 299
    sget-object v4, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->INVERSE_LUT:Ljava/util/HashMap;

    .line 300
    .line 301
    iget-byte v5, v3, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->value:B

    .line 302
    .line 303
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    add-int/lit8 v2, v2, 0x1

    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    int-to-byte p1, p3

    .line 5
    iput-byte p1, p0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->value:B

    .line 6
    .line 7
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 8
    .line 9
    return-object v0
.end method
