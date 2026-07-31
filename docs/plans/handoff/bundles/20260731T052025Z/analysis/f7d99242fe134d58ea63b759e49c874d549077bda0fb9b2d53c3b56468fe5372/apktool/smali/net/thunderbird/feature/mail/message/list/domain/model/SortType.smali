.class public final enum Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum ArrivalAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum ArrivalDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum AttachmentAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum AttachmentDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum DateAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum DateDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum FlaggedAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum FlaggedDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum SenderAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum SenderDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum SubjectAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum SubjectDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum UnreadAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

.field public static final enum UnreadDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;


# instance fields
.field public final labelResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 1
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 2
    .line 3
    const v1, 0x7f1205fa

    .line 4
    .line 5
    .line 6
    const-string v2, "DateAsc"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v1}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->DateAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 13
    .line 14
    new-instance v1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 15
    .line 16
    const v2, 0x7f1205fb

    .line 17
    .line 18
    .line 19
    const-string v4, "DateDesc"

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v1, v4, v5, v2}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->DateDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 26
    .line 27
    new-instance v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 28
    .line 29
    const v4, 0x7f1205f4

    .line 30
    .line 31
    .line 32
    const-string v6, "ArrivalAsc"

    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    invoke-direct {v2, v6, v7, v4}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->ArrivalAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 39
    .line 40
    new-instance v4, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 41
    .line 42
    const v6, 0x7f1205f5

    .line 43
    .line 44
    .line 45
    const-string v8, "ArrivalDesc"

    .line 46
    .line 47
    const/4 v9, 0x3

    .line 48
    invoke-direct {v4, v8, v9, v6}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v4, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->ArrivalDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 52
    .line 53
    new-instance v6, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 54
    .line 55
    const v8, 0x7f120603

    .line 56
    .line 57
    .line 58
    const-string v10, "SubjectAsc"

    .line 59
    .line 60
    const/4 v11, 0x4

    .line 61
    invoke-direct {v6, v10, v11, v8}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v6, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->SubjectAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 65
    .line 66
    new-instance v8, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 67
    .line 68
    const v10, 0x7f120604

    .line 69
    .line 70
    .line 71
    const-string v12, "SubjectDesc"

    .line 72
    .line 73
    const/4 v13, 0x5

    .line 74
    invoke-direct {v8, v12, v13, v10}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 75
    .line 76
    .line 77
    sput-object v8, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->SubjectDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 78
    .line 79
    new-instance v10, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 80
    .line 81
    const v12, 0x7f120600

    .line 82
    .line 83
    .line 84
    const-string v14, "SenderAsc"

    .line 85
    .line 86
    const/4 v15, 0x6

    .line 87
    invoke-direct {v10, v14, v15, v12}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    sput-object v10, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->SenderAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 91
    .line 92
    new-instance v12, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 93
    .line 94
    const v14, 0x7f120601

    .line 95
    .line 96
    .line 97
    move/from16 v16, v3

    .line 98
    .line 99
    const-string v3, "SenderDesc"

    .line 100
    .line 101
    move/from16 v17, v5

    .line 102
    .line 103
    const/4 v5, 0x7

    .line 104
    invoke-direct {v12, v3, v5, v14}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 105
    .line 106
    .line 107
    sput-object v12, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->SenderDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 108
    .line 109
    new-instance v3, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 110
    .line 111
    const v14, 0x7f1205fd

    .line 112
    .line 113
    .line 114
    move/from16 v18, v5

    .line 115
    .line 116
    const-string v5, "FlaggedAsc"

    .line 117
    .line 118
    move/from16 v19, v7

    .line 119
    .line 120
    const/16 v7, 0x8

    .line 121
    .line 122
    invoke-direct {v3, v5, v7, v14}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 123
    .line 124
    .line 125
    sput-object v3, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->FlaggedAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 126
    .line 127
    new-instance v5, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 128
    .line 129
    const v14, 0x7f1205fe

    .line 130
    .line 131
    .line 132
    move/from16 v20, v7

    .line 133
    .line 134
    const-string v7, "FlaggedDesc"

    .line 135
    .line 136
    move/from16 v21, v9

    .line 137
    .line 138
    const/16 v9, 0x9

    .line 139
    .line 140
    invoke-direct {v5, v7, v9, v14}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    sput-object v5, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->FlaggedDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 144
    .line 145
    new-instance v7, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 146
    .line 147
    const v14, 0x7f120607

    .line 148
    .line 149
    .line 150
    move/from16 v22, v9

    .line 151
    .line 152
    const-string v9, "UnreadAsc"

    .line 153
    .line 154
    move/from16 v23, v11

    .line 155
    .line 156
    const/16 v11, 0xa

    .line 157
    .line 158
    invoke-direct {v7, v9, v11, v14}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 159
    .line 160
    .line 161
    sput-object v7, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->UnreadAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 162
    .line 163
    new-instance v9, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 164
    .line 165
    const v14, 0x7f120608

    .line 166
    .line 167
    .line 168
    move/from16 v24, v11

    .line 169
    .line 170
    const-string v11, "UnreadDesc"

    .line 171
    .line 172
    move/from16 v25, v13

    .line 173
    .line 174
    const/16 v13, 0xb

    .line 175
    .line 176
    invoke-direct {v9, v11, v13, v14}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 177
    .line 178
    .line 179
    sput-object v9, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->UnreadDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 180
    .line 181
    new-instance v11, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 182
    .line 183
    const v14, 0x7f1205f7

    .line 184
    .line 185
    .line 186
    move/from16 v26, v13

    .line 187
    .line 188
    const-string v13, "AttachmentAsc"

    .line 189
    .line 190
    move/from16 v27, v15

    .line 191
    .line 192
    const/16 v15, 0xc

    .line 193
    .line 194
    invoke-direct {v11, v13, v15, v14}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 195
    .line 196
    .line 197
    sput-object v11, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->AttachmentAsc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 198
    .line 199
    new-instance v13, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 200
    .line 201
    const v14, 0x7f1205f8

    .line 202
    .line 203
    .line 204
    move/from16 v28, v15

    .line 205
    .line 206
    const-string v15, "AttachmentDesc"

    .line 207
    .line 208
    move-object/from16 v29, v0

    .line 209
    .line 210
    const/16 v0, 0xd

    .line 211
    .line 212
    invoke-direct {v13, v15, v0, v14}, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;-><init>(Ljava/lang/String;II)V

    .line 213
    .line 214
    .line 215
    sput-object v13, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->AttachmentDesc:Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 216
    .line 217
    const/16 v14, 0xe

    .line 218
    .line 219
    new-array v14, v14, [Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 220
    .line 221
    aput-object v29, v14, v16

    .line 222
    .line 223
    aput-object v1, v14, v17

    .line 224
    .line 225
    aput-object v2, v14, v19

    .line 226
    .line 227
    aput-object v4, v14, v21

    .line 228
    .line 229
    aput-object v6, v14, v23

    .line 230
    .line 231
    aput-object v8, v14, v25

    .line 232
    .line 233
    aput-object v10, v14, v27

    .line 234
    .line 235
    aput-object v12, v14, v18

    .line 236
    .line 237
    aput-object v3, v14, v20

    .line 238
    .line 239
    aput-object v5, v14, v22

    .line 240
    .line 241
    aput-object v7, v14, v24

    .line 242
    .line 243
    aput-object v9, v14, v26

    .line 244
    .line 245
    aput-object v11, v14, v28

    .line 246
    .line 247
    aput-object v13, v14, v0

    .line 248
    .line 249
    sput-object v14, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->$VALUES:[Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 250
    .line 251
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 252
    .line 253
    invoke-direct {v0, v14}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 254
    .line 255
    .line 256
    sput-object v0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 257
    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->labelResId:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;
    .locals 1

    .line 1
    const-class v0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;
    .locals 1

    .line 1
    sget-object v0, Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;->$VALUES:[Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/thunderbird/feature/mail/message/list/domain/model/SortType;

    .line 8
    .line 9
    return-object v0
.end method
