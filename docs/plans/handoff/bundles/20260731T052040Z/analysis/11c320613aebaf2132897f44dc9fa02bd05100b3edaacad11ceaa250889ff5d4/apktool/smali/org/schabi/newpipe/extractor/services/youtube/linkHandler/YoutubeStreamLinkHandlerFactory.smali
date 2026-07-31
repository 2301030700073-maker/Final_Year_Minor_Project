.class public final Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;
.super Lokhttp3/Cookie$Companion;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

.field public static final SUBPATHS:Ljava/util/List;

.field public static final YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "^([a-zA-Z0-9_-]{11})"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    .line 15
    .line 16
    const/4 v0, 0x6

    .line 17
    new-array v1, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    const-string v3, "embed/"

    .line 21
    .line 22
    aput-object v3, v1, v2

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const-string v4, "live/"

    .line 26
    .line 27
    aput-object v4, v1, v3

    .line 28
    .line 29
    const-string/jumbo v4, "shorts/"

    .line 30
    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    aput-object v4, v1, v5

    .line 34
    .line 35
    const-string/jumbo v4, "watch/"

    .line 36
    .line 37
    .line 38
    const/4 v5, 0x3

    .line 39
    aput-object v4, v1, v5

    .line 40
    .line 41
    const-string/jumbo v4, "v/"

    .line 42
    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    aput-object v4, v1, v5

    .line 46
    .line 47
    const-string/jumbo v4, "w/"

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x5

    .line 51
    aput-object v4, v1, v5

    .line 52
    .line 53
    new-instance v4, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    if-ge v2, v0, :cond_0

    .line 59
    .line 60
    aget-object v5, v1, v2

    .line 61
    .line 62
    invoke-static {v5, v4, v5, v2, v3}, Lcom/android/tools/r8/RecordTag;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {v4}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->SUBPATHS:Ljava/util/List;

    .line 72
    .line 73
    return-void
.end method

.method public static assertIsId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p0, v0

    .line 23
    :goto_0
    if-eqz p0, :cond_1

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    const-string p0, "The given string is not a YouTube video ID"

    .line 27
    .line 28
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static getIdFromSubpathsInPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->SUBPATHS:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method


# virtual methods
.method public final getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string p0, "https://www.youtube.com"

    .line 2
    .line 3
    const-string v0, "https:"

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    :try_start_0
    new-instance v4, Ljava/net/URI;

    .line 9
    .line 10
    invoke-direct {v4, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    if-eqz v5, :cond_4

    .line 18
    .line 19
    const-string/jumbo v6, "vnd.youtube"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-nez v6, :cond_0

    .line 27
    .line 28
    const-string/jumbo v6, "vnd.youtube.launch"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_4

    .line 36
    .line 37
    :cond_0
    invoke-virtual {v4}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "//"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->YOUTUBE_VIDEO_ID_REGEX_PATTERN:Ljava/util/regex/Pattern;

    .line 54
    .line 55
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move-object v5, v2

    .line 71
    :goto_0
    if-eqz v5, :cond_2

    .line 72
    .line 73
    return-object v5

    .line 74
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-object p0

    .line 84
    :catch_0
    :cond_4
    :goto_1
    :try_start_1
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    .line 85
    .line 86
    .line 87
    move-result-object v0
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 88
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-nez v6, :cond_5

    .line 101
    .line 102
    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    :cond_5
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isHTTP(Ljava/net/URL;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_34

    .line 111
    .line 112
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeURL(Ljava/net/URL;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-nez v6, :cond_7

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    const-string/jumbo v7, "www.youtube-nocookie.com"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-nez v7, :cond_7

    .line 130
    .line 131
    const-string/jumbo v7, "youtu.be"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-eqz v6, :cond_6

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    const-string v7, "hooktube.com"

    .line 146
    .line 147
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-nez v6, :cond_7

    .line 152
    .line 153
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isInvidiousURL(Ljava/net/URL;)Z

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    if-nez v6, :cond_7

    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    const-string/jumbo v7, "y2u.be"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-nez v6, :cond_7

    .line 171
    .line 172
    goto/16 :goto_6

    .line 173
    .line 174
    :cond_7
    :goto_2
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$3:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 175
    .line 176
    invoke-virtual {v2, p1}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->onAcceptUrl(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    const-string v6, "Error: no suitable URL: "

    .line 181
    .line 182
    if-nez v2, :cond_33

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    const/4 v7, 0x6

    .line 196
    const/4 v8, -0x1

    .line 197
    sparse-switch v4, :sswitch_data_0

    .line 198
    .line 199
    .line 200
    :goto_3
    move v1, v8

    .line 201
    goto/16 :goto_4

    .line 202
    .line 203
    :sswitch_0
    const-string v1, "YOUTUBE.COM"

    .line 204
    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_8

    .line 210
    .line 211
    goto :goto_3

    .line 212
    :cond_8
    const/16 v1, 0x23

    .line 213
    .line 214
    goto/16 :goto_4

    .line 215
    .line 216
    :sswitch_1
    const-string v1, "INVIDIOUS.SITE"

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_9

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_9
    const/16 v1, 0x22

    .line 226
    .line 227
    goto/16 :goto_4

    .line 228
    .line 229
    :sswitch_2
    const-string v1, "WWW.INVIDIO.US"

    .line 230
    .line 231
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_a

    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_a
    const/16 v1, 0x21

    .line 239
    .line 240
    goto/16 :goto_4

    .line 241
    .line 242
    :sswitch_3
    const-string v1, "WWW.YOUTUBE-NOCOOKIE.COM"

    .line 243
    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_b

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_b
    const/16 v1, 0x20

    .line 252
    .line 253
    goto/16 :goto_4

    .line 254
    .line 255
    :sswitch_4
    const-string v1, "INVIDIOUS.SILKKY.CLOUD"

    .line 256
    .line 257
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-nez v1, :cond_c

    .line 262
    .line 263
    goto :goto_3

    .line 264
    :cond_c
    const/16 v1, 0x1f

    .line 265
    .line 266
    goto/16 :goto_4

    .line 267
    .line 268
    :sswitch_5
    const-string v1, "INVIDIOUS.BLAMEFRAN.NET"

    .line 269
    .line 270
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    if-nez v1, :cond_d

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_d
    const/16 v1, 0x1e

    .line 278
    .line 279
    goto/16 :goto_4

    .line 280
    .line 281
    :sswitch_6
    const-string v1, "INVIDIOUS.048596.XYZ"

    .line 282
    .line 283
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-nez v1, :cond_e

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_e
    const/16 v1, 0x1d

    .line 291
    .line 292
    goto/16 :goto_4

    .line 293
    .line 294
    :sswitch_7
    const-string v1, "YTPRIVATE.COM"

    .line 295
    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-nez v1, :cond_f

    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_f
    const/16 v1, 0x1c

    .line 304
    .line 305
    goto/16 :goto_4

    .line 306
    .line 307
    :sswitch_8
    const-string v1, "REDIRECT.INVIDIOUS.IO"

    .line 308
    .line 309
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_10

    .line 314
    .line 315
    goto :goto_3

    .line 316
    :cond_10
    const/16 v1, 0x1b

    .line 317
    .line 318
    goto/16 :goto_4

    .line 319
    .line 320
    :sswitch_9
    const-string v1, "INVIDIOUS.SNOPYTA.ORG"

    .line 321
    .line 322
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-nez v1, :cond_11

    .line 327
    .line 328
    goto/16 :goto_3

    .line 329
    .line 330
    :cond_11
    const/16 v1, 0x1a

    .line 331
    .line 332
    goto/16 :goto_4

    .line 333
    .line 334
    :sswitch_a
    const-string v1, "INVIDIOUS.FDN.FR"

    .line 335
    .line 336
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_12

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :cond_12
    const/16 v1, 0x19

    .line 345
    .line 346
    goto/16 :goto_4

    .line 347
    .line 348
    :sswitch_b
    const-string v1, "INVIDIO.US"

    .line 349
    .line 350
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    if-nez v1, :cond_13

    .line 355
    .line 356
    goto/16 :goto_3

    .line 357
    .line 358
    :cond_13
    const/16 v1, 0x18

    .line 359
    .line 360
    goto/16 :goto_4

    .line 361
    .line 362
    :sswitch_c
    const-string v1, "TUBE.CONNECT.CAFE"

    .line 363
    .line 364
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_14

    .line 369
    .line 370
    goto/16 :goto_3

    .line 371
    .line 372
    :cond_14
    const/16 v1, 0x17

    .line 373
    .line 374
    goto/16 :goto_4

    .line 375
    .line 376
    :sswitch_d
    const-string v1, "WWW.YOUTUBE.COM"

    .line 377
    .line 378
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    if-nez v1, :cond_15

    .line 383
    .line 384
    goto/16 :goto_3

    .line 385
    .line 386
    :cond_15
    const/16 v1, 0x16

    .line 387
    .line 388
    goto/16 :goto_4

    .line 389
    .line 390
    :sswitch_e
    const-string v1, "INVIDIOUS.EXONIP.DE"

    .line 391
    .line 392
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-nez v1, :cond_16

    .line 397
    .line 398
    goto/16 :goto_3

    .line 399
    .line 400
    :cond_16
    const/16 v1, 0x15

    .line 401
    .line 402
    goto/16 :goto_4

    .line 403
    .line 404
    :sswitch_f
    const-string v1, "Y.COM.CM"

    .line 405
    .line 406
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-nez v1, :cond_17

    .line 411
    .line 412
    goto/16 :goto_3

    .line 413
    .line 414
    :cond_17
    const/16 v1, 0x14

    .line 415
    .line 416
    goto/16 :goto_4

    .line 417
    .line 418
    :sswitch_10
    const-string v1, "INVIDIOUS.MOOMOO.ME"

    .line 419
    .line 420
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-nez v1, :cond_18

    .line 425
    .line 426
    goto/16 :goto_3

    .line 427
    .line 428
    :cond_18
    const/16 v1, 0x13

    .line 429
    .line 430
    goto/16 :goto_4

    .line 431
    .line 432
    :sswitch_11
    const-string v1, "HOOKTUBE.COM"

    .line 433
    .line 434
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_19

    .line 439
    .line 440
    goto/16 :goto_3

    .line 441
    .line 442
    :cond_19
    const/16 v1, 0x12

    .line 443
    .line 444
    goto/16 :goto_4

    .line 445
    .line 446
    :sswitch_12
    const-string v1, "YOUTU.BE"

    .line 447
    .line 448
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_1a

    .line 453
    .line 454
    goto/16 :goto_3

    .line 455
    .line 456
    :cond_1a
    const/16 v1, 0x11

    .line 457
    .line 458
    goto/16 :goto_4

    .line 459
    .line 460
    :sswitch_13
    const-string v1, "INVIDIOUS-US.KAVIN.ROCKS"

    .line 461
    .line 462
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-nez v1, :cond_1b

    .line 467
    .line 468
    goto/16 :goto_3

    .line 469
    .line 470
    :cond_1b
    const/16 v1, 0x10

    .line 471
    .line 472
    goto/16 :goto_4

    .line 473
    .line 474
    :sswitch_14
    const-string v1, "INVIDIOUS.KAVIN.ROCKS"

    .line 475
    .line 476
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-nez v1, :cond_1c

    .line 481
    .line 482
    goto/16 :goto_3

    .line 483
    .line 484
    :cond_1c
    const/16 v1, 0xf

    .line 485
    .line 486
    goto/16 :goto_4

    .line 487
    .line 488
    :sswitch_15
    const-string v1, "MUSIC.YOUTUBE.COM"

    .line 489
    .line 490
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    if-nez v1, :cond_1d

    .line 495
    .line 496
    goto/16 :goto_3

    .line 497
    .line 498
    :cond_1d
    const/16 v1, 0xe

    .line 499
    .line 500
    goto/16 :goto_4

    .line 501
    .line 502
    :sswitch_16
    const-string v1, "YEWTU.BE"

    .line 503
    .line 504
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    if-nez v1, :cond_1e

    .line 509
    .line 510
    goto/16 :goto_3

    .line 511
    .line 512
    :cond_1e
    const/16 v1, 0xd

    .line 513
    .line 514
    goto/16 :goto_4

    .line 515
    .line 516
    :sswitch_17
    const-string v1, "INVIDIOU.SITE"

    .line 517
    .line 518
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    if-nez v1, :cond_1f

    .line 523
    .line 524
    goto/16 :goto_3

    .line 525
    .line 526
    :cond_1f
    const/16 v1, 0xc

    .line 527
    .line 528
    goto/16 :goto_4

    .line 529
    .line 530
    :sswitch_18
    const-string v1, "INV.RIVERSIDE.ROCKS"

    .line 531
    .line 532
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    if-nez v1, :cond_20

    .line 537
    .line 538
    goto/16 :goto_3

    .line 539
    .line 540
    :cond_20
    const/16 v1, 0xb

    .line 541
    .line 542
    goto/16 :goto_4

    .line 543
    .line 544
    :sswitch_19
    const-string v1, "DEV.INVIDIO.US"

    .line 545
    .line 546
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v1

    .line 550
    if-nez v1, :cond_21

    .line 551
    .line 552
    goto/16 :goto_3

    .line 553
    .line 554
    :cond_21
    const/16 v1, 0xa

    .line 555
    .line 556
    goto/16 :goto_4

    .line 557
    .line 558
    :sswitch_1a
    const-string v1, "INVIDIOUS.NAMAZSO.EU"

    .line 559
    .line 560
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v1

    .line 564
    if-nez v1, :cond_22

    .line 565
    .line 566
    goto/16 :goto_3

    .line 567
    .line 568
    :cond_22
    const/16 v1, 0x9

    .line 569
    .line 570
    goto/16 :goto_4

    .line 571
    .line 572
    :sswitch_1b
    const-string v1, "PIPED.KAVIN.ROCKS"

    .line 573
    .line 574
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    if-nez v1, :cond_23

    .line 579
    .line 580
    goto/16 :goto_3

    .line 581
    .line 582
    :cond_23
    const/16 v1, 0x8

    .line 583
    .line 584
    goto/16 :goto_4

    .line 585
    .line 586
    :sswitch_1c
    const-string v1, "VID.PUFFYAN.US"

    .line 587
    .line 588
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v1

    .line 592
    if-nez v1, :cond_24

    .line 593
    .line 594
    goto/16 :goto_3

    .line 595
    .line 596
    :cond_24
    const/4 v1, 0x7

    .line 597
    goto :goto_4

    .line 598
    :sswitch_1d
    const-string v1, "YTB.TROM.TF"

    .line 599
    .line 600
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    if-nez v1, :cond_25

    .line 605
    .line 606
    goto/16 :goto_3

    .line 607
    .line 608
    :cond_25
    move v1, v7

    .line 609
    goto :goto_4

    .line 610
    :sswitch_1e
    const-string v1, "VID.MINT.LGBT"

    .line 611
    .line 612
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    if-nez v1, :cond_26

    .line 617
    .line 618
    goto/16 :goto_3

    .line 619
    .line 620
    :cond_26
    const/4 v1, 0x5

    .line 621
    goto :goto_4

    .line 622
    :sswitch_1f
    const-string v1, "YT.CYBERHOST.UK"

    .line 623
    .line 624
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    .line 626
    .line 627
    move-result v1

    .line 628
    if-nez v1, :cond_27

    .line 629
    .line 630
    goto/16 :goto_3

    .line 631
    .line 632
    :cond_27
    const/4 v1, 0x4

    .line 633
    goto :goto_4

    .line 634
    :sswitch_20
    const-string v1, "M.YOUTUBE.COM"

    .line 635
    .line 636
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v1

    .line 640
    if-nez v1, :cond_28

    .line 641
    .line 642
    goto/16 :goto_3

    .line 643
    .line 644
    :cond_28
    const/4 v1, 0x3

    .line 645
    goto :goto_4

    .line 646
    :sswitch_21
    const-string v3, "Y2U.BE"

    .line 647
    .line 648
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    move-result v2

    .line 652
    if-nez v2, :cond_2b

    .line 653
    .line 654
    goto/16 :goto_3

    .line 655
    .line 656
    :sswitch_22
    const-string v1, "TUBUS.EDUVID.ORG"

    .line 657
    .line 658
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 659
    .line 660
    .line 661
    move-result v1

    .line 662
    if-nez v1, :cond_29

    .line 663
    .line 664
    goto/16 :goto_3

    .line 665
    .line 666
    :cond_29
    move v1, v3

    .line 667
    goto :goto_4

    .line 668
    :sswitch_23
    const-string v1, "INVIDIOUS.ZEE.LI"

    .line 669
    .line 670
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    if-nez v1, :cond_2a

    .line 675
    .line 676
    goto/16 :goto_3

    .line 677
    .line 678
    :cond_2a
    const/4 v1, 0x0

    .line 679
    :cond_2b
    :goto_4
    const-string/jumbo v2, "v"

    .line 680
    .line 681
    .line 682
    packed-switch v1, :pswitch_data_0

    .line 683
    .line 684
    .line 685
    goto :goto_5

    .line 686
    :pswitch_0
    const-string p0, "embed/"

    .line 687
    .line 688
    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 689
    .line 690
    .line 691
    move-result p0

    .line 692
    if-eqz p0, :cond_2c

    .line 693
    .line 694
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object p0

    .line 698
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object p0

    .line 702
    return-object p0

    .line 703
    :cond_2c
    :goto_5
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 704
    .line 705
    invoke-static {v6, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object p1

    .line 709
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 710
    .line 711
    .line 712
    throw p0

    .line 713
    :pswitch_1
    const-string v1, "attribution_link"

    .line 714
    .line 715
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    if-eqz v1, :cond_2d

    .line 720
    .line 721
    const-string/jumbo v1, "u"

    .line 722
    .line 723
    .line 724
    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 729
    .line 730
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object p0

    .line 740
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->stringToURL(Ljava/lang/String;)Ljava/net/URL;

    .line 741
    .line 742
    .line 743
    move-result-object p0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 744
    invoke-static {p0, v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object p0

    .line 748
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object p0

    .line 752
    return-object p0

    .line 753
    :catch_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 754
    .line 755
    invoke-static {v6, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object p1

    .line 759
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 760
    .line 761
    .line 762
    throw p0

    .line 763
    :cond_2d
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getIdFromSubpathsInPath(Ljava/lang/String;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object p0

    .line 767
    if-eqz p0, :cond_2e

    .line 768
    .line 769
    return-object p0

    .line 770
    :cond_2e
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object p0

    .line 774
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object p0

    .line 778
    return-object p0

    .line 779
    :pswitch_2
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object p0

    .line 783
    if-eqz p0, :cond_2f

    .line 784
    .line 785
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object p0

    .line 789
    return-object p0

    .line 790
    :cond_2f
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object p0

    .line 794
    return-object p0

    .line 795
    :pswitch_3
    const-string/jumbo p0, "watch"

    .line 796
    .line 797
    .line 798
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result p0

    .line 802
    if-eqz p0, :cond_30

    .line 803
    .line 804
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object p0

    .line 808
    if-eqz p0, :cond_30

    .line 809
    .line 810
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object p0

    .line 814
    return-object p0

    .line 815
    :cond_30
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getIdFromSubpathsInPath(Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object p0

    .line 819
    if-eqz p0, :cond_31

    .line 820
    .line 821
    return-object p0

    .line 822
    :cond_31
    invoke-static {v0, v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->getQueryValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object p0

    .line 826
    if-eqz p0, :cond_32

    .line 827
    .line 828
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object p0

    .line 832
    return-object p0

    .line 833
    :cond_32
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->assertIsId(Ljava/lang/String;)Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object p0

    .line 837
    return-object p0

    .line 838
    :cond_33
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 839
    .line 840
    invoke-static {v6, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    throw p0

    .line 848
    :cond_34
    :goto_6
    const-string p0, "googleads.g.doubleclick.net"

    .line 849
    .line 850
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 851
    .line 852
    .line 853
    move-result p0

    .line 854
    if-nez p0, :cond_35

    .line 855
    .line 856
    const-string p0, "The URL is not a YouTube URL"

    .line 857
    .line 858
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    return-object v2

    .line 862
    :cond_35
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/FoundAdException;

    .line 863
    .line 864
    const-string v0, "Error: found ad: "

    .line 865
    .line 866
    invoke-static {v0, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object p1

    .line 870
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 871
    .line 872
    .line 873
    throw p0

    .line 874
    :catch_2
    move-exception p0

    .line 875
    const-string p1, "The given URL is not valid"

    .line 876
    .line 877
    invoke-static {p1, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 878
    .line 879
    .line 880
    return-object v2

    .line 881
    :sswitch_data_0
    .sparse-switch
        -0x7e0457d1 -> :sswitch_23
        -0x7c6e2400 -> :sswitch_22
        -0x6538c10b -> :sswitch_21
        -0x64efe82b -> :sswitch_20
        -0x5f9cd1ca -> :sswitch_1f
        -0x546db0a4 -> :sswitch_1e
        -0x445441a3 -> :sswitch_1d
        -0x440f3cd8 -> :sswitch_1c
        -0x4119c053 -> :sswitch_1b
        -0x314fe193 -> :sswitch_1a
        -0x17b6192d -> :sswitch_19
        -0x17aaa2fa -> :sswitch_18
        -0xe92e56e -> :sswitch_17
        -0x76cc11b -> :sswitch_16
        -0x325c673 -> :sswitch_15
        0x4620d47 -> :sswitch_14
        0x6257072 -> :sswitch_13
        0x627de31 -> :sswitch_12
        0xa169d1a -> :sswitch_11
        0x11fd15e8 -> :sswitch_10
        0x1578e74c -> :sswitch_f
        0x1824f098 -> :sswitch_e
        0x381ef9ff -> :sswitch_d
        0x3f4c7f6b -> :sswitch_c
        0x4949eb3a -> :sswitch_b
        0x5fd0bae8 -> :sswitch_a
        0x6249e462 -> :sswitch_9
        0x669117b6 -> :sswitch_8
        0x67acbc5b -> :sswitch_7
        0x6c60ce27 -> :sswitch_6
        0x6fdc1199 -> :sswitch_5
        0x7731d328 -> :sswitch_4
        0x7893fdf9 -> :sswitch_3
        0x78a7f811 -> :sswitch_2
        0x79548585 -> :sswitch_1
        0x7bbb6bf6 -> :sswitch_0
    .end sparse-switch

    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public final getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "https://www.youtube.com/watch?v="

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final onAcceptUrl(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->getId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :catch_1
    move-exception p0

    .line 9
    throw p0
.end method
