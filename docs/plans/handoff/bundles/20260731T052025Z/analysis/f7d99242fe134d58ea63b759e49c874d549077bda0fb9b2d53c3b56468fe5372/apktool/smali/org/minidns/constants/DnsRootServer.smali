.class public abstract Lorg/minidns/constants/DnsRootServer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final IPV4_ROOT_SERVERS:[Ljava/net/Inet4Address;

.field public static final IPV4_ROOT_SERVER_MAP:Ljava/util/HashMap;

.field public static final IPV6_ROOT_SERVERS:[Ljava/net/Inet6Address;

.field public static final IPV6_ROOT_SERVER_MAP:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVER_MAP:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVER_MAP:Ljava/util/HashMap;

    .line 14
    .line 15
    const/16 v0, 0x61

    .line 16
    .line 17
    const/16 v1, 0xc6

    .line 18
    .line 19
    const/16 v2, 0x29

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x4

    .line 23
    invoke-static {v0, v1, v2, v3, v4}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/16 v5, 0x4f

    .line 28
    .line 29
    const/16 v6, 0xc9

    .line 30
    .line 31
    const/16 v7, 0x62

    .line 32
    .line 33
    const/16 v8, 0xc0

    .line 34
    .line 35
    const/16 v9, 0xe4

    .line 36
    .line 37
    invoke-static {v7, v8, v9, v5, v6}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/16 v6, 0x63

    .line 42
    .line 43
    const/16 v9, 0x21

    .line 44
    .line 45
    const/16 v10, 0xc

    .line 46
    .line 47
    invoke-static {v6, v8, v9, v4, v10}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    const/16 v12, 0x64

    .line 52
    .line 53
    const/16 v13, 0xc7

    .line 54
    .line 55
    const/4 v14, 0x7

    .line 56
    const/16 v15, 0x5b

    .line 57
    .line 58
    const/16 v6, 0xd

    .line 59
    .line 60
    invoke-static {v12, v13, v14, v15, v6}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    const/16 v12, 0x65

    .line 65
    .line 66
    const/16 v7, 0xcb

    .line 67
    .line 68
    const/16 v6, 0xe6

    .line 69
    .line 70
    const/16 v9, 0xa

    .line 71
    .line 72
    invoke-static {v12, v8, v7, v6, v9}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    const/16 v7, 0xf1

    .line 77
    .line 78
    const/16 v12, 0x66

    .line 79
    .line 80
    move/from16 v21, v9

    .line 81
    .line 82
    const/4 v9, 0x5

    .line 83
    invoke-static {v12, v8, v9, v9, v7}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    move/from16 v22, v9

    .line 88
    .line 89
    const/16 v9, 0x67

    .line 90
    .line 91
    const/16 v12, 0x70

    .line 92
    .line 93
    const/16 v10, 0x24

    .line 94
    .line 95
    invoke-static {v9, v8, v12, v10, v4}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const/16 v12, 0x68

    .line 100
    .line 101
    move/from16 v23, v4

    .line 102
    .line 103
    const/16 v4, 0xbe

    .line 104
    .line 105
    const/16 v13, 0x35

    .line 106
    .line 107
    invoke-static {v12, v1, v0, v4, v13}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/16 v4, 0x94

    .line 112
    .line 113
    const/16 v13, 0x11

    .line 114
    .line 115
    const/16 v12, 0x69

    .line 116
    .line 117
    invoke-static {v12, v8, v10, v4, v13}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const/16 v10, 0x80

    .line 122
    .line 123
    const/16 v13, 0x1e

    .line 124
    .line 125
    const/16 v12, 0x6a

    .line 126
    .line 127
    const/16 v0, 0x3a

    .line 128
    .line 129
    invoke-static {v12, v8, v0, v10, v13}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/16 v8, 0xe

    .line 134
    .line 135
    const/16 v10, 0x81

    .line 136
    .line 137
    const/16 v13, 0x6b

    .line 138
    .line 139
    const/16 v12, 0xc1

    .line 140
    .line 141
    invoke-static {v13, v12, v3, v8, v10}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    const/16 v10, 0x2a

    .line 146
    .line 147
    const/16 v12, 0x6c

    .line 148
    .line 149
    const/16 v13, 0x53

    .line 150
    .line 151
    move/from16 v25, v3

    .line 152
    .line 153
    const/16 v3, 0xc7

    .line 154
    .line 155
    invoke-static {v12, v3, v14, v13, v10}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    const/16 v10, 0xca

    .line 160
    .line 161
    move/from16 v24, v14

    .line 162
    .line 163
    const/16 v14, 0x1b

    .line 164
    .line 165
    const/16 v12, 0x6d

    .line 166
    .line 167
    move-object/from16 v20, v0

    .line 168
    .line 169
    const/16 v0, 0xc

    .line 170
    .line 171
    const/16 v13, 0x21

    .line 172
    .line 173
    invoke-static {v12, v10, v0, v14, v13}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    const/16 v0, 0xd

    .line 178
    .line 179
    new-array v13, v0, [Ljava/net/Inet4Address;

    .line 180
    .line 181
    aput-object v2, v13, v25

    .line 182
    .line 183
    const/4 v0, 0x1

    .line 184
    aput-object v5, v13, v0

    .line 185
    .line 186
    const/4 v2, 0x2

    .line 187
    aput-object v11, v13, v2

    .line 188
    .line 189
    const/4 v5, 0x3

    .line 190
    aput-object v15, v13, v5

    .line 191
    .line 192
    aput-object v6, v13, v23

    .line 193
    .line 194
    aput-object v7, v13, v22

    .line 195
    .line 196
    const/4 v6, 0x6

    .line 197
    aput-object v9, v13, v6

    .line 198
    .line 199
    aput-object v1, v13, v24

    .line 200
    .line 201
    const/16 v1, 0x8

    .line 202
    .line 203
    aput-object v4, v13, v1

    .line 204
    .line 205
    const/16 v4, 0x9

    .line 206
    .line 207
    aput-object v20, v13, v4

    .line 208
    .line 209
    aput-object v8, v13, v21

    .line 210
    .line 211
    const/16 v7, 0xb

    .line 212
    .line 213
    aput-object v3, v13, v7

    .line 214
    .line 215
    const/16 v3, 0xc

    .line 216
    .line 217
    aput-object v10, v13, v3

    .line 218
    .line 219
    sput-object v13, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVERS:[Ljava/net/Inet4Address;

    .line 220
    .line 221
    const/16 v8, 0x503

    .line 222
    .line 223
    const v9, 0xba3e

    .line 224
    .line 225
    .line 226
    const/16 v10, 0x30

    .line 227
    .line 228
    const/16 v11, 0x61

    .line 229
    .line 230
    invoke-static {v11, v8, v9, v2, v10}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    const/16 v11, 0x84

    .line 235
    .line 236
    const/16 v13, 0x500

    .line 237
    .line 238
    move/from16 v14, v25

    .line 239
    .line 240
    const/16 v15, 0x62

    .line 241
    .line 242
    invoke-static {v15, v13, v11, v14, v7}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    const/16 v11, 0x63

    .line 247
    .line 248
    invoke-static {v11, v13, v2, v14, v3}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    const/16 v11, 0x2d

    .line 253
    .line 254
    move/from16 v16, v1

    .line 255
    .line 256
    const/16 v1, 0xd

    .line 257
    .line 258
    const/16 v15, 0x64

    .line 259
    .line 260
    invoke-static {v15, v13, v11, v14, v1}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const/16 v11, 0x2f

    .line 265
    .line 266
    const/16 v15, 0xf

    .line 267
    .line 268
    move/from16 v17, v4

    .line 269
    .line 270
    const/16 v4, 0x66

    .line 271
    .line 272
    invoke-static {v4, v13, v11, v14, v15}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    const/16 v11, 0x68

    .line 277
    .line 278
    const/16 v15, 0x53

    .line 279
    .line 280
    invoke-static {v11, v13, v0, v14, v15}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    move/from16 v18, v0

    .line 285
    .line 286
    const/16 v0, 0x7fe

    .line 287
    .line 288
    move/from16 v19, v6

    .line 289
    .line 290
    const/16 v6, 0x69

    .line 291
    .line 292
    invoke-static {v6, v0, v14, v14, v15}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    const/16 v6, 0xc27

    .line 297
    .line 298
    const/16 v15, 0x6a

    .line 299
    .line 300
    invoke-static {v15, v8, v6, v2, v10}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    const/16 v8, 0x42

    .line 305
    .line 306
    const/16 v10, 0x6c

    .line 307
    .line 308
    invoke-static {v10, v13, v5, v14, v8}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    const/16 v10, 0xdc3

    .line 313
    .line 314
    const/16 v13, 0x35

    .line 315
    .line 316
    invoke-static {v12, v10, v14, v14, v13}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIII)Ljava/net/Inet6Address;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    move/from16 v12, v21

    .line 321
    .line 322
    new-array v12, v12, [Ljava/net/Inet6Address;

    .line 323
    .line 324
    aput-object v9, v12, v14

    .line 325
    .line 326
    aput-object v7, v12, v18

    .line 327
    .line 328
    aput-object v3, v12, v2

    .line 329
    .line 330
    aput-object v1, v12, v5

    .line 331
    .line 332
    aput-object v4, v12, v23

    .line 333
    .line 334
    aput-object v11, v12, v22

    .line 335
    .line 336
    aput-object v0, v12, v19

    .line 337
    .line 338
    aput-object v6, v12, v24

    .line 339
    .line 340
    aput-object v8, v12, v16

    .line 341
    .line 342
    aput-object v10, v12, v17

    .line 343
    .line 344
    sput-object v12, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVERS:[Ljava/net/Inet6Address;

    .line 345
    .line 346
    return-void
.end method

.method public static rootServerInet4Address(CIIII)Ljava/net/Inet4Address;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, ".root-servers.net"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    int-to-byte p1, p1

    .line 19
    int-to-byte p2, p2

    .line 20
    int-to-byte p3, p3

    .line 21
    int-to-byte p4, p4

    .line 22
    const/4 v1, 0x4

    .line 23
    :try_start_0
    new-array v1, v1, [B

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-byte p1, v1, v2

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    aput-byte p2, v1, p1

    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    aput-byte p3, v1, p1

    .line 33
    .line 34
    const/4 p1, 0x3

    .line 35
    aput-byte p4, v1, p1

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Ljava/net/Inet4Address;

    .line 42
    .line 43
    sget-object p2, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVER_MAP:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    return-object p1

    .line 53
    :catch_0
    move-exception p0

    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return-object p0
.end method

.method public static rootServerInet6Address(CIIII)Ljava/net/Inet6Address;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v1, ".root-servers.net"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    shr-int/lit8 v1, p1, 0x8

    .line 19
    .line 20
    int-to-byte v1, v1

    .line 21
    int-to-byte p1, p1

    .line 22
    shr-int/lit8 v2, p2, 0x8

    .line 23
    .line 24
    int-to-byte v2, v2

    .line 25
    int-to-byte p2, p2

    .line 26
    int-to-byte p3, p3

    .line 27
    int-to-byte p4, p4

    .line 28
    const/16 v3, 0x10

    .line 29
    .line 30
    :try_start_0
    new-array v3, v3, [B

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/16 v5, 0x20

    .line 34
    .line 35
    aput-byte v5, v3, v4

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    aput-byte v5, v3, v5

    .line 39
    .line 40
    const/4 v5, 0x2

    .line 41
    aput-byte v1, v3, v5

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    aput-byte p1, v3, v1

    .line 45
    .line 46
    const/4 p1, 0x4

    .line 47
    aput-byte v2, v3, p1

    .line 48
    .line 49
    const/4 p1, 0x5

    .line 50
    aput-byte p2, v3, p1

    .line 51
    .line 52
    const/4 p1, 0x6

    .line 53
    aput-byte v4, v3, p1

    .line 54
    .line 55
    const/4 p1, 0x7

    .line 56
    aput-byte v4, v3, p1

    .line 57
    .line 58
    const/16 p1, 0x8

    .line 59
    .line 60
    aput-byte v4, v3, p1

    .line 61
    .line 62
    const/16 p1, 0x9

    .line 63
    .line 64
    aput-byte v4, v3, p1

    .line 65
    .line 66
    const/16 p1, 0xa

    .line 67
    .line 68
    aput-byte v4, v3, p1

    .line 69
    .line 70
    const/16 p1, 0xb

    .line 71
    .line 72
    aput-byte v4, v3, p1

    .line 73
    .line 74
    const/16 p1, 0xc

    .line 75
    .line 76
    aput-byte v4, v3, p1

    .line 77
    .line 78
    const/16 p1, 0xd

    .line 79
    .line 80
    aput-byte p3, v3, p1

    .line 81
    .line 82
    const/16 p1, 0xe

    .line 83
    .line 84
    aput-byte v4, v3, p1

    .line 85
    .line 86
    const/16 p1, 0xf

    .line 87
    .line 88
    aput-byte p4, v3, p1

    .line 89
    .line 90
    invoke-static {v0, v3}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Ljava/net/Inet6Address;

    .line 95
    .line 96
    sget-object p2, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVER_MAP:Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :catch_0
    move-exception p0

    .line 107
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    const/4 p0, 0x0

    .line 111
    return-object p0
.end method
