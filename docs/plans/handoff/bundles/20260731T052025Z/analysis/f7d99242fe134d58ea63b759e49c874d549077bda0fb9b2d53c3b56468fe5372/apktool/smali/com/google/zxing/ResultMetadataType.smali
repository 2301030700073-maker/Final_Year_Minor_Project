.class public final enum Lcom/google/zxing/ResultMetadataType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/zxing/ResultMetadataType;

.field public static final enum BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

.field public static final enum SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    .line 2
    .line 3
    const-string v1, "OTHER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/zxing/ResultMetadataType;

    .line 10
    .line 11
    const-string v3, "ORIENTATION"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lcom/google/zxing/ResultMetadataType;

    .line 18
    .line 19
    const-string v5, "BYTE_SEGMENTS"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v3, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    .line 26
    .line 27
    new-instance v5, Lcom/google/zxing/ResultMetadataType;

    .line 28
    .line 29
    const-string v7, "ERROR_CORRECTION_LEVEL"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v5, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 36
    .line 37
    new-instance v7, Lcom/google/zxing/ResultMetadataType;

    .line 38
    .line 39
    const-string v9, "ERRORS_CORRECTED"

    .line 40
    .line 41
    const/4 v10, 0x4

    .line 42
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    new-instance v9, Lcom/google/zxing/ResultMetadataType;

    .line 46
    .line 47
    const-string v11, "ERASURES_CORRECTED"

    .line 48
    .line 49
    const/4 v12, 0x5

    .line 50
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    new-instance v11, Lcom/google/zxing/ResultMetadataType;

    .line 54
    .line 55
    const-string v13, "ISSUE_NUMBER"

    .line 56
    .line 57
    const/4 v14, 0x6

    .line 58
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    new-instance v13, Lcom/google/zxing/ResultMetadataType;

    .line 62
    .line 63
    const-string v15, "SUGGESTED_PRICE"

    .line 64
    .line 65
    move/from16 v16, v2

    .line 66
    .line 67
    const/4 v2, 0x7

    .line 68
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    new-instance v15, Lcom/google/zxing/ResultMetadataType;

    .line 72
    .line 73
    move/from16 v17, v2

    .line 74
    .line 75
    const-string v2, "POSSIBLE_COUNTRY"

    .line 76
    .line 77
    move/from16 v18, v4

    .line 78
    .line 79
    const/16 v4, 0x8

    .line 80
    .line 81
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcom/google/zxing/ResultMetadataType;

    .line 85
    .line 86
    move/from16 v19, v4

    .line 87
    .line 88
    const-string v4, "UPC_EAN_EXTENSION"

    .line 89
    .line 90
    move/from16 v20, v6

    .line 91
    .line 92
    const/16 v6, 0x9

    .line 93
    .line 94
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    new-instance v4, Lcom/google/zxing/ResultMetadataType;

    .line 98
    .line 99
    move/from16 v21, v6

    .line 100
    .line 101
    const-string v6, "PDF417_EXTRA_METADATA"

    .line 102
    .line 103
    move/from16 v22, v8

    .line 104
    .line 105
    const/16 v8, 0xa

    .line 106
    .line 107
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    new-instance v6, Lcom/google/zxing/ResultMetadataType;

    .line 111
    .line 112
    move/from16 v23, v8

    .line 113
    .line 114
    const-string v8, "STRUCTURED_APPEND_SEQUENCE"

    .line 115
    .line 116
    move/from16 v24, v10

    .line 117
    .line 118
    const/16 v10, 0xb

    .line 119
    .line 120
    invoke-direct {v6, v8, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v6, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    .line 124
    .line 125
    new-instance v8, Lcom/google/zxing/ResultMetadataType;

    .line 126
    .line 127
    move/from16 v25, v10

    .line 128
    .line 129
    const-string v10, "STRUCTURED_APPEND_PARITY"

    .line 130
    .line 131
    move/from16 v26, v12

    .line 132
    .line 133
    const/16 v12, 0xc

    .line 134
    .line 135
    invoke-direct {v8, v10, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    sput-object v8, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    .line 139
    .line 140
    new-instance v10, Lcom/google/zxing/ResultMetadataType;

    .line 141
    .line 142
    move/from16 v27, v12

    .line 143
    .line 144
    const-string v12, "SYMBOLOGY_IDENTIFIER"

    .line 145
    .line 146
    move/from16 v28, v14

    .line 147
    .line 148
    const/16 v14, 0xd

    .line 149
    .line 150
    invoke-direct {v10, v12, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    .line 152
    .line 153
    sput-object v10, Lcom/google/zxing/ResultMetadataType;->SYMBOLOGY_IDENTIFIER:Lcom/google/zxing/ResultMetadataType;

    .line 154
    .line 155
    const/16 v12, 0xe

    .line 156
    .line 157
    new-array v12, v12, [Lcom/google/zxing/ResultMetadataType;

    .line 158
    .line 159
    aput-object v0, v12, v16

    .line 160
    .line 161
    aput-object v1, v12, v18

    .line 162
    .line 163
    aput-object v3, v12, v20

    .line 164
    .line 165
    aput-object v5, v12, v22

    .line 166
    .line 167
    aput-object v7, v12, v24

    .line 168
    .line 169
    aput-object v9, v12, v26

    .line 170
    .line 171
    aput-object v11, v12, v28

    .line 172
    .line 173
    aput-object v13, v12, v17

    .line 174
    .line 175
    aput-object v15, v12, v19

    .line 176
    .line 177
    aput-object v2, v12, v21

    .line 178
    .line 179
    aput-object v4, v12, v23

    .line 180
    .line 181
    aput-object v6, v12, v25

    .line 182
    .line 183
    aput-object v8, v12, v27

    .line 184
    .line 185
    aput-object v10, v12, v14

    .line 186
    .line 187
    sput-object v12, Lcom/google/zxing/ResultMetadataType;->$VALUES:[Lcom/google/zxing/ResultMetadataType;

    .line 188
    .line 189
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/ResultMetadataType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/zxing/ResultMetadataType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/zxing/ResultMetadataType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/google/zxing/ResultMetadataType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->$VALUES:[Lcom/google/zxing/ResultMetadataType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/google/zxing/ResultMetadataType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/zxing/ResultMetadataType;

    .line 8
    .line 9
    return-object v0
.end method
