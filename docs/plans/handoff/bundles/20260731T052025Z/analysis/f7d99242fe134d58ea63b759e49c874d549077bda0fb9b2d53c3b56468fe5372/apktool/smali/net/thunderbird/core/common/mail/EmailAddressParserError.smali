.class public final enum Lnet/thunderbird/core/common/mail/EmailAddressParserError;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum AddressLiteralsNotSupported:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum DnsLabelLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum DomainLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum EmptyLocalPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum ExpectedEndOfInput:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum InvalidDomainPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum InvalidDotString:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum InvalidLocalPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum InvalidQuotedString:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum LocalPartLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum LocalPartRequiresQuotedString:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum QuotedStringInLocalPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum TotalLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum UnexpectedCharacter:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

.field public static final enum UnexpectedEndOfInput:Lnet/thunderbird/core/common/mail/EmailAddressParserError;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    new-instance v0, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 2
    .line 3
    const-string v1, "UnexpectedEndOfInput"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->UnexpectedEndOfInput:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 10
    .line 11
    new-instance v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 12
    .line 13
    const-string v3, "ExpectedEndOfInput"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->ExpectedEndOfInput:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 20
    .line 21
    new-instance v3, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 22
    .line 23
    const-string v5, "InvalidLocalPart"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->InvalidLocalPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 30
    .line 31
    new-instance v5, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 32
    .line 33
    const-string v7, "InvalidDotString"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->InvalidDotString:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 40
    .line 41
    new-instance v7, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 42
    .line 43
    const-string v9, "InvalidQuotedString"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->InvalidQuotedString:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 50
    .line 51
    new-instance v9, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 52
    .line 53
    const-string v11, "InvalidDomainPart"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->InvalidDomainPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 60
    .line 61
    new-instance v11, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 62
    .line 63
    const-string v13, "AddressLiteralsNotSupported"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->AddressLiteralsNotSupported:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 70
    .line 71
    new-instance v13, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 72
    .line 73
    const-string v15, "LocalPartLengthExceeded"

    .line 74
    .line 75
    move/from16 v16, v2

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-direct {v13, v15, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    sput-object v13, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->LocalPartLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 82
    .line 83
    new-instance v15, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 84
    .line 85
    move/from16 v17, v2

    .line 86
    .line 87
    const-string v2, "DnsLabelLengthExceeded"

    .line 88
    .line 89
    move/from16 v18, v4

    .line 90
    .line 91
    const/16 v4, 0x8

    .line 92
    .line 93
    invoke-direct {v15, v2, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    sput-object v15, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->DnsLabelLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 97
    .line 98
    new-instance v2, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 99
    .line 100
    move/from16 v19, v4

    .line 101
    .line 102
    const-string v4, "DomainLengthExceeded"

    .line 103
    .line 104
    move/from16 v20, v6

    .line 105
    .line 106
    const/16 v6, 0x9

    .line 107
    .line 108
    invoke-direct {v2, v4, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    sput-object v2, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->DomainLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 112
    .line 113
    new-instance v4, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 114
    .line 115
    move/from16 v21, v6

    .line 116
    .line 117
    const-string v6, "TotalLengthExceeded"

    .line 118
    .line 119
    move/from16 v22, v8

    .line 120
    .line 121
    const/16 v8, 0xa

    .line 122
    .line 123
    invoke-direct {v4, v6, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    sput-object v4, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->TotalLengthExceeded:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 127
    .line 128
    new-instance v6, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 129
    .line 130
    move/from16 v23, v8

    .line 131
    .line 132
    const-string v8, "QuotedStringInLocalPart"

    .line 133
    .line 134
    move/from16 v24, v10

    .line 135
    .line 136
    const/16 v10, 0xb

    .line 137
    .line 138
    invoke-direct {v6, v8, v10}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    sput-object v6, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->QuotedStringInLocalPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 142
    .line 143
    new-instance v8, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 144
    .line 145
    move/from16 v25, v10

    .line 146
    .line 147
    const-string v10, "LocalPartRequiresQuotedString"

    .line 148
    .line 149
    move/from16 v26, v12

    .line 150
    .line 151
    const/16 v12, 0xc

    .line 152
    .line 153
    invoke-direct {v8, v10, v12}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    .line 155
    .line 156
    sput-object v8, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->LocalPartRequiresQuotedString:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 157
    .line 158
    new-instance v10, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 159
    .line 160
    move/from16 v27, v12

    .line 161
    .line 162
    const-string v12, "EmptyLocalPart"

    .line 163
    .line 164
    move/from16 v28, v14

    .line 165
    .line 166
    const/16 v14, 0xd

    .line 167
    .line 168
    invoke-direct {v10, v12, v14}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    sput-object v10, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->EmptyLocalPart:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 172
    .line 173
    new-instance v12, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 174
    .line 175
    move/from16 v29, v14

    .line 176
    .line 177
    const-string v14, "UnexpectedCharacter"

    .line 178
    .line 179
    move-object/from16 v30, v0

    .line 180
    .line 181
    const/16 v0, 0xe

    .line 182
    .line 183
    invoke-direct {v12, v14, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 184
    .line 185
    .line 186
    sput-object v12, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->UnexpectedCharacter:Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 187
    .line 188
    const/16 v14, 0xf

    .line 189
    .line 190
    new-array v14, v14, [Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 191
    .line 192
    aput-object v30, v14, v16

    .line 193
    .line 194
    aput-object v1, v14, v18

    .line 195
    .line 196
    aput-object v3, v14, v20

    .line 197
    .line 198
    aput-object v5, v14, v22

    .line 199
    .line 200
    aput-object v7, v14, v24

    .line 201
    .line 202
    aput-object v9, v14, v26

    .line 203
    .line 204
    aput-object v11, v14, v28

    .line 205
    .line 206
    aput-object v13, v14, v17

    .line 207
    .line 208
    aput-object v15, v14, v19

    .line 209
    .line 210
    aput-object v2, v14, v21

    .line 211
    .line 212
    aput-object v4, v14, v23

    .line 213
    .line 214
    aput-object v6, v14, v25

    .line 215
    .line 216
    aput-object v8, v14, v27

    .line 217
    .line 218
    aput-object v10, v14, v29

    .line 219
    .line 220
    aput-object v12, v14, v0

    .line 221
    .line 222
    sput-object v14, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->$VALUES:[Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 223
    .line 224
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/EmailAddressParserError;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/core/common/mail/EmailAddressParserError;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/core/common/mail/EmailAddressParserError;->$VALUES:[Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/core/common/mail/EmailAddressParserError;

    .line 8
    .line 9
    return-object v0
.end method
