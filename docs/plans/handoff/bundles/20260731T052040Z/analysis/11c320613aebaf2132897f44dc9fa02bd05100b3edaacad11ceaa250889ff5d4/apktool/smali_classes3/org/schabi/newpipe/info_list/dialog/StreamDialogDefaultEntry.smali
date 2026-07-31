.class public final enum Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;
.super Ljava/lang/Enum;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final synthetic $VALUES:[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum APPEND_PLAYLIST:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum DELETE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum DOWNLOAD:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum ENQUEUE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum ENQUEUE_NEXT:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum MARK_AS_WATCHED:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum OPEN_IN_BROWSER:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum PLAY_WITH_KODI:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum SET_AS_PLAYLIST_THUMBNAIL:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum SHARE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum SHOW_CHANNEL_DETAILS:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum START_HERE_ON_POPUP:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;


# instance fields
.field public final action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

.field public final resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 2
    .line 3
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 4
    .line 5
    const/16 v2, 0x19

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "SHOW_CHANNEL_DETAILS"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const v4, 0x7f13047c

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHOW_CHANNEL_DETAILS:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 20
    .line 21
    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 22
    .line 23
    new-instance v2, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v4, 0x3

    .line 26
    invoke-direct {v2, v4}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const-string v5, "ENQUEUE"

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    const v7, 0x7f13014d

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v5, v6, v7, v2}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 39
    .line 40
    new-instance v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 41
    .line 42
    new-instance v5, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    const/4 v7, 0x4

    .line 45
    invoke-direct {v5, v7}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 46
    .line 47
    .line 48
    const-string v8, "ENQUEUE_NEXT"

    .line 49
    .line 50
    const/4 v9, 0x2

    .line 51
    const v10, 0x7f13014c

    .line 52
    .line 53
    .line 54
    invoke-direct {v2, v8, v9, v10, v5}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 55
    .line 56
    .line 57
    sput-object v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE_NEXT:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 58
    .line 59
    new-instance v5, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 60
    .line 61
    new-instance v8, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    const/4 v10, 0x5

    .line 64
    invoke-direct {v8, v10}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 65
    .line 66
    .line 67
    const-string v11, "START_HERE_ON_BACKGROUND"

    .line 68
    .line 69
    const v12, 0x7f1304c0

    .line 70
    .line 71
    .line 72
    invoke-direct {v5, v11, v4, v12, v8}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 73
    .line 74
    .line 75
    sput-object v5, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 76
    .line 77
    new-instance v8, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 78
    .line 79
    new-instance v11, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 80
    .line 81
    const/4 v12, 0x6

    .line 82
    invoke-direct {v11, v12}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 83
    .line 84
    .line 85
    const-string v13, "START_HERE_ON_POPUP"

    .line 86
    .line 87
    const v14, 0x7f1304c1

    .line 88
    .line 89
    .line 90
    invoke-direct {v8, v13, v7, v14, v11}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 91
    .line 92
    .line 93
    sput-object v8, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_POPUP:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 94
    .line 95
    new-instance v11, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 96
    .line 97
    new-instance v13, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 v14, 0x7

    .line 100
    invoke-direct {v13, v14}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 101
    .line 102
    .line 103
    const-string v15, "SET_AS_PLAYLIST_THUMBNAIL"

    .line 104
    .line 105
    move/from16 v16, v3

    .line 106
    .line 107
    const v3, 0x7f130457

    .line 108
    .line 109
    .line 110
    invoke-direct {v11, v15, v10, v3, v13}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 111
    .line 112
    .line 113
    sput-object v11, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SET_AS_PLAYLIST_THUMBNAIL:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 114
    .line 115
    new-instance v3, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 116
    .line 117
    new-instance v13, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 118
    .line 119
    const/16 v15, 0x8

    .line 120
    .line 121
    invoke-direct {v13, v15}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 122
    .line 123
    .line 124
    move/from16 v17, v4

    .line 125
    .line 126
    const-string v4, "DELETE"

    .line 127
    .line 128
    move/from16 v18, v7

    .line 129
    .line 130
    const v7, 0x7f1300eb

    .line 131
    .line 132
    .line 133
    invoke-direct {v3, v4, v12, v7, v13}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 134
    .line 135
    .line 136
    sput-object v3, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DELETE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 137
    .line 138
    new-instance v4, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 139
    .line 140
    new-instance v7, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 141
    .line 142
    const/16 v13, 0x1a

    .line 143
    .line 144
    invoke-direct {v7, v13}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 145
    .line 146
    .line 147
    const-string v13, "APPEND_PLAYLIST"

    .line 148
    .line 149
    move/from16 v19, v10

    .line 150
    .line 151
    const v10, 0x7f13001f

    .line 152
    .line 153
    .line 154
    invoke-direct {v4, v13, v14, v10, v7}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 155
    .line 156
    .line 157
    sput-object v4, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->APPEND_PLAYLIST:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 158
    .line 159
    new-instance v7, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 160
    .line 161
    new-instance v10, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 162
    .line 163
    const/16 v13, 0x1b

    .line 164
    .line 165
    invoke-direct {v10, v13}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 166
    .line 167
    .line 168
    const-string v13, "PLAY_WITH_KODI"

    .line 169
    .line 170
    move/from16 v20, v12

    .line 171
    .line 172
    const v12, 0x7f1303c8

    .line 173
    .line 174
    .line 175
    invoke-direct {v7, v13, v15, v12, v10}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 176
    .line 177
    .line 178
    sput-object v7, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->PLAY_WITH_KODI:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 179
    .line 180
    new-instance v10, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 181
    .line 182
    new-instance v12, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 183
    .line 184
    const/16 v13, 0x1c

    .line 185
    .line 186
    invoke-direct {v12, v13}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 187
    .line 188
    .line 189
    const-string v13, "SHARE"

    .line 190
    .line 191
    move/from16 v21, v14

    .line 192
    .line 193
    const/16 v14, 0x9

    .line 194
    .line 195
    move/from16 v22, v15

    .line 196
    .line 197
    const v15, 0x7f13046f

    .line 198
    .line 199
    .line 200
    invoke-direct {v10, v13, v14, v15, v12}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 201
    .line 202
    .line 203
    sput-object v10, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHARE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 204
    .line 205
    new-instance v12, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 206
    .line 207
    new-instance v13, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;

    .line 208
    .line 209
    const/16 v15, 0x1d

    .line 210
    .line 211
    invoke-direct {v13, v15}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 212
    .line 213
    .line 214
    const-string v15, "DOWNLOAD"

    .line 215
    .line 216
    move/from16 v23, v14

    .line 217
    .line 218
    const/16 v14, 0xa

    .line 219
    .line 220
    const v9, 0x7f13010e

    .line 221
    .line 222
    .line 223
    invoke-direct {v12, v15, v14, v9, v13}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 224
    .line 225
    .line 226
    sput-object v12, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DOWNLOAD:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 227
    .line 228
    new-instance v9, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 229
    .line 230
    new-instance v13, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 231
    .line 232
    invoke-direct {v13, v6}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 233
    .line 234
    .line 235
    const-string v15, "OPEN_IN_BROWSER"

    .line 236
    .line 237
    move/from16 v25, v6

    .line 238
    .line 239
    const/16 v6, 0xb

    .line 240
    .line 241
    move/from16 v26, v14

    .line 242
    .line 243
    const v14, 0x7f13039a

    .line 244
    .line 245
    .line 246
    invoke-direct {v9, v15, v6, v14, v13}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 247
    .line 248
    .line 249
    sput-object v9, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->OPEN_IN_BROWSER:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 250
    .line 251
    new-instance v13, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 252
    .line 253
    new-instance v14, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 254
    .line 255
    const/4 v15, 0x2

    .line 256
    invoke-direct {v14, v15}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 257
    .line 258
    .line 259
    move/from16 v24, v6

    .line 260
    .line 261
    const-string v6, "MARK_AS_WATCHED"

    .line 262
    .line 263
    move/from16 v27, v15

    .line 264
    .line 265
    const/16 v15, 0xc

    .line 266
    .line 267
    move-object/from16 v28, v0

    .line 268
    .line 269
    const v0, 0x7f1302b8

    .line 270
    .line 271
    .line 272
    invoke-direct {v13, v6, v15, v0, v14}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    .line 273
    .line 274
    .line 275
    sput-object v13, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->MARK_AS_WATCHED:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 276
    .line 277
    const/16 v0, 0xd

    .line 278
    .line 279
    new-array v0, v0, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 280
    .line 281
    aput-object v28, v0, v16

    .line 282
    .line 283
    aput-object v1, v0, v25

    .line 284
    .line 285
    aput-object v2, v0, v27

    .line 286
    .line 287
    aput-object v5, v0, v17

    .line 288
    .line 289
    aput-object v8, v0, v18

    .line 290
    .line 291
    aput-object v11, v0, v19

    .line 292
    .line 293
    aput-object v3, v0, v20

    .line 294
    .line 295
    aput-object v4, v0, v21

    .line 296
    .line 297
    aput-object v7, v0, v22

    .line 298
    .line 299
    aput-object v10, v0, v23

    .line 300
    .line 301
    aput-object v12, v0, v26

    .line 302
    .line 303
    aput-object v9, v0, v24

    .line 304
    .line 305
    aput-object v13, v0, v15

    .line 306
    .line 307
    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->$VALUES:[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 308
    .line 309
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->resource:I

    .line 5
    .line 6
    iput-object p4, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;
    .locals 1

    .line 1
    const-class v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;
    .locals 1

    .line 1
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->$VALUES:[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 8
    .line 9
    return-object v0
.end method
