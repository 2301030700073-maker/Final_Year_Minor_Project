.class public final enum Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum DSA:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum DSA_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum ECC_GOST:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum ECDSAP256SHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum ECDSAP384SHA384:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSAMD5:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA1_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA512:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 2
    .line 3
    const-string v1, "RSAMD5"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSAMD5:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 11
    .line 12
    new-instance v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 13
    .line 14
    const-string v4, "DH"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    new-instance v4, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 21
    .line 22
    const-string v6, "DSA"

    .line 23
    .line 24
    const/4 v7, 0x3

    .line 25
    invoke-direct {v4, v6, v5, v7}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    sput-object v4, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 29
    .line 30
    new-instance v6, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 31
    .line 32
    const-string v8, "RSASHA1"

    .line 33
    .line 34
    const/4 v9, 0x5

    .line 35
    invoke-direct {v6, v8, v7, v9}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v6, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 39
    .line 40
    new-instance v8, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 41
    .line 42
    const-string v10, "DSA_NSEC3_SHA1"

    .line 43
    .line 44
    const/4 v11, 0x4

    .line 45
    const/4 v12, 0x6

    .line 46
    invoke-direct {v8, v10, v11, v12}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    sput-object v8, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 50
    .line 51
    new-instance v10, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 52
    .line 53
    const-string v13, "RSASHA1_NSEC3_SHA1"

    .line 54
    .line 55
    const/4 v14, 0x7

    .line 56
    invoke-direct {v10, v13, v9, v14}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v10, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 60
    .line 61
    new-instance v13, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 62
    .line 63
    const-string v15, "RSASHA256"

    .line 64
    .line 65
    move/from16 v16, v2

    .line 66
    .line 67
    const/16 v2, 0x8

    .line 68
    .line 69
    invoke-direct {v13, v15, v12, v2}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 70
    .line 71
    .line 72
    sput-object v13, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 73
    .line 74
    new-instance v15, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 75
    .line 76
    move/from16 v17, v3

    .line 77
    .line 78
    const-string v3, "RSASHA512"

    .line 79
    .line 80
    move/from16 v18, v5

    .line 81
    .line 82
    const/16 v5, 0xa

    .line 83
    .line 84
    invoke-direct {v15, v3, v14, v5}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    sput-object v15, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA512:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 88
    .line 89
    new-instance v3, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 90
    .line 91
    move/from16 v19, v7

    .line 92
    .line 93
    const-string v7, "ECC_GOST"

    .line 94
    .line 95
    move/from16 v20, v9

    .line 96
    .line 97
    const/16 v9, 0xc

    .line 98
    .line 99
    invoke-direct {v3, v7, v2, v9}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    sput-object v3, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECC_GOST:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 103
    .line 104
    new-instance v7, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 105
    .line 106
    move/from16 v21, v2

    .line 107
    .line 108
    const-string v2, "ECDSAP256SHA256"

    .line 109
    .line 110
    move/from16 v22, v11

    .line 111
    .line 112
    const/16 v11, 0x9

    .line 113
    .line 114
    move/from16 v23, v12

    .line 115
    .line 116
    const/16 v12, 0xd

    .line 117
    .line 118
    invoke-direct {v7, v2, v11, v12}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    sput-object v7, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP256SHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 122
    .line 123
    new-instance v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 124
    .line 125
    move/from16 v24, v11

    .line 126
    .line 127
    const-string v11, "ECDSAP384SHA384"

    .line 128
    .line 129
    move/from16 v25, v14

    .line 130
    .line 131
    const/16 v14, 0xe

    .line 132
    .line 133
    invoke-direct {v2, v11, v5, v14}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 134
    .line 135
    .line 136
    sput-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP384SHA384:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 137
    .line 138
    new-instance v11, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 139
    .line 140
    move/from16 v26, v5

    .line 141
    .line 142
    const/16 v5, 0xfc

    .line 143
    .line 144
    const-string v14, "INDIRECT"

    .line 145
    .line 146
    const/16 v12, 0xb

    .line 147
    .line 148
    invoke-direct {v11, v14, v12, v5}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 149
    .line 150
    .line 151
    new-instance v5, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 152
    .line 153
    const-string v14, "PRIVATEDNS"

    .line 154
    .line 155
    move/from16 v28, v12

    .line 156
    .line 157
    const/16 v12, 0xfd

    .line 158
    .line 159
    invoke-direct {v5, v14, v9, v12}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 160
    .line 161
    .line 162
    new-instance v12, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 163
    .line 164
    const-string v14, "PRIVATEOID"

    .line 165
    .line 166
    move/from16 v29, v9

    .line 167
    .line 168
    const/16 v9, 0xfe

    .line 169
    .line 170
    move-object/from16 v30, v0

    .line 171
    .line 172
    const/16 v0, 0xd

    .line 173
    .line 174
    invoke-direct {v12, v14, v0, v9}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;II)V

    .line 175
    .line 176
    .line 177
    const/16 v0, 0xe

    .line 178
    .line 179
    new-array v0, v0, [Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 180
    .line 181
    aput-object v30, v0, v16

    .line 182
    .line 183
    aput-object v1, v0, v17

    .line 184
    .line 185
    aput-object v4, v0, v18

    .line 186
    .line 187
    aput-object v6, v0, v19

    .line 188
    .line 189
    aput-object v8, v0, v22

    .line 190
    .line 191
    aput-object v10, v0, v20

    .line 192
    .line 193
    aput-object v13, v0, v23

    .line 194
    .line 195
    aput-object v15, v0, v25

    .line 196
    .line 197
    aput-object v3, v0, v21

    .line 198
    .line 199
    aput-object v7, v0, v24

    .line 200
    .line 201
    aput-object v2, v0, v26

    .line 202
    .line 203
    aput-object v11, v0, v28

    .line 204
    .line 205
    aput-object v5, v0, v29

    .line 206
    .line 207
    const/16 v27, 0xd

    .line 208
    .line 209
    aput-object v12, v0, v27

    .line 210
    .line 211
    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->$VALUES:[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 212
    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    if-ltz p3, :cond_0

    .line 5
    .line 6
    const/16 p1, 0xff

    .line 7
    .line 8
    if-gt p3, p1, :cond_0

    .line 9
    .line 10
    int-to-byte p1, p3

    .line 11
    sget-object p2, Lorg/minidns/constants/DnssecConstants;->SIGNATURE_ALGORITHM_LUT:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    throw p0
.end method

.method public static forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/constants/DnssecConstants;->SIGNATURE_ALGORITHM_LUT:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 12
    .line 13
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .locals 1

    .line 1
    const-class v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->$VALUES:[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 8
    .line 9
    return-object v0
.end method
