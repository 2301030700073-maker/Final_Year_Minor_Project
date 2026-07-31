.class public final Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;


# instance fields
.field private approxDurationMs:J

.field private audioChannels:I

.field private audioLocale:Ljava/util/Locale;

.field private audioTrackId:Ljava/lang/String;

.field private audioTrackName:Ljava/lang/String;

.field private audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

.field public avgBitrate:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private bitrate:I

.field private codec:Ljava/lang/String;

.field private contentLength:J

.field public fps:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private height:I

.field public final id:I

.field private indexEnd:I

.field private indexStart:I

.field private initEnd:I

.field private initStart:I

.field private isDrc:Z

.field public final itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

.field private lastModified:J

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

.field private quality:Ljava/lang/String;

.field public resolutionString:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sampleRate:I

.field private targetDurationSec:I

.field private width:I

.field private xtags:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 75

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 6
    .line 7
    sget-object v3, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 8
    .line 9
    const-string v4, "144p"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 15
    .line 16
    const/16 v6, 0x24

    .line 17
    .line 18
    const-string v7, "240p"

    .line 19
    .line 20
    invoke-direct {v5, v6, v2, v3, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 24
    .line 25
    const/16 v8, 0x12

    .line 26
    .line 27
    sget-object v9, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 28
    .line 29
    const-string v10, "360p"

    .line 30
    .line 31
    invoke-direct {v3, v8, v2, v9, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v11, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 35
    .line 36
    const/16 v12, 0x22

    .line 37
    .line 38
    invoke-direct {v11, v12, v2, v9, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 42
    .line 43
    const/16 v14, 0x23

    .line 44
    .line 45
    const-string v15, "480p"

    .line 46
    .line 47
    invoke-direct {v13, v14, v2, v9, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move/from16 v16, v1

    .line 51
    .line 52
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 53
    .line 54
    move/from16 v17, v6

    .line 55
    .line 56
    const/16 v6, 0x3b

    .line 57
    .line 58
    invoke-direct {v1, v6, v2, v9, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 62
    .line 63
    move/from16 v18, v8

    .line 64
    .line 65
    const/16 v8, 0x4e

    .line 66
    .line 67
    invoke-direct {v6, v8, v2, v9, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 71
    .line 72
    move/from16 v19, v12

    .line 73
    .line 74
    const/16 v12, 0x16

    .line 75
    .line 76
    const-string v14, "720p"

    .line 77
    .line 78
    invoke-direct {v8, v12, v2, v9, v14}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move/from16 v21, v12

    .line 82
    .line 83
    new-instance v12, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 84
    .line 85
    move-object/from16 v22, v0

    .line 86
    .line 87
    const/16 v0, 0x25

    .line 88
    .line 89
    move-object/from16 v23, v1

    .line 90
    .line 91
    const-string v1, "1080p"

    .line 92
    .line 93
    invoke-direct {v12, v0, v2, v9, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move/from16 v24, v0

    .line 97
    .line 98
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 99
    .line 100
    move-object/from16 v25, v3

    .line 101
    .line 102
    const/16 v3, 0x26

    .line 103
    .line 104
    invoke-direct {v0, v3, v2, v9, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    move/from16 v26, v3

    .line 108
    .line 109
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 110
    .line 111
    move-object/from16 v27, v0

    .line 112
    .line 113
    const/16 v0, 0x2b

    .line 114
    .line 115
    move-object/from16 v28, v5

    .line 116
    .line 117
    sget-object v5, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 118
    .line 119
    invoke-direct {v3, v0, v2, v5, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    move/from16 v29, v0

    .line 123
    .line 124
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 125
    .line 126
    move-object/from16 v30, v3

    .line 127
    .line 128
    const/16 v3, 0x2c

    .line 129
    .line 130
    invoke-direct {v0, v3, v2, v5, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    move/from16 v31, v3

    .line 134
    .line 135
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 136
    .line 137
    move-object/from16 v32, v0

    .line 138
    .line 139
    const/16 v0, 0x2d

    .line 140
    .line 141
    invoke-direct {v3, v0, v2, v5, v14}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    move/from16 v33, v0

    .line 145
    .line 146
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 147
    .line 148
    move-object/from16 v34, v3

    .line 149
    .line 150
    const/16 v3, 0x2e

    .line 151
    .line 152
    invoke-direct {v0, v3, v2, v5, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 156
    .line 157
    move/from16 v35, v3

    .line 158
    .line 159
    const/16 v3, 0xab

    .line 160
    .line 161
    move-object/from16 v36, v0

    .line 162
    .line 163
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 164
    .line 165
    move-object/from16 v37, v6

    .line 166
    .line 167
    const/16 v6, 0x80

    .line 168
    .line 169
    invoke-direct {v2, v3, v0, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 170
    .line 171
    .line 172
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 173
    .line 174
    const/16 v6, 0xac

    .line 175
    .line 176
    move-object/from16 v39, v2

    .line 177
    .line 178
    const/16 v2, 0x100

    .line 179
    .line 180
    invoke-direct {v3, v6, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 181
    .line 182
    .line 183
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 184
    .line 185
    const/16 v6, 0x257

    .line 186
    .line 187
    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 188
    .line 189
    move-object/from16 v41, v3

    .line 190
    .line 191
    const/16 v3, 0x20

    .line 192
    .line 193
    invoke-direct {v0, v6, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 194
    .line 195
    .line 196
    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 197
    .line 198
    move/from16 v42, v3

    .line 199
    .line 200
    const/16 v3, 0x8b

    .line 201
    .line 202
    move-object/from16 v43, v0

    .line 203
    .line 204
    const/16 v0, 0x30

    .line 205
    .line 206
    invoke-direct {v6, v3, v2, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 207
    .line 208
    .line 209
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 210
    .line 211
    move/from16 v44, v0

    .line 212
    .line 213
    const/16 v0, 0x8c

    .line 214
    .line 215
    move-object/from16 v45, v6

    .line 216
    .line 217
    const/16 v6, 0x80

    .line 218
    .line 219
    invoke-direct {v3, v0, v2, v6}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 220
    .line 221
    .line 222
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 223
    .line 224
    const/16 v6, 0x8d

    .line 225
    .line 226
    move-object/from16 v38, v3

    .line 227
    .line 228
    const/16 v3, 0x100

    .line 229
    .line 230
    invoke-direct {v0, v6, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 231
    .line 232
    .line 233
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 234
    .line 235
    const/16 v3, 0x258

    .line 236
    .line 237
    sget-object v6, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA_OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 238
    .line 239
    move-object/from16 v40, v0

    .line 240
    .line 241
    const/16 v0, 0x23

    .line 242
    .line 243
    invoke-direct {v2, v3, v6, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 244
    .line 245
    .line 246
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 247
    .line 248
    const/16 v3, 0xf9

    .line 249
    .line 250
    move-object/from16 v46, v2

    .line 251
    .line 252
    const/16 v2, 0x32

    .line 253
    .line 254
    invoke-direct {v0, v3, v6, v2}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 255
    .line 256
    .line 257
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 258
    .line 259
    move/from16 v47, v2

    .line 260
    .line 261
    const/16 v2, 0xfa

    .line 262
    .line 263
    move-object/from16 v48, v0

    .line 264
    .line 265
    const/16 v0, 0x46

    .line 266
    .line 267
    invoke-direct {v3, v2, v6, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 268
    .line 269
    .line 270
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 271
    .line 272
    const/16 v2, 0xfb

    .line 273
    .line 274
    move-object/from16 v49, v3

    .line 275
    .line 276
    const/16 v3, 0xa0

    .line 277
    .line 278
    invoke-direct {v0, v2, v6, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 279
    .line 280
    .line 281
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 282
    .line 283
    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 284
    .line 285
    invoke-direct {v2, v3, v6, v9, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 289
    .line 290
    move-object/from16 v50, v0

    .line 291
    .line 292
    const/16 v0, 0x18a

    .line 293
    .line 294
    invoke-direct {v3, v0, v6, v9, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 298
    .line 299
    move-object/from16 v51, v2

    .line 300
    .line 301
    const/16 v2, 0x85

    .line 302
    .line 303
    invoke-direct {v0, v2, v6, v9, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 307
    .line 308
    move-object/from16 v52, v0

    .line 309
    .line 310
    const/16 v0, 0x18b

    .line 311
    .line 312
    invoke-direct {v2, v0, v6, v9, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 316
    .line 317
    move-object/from16 v53, v2

    .line 318
    .line 319
    const/16 v2, 0x86

    .line 320
    .line 321
    invoke-direct {v0, v2, v6, v9, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 325
    .line 326
    move-object/from16 v54, v0

    .line 327
    .line 328
    const/16 v0, 0x18c

    .line 329
    .line 330
    invoke-direct {v2, v0, v6, v9, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 334
    .line 335
    move-object/from16 v55, v2

    .line 336
    .line 337
    const/16 v2, 0x87

    .line 338
    .line 339
    invoke-direct {v0, v2, v6, v9, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 343
    .line 344
    move-object/from16 v56, v0

    .line 345
    .line 346
    const/16 v0, 0xd4

    .line 347
    .line 348
    invoke-direct {v2, v0, v6, v9, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 352
    .line 353
    move-object/from16 v57, v2

    .line 354
    .line 355
    const/16 v2, 0x18d

    .line 356
    .line 357
    invoke-direct {v0, v2, v6, v9, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 361
    .line 362
    move-object/from16 v58, v0

    .line 363
    .line 364
    const/16 v0, 0x88

    .line 365
    .line 366
    invoke-direct {v2, v0, v6, v9, v14}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 370
    .line 371
    move-object/from16 v59, v2

    .line 372
    .line 373
    const/16 v2, 0x18e

    .line 374
    .line 375
    invoke-direct {v0, v2, v6, v9, v14}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 379
    .line 380
    move-object/from16 v60, v0

    .line 381
    .line 382
    const/16 v0, 0x12a

    .line 383
    .line 384
    move-object/from16 v61, v3

    .line 385
    .line 386
    const-string v3, "720p60"

    .line 387
    .line 388
    invoke-direct {v2, v0, v9, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 392
    .line 393
    move-object/from16 v62, v2

    .line 394
    .line 395
    const/16 v2, 0x89

    .line 396
    .line 397
    invoke-direct {v0, v2, v6, v9, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 401
    .line 402
    move-object/from16 v63, v0

    .line 403
    .line 404
    const/16 v0, 0x18f

    .line 405
    .line 406
    invoke-direct {v2, v0, v6, v9, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 410
    .line 411
    move-object/from16 v64, v2

    .line 412
    .line 413
    const/16 v2, 0x12b

    .line 414
    .line 415
    move-object/from16 v65, v8

    .line 416
    .line 417
    const-string v8, "1080p60"

    .line 418
    .line 419
    invoke-direct {v0, v2, v9, v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 423
    .line 424
    move-object/from16 v66, v0

    .line 425
    .line 426
    const/16 v0, 0x190

    .line 427
    .line 428
    move-object/from16 v67, v11

    .line 429
    .line 430
    const-string v11, "1440p"

    .line 431
    .line 432
    invoke-direct {v2, v0, v6, v9, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 436
    .line 437
    move-object/from16 v68, v2

    .line 438
    .line 439
    const/16 v2, 0x10a

    .line 440
    .line 441
    move-object/from16 v69, v12

    .line 442
    .line 443
    const-string v12, "2160p"

    .line 444
    .line 445
    invoke-direct {v0, v2, v6, v9, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 449
    .line 450
    move-object/from16 v70, v0

    .line 451
    .line 452
    const/16 v0, 0x191

    .line 453
    .line 454
    invoke-direct {v2, v0, v6, v9, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 458
    .line 459
    const/16 v9, 0x116

    .line 460
    .line 461
    invoke-direct {v0, v9, v6, v5, v4}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    new-instance v4, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 465
    .line 466
    const/16 v9, 0xf2

    .line 467
    .line 468
    invoke-direct {v4, v9, v6, v5, v7}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    new-instance v7, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 472
    .line 473
    const/16 v9, 0xf3

    .line 474
    .line 475
    invoke-direct {v7, v9, v6, v5, v10}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    new-instance v9, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 479
    .line 480
    const/16 v10, 0xf4

    .line 481
    .line 482
    invoke-direct {v9, v10, v6, v5, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    new-instance v10, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 486
    .line 487
    move-object/from16 v71, v0

    .line 488
    .line 489
    const/16 v0, 0xf5

    .line 490
    .line 491
    invoke-direct {v10, v0, v6, v5, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 495
    .line 496
    move-object/from16 v72, v2

    .line 497
    .line 498
    const/16 v2, 0xf6

    .line 499
    .line 500
    invoke-direct {v0, v2, v6, v5, v15}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 504
    .line 505
    const/16 v15, 0xf7

    .line 506
    .line 507
    invoke-direct {v2, v15, v6, v5, v14}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    new-instance v14, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 511
    .line 512
    const/16 v15, 0xf8

    .line 513
    .line 514
    invoke-direct {v14, v15, v6, v5, v1}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 518
    .line 519
    const/16 v15, 0x10f

    .line 520
    .line 521
    invoke-direct {v1, v15, v6, v5, v11}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    new-instance v11, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 525
    .line 526
    const/16 v15, 0x110

    .line 527
    .line 528
    invoke-direct {v11, v15, v6, v5, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    new-instance v15, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 532
    .line 533
    move-object/from16 v73, v0

    .line 534
    .line 535
    const/16 v0, 0x12e

    .line 536
    .line 537
    invoke-direct {v15, v0, v5, v3}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 541
    .line 542
    const/16 v3, 0x12f

    .line 543
    .line 544
    invoke-direct {v0, v3, v5, v8}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 548
    .line 549
    const/16 v8, 0x134

    .line 550
    .line 551
    move-object/from16 v74, v0

    .line 552
    .line 553
    const-string v0, "1440p60"

    .line 554
    .line 555
    invoke-direct {v3, v8, v5, v0}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 559
    .line 560
    const/16 v8, 0x139

    .line 561
    .line 562
    invoke-direct {v0, v8, v6, v5, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    new-instance v6, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 566
    .line 567
    const/16 v8, 0x13b

    .line 568
    .line 569
    const-string v12, "2160p60"

    .line 570
    .line 571
    invoke-direct {v6, v8, v5, v12}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;-><init>(ILorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    const/16 v5, 0x39

    .line 575
    .line 576
    new-array v5, v5, [Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 577
    .line 578
    const/4 v8, 0x0

    .line 579
    aput-object v22, v5, v8

    .line 580
    .line 581
    const/4 v8, 0x1

    .line 582
    aput-object v28, v5, v8

    .line 583
    .line 584
    const/4 v8, 0x2

    .line 585
    aput-object v25, v5, v8

    .line 586
    .line 587
    const/4 v8, 0x3

    .line 588
    aput-object v67, v5, v8

    .line 589
    .line 590
    const/4 v8, 0x4

    .line 591
    aput-object v13, v5, v8

    .line 592
    .line 593
    const/4 v8, 0x5

    .line 594
    aput-object v23, v5, v8

    .line 595
    .line 596
    const/4 v8, 0x6

    .line 597
    aput-object v37, v5, v8

    .line 598
    .line 599
    const/4 v8, 0x7

    .line 600
    aput-object v65, v5, v8

    .line 601
    .line 602
    const/16 v8, 0x8

    .line 603
    .line 604
    aput-object v69, v5, v8

    .line 605
    .line 606
    const/16 v8, 0x9

    .line 607
    .line 608
    aput-object v27, v5, v8

    .line 609
    .line 610
    const/16 v8, 0xa

    .line 611
    .line 612
    aput-object v30, v5, v8

    .line 613
    .line 614
    const/16 v8, 0xb

    .line 615
    .line 616
    aput-object v32, v5, v8

    .line 617
    .line 618
    const/16 v8, 0xc

    .line 619
    .line 620
    aput-object v34, v5, v8

    .line 621
    .line 622
    const/16 v8, 0xd

    .line 623
    .line 624
    aput-object v36, v5, v8

    .line 625
    .line 626
    const/16 v8, 0xe

    .line 627
    .line 628
    aput-object v39, v5, v8

    .line 629
    .line 630
    const/16 v8, 0xf

    .line 631
    .line 632
    aput-object v41, v5, v8

    .line 633
    .line 634
    const/16 v8, 0x10

    .line 635
    .line 636
    aput-object v43, v5, v8

    .line 637
    .line 638
    aput-object v45, v5, v16

    .line 639
    .line 640
    aput-object v38, v5, v18

    .line 641
    .line 642
    const/16 v8, 0x13

    .line 643
    .line 644
    aput-object v40, v5, v8

    .line 645
    .line 646
    const/16 v8, 0x14

    .line 647
    .line 648
    aput-object v46, v5, v8

    .line 649
    .line 650
    const/16 v8, 0x15

    .line 651
    .line 652
    aput-object v48, v5, v8

    .line 653
    .line 654
    aput-object v49, v5, v21

    .line 655
    .line 656
    const/16 v8, 0x17

    .line 657
    .line 658
    aput-object v50, v5, v8

    .line 659
    .line 660
    const/16 v8, 0x18

    .line 661
    .line 662
    aput-object v51, v5, v8

    .line 663
    .line 664
    const/16 v8, 0x19

    .line 665
    .line 666
    aput-object v61, v5, v8

    .line 667
    .line 668
    const/16 v8, 0x1a

    .line 669
    .line 670
    aput-object v52, v5, v8

    .line 671
    .line 672
    const/16 v8, 0x1b

    .line 673
    .line 674
    aput-object v53, v5, v8

    .line 675
    .line 676
    const/16 v8, 0x1c

    .line 677
    .line 678
    aput-object v54, v5, v8

    .line 679
    .line 680
    const/16 v8, 0x1d

    .line 681
    .line 682
    aput-object v55, v5, v8

    .line 683
    .line 684
    const/16 v8, 0x1e

    .line 685
    .line 686
    aput-object v56, v5, v8

    .line 687
    .line 688
    const/16 v8, 0x1f

    .line 689
    .line 690
    aput-object v57, v5, v8

    .line 691
    .line 692
    aput-object v58, v5, v42

    .line 693
    .line 694
    const/16 v8, 0x21

    .line 695
    .line 696
    aput-object v59, v5, v8

    .line 697
    .line 698
    aput-object v60, v5, v19

    .line 699
    .line 700
    const/16 v20, 0x23

    .line 701
    .line 702
    aput-object v62, v5, v20

    .line 703
    .line 704
    aput-object v63, v5, v17

    .line 705
    .line 706
    aput-object v64, v5, v24

    .line 707
    .line 708
    aput-object v66, v5, v26

    .line 709
    .line 710
    const/16 v8, 0x27

    .line 711
    .line 712
    aput-object v68, v5, v8

    .line 713
    .line 714
    const/16 v8, 0x28

    .line 715
    .line 716
    aput-object v70, v5, v8

    .line 717
    .line 718
    const/16 v8, 0x29

    .line 719
    .line 720
    aput-object v72, v5, v8

    .line 721
    .line 722
    const/16 v8, 0x2a

    .line 723
    .line 724
    aput-object v71, v5, v8

    .line 725
    .line 726
    aput-object v4, v5, v29

    .line 727
    .line 728
    aput-object v7, v5, v31

    .line 729
    .line 730
    aput-object v9, v5, v33

    .line 731
    .line 732
    aput-object v10, v5, v35

    .line 733
    .line 734
    const/16 v4, 0x2f

    .line 735
    .line 736
    aput-object v73, v5, v4

    .line 737
    .line 738
    aput-object v2, v5, v44

    .line 739
    .line 740
    const/16 v2, 0x31

    .line 741
    .line 742
    aput-object v14, v5, v2

    .line 743
    .line 744
    aput-object v1, v5, v47

    .line 745
    .line 746
    const/16 v1, 0x33

    .line 747
    .line 748
    aput-object v11, v5, v1

    .line 749
    .line 750
    const/16 v1, 0x34

    .line 751
    .line 752
    aput-object v15, v5, v1

    .line 753
    .line 754
    const/16 v1, 0x35

    .line 755
    .line 756
    aput-object v74, v5, v1

    .line 757
    .line 758
    const/16 v1, 0x36

    .line 759
    .line 760
    aput-object v3, v5, v1

    .line 761
    .line 762
    const/16 v1, 0x37

    .line 763
    .line 764
    aput-object v0, v5, v1

    .line 765
    .line 766
    const/16 v0, 0x38

    .line 767
    .line 768
    aput-object v6, v5, v0

    .line 769
    .line 770
    sput-object v5, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->ITAG_LIST:[Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    .line 771
    .line 772
    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/MediaFormat;I)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 131
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 132
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 133
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 134
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 135
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 136
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 137
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 138
    sget-object p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 139
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 140
    iput p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 120
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 121
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 122
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 123
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 124
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 125
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 126
    sget-object p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 127
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 128
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    const/16 p1, 0x3c

    .line 129
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public constructor <init>(ILorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V
    .locals 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 143
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 144
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 145
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    const-wide/16 v0, -0x1

    .line 146
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 147
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 148
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 149
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 150
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 151
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    const/16 p1, 0x1e

    .line 152
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 6
    .line 7
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 8
    .line 9
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 10
    .line 11
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 12
    .line 13
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 18
    .line 19
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 20
    .line 21
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 22
    .line 23
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 24
    .line 25
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 26
    .line 27
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->id:I

    .line 28
    .line 29
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 30
    .line 31
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    .line 32
    .line 33
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 34
    .line 35
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    .line 36
    .line 37
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 38
    .line 39
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 40
    .line 41
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 42
    .line 43
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 44
    .line 45
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    .line 48
    .line 49
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 50
    .line 51
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->fps:I

    .line 52
    .line 53
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    .line 54
    .line 55
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    .line 56
    .line 57
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    .line 58
    .line 59
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    .line 60
    .line 61
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    .line 62
    .line 63
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    .line 64
    .line 65
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    .line 66
    .line 67
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    .line 68
    .line 69
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    .line 70
    .line 71
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    .line 72
    .line 73
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    .line 74
    .line 75
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    .line 76
    .line 77
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    .line 78
    .line 79
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    .line 80
    .line 81
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    .line 88
    .line 89
    iget v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 90
    .line 91
    iput v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 92
    .line 93
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 94
    .line 95
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 96
    .line 97
    iget-wide v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 98
    .line 99
    iput-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 100
    .line 101
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v0, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 110
    .line 111
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 112
    .line 113
    iget-object p1, p1, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    .line 114
    .line 115
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    .line 116
    .line 117
    return-void
.end method


# virtual methods
.method public final getApproxDurationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getAudioChannels()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 2
    .line 3
    return p0
.end method

.method public final getAudioLocale()Ljava/util/Locale;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAudioTrackId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAudioTrackName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getAudioTrackType()Lorg/schabi/newpipe/extractor/stream/AudioTrackType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBitrate()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    .line 2
    .line 3
    return p0
.end method

.method public final getCodec()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIndexEnd()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    .line 2
    .line 3
    return p0
.end method

.method public final getIndexStart()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    .line 2
    .line 3
    return p0
.end method

.method public final getInitEnd()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    .line 2
    .line 3
    return p0
.end method

.method public final getInitStart()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    .line 2
    .line 3
    return p0
.end method

.method public final getMediaFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getQuality()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSampleRate()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 2
    .line 3
    return p0
.end method

.method public final getTargetDurationSec()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 2
    .line 3
    return p0
.end method

.method public final getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    .line 2
    .line 3
    return p0
.end method

.method public final getXtags()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->xtags:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setApproxDurationMs(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    :goto_0
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->approxDurationMs:J

    .line 11
    .line 12
    return-void
.end method

.method public final setAudioChannels(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 p1, -0x1

    .line 5
    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioChannels:I

    .line 6
    .line 7
    return-void
.end method

.method public final setAudioLocale(Ljava/util/Locale;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioLocale:Ljava/util/Locale;

    .line 2
    .line 3
    return-void
.end method

.method public final setAudioTrackId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAudioTrackName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setAudioTrackType(Lorg/schabi/newpipe/extractor/stream/AudioTrackType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->audioTrackType:Lorg/schabi/newpipe/extractor/stream/AudioTrackType;

    .line 2
    .line 3
    return-void
.end method

.method public final setBitrate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->bitrate:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCodec(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->codec:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentLength(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-wide/16 p1, -0x1

    .line 9
    .line 10
    :goto_0
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->contentLength:J

    .line 11
    .line 12
    return-void
.end method

.method public final setHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->height:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIndexEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexEnd:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIndexStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->indexStart:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInitEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initEnd:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInitStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->initStart:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIsDrc(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->isDrc:Z

    .line 6
    .line 7
    return-void
.end method

.method public final setLastModified(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->lastModified:J

    .line 2
    .line 3
    return-void
.end method

.method public final setQuality(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->quality:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSampleRate(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 p1, -0x1

    .line 5
    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->sampleRate:I

    .line 6
    .line 7
    return-void
.end method

.method public final setTargetDurationSec(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const/4 p1, -0x1

    .line 5
    :goto_0
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->targetDurationSec:I

    .line 6
    .line 7
    return-void
.end method

.method public final setWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->width:I

    .line 2
    .line 3
    return-void
.end method

.method public final setXtags(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->xtags:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
