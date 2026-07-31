.class public final enum Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;
.super Ljava/lang/Enum;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/model/EnumCode;


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum ALL_EDITORS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum ALL_EDITS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum BOT:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field private static final BOT_EDITS_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

.field public static final enum DAMAGING_GOOD:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field private static final DAMAGING_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DAMAGING_LIKELY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum DAMAGING_MAY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum DAMAGING_VERY_LIKELY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field private static final DEFAULT_FILTER_OTHERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FILTER_TYPE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FILTER_USER_STATUS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EXPERIENCED_USERS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum GOODFAITH_GOOD:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field private static final GOODFAITH_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GOODFAITH_LIKELY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum GOODFAITH_MAY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum GOODFAITH_VERY_LIKELY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum HUMAN:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum LATEST_REVISION:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field private static final LATEST_REVISIONS_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum LEARNERS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum MINOR_EDITS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field private static final MINOR_EDITS_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NEWCOMERS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum NON_MINOR_EDITS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum NOT_LATEST_REVISION:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum REGISTERED:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field public static final enum UNREGISTERED:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

.field private static final USER_EXPERIENCE_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_REGISTRATION_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/Integer;

.field private final id:Ljava/lang/String;

.field private final title:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 1
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 2
    .line 3
    const v5, 0x7f120575

    .line 4
    .line 5
    .line 6
    const/4 v6, 0x0

    .line 7
    const-string v1, "ALL_EDITS"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "allEdits"

    .line 11
    .line 12
    const-string v4, ""

    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->ALL_EDITS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 18
    .line 19
    new-instance v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 20
    .line 21
    const v6, 0x7f120589

    .line 22
    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    const-string v2, "MINOR_EDITS"

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    const-string v4, "minorEdits"

    .line 29
    .line 30
    const-string v5, "minor"

    .line 31
    .line 32
    invoke-direct/range {v1 .. v7}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->MINOR_EDITS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 36
    .line 37
    new-instance v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 38
    .line 39
    const v7, 0x7f120587

    .line 40
    .line 41
    .line 42
    const/4 v8, 0x0

    .line 43
    const-string v3, "NON_MINOR_EDITS"

    .line 44
    .line 45
    const/4 v4, 0x2

    .line 46
    const-string v5, "nonMinorEdits"

    .line 47
    .line 48
    const-string v6, "!minor"

    .line 49
    .line 50
    invoke-direct/range {v2 .. v8}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    sput-object v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->NON_MINOR_EDITS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 54
    .line 55
    new-instance v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 56
    .line 57
    const v8, 0x7f120575

    .line 58
    .line 59
    .line 60
    const/4 v9, 0x0

    .line 61
    const-string v4, "ALL_EDITORS"

    .line 62
    .line 63
    const/4 v5, 0x3

    .line 64
    const-string v6, "allEditors"

    .line 65
    .line 66
    const-string v7, ""

    .line 67
    .line 68
    invoke-direct/range {v3 .. v9}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 69
    .line 70
    .line 71
    sput-object v3, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->ALL_EDITORS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 72
    .line 73
    new-instance v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 74
    .line 75
    const v9, 0x7f120576

    .line 76
    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    const-string v5, "BOT"

    .line 80
    .line 81
    const/4 v6, 0x4

    .line 82
    const-string v7, "bot"

    .line 83
    .line 84
    const-string v8, "bot"

    .line 85
    .line 86
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 87
    .line 88
    .line 89
    sput-object v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->BOT:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 90
    .line 91
    new-instance v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 92
    .line 93
    const v10, 0x7f120578

    .line 94
    .line 95
    .line 96
    const/4 v11, 0x0

    .line 97
    const-string v6, "HUMAN"

    .line 98
    .line 99
    const/4 v7, 0x5

    .line 100
    const-string v8, "human"

    .line 101
    .line 102
    const-string v9, "!bot"

    .line 103
    .line 104
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 105
    .line 106
    .line 107
    sput-object v5, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->HUMAN:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 108
    .line 109
    new-instance v6, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 110
    .line 111
    const v11, 0x7f120584

    .line 112
    .line 113
    .line 114
    const/4 v12, 0x0

    .line 115
    const-string v7, "LATEST_REVISION"

    .line 116
    .line 117
    const/4 v8, 0x6

    .line 118
    const-string v9, "latestRevision"

    .line 119
    .line 120
    const-string v10, ""

    .line 121
    .line 122
    invoke-direct/range {v6 .. v12}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 123
    .line 124
    .line 125
    sput-object v6, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->LATEST_REVISION:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 126
    .line 127
    new-instance v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 128
    .line 129
    const v12, 0x7f120585

    .line 130
    .line 131
    .line 132
    const/4 v13, 0x0

    .line 133
    const-string v8, "NOT_LATEST_REVISION"

    .line 134
    .line 135
    const/4 v9, 0x7

    .line 136
    const-string v10, "notLatestRevision"

    .line 137
    .line 138
    const-string v11, "1"

    .line 139
    .line 140
    invoke-direct/range {v7 .. v13}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 141
    .line 142
    .line 143
    sput-object v7, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->NOT_LATEST_REVISION:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 144
    .line 145
    new-instance v8, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 146
    .line 147
    const v9, 0x7f12059e

    .line 148
    .line 149
    .line 150
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    const-string v9, "UNREGISTERED"

    .line 155
    .line 156
    const/16 v10, 0x8

    .line 157
    .line 158
    const-string/jumbo v11, "unregistered"

    .line 159
    .line 160
    .line 161
    const-string v12, "anon"

    .line 162
    .line 163
    const v13, 0x7f12059d

    .line 164
    .line 165
    .line 166
    invoke-direct/range {v8 .. v14}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 167
    .line 168
    .line 169
    sput-object v8, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->UNREGISTERED:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 170
    .line 171
    new-instance v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 172
    .line 173
    const v10, 0x7f12059c

    .line 174
    .line 175
    .line 176
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    const-string v10, "REGISTERED"

    .line 181
    .line 182
    const/16 v11, 0x9

    .line 183
    .line 184
    const-string v12, "registered"

    .line 185
    .line 186
    const-string v13, "!anon"

    .line 187
    .line 188
    const v14, 0x7f12059b

    .line 189
    .line 190
    .line 191
    invoke-direct/range {v9 .. v15}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 192
    .line 193
    .line 194
    sput-object v9, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->REGISTERED:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 195
    .line 196
    new-instance v10, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 197
    .line 198
    const v11, 0x7f12059a

    .line 199
    .line 200
    .line 201
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v16

    .line 205
    const-string v11, "NEWCOMERS"

    .line 206
    .line 207
    const/16 v12, 0xa

    .line 208
    .line 209
    const-string v13, "newcomers"

    .line 210
    .line 211
    const-string v14, "0,10|0,4"

    .line 212
    .line 213
    const v15, 0x7f120599

    .line 214
    .line 215
    .line 216
    invoke-direct/range {v10 .. v16}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 217
    .line 218
    .line 219
    sput-object v10, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->NEWCOMERS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 220
    .line 221
    new-instance v11, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 222
    .line 223
    const v12, 0x7f120598

    .line 224
    .line 225
    .line 226
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v17

    .line 230
    const-string v12, "LEARNERS"

    .line 231
    .line 232
    const/16 v13, 0xb

    .line 233
    .line 234
    const-string v14, "learners"

    .line 235
    .line 236
    const-string v15, "10,500|4,30"

    .line 237
    .line 238
    const v16, 0x7f120597

    .line 239
    .line 240
    .line 241
    invoke-direct/range {v11 .. v17}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 242
    .line 243
    .line 244
    sput-object v11, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->LEARNERS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 245
    .line 246
    new-instance v12, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 247
    .line 248
    const v13, 0x7f120595

    .line 249
    .line 250
    .line 251
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v18

    .line 255
    const-string v13, "EXPERIENCED_USERS"

    .line 256
    .line 257
    const/16 v14, 0xc

    .line 258
    .line 259
    const-string v15, "experiencedUsers"

    .line 260
    .line 261
    const-string v16, "500,-1|30,-1"

    .line 262
    .line 263
    const v17, 0x7f120594

    .line 264
    .line 265
    .line 266
    invoke-direct/range {v12 .. v18}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 267
    .line 268
    .line 269
    sput-object v12, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->EXPERIENCED_USERS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 270
    .line 271
    new-instance v13, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 272
    .line 273
    const v14, 0x7f12057c

    .line 274
    .line 275
    .line 276
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object v19

    .line 280
    const-string v14, "DAMAGING_GOOD"

    .line 281
    .line 282
    const/16 v15, 0xd

    .line 283
    .line 284
    const-string v16, "damagingGood"

    .line 285
    .line 286
    const-string v17, "0|0.149"

    .line 287
    .line 288
    const v18, 0x7f12057b

    .line 289
    .line 290
    .line 291
    invoke-direct/range {v13 .. v19}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 292
    .line 293
    .line 294
    sput-object v13, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DAMAGING_GOOD:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 295
    .line 296
    new-instance v14, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 297
    .line 298
    const v15, 0x7f120581

    .line 299
    .line 300
    .line 301
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v20

    .line 305
    const-string v15, "DAMAGING_MAY_PROBLEMS"

    .line 306
    .line 307
    const/16 v16, 0xe

    .line 308
    .line 309
    const-string v17, "damagingMayProblems"

    .line 310
    .line 311
    const-string v18, "0.149|0.629"

    .line 312
    .line 313
    const v19, 0x7f120580

    .line 314
    .line 315
    .line 316
    invoke-direct/range {v14 .. v20}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 317
    .line 318
    .line 319
    sput-object v14, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DAMAGING_MAY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 320
    .line 321
    new-instance v15, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 322
    .line 323
    const v16, 0x7f12057f

    .line 324
    .line 325
    .line 326
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v21

    .line 330
    const-string v16, "DAMAGING_LIKELY_PROBLEMS"

    .line 331
    .line 332
    const/16 v17, 0xf

    .line 333
    .line 334
    const-string v18, "damagingLikelyProblems"

    .line 335
    .line 336
    const-string v19, "0.629|0.944"

    .line 337
    .line 338
    const v20, 0x7f12057e

    .line 339
    .line 340
    .line 341
    invoke-direct/range {v15 .. v21}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 342
    .line 343
    .line 344
    sput-object v15, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DAMAGING_LIKELY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 345
    .line 346
    new-instance v16, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 347
    .line 348
    const v17, 0x7f12057a

    .line 349
    .line 350
    .line 351
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v22

    .line 355
    const-string v17, "DAMAGING_VERY_LIKELY_PROBLEMS"

    .line 356
    .line 357
    const/16 v18, 0x10

    .line 358
    .line 359
    const-string v19, "damagingBad"

    .line 360
    .line 361
    const-string v20, "0.944|1"

    .line 362
    .line 363
    const v21, 0x7f120579

    .line 364
    .line 365
    .line 366
    invoke-direct/range {v16 .. v22}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 367
    .line 368
    .line 369
    sput-object v16, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DAMAGING_VERY_LIKELY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 370
    .line 371
    new-instance v17, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 372
    .line 373
    const v18, 0x7f12058e

    .line 374
    .line 375
    .line 376
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 377
    .line 378
    .line 379
    move-result-object v23

    .line 380
    const-string v18, "GOODFAITH_GOOD"

    .line 381
    .line 382
    const/16 v19, 0x11

    .line 383
    .line 384
    const-string v20, "goodfaithGood"

    .line 385
    .line 386
    const-string v21, "0.75|1"

    .line 387
    .line 388
    const v22, 0x7f12058d

    .line 389
    .line 390
    .line 391
    invoke-direct/range {v17 .. v23}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 392
    .line 393
    .line 394
    sput-object v17, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->GOODFAITH_GOOD:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 395
    .line 396
    new-instance v18, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 397
    .line 398
    const v19, 0x7f120593

    .line 399
    .line 400
    .line 401
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v24

    .line 405
    const-string v19, "GOODFAITH_MAY_PROBLEMS"

    .line 406
    .line 407
    const/16 v20, 0x12

    .line 408
    .line 409
    const-string v21, "goodfaithMayProblems"

    .line 410
    .line 411
    const-string v22, "0.647|0.75"

    .line 412
    .line 413
    const v23, 0x7f120592

    .line 414
    .line 415
    .line 416
    invoke-direct/range {v18 .. v24}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 417
    .line 418
    .line 419
    sput-object v18, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->GOODFAITH_MAY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 420
    .line 421
    new-instance v19, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 422
    .line 423
    const v20, 0x7f120591

    .line 424
    .line 425
    .line 426
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object v25

    .line 430
    const-string v20, "GOODFAITH_LIKELY_PROBLEMS"

    .line 431
    .line 432
    const/16 v21, 0x13

    .line 433
    .line 434
    const-string v22, "goodfaithLikelyProblems"

    .line 435
    .line 436
    const-string v23, "0.25|0.647"

    .line 437
    .line 438
    const v24, 0x7f120590

    .line 439
    .line 440
    .line 441
    invoke-direct/range {v19 .. v25}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 442
    .line 443
    .line 444
    sput-object v19, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->GOODFAITH_LIKELY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 445
    .line 446
    new-instance v20, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 447
    .line 448
    const v21, 0x7f12058c

    .line 449
    .line 450
    .line 451
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v26

    .line 455
    const-string v21, "GOODFAITH_VERY_LIKELY_PROBLEMS"

    .line 456
    .line 457
    const/16 v22, 0x14

    .line 458
    .line 459
    const-string v23, "goodfaithBad"

    .line 460
    .line 461
    const-string v24, "0|0.25"

    .line 462
    .line 463
    const v25, 0x7f12058b

    .line 464
    .line 465
    .line 466
    invoke-direct/range {v20 .. v26}, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V

    .line 467
    .line 468
    .line 469
    sput-object v20, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->GOODFAITH_VERY_LIKELY_PROBLEMS:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 470
    .line 471
    move-object/from16 v21, v0

    .line 472
    .line 473
    const/16 v0, 0x15

    .line 474
    .line 475
    new-array v0, v0, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 476
    .line 477
    const/16 v22, 0x0

    .line 478
    .line 479
    aput-object v21, v0, v22

    .line 480
    .line 481
    const/16 v23, 0x1

    .line 482
    .line 483
    aput-object v1, v0, v23

    .line 484
    .line 485
    move-object/from16 v24, v1

    .line 486
    .line 487
    const/4 v1, 0x2

    .line 488
    aput-object v2, v0, v1

    .line 489
    .line 490
    move/from16 v25, v1

    .line 491
    .line 492
    const/4 v1, 0x3

    .line 493
    aput-object v3, v0, v1

    .line 494
    .line 495
    const/4 v1, 0x4

    .line 496
    aput-object v4, v0, v1

    .line 497
    .line 498
    const/16 v27, 0x5

    .line 499
    .line 500
    aput-object v5, v0, v27

    .line 501
    .line 502
    const/16 v27, 0x6

    .line 503
    .line 504
    aput-object v6, v0, v27

    .line 505
    .line 506
    const/16 v27, 0x7

    .line 507
    .line 508
    aput-object v7, v0, v27

    .line 509
    .line 510
    const/16 v27, 0x8

    .line 511
    .line 512
    aput-object v8, v0, v27

    .line 513
    .line 514
    const/16 v27, 0x9

    .line 515
    .line 516
    aput-object v9, v0, v27

    .line 517
    .line 518
    const/16 v27, 0xa

    .line 519
    .line 520
    aput-object v10, v0, v27

    .line 521
    .line 522
    const/16 v27, 0xb

    .line 523
    .line 524
    aput-object v11, v0, v27

    .line 525
    .line 526
    const/16 v27, 0xc

    .line 527
    .line 528
    aput-object v12, v0, v27

    .line 529
    .line 530
    const/16 v27, 0xd

    .line 531
    .line 532
    aput-object v13, v0, v27

    .line 533
    .line 534
    const/16 v27, 0xe

    .line 535
    .line 536
    aput-object v14, v0, v27

    .line 537
    .line 538
    const/16 v27, 0xf

    .line 539
    .line 540
    aput-object v15, v0, v27

    .line 541
    .line 542
    const/16 v27, 0x10

    .line 543
    .line 544
    aput-object v16, v0, v27

    .line 545
    .line 546
    const/16 v27, 0x11

    .line 547
    .line 548
    aput-object v17, v0, v27

    .line 549
    .line 550
    const/16 v27, 0x12

    .line 551
    .line 552
    aput-object v18, v0, v27

    .line 553
    .line 554
    const/16 v27, 0x13

    .line 555
    .line 556
    aput-object v19, v0, v27

    .line 557
    .line 558
    const/16 v27, 0x14

    .line 559
    .line 560
    aput-object v20, v0, v27

    .line 561
    .line 562
    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->$VALUES:[Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 563
    .line 564
    new-instance v1, Lkotlin/enums/EnumEntriesList;

    .line 565
    .line 566
    invoke-direct {v1, v0}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 567
    .line 568
    .line 569
    sput-object v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 570
    .line 571
    new-instance v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 572
    .line 573
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 574
    .line 575
    .line 576
    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->Companion:Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes$Companion;

    .line 577
    .line 578
    const/4 v0, 0x3

    .line 579
    new-array v1, v0, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 580
    .line 581
    aput-object v21, v1, v22

    .line 582
    .line 583
    aput-object v24, v1, v23

    .line 584
    .line 585
    aput-object v2, v1, v25

    .line 586
    .line 587
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    sput-object v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->MINOR_EDITS_GROUP:Ljava/util/List;

    .line 592
    .line 593
    new-array v1, v0, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 594
    .line 595
    aput-object v3, v1, v22

    .line 596
    .line 597
    aput-object v4, v1, v23

    .line 598
    .line 599
    aput-object v5, v1, v25

    .line 600
    .line 601
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->BOT_EDITS_GROUP:Ljava/util/List;

    .line 606
    .line 607
    move/from16 v0, v25

    .line 608
    .line 609
    new-array v1, v0, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 610
    .line 611
    aput-object v6, v1, v22

    .line 612
    .line 613
    aput-object v7, v1, v23

    .line 614
    .line 615
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    sput-object v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->LATEST_REVISIONS_GROUP:Ljava/util/List;

    .line 620
    .line 621
    new-array v1, v0, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 622
    .line 623
    aput-object v8, v1, v22

    .line 624
    .line 625
    aput-object v9, v1, v23

    .line 626
    .line 627
    invoke-static {v1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    sput-object v1, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->USER_REGISTRATION_GROUP:Ljava/util/List;

    .line 632
    .line 633
    const/4 v1, 0x3

    .line 634
    new-array v2, v1, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 635
    .line 636
    aput-object v10, v2, v22

    .line 637
    .line 638
    aput-object v11, v2, v23

    .line 639
    .line 640
    aput-object v12, v2, v0

    .line 641
    .line 642
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    sput-object v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->USER_EXPERIENCE_GROUP:Ljava/util/List;

    .line 647
    .line 648
    const/4 v2, 0x4

    .line 649
    new-array v4, v2, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 650
    .line 651
    aput-object v13, v4, v22

    .line 652
    .line 653
    aput-object v14, v4, v23

    .line 654
    .line 655
    aput-object v15, v4, v0

    .line 656
    .line 657
    aput-object v16, v4, v1

    .line 658
    .line 659
    invoke-static {v4}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    sput-object v4, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DAMAGING_GROUP:Ljava/util/List;

    .line 664
    .line 665
    new-array v2, v2, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 666
    .line 667
    aput-object v17, v2, v22

    .line 668
    .line 669
    aput-object v18, v2, v23

    .line 670
    .line 671
    aput-object v19, v2, v0

    .line 672
    .line 673
    aput-object v20, v2, v1

    .line 674
    .line 675
    invoke-static {v2}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    sput-object v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->GOODFAITH_GROUP:Ljava/util/List;

    .line 680
    .line 681
    new-array v2, v0, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 682
    .line 683
    aput-object v8, v2, v22

    .line 684
    .line 685
    aput-object v10, v2, v23

    .line 686
    .line 687
    invoke-static {v2}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    sput-object v2, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DEFAULT_FILTER_USER_STATUS:Ljava/util/Set;

    .line 692
    .line 693
    new-array v1, v1, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 694
    .line 695
    aput-object v21, v1, v22

    .line 696
    .line 697
    aput-object v6, v1, v23

    .line 698
    .line 699
    aput-object v3, v1, v0

    .line 700
    .line 701
    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DEFAULT_FILTER_OTHERS:Ljava/util/Set;

    .line 706
    .line 707
    check-cast v2, Ljava/lang/Iterable;

    .line 708
    .line 709
    invoke-static {v0, v2}, Lkotlin/uuid/UuidKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    sput-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DEFAULT_FILTER_TYPE_SET:Ljava/util/Set;

    .line 714
    .line 715
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->value:Ljava/lang/String;

    .line 7
    .line 8
    iput p5, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->title:I

    .line 9
    .line 10
    iput-object p6, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->description:Ljava/lang/Integer;

    .line 11
    .line 12
    return-void
.end method

.method public static final synthetic access$getBOT_EDITS_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->BOT_EDITS_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDAMAGING_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DAMAGING_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FILTER_OTHERS$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DEFAULT_FILTER_OTHERS:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FILTER_TYPE_SET$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DEFAULT_FILTER_TYPE_SET:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDEFAULT_FILTER_USER_STATUS$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->DEFAULT_FILTER_USER_STATUS:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getGOODFAITH_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->GOODFAITH_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getLATEST_REVISIONS_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->LATEST_REVISIONS_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getMINOR_EDITS_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->MINOR_EDITS_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUSER_EXPERIENCE_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->USER_EXPERIENCE_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getUSER_REGISTRATION_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->USER_REGISTRATION_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;
    .locals 1

    .line 1
    const-class v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;
    .locals 1

    .line 1
    sget-object v0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->$VALUES:[Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final code()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getDescription()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->description:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTitle()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->title:I

    .line 2
    .line 3
    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsRecentEditsFilterTypes;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
