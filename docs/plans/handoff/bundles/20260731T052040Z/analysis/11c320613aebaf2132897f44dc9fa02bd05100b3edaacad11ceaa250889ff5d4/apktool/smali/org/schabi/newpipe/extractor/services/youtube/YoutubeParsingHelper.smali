.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

.field public static final C_IOS_PATTERN:Ljava/util/regex/Pattern;

.field public static final C_VISIONOS_PATTERN:Ljava/util/regex/Pattern;

.field public static final C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

.field public static final C_WEB_PATTERN:Ljava/util/regex/Pattern;

.field public static final GOOGLE_URLS:Ljava/util/Set;

.field public static final INITIAL_DATA_REGEXES:[Ljava/lang/String;

.field public static final INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

.field public static final INVIDIOUS_URLS:Ljava/util/Set;

.field public static final YOUTUBE_URLS:Ljava/util/Set;

.field public static clientVersion:Ljava/lang/String; = null

.field public static clientVersionExtracted:Z = false

.field public static hardcodedClientVersionValid:Lj$/util/Optional;

.field public static final numberGenerator:Ljava/util/Random;

.field public static youtubeMusicClientVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Lj$/util/Optional;

    .line 6
    .line 7
    const-string v0, "innertube_context_client_version\":\"([0-9\\.]+?)\""

    .line 8
    .line 9
    const-string v1, "client.version=([0-9\\.]+)"

    .line 10
    .line 11
    const-string v2, "INNERTUBE_CONTEXT_CLIENT_VERSION\":\"([0-9\\.]+?)\""

    .line 12
    .line 13
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    .line 18
    .line 19
    const-string/jumbo v0, "window\\[\"ytInitialData\"\\]\\s*=\\s*(\\{.*?\\});"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "var\\s*ytInitialData\\s*=\\s*(\\{.*?\\});"

    .line 23
    .line 24
    .line 25
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INITIAL_DATA_REGEXES:[Ljava/lang/String;

    .line 30
    .line 31
    new-instance v0, Ljava/util/Random;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->numberGenerator:Ljava/util/Random;

    .line 37
    .line 38
    const-string v0, "&c=WEB"

    .line 39
    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_PATTERN:Ljava/util/regex/Pattern;

    .line 45
    .line 46
    const-string v0, "&c=WEB_EMBEDDED_PLAYER"

    .line 47
    .line 48
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_WEB_EMBEDDED_PLAYER_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    .line 54
    const-string v0, "&c=ANDROID"

    .line 55
    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_ANDROID_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    .line 62
    const-string v0, "&c=IOS"

    .line 63
    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_IOS_PATTERN:Ljava/util/regex/Pattern;

    .line 69
    .line 70
    const-string v0, "&c=VISIONOS"

    .line 71
    .line 72
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->C_VISIONOS_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    new-array v1, v0, [Ljava/lang/Object;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    const-string v3, "google."

    .line 83
    .line 84
    aput-object v3, v1, v2

    .line 85
    .line 86
    const-string v3, "m.google."

    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    aput-object v3, v1, v4

    .line 90
    .line 91
    const/4 v3, 0x2

    .line 92
    const-string/jumbo v5, "www.google."

    .line 93
    .line 94
    .line 95
    aput-object v5, v1, v3

    .line 96
    .line 97
    new-instance v5, Ljava/util/HashSet;

    .line 98
    .line 99
    invoke-direct {v5, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 100
    .line 101
    .line 102
    move v6, v2

    .line 103
    :goto_0
    const-string v7, "duplicate element: "

    .line 104
    .line 105
    if-ge v6, v0, :cond_1

    .line 106
    .line 107
    aget-object v8, v1, v6

    .line 108
    .line 109
    invoke-static {v8}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    if-eqz v9, :cond_0

    .line 117
    .line 118
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    invoke-static {v8, v7}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_1
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->GOOGLE_URLS:Ljava/util/Set;

    .line 134
    .line 135
    const-string v34, "invidious.moomoo.me"

    .line 136
    .line 137
    const-string/jumbo v35, "yt.cyberhost.uk"

    .line 138
    .line 139
    .line 140
    const-string v8, "invidio.us"

    .line 141
    .line 142
    const-string v9, "dev.invidio.us"

    .line 143
    .line 144
    const-string/jumbo v10, "www.invidio.us"

    .line 145
    .line 146
    .line 147
    const-string v11, "redirect.invidious.io"

    .line 148
    .line 149
    const-string v12, "invidious.snopyta.org"

    .line 150
    .line 151
    const-string/jumbo v13, "yewtu.be"

    .line 152
    .line 153
    .line 154
    const-string/jumbo v14, "tube.connect.cafe"

    .line 155
    .line 156
    .line 157
    const-string/jumbo v15, "tubus.eduvid.org"

    .line 158
    .line 159
    .line 160
    const-string v16, "invidious.kavin.rocks"

    .line 161
    .line 162
    const-string v17, "invidious.site"

    .line 163
    .line 164
    const-string v18, "invidious-us.kavin.rocks"

    .line 165
    .line 166
    const-string v19, "piped.kavin.rocks"

    .line 167
    .line 168
    const-string/jumbo v20, "vid.mint.lgbt"

    .line 169
    .line 170
    .line 171
    const-string v21, "invidiou.site"

    .line 172
    .line 173
    const-string v22, "invidious.fdn.fr"

    .line 174
    .line 175
    const-string v23, "invidious.048596.xyz"

    .line 176
    .line 177
    const-string v24, "invidious.zee.li"

    .line 178
    .line 179
    const-string/jumbo v25, "vid.puffyan.us"

    .line 180
    .line 181
    .line 182
    const-string/jumbo v26, "ytprivate.com"

    .line 183
    .line 184
    .line 185
    const-string v27, "invidious.namazso.eu"

    .line 186
    .line 187
    const-string v28, "invidious.silkky.cloud"

    .line 188
    .line 189
    const-string/jumbo v29, "ytb.trom.tf"

    .line 190
    .line 191
    .line 192
    const-string v30, "invidious.exonip.de"

    .line 193
    .line 194
    const-string v31, "inv.riverside.rocks"

    .line 195
    .line 196
    const-string v32, "invidious.blamefran.net"

    .line 197
    .line 198
    const-string/jumbo v33, "y.com.cm"

    .line 199
    .line 200
    .line 201
    filled-new-array/range {v8 .. v35}, [Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    new-instance v5, Ljava/util/HashSet;

    .line 206
    .line 207
    const/16 v6, 0x1c

    .line 208
    .line 209
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 210
    .line 211
    .line 212
    move v8, v2

    .line 213
    :goto_1
    if-ge v8, v6, :cond_3

    .line 214
    .line 215
    aget-object v9, v1, v8

    .line 216
    .line 217
    invoke-static {v9}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v10

    .line 224
    if-eqz v10, :cond_2

    .line 225
    .line 226
    add-int/lit8 v8, v8, 0x1

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_2
    invoke-static {v9, v7}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_3
    invoke-static {v5}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INVIDIOUS_URLS:Ljava/util/Set;

    .line 238
    .line 239
    const/4 v1, 0x4

    .line 240
    new-array v5, v1, [Ljava/lang/Object;

    .line 241
    .line 242
    const-string/jumbo v6, "youtube.com"

    .line 243
    .line 244
    .line 245
    aput-object v6, v5, v2

    .line 246
    .line 247
    const-string/jumbo v6, "www.youtube.com"

    .line 248
    .line 249
    .line 250
    aput-object v6, v5, v4

    .line 251
    .line 252
    const-string v4, "m.youtube.com"

    .line 253
    .line 254
    aput-object v4, v5, v3

    .line 255
    .line 256
    const-string v3, "music.youtube.com"

    .line 257
    .line 258
    aput-object v3, v5, v0

    .line 259
    .line 260
    new-instance v0, Ljava/util/HashSet;

    .line 261
    .line 262
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 263
    .line 264
    .line 265
    :goto_2
    if-ge v2, v1, :cond_5

    .line 266
    .line 267
    aget-object v3, v5, v2

    .line 268
    .line 269
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-eqz v4, :cond_4

    .line 277
    .line 278
    add-int/lit8 v2, v2, 0x1

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_4
    invoke-static {v3, v7}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_5
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->YOUTUBE_URLS:Ljava/util/Set;

    .line 294
    .line 295
    return-void
.end method

.method public static defaultAlertsCheck(Lcom/grack/nanojson/JsonObject;)V
    .locals 4

    .line 1
    const-string v0, "alerts"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v1, "alertRenderer"

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string/jumbo v1, "text"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string/jumbo v2, "type"

    .line 36
    .line 37
    .line 38
    const-string v3, ""

    .line 39
    .line 40
    invoke-virtual {p0, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v2, "ERROR"

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_4

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const-string p0, "This account has been terminated"

    .line 55
    .line 56
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_0

    .line 61
    .line 62
    const-string p0, "This channel was removed"

    .line 63
    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    :cond_0
    const-string p0, ".*violat(ed|ion|ing).*"

    .line 71
    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_2

    .line 77
    .line 78
    const-string p0, "infringement"

    .line 79
    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    .line 88
    .line 89
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_2
    :goto_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;

    .line 94
    .line 95
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/extractor/exceptions/AccountTerminatedException;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 100
    .line 101
    const-string v0, "Got error: \""

    .line 102
    .line 103
    const-string v2, "\""

    .line 104
    .line 105
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_4
    return-void
.end method

.method public static extractCachedUrlIfNeeded(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string/jumbo v0, "webcache.googleusercontent.com"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v0, "cache:"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const/4 v0, 0x1

    .line 21
    aget-object p0, p0, v0

    .line 22
    .line 23
    :cond_1
    return-object p0
.end method

.method public static extractPlaylistTypeFromPlaylistId(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMusicMixId(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_MUSIC:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string v0, "RDGMEM"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_GENRE:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string v0, "RD"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 34
    .line 35
    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->MIX_STREAM:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    sget-object p0, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;->NORMAL:Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    const-string p0, "Could not extract playlist type from empty playlist id"

    .line 42
    .line 43
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method public static extractVideoIdFromMixId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_5

    .line 6
    .line 7
    const-string v0, "RDMM"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->isYoutubeMusicMixId(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x6

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    const-string v0, "RDGMEM"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_4

    .line 40
    .line 41
    const-string v0, "RD"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/16 v1, 0xd

    .line 54
    .line 55
    if-ne v0, v1, :cond_2

    .line 56
    .line 57
    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 64
    .line 65
    const-string v1, "Video id could not be determined from mix id: "

    .line 66
    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_3
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 76
    .line 77
    const-string v1, "Video id could not be determined from playlist id: "

    .line 78
    .line 79
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_4
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 88
    .line 89
    const-string v1, "Video id could not be determined from genre mix id: "

    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :cond_5
    const-string p0, "Video id could not be determined from empty playlist id"

    .line 100
    .line 101
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    return-object p0
.end method

.method public static fixThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "//"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    const-string v0, "http://"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string v0, "https://"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :cond_2
    return-object p0
.end method

.method public static getAndroidUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "com.google.android.youtube/21.03.36 (Linux; U; Android 15; "

    .line 11
    .line 12
    const-string v1, ") gzip"

    .line 13
    .line 14
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 6
    .line 7
    new-instance p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    aget-object v1, v1, v2

    .line 13
    .line 14
    invoke-static {v1, p0, v1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-array v1, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object p1, v1, v2

    .line 21
    .line 22
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    aget-object v1, v1, v2

    .line 28
    .line 29
    invoke-static {v1, p1, v1, p1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 34
    .line 35
    const-string v3, "X-YouTube-Client-Name"

    .line 36
    .line 37
    invoke-direct {v1, v3, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance p0, Ljava/util/AbstractMap$SimpleEntry;

    .line 41
    .line 42
    const-string v3, "X-YouTube-Client-Version"

    .line 43
    .line 44
    invoke-direct {p0, v3, p1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    new-array v3, p1, [Ljava/util/Map$Entry;

    .line 49
    .line 50
    aput-object v1, v3, v2

    .line 51
    .line 52
    aput-object p0, v3, v0

    .line 53
    .line 54
    new-instance p0, Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    if-ge v2, p1, :cond_1

    .line 60
    .line 61
    aget-object v0, v3, v2

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-string p0, "duplicate key: "

    .line 87
    .line 88
    invoke-static {v1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const/4 p0, 0x0

    .line 96
    return-object p0

    .line 97
    :cond_1
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method public static getClientVersion()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v1, 0x1

    .line 15
    :try_start_0
    sget-boolean v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    const-string v2, "https://www.youtube.com"

    .line 22
    .line 23
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 28
    .line 29
    const-string v4, "https://www.youtube.com/sw.js"

    .line 30
    .line 31
    invoke-virtual {v3, v4, v2}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;Ljava/util/Map;)Landroidx/recyclerview/widget/ChildHelper;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 36
    .line 37
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    .line 39
    :try_start_1
    invoke-static {v2, v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sput-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;
    :try_end_1
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .line 45
    :try_start_2
    sput-boolean v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    .line 49
    const-string v3, "Could not extract YouTube WEB InnerTube client version from sw.js"

    .line 50
    .line 51
    invoke-static {v3, v2}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_1
    sget-boolean v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    sget-object v2, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 61
    .line 62
    const-string v3, "https://www.youtube.com/results?search_query=&ucbcb=1"

    .line 63
    .line 64
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getCookieHeader()Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v2, v3, v4}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;Ljava/util/Map;)Landroidx/recyclerview/widget/ChildHelper;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v2, v2, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 73
    .line 74
    check-cast v2, Ljava/lang/String;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    :try_start_3
    invoke-static {}, Lcom/grack/nanojson/JsonParser;->object()Lokhttp3/ConnectionPool;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INITIAL_DATA_REGEXES:[Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v2, v5}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v4, v5}, Lokhttp3/ConnectionPool;->from(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Lcom/grack/nanojson/JsonObject;
    :try_end_3
    .catch Lcom/grack/nanojson/JsonParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_3 .. :try_end_3} :catch_3

    .line 92
    .line 93
    const-string v5, "responseContext"

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v5, "serviceTrackingParams"

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const-string v5, "CSI"

    .line 110
    .line 111
    const-string v6, "cver"

    .line 112
    .line 113
    invoke-static {v4, v5, v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersionFromServiceTrackingParam(Lj$/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    sput-object v5, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 118
    .line 119
    if-nez v5, :cond_3

    .line 120
    .line 121
    :try_start_4
    invoke-static {v2, v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;
    :try_end_4
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_4 .. :try_end_4} :catch_2

    .line 126
    .line 127
    :catch_2
    :cond_3
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 128
    .line 129
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    const-string v0, "ECATCHER"

    .line 136
    .line 137
    const-string v2, "client.version"

    .line 138
    .line 139
    invoke-static {v4, v0, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersionFromServiceTrackingParam(Lj$/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 144
    .line 145
    :cond_4
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    sput-boolean v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    .line 150
    .line 151
    :goto_0
    sget-boolean v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersionExtracted:Z

    .line 152
    .line 153
    if-eqz v0, :cond_5

    .line 154
    .line 155
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_5
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Lj$/util/Optional;

    .line 159
    .line 160
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    const-string v2, "2.20260120.01.00"

    .line 165
    .line 166
    if-eqz v0, :cond_6

    .line 167
    .line 168
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Lj$/util/Optional;

    .line 169
    .line 170
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Ljava/lang/Boolean;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_6
    new-instance v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 183
    .line 184
    invoke-direct {v0}, Lcom/grack/nanojson/JsonStringWriter;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()V

    .line 188
    .line 189
    .line 190
    const-string v3, "context"

    .line 191
    .line 192
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v3, "client"

    .line 196
    .line 197
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v3, "hl"

    .line 201
    .line 202
    const-string v4, "en-GB"

    .line 203
    .line 204
    invoke-virtual {v0, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string v3, "gl"

    .line 208
    .line 209
    const-string v4, "GB"

    .line 210
    .line 211
    invoke-virtual {v0, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string v3, "clientName"

    .line 215
    .line 216
    const-string v4, "WEB"

    .line 217
    .line 218
    invoke-virtual {v0, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    const-string v3, "clientVersion"

    .line 222
    .line 223
    invoke-virtual {v0, v3, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    const-string v3, "platform"

    .line 227
    .line 228
    const-string v4, "DESKTOP"

    .line 229
    .line 230
    invoke-virtual {v0, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string/jumbo v3, "utcOffsetMinutes"

    .line 234
    .line 235
    .line 236
    const/4 v4, 0x0

    .line 237
    invoke-virtual {v0, v4, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 241
    .line 242
    .line 243
    const-string v3, "request"

    .line 244
    .line 245
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string v3, "internalExperimentFlags"

    .line 249
    .line 250
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 254
    .line 255
    .line 256
    const-string/jumbo v3, "useSsl"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0, v3, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 263
    .line 264
    .line 265
    const-string/jumbo v3, "user"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v3}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    const-string v3, "lockedSafetyMode"

    .line 272
    .line 273
    invoke-virtual {v0, v3, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 280
    .line 281
    .line 282
    const-string v3, "fetchLiveState"

    .line 283
    .line 284
    invoke-virtual {v0, v3, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 295
    .line 296
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    const-string v3, "1"

    .line 301
    .line 302
    invoke-static {v3, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    sget-object v5, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 307
    .line 308
    const-string v6, "https://www.youtube.com/youtubei/v1/guide?prettyPrint=false"

    .line 309
    .line 310
    invoke-virtual {v5, v6, v3, v0}, Lkotlin/io/CloseableKt;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Landroidx/recyclerview/widget/ChildHelper;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-object v3, v0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 315
    .line 316
    check-cast v3, Ljava/lang/String;

    .line 317
    .line 318
    iget v0, v0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    const/16 v5, 0x1388

    .line 325
    .line 326
    if-le v3, v5, :cond_7

    .line 327
    .line 328
    const/16 v3, 0xc8

    .line 329
    .line 330
    if-ne v0, v3, :cond_7

    .line 331
    .line 332
    goto :goto_1

    .line 333
    :cond_7
    move v1, v4

    .line 334
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->hardcodedClientVersionValid:Lj$/util/Optional;

    .line 343
    .line 344
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    check-cast v0, Ljava/lang/Boolean;

    .line 349
    .line 350
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    :goto_2
    if-eqz v0, :cond_8

    .line 355
    .line 356
    sput-object v2, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 357
    .line 358
    return-object v2

    .line 359
    :cond_8
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 360
    .line 361
    const-string v1, "Could not get YouTube WEB client version"

    .line 362
    .line 363
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw v0

    .line 367
    :cond_9
    const-string v0, "Could not extract YouTube WEB InnerTube client version from HTML search results page"

    .line 368
    .line 369
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return-object v3

    .line 373
    :catch_3
    move-exception v0

    .line 374
    goto :goto_3

    .line 375
    :catch_4
    move-exception v0

    .line 376
    :goto_3
    const-string v1, "Could not get ytInitialData"

    .line 377
    .line 378
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    .line 380
    .line 381
    return-object v3
.end method

.method public static getClientVersionFromServiceTrackingParam(Lj$/util/stream/Stream;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, p1, v1}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;

    .line 12
    .line 13
    const/16 v0, 0x1b

    .line 14
    .line 15
    invoke-direct {p1, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;

    .line 23
    .line 24
    const/16 v0, 0x8

    .line 25
    .line 26
    invoke-direct {p1, p2, v0}, Lorg/schabi/newpipe/extractor/NewPipe$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;

    .line 34
    .line 35
    const/16 p2, 0x1c

    .line 36
    .line 37
    invoke-direct {p1, p2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance p1, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    .line 45
    .line 46
    const/16 p2, 0x10

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Ljava/lang/String;

    .line 65
    .line 66
    return-object p0
.end method

.method public static getCookieHeader()Ljava/util/Map;
    .locals 5

    .line 1
    const-string v0, "CAE="

    .line 2
    .line 3
    const-string v1, "SOCS="

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    aget-object v2, v2, v3

    .line 21
    .line 22
    invoke-static {v2, v0, v2, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v2, Ljava/util/AbstractMap$SimpleEntry;

    .line 27
    .line 28
    const-string v4, "Cookie"

    .line 29
    .line 30
    invoke-direct {v2, v4, v0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-array v0, v1, [Ljava/util/Map$Entry;

    .line 34
    .line 35
    aput-object v2, v0, v3

    .line 36
    .line 37
    new-instance v2, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 40
    .line 41
    .line 42
    aget-object v0, v0, v3

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0

    .line 69
    :cond_0
    const-string v0, "duplicate key: "

    .line 70
    .line 71
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    return-object v0
.end method

.method public static getFeedUrlFrom(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string/jumbo v0, "user/"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, ""

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "https://www.youtube.com/feeds/videos.xml?user="

    .line 17
    .line 18
    invoke-static {v0, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string v0, "channel/"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v3, "https://www.youtube.com/feeds/videos.xml?channel_id="

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v3, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/grack/nanojson/JsonArray;->streamAsJsonObjects()Lj$/util/stream/Stream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/16 v1, 0x12

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/grack/nanojson/JsonArray$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;

    .line 17
    .line 18
    const/16 v1, 0x1d

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeChannelHelper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {}, Lj$/util/stream/Collectors;->toUnmodifiableList()Lj$/util/stream/Collector;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/util/List;

    .line 36
    .line 37
    return-object p0
.end method

.method public static getIosUserAgent()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.google.ios.youtube/21.03.2(iPhone16,2; U; CPU iOS 18_7_2 like Mac OS X; "

    .line 8
    .line 9
    const-string v2, ")"

    .line 10
    .line 11
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static getJsonPostResponse(Ljava/lang/String;[BLorg/schabi/newpipe/extractor/localization/Localization;)Lcom/grack/nanojson/JsonObject;
    .locals 4

    .line 1
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getYouTubeHeaders()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 6
    .line 7
    const-string v2, "https://www.youtube.com/youtubei/v1/"

    .line 8
    .line 9
    const-string v3, "?prettyPrint=false"

    .line 10
    .line 11
    invoke-static {v2, p0, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v1, p0, v0, p1, p2}, Lkotlin/io/CloseableKt;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[BLorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Landroidx/recyclerview/widget/ChildHelper;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 6
    .line 7
    new-instance p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    aget-object v1, v1, v2

    .line 13
    .line 14
    invoke-static {v1, p0, v1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 19
    .line 20
    const-string v3, "Origin"

    .line 21
    .line 22
    invoke-direct {v1, v3, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    .line 26
    .line 27
    const-string v4, "Referer"

    .line 28
    .line 29
    invoke-direct {v3, v4, p0}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x2

    .line 33
    new-array v4, p0, [Ljava/util/Map$Entry;

    .line 34
    .line 35
    aput-object v1, v4, v2

    .line 36
    .line 37
    aput-object v3, v4, v0

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    if-ge v2, p0, :cond_1

    .line 45
    .line 46
    aget-object v1, v4, v2

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const-string p0, "duplicate key: "

    .line 72
    .line 73
    invoke-static {v3, p0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    return-object p0

    .line 82
    :cond_1
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
.end method

.method public static getTextAtKey(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string/jumbo v0, "simpleText"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string v0, "runs"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :goto_0
    return-object v1

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_e

    .line 50
    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/grack/nanojson/JsonObject;

    .line 56
    .line 57
    const-string/jumbo v3, "text"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v3, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz p1, :cond_d

    .line 65
    .line 66
    const-string v4, "navigationEndpoint"

    .line 67
    .line 68
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_4

    .line 87
    .line 88
    invoke-static {v4}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v3}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string v5, "\">"

    .line 97
    .line 98
    const-string v6, "</a>"

    .line 99
    .line 100
    const-string v7, "<a href=\""

    .line 101
    .line 102
    invoke-static {v7, v4, v5, v3, v6}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    :cond_4
    const-string v4, "bold"

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    const/4 v6, 0x0

    .line 113
    const/4 v7, 0x1

    .line 114
    if-eqz v5, :cond_5

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    move v4, v7

    .line 123
    goto :goto_2

    .line 124
    :cond_5
    move v4, v6

    .line 125
    :goto_2
    const-string v5, "italics"

    .line 126
    .line 127
    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_6

    .line 132
    .line 133
    invoke-virtual {v2, v5}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_6

    .line 138
    .line 139
    move v5, v7

    .line 140
    goto :goto_3

    .line 141
    :cond_6
    move v5, v6

    .line 142
    :goto_3
    const-string/jumbo v8, "strikethrough"

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_7

    .line 150
    .line 151
    invoke-virtual {v2, v8}, Lcom/grack/nanojson/JsonObject;->getBoolean(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_7

    .line 156
    .line 157
    move v6, v7

    .line 158
    :cond_7
    if-eqz v4, :cond_8

    .line 159
    .line 160
    const-string v2, "<b>"

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_8
    if-eqz v5, :cond_9

    .line 166
    .line 167
    const-string v2, "<i>"

    .line 168
    .line 169
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    :cond_9
    if-eqz v6, :cond_a

    .line 173
    .line 174
    const-string v2, "<s>"

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    :cond_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    if-eqz v6, :cond_b

    .line 183
    .line 184
    const-string v2, "</s>"

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    :cond_b
    if-eqz v5, :cond_c

    .line 190
    .line 191
    const-string v2, "</i>"

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    :cond_c
    if-eqz v4, :cond_3

    .line 197
    .line 198
    const-string v2, "</b>"

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :cond_d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    if-eqz p1, :cond_f

    .line 215
    .line 216
    const-string p1, "\\n"

    .line 217
    .line 218
    const-string v0, "<br>"

    .line 219
    .line 220
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    const-string p1, " {2}"

    .line 225
    .line 226
    const-string v0, " &nbsp;"

    .line 227
    .line 228
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    :cond_f
    return-object p0
.end method

.method public static getTextFromObjectOrThrow(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getTextFromObject(Lcom/grack/nanojson/JsonObject;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 10
    .line 11
    const-string v0, "Could not extract text: "

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static getThumbnailsFromInfoItem(Lcom/grack/nanojson/JsonObject;)Ljava/util/List;
    .locals 1

    .line 1
    :try_start_0
    const-string/jumbo v0, "thumbnail"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const-string/jumbo v0, "thumbnails"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getImagesFromThumbnailsArray(Lcom/grack/nanojson/JsonArray;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const-string v0, "Could not get thumbnails from InfoItem"

    .line 22
    .line 23
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0
.end method

.method public static getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 11

    .line 1
    const-string/jumbo v0, "urlEndpoint"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const-string v2, "https://www.youtube.com"

    .line 9
    .line 10
    const-string/jumbo v3, "url"

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v1, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v3, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "https://www.youtube.com/redirect?"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/16 v1, 0x17

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    const-string v1, "/redirect?"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0xa

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "&"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    array-length v1, v0

    .line 60
    move v6, v4

    .line 61
    :goto_0
    if-ge v6, v1, :cond_5

    .line 62
    .line 63
    aget-object v7, v0, v6

    .line 64
    .line 65
    const-string v8, "="

    .line 66
    .line 67
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    aget-object v9, v9, v4

    .line 72
    .line 73
    const-string v10, "q"

    .line 74
    .line 75
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    if-eqz v9, :cond_1

    .line 80
    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const/4 v0, 0x1

    .line 86
    aget-object p0, p0, v0

    .line 87
    .line 88
    sget-object v0, Lorg/schabi/newpipe/extractor/utils/Utils;->M_PATTERN:Ljava/util/regex/Pattern;

    .line 89
    .line 90
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 91
    .line 92
    invoke-static {p0, v0}, Lj$/net/URLDecoder;->decode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    const-string v1, "http"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_3

    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_3
    const-string v1, "/channel"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_4

    .line 116
    .line 117
    const-string v1, "/user"

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_4

    .line 124
    .line 125
    const-string v1, "/watch"

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :cond_5
    const-string v0, "browseEndpoint"

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    const-string v6, "https://www.youtube.com/playlist?list="

    .line 145
    .line 146
    if-eqz v1, :cond_8

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v1, "canonicalBaseUrl"

    .line 153
    .line 154
    invoke-virtual {v0, v1, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v7, "browseId"

    .line 159
    .line 160
    invoke-virtual {v0, v7, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_7

    .line 165
    .line 166
    const-string v7, "UC"

    .line 167
    .line 168
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_6

    .line 173
    .line 174
    const-string p0, "https://www.youtube.com/channel/"

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    return-object p0

    .line 181
    :cond_6
    const-string v7, "VL"

    .line 182
    .line 183
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-eqz v7, :cond_7

    .line 188
    .line 189
    const/4 p0, 0x2

    .line 190
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    return-object p0

    .line 199
    :cond_7
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_8

    .line 204
    .line 205
    invoke-static {v2, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    :cond_8
    const-string/jumbo v0, "watchEndpoint"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    const-string v7, "playlistId"

    .line 218
    .line 219
    if-eqz v1, :cond_b

    .line 220
    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v2, "https://www.youtube.com/watch?v="

    .line 224
    .line 225
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    const-string/jumbo v3, "videoId"

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v3, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_9

    .line 251
    .line 252
    const-string v2, "&list="

    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v2, v7, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    :cond_9
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    const-string/jumbo v3, "startTimeSeconds"

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    if-eqz v2, :cond_a

    .line 280
    .line 281
    const-string v2, "&t="

    .line 282
    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-virtual {p0, v4, v3}, Lcom/grack/nanojson/JsonObject;->getInt(ILjava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    return-object p0

    .line 302
    :cond_b
    const-string/jumbo v0, "watchPlaylistEndpoint"

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_c

    .line 310
    .line 311
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-virtual {p0, v7, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-static {v6, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    return-object p0

    .line 324
    :cond_c
    const-string/jumbo v0, "showDialogCommand"

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-eqz v0, :cond_d

    .line 332
    .line 333
    :try_start_0
    const-string/jumbo v0, "showDialogCommand.panelLoadingStrategy.inlineContent.dialogViewModel.customContent.listViewModel.listItems"

    .line 334
    .line 335
    .line 336
    const-class v1, Lcom/grack/nanojson/JsonArray;

    .line 337
    .line 338
    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    check-cast v0, Lcom/grack/nanojson/JsonArray;

    .line 343
    .line 344
    invoke-virtual {v0, v4}, Lcom/grack/nanojson/JsonArray;->getObject(I)Lcom/grack/nanojson/JsonObject;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const-string v1, "listItemViewModel.rendererContext.commandContext.onTap.innertubeCommand"

    .line 349
    .line 350
    const-class v4, Lcom/grack/nanojson/JsonObject;

    .line 351
    .line 352
    invoke-static {v0, v1, v4}, Lorg/schabi/newpipe/extractor/utils/Parser;->getInstanceOf(Lcom/grack/nanojson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 357
    .line 358
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    return-object p0

    .line 363
    :catch_0
    :cond_d
    const-string v0, "commandMetadata"

    .line 364
    .line 365
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_e

    .line 370
    .line 371
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    const-string/jumbo v0, "webCommandMetadata"

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-eqz v0, :cond_e

    .line 387
    .line 388
    invoke-virtual {p0, v3, v5}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    invoke-static {v2, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    return-object p0

    .line 397
    :cond_e
    return-object v5
.end method

.method public static getUrlFromObject(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "runs"

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/grack/nanojson/JsonObject;->getArray(Ljava/lang/String;)Lcom/grack/nanojson/JsonArray;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 36
    .line 37
    const-string v1, "navigationEndpoint"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getUrlFromNavigationEndpoint(Lcom/grack/nanojson/JsonObject;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 55
    return-object p0
.end method

.method public static getValidJsonResponseBody(Landroidx/recyclerview/widget/ChildHelper;)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/String;

    .line 6
    .line 7
    const/16 v2, 0x194

    .line 8
    .line 9
    const-string v3, "\")"

    .line 10
    .line 11
    if-eq v0, v2, :cond_5

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v4, 0x32

    .line 22
    .line 23
    if-lt v2, v4, :cond_4

    .line 24
    .line 25
    new-instance v2, Ljava/net/URL;

    .line 26
    .line 27
    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string/jumbo v5, "www.youtube.com"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v4, "/oops"

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_0

    .line 54
    .line 55
    const-string v4, "/error"

    .line 56
    .line 57
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 65
    .line 66
    const-string v0, "Content unavailable"

    .line 67
    .line 68
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_1
    :goto_0
    const-string v2, "Content-Type"

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/ChildHelper;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    if-eqz p0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string/jumbo v2, "text/html"

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-nez p0, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 95
    .line 96
    const-string v0, "Got HTML document, expected JSON response (latest url was: \""

    .line 97
    .line 98
    invoke-static {v0, v1, v3}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_3
    :goto_1
    return-object v0

    .line 107
    :cond_4
    const-string p0, "JSON response is too short"

    .line 108
    .line 109
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p0, 0x0

    .line 113
    return-object p0

    .line 114
    :cond_5
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    .line 115
    .line 116
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Ljava/lang/String;

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v4, "Not found (\""

    .line 123
    .line 124
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v0, " "

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-direct {v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v1
.end method

.method public static getVisionOsUserAgent(Lorg/schabi/newpipe/extractor/localization/Localization;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string v0, "com.google.visionos.youtube/1.02(RealityDevice14,1; U; CPU visionOS 25_6_0 like Mac OS X; "

    .line 11
    .line 12
    const-string v1, ")"

    .line 13
    .line 14
    invoke-static {v0, p0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static getVisitorDataFromInnertube(Lorg/jsoup/parser/TokenData;Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1, p2, p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/jsoup/parser/TokenData;)Lcom/grack/nanojson/JsonBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lcom/grack/nanojson/JsonObject;

    .line 8
    .line 9
    invoke-static {p0}, Lorg/jsoup/Jsoup;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object p1, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 20
    .line 21
    const-string/jumbo p2, "visitor_id"

    .line 22
    .line 23
    .line 24
    const-string v0, "?prettyPrint=false"

    .line 25
    .line 26
    invoke-static {p4, p2, v0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2, p3, p0}, Lkotlin/io/CloseableKt;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Landroidx/recyclerview/widget/ChildHelper;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getValidJsonResponseBody(Landroidx/recyclerview/widget/ChildHelper;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Parser;->toJsonObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string p1, "responseContext"

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string/jumbo p1, "visitorData"

    .line 49
    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_0
    const-string p0, "Could not get visitorData"

    .line 64
    .line 65
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-object p2
.end method

.method public static getYouTubeHeaders()Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const-string v1, "https://www.youtube.com"

    .line 4
    .line 5
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "1"

    .line 13
    .line 14
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "CAE="

    .line 26
    .line 27
    const-string v2, "SOCS="

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x1

    .line 34
    new-array v3, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    aput-object v1, v3, v4

    .line 38
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 42
    .line 43
    .line 44
    aget-object v2, v3, v4

    .line 45
    .line 46
    invoke-static {v2, v1, v2, v1}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v2, "Cookie"

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    return-object v0
.end method

.method public static getYoutubeMusicClientVersion()Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INNERTUBE_CONTEXT_CLIENT_VERSION_REGEXES:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v1, Lcom/grack/nanojson/JsonStringWriter;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/grack/nanojson/JsonStringWriter;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->object()V

    .line 20
    .line 21
    .line 22
    const-string v2, "context"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v2, "client"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v2, "clientName"

    .line 33
    .line 34
    const-string v3, "WEB_REMIX"

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "clientVersion"

    .line 40
    .line 41
    const-string v3, "1.20260121.03.00"

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "hl"

    .line 47
    .line 48
    const-string v4, "en-GB"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string v2, "gl"

    .line 54
    .line 55
    const-string v4, "GB"

    .line 56
    .line 57
    invoke-virtual {v1, v2, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v2, "platform"

    .line 61
    .line 62
    const-string v4, "DESKTOP"

    .line 63
    .line 64
    invoke-virtual {v1, v2, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    const-string/jumbo v4, "utcOffsetMinutes"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 75
    .line 76
    .line 77
    const-string v4, "request"

    .line 78
    .line 79
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v4, "internalExperimentFlags"

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 88
    .line 89
    .line 90
    const-string/jumbo v4, "useSsl"

    .line 91
    .line 92
    .line 93
    const/4 v5, 0x1

    .line 94
    invoke-virtual {v1, v4, v5}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v4, "user"

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v4}, Lcom/grack/nanojson/JsonStringWriter;->object(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v4, "lockedSafetyMode"

    .line 107
    .line 108
    invoke-virtual {v1, v4, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 115
    .line 116
    .line 117
    const-string v2, "input"

    .line 118
    .line 119
    const-string v4, ""

    .line 120
    .line 121
    invoke-virtual {v1, v2, v4}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    new-instance v2, Ljava/util/HashMap;

    .line 138
    .line 139
    const-string v4, "https://music.youtube.com"

    .line 140
    .line 141
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 146
    .line 147
    .line 148
    const-string v5, "67"

    .line 149
    .line 150
    const-string v6, "2.20260120.01.00"

    .line 151
    .line 152
    invoke-static {v5, v6}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientHeaders(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 157
    .line 158
    .line 159
    sget-object v5, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 160
    .line 161
    const-string v6, "https://music.youtube.com/youtubei/v1/music/get_search_suggestions?prettyPrint=false"

    .line 162
    .line 163
    invoke-virtual {v5, v6, v2, v1}, Lkotlin/io/CloseableKt;->postWithContentTypeJson(Ljava/lang/String;Ljava/util/Map;[B)Landroidx/recyclerview/widget/ChildHelper;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iget-object v2, v1, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 168
    .line 169
    check-cast v2, Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const/16 v5, 0x1f4

    .line 176
    .line 177
    if-le v2, v5, :cond_1

    .line 178
    .line 179
    iget v1, v1, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    .line 180
    .line 181
    const/16 v2, 0xc8

    .line 182
    .line 183
    if-ne v1, v2, :cond_1

    .line 184
    .line 185
    sput-object v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    .line 186
    .line 187
    return-object v3

    .line 188
    :cond_1
    :try_start_0
    invoke-static {v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getOriginReferrerHeaders(Ljava/lang/String;)Ljava/util/Map;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    sget-object v2, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 193
    .line 194
    const-string v3, "https://music.youtube.com/sw.js"

    .line 195
    .line 196
    invoke-virtual {v2, v3, v1}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;Ljava/util/Map;)Landroidx/recyclerview/widget/ChildHelper;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 201
    .line 202
    check-cast v1, Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :catch_0
    sget-object v1, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 212
    .line 213
    const-string v2, "https://music.youtube.com/?ucbcb=1"

    .line 214
    .line 215
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getCookieHeader()Ljava/util/Map;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v1, v2, v3}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;Ljava/util/Map;)Landroidx/recyclerview/widget/ChildHelper;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    iget-object v1, v1, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 224
    .line 225
    check-cast v1, Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v1, v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->getStringResultFromRegexArray(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    .line 232
    .line 233
    :goto_0
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->youtubeMusicClientVersion:Ljava/lang/String;

    .line 234
    .line 235
    return-object v0
.end method

.method public static isInvidiousURL(Ljava/net/URL;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->INVIDIOUS_URLS:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static isVerified(Lcom/grack/nanojson/JsonArray;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/grack/nanojson/JsonObject;

    .line 24
    .line 25
    const-string v2, "metadataBadgeRenderer"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string/jumbo v2, "style"

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v2, v3}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string v2, "BADGE_STYLE_TYPE_VERIFIED"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_2

    .line 48
    .line 49
    const-string v2, "BADGE_STYLE_TYPE_VERIFIED_ARTIST"

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    :cond_2
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_3
    return v1
.end method

.method public static isYoutubeMusicMixId(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "RDAMVM"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "RDCLAK"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static isYoutubeURL(Ljava/net/URL;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->YOUTUBE_URLS:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static parseDurationString(Ljava/lang/String;)I
    .locals 9

    .line 1
    const-string v0, ".*\\d.*"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "SHORTS"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 19
    .line 20
    const-string v1, "Error duration string contains no digits: "

    .line 21
    .line 22
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    const-string v0, ":"

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const-string v0, "\\."

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :goto_1
    const/16 v1, 0x18

    .line 50
    .line 51
    const/16 v2, 0x3c

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    filled-new-array {v1, v2, v2, v3}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    array-length v2, v0

    .line 59
    rsub-int/lit8 v2, v2, 0x4

    .line 60
    .line 61
    if-ltz v2, :cond_6

    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    move v3, p0

    .line 65
    move v4, v3

    .line 66
    :goto_2
    array-length v5, v0

    .line 67
    if-ge v3, v5, :cond_5

    .line 68
    .line 69
    add-int v5, v3, v2

    .line 70
    .line 71
    aget v5, v1, v5

    .line 72
    .line 73
    aget-object v6, v0, v3

    .line 74
    .line 75
    if-eqz v6, :cond_4

    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_3

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    sget-object v7, Lorg/schabi/newpipe/extractor/utils/Utils;->M_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    .line 86
    const-string v7, "\\D+"

    .line 87
    .line 88
    const-string v8, ""

    .line 89
    .line 90
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_4

    .line 99
    :catch_0
    :cond_4
    :goto_3
    move v6, p0

    .line 100
    :goto_4
    add-int/2addr v4, v6

    .line 101
    mul-int/2addr v4, v5

    .line 102
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    return v4

    .line 106
    :cond_6
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 107
    .line 108
    const-string v1, "Error duration string with unknown format: "

    .line 109
    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method public static prepareDesktopJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;)Lcom/grack/nanojson/JsonBuilder;
    .locals 4

    .line 1
    new-instance v0, Lcom/grack/nanojson/JsonBuilder;

    .line 2
    .line 3
    new-instance v1, Lcom/grack/nanojson/JsonObject;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v2, v2}, Lcom/grack/nanojson/JsonBuilder;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/util/Stack;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v3, v0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v1, "context"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "client"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v1, "hl"

    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p0, "gl"

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string p0, "clientName"

    .line 53
    .line 54
    const-string p1, "WEB"

    .line 55
    .line 56
    invoke-virtual {v0, p1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "clientVersion"

    .line 60
    .line 61
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->getClientVersion()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p0, "originalUrl"

    .line 69
    .line 70
    const-string p1, "https://www.youtube.com"

    .line 71
    .line 72
    invoke-virtual {v0, p1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string p0, "platform"

    .line 76
    .line 77
    const-string p1, "DESKTOP"

    .line 78
    .line 79
    invoke-virtual {v0, p1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo p0, "utcOffsetMinutes"

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, p1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 93
    .line 94
    .line 95
    const-string p0, "request"

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance p0, Lcom/grack/nanojson/JsonArray;

    .line 101
    .line 102
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string p1, "internalExperimentFlags"

    .line 106
    .line 107
    invoke-virtual {v0, p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 114
    .line 115
    .line 116
    const-string/jumbo p0, "useSsl"

    .line 117
    .line 118
    .line 119
    const/4 p1, 0x1

    .line 120
    invoke-virtual {v0, p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 124
    .line 125
    .line 126
    const-string/jumbo p0, "user"

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string p0, "lockedSafetyMode"

    .line 133
    .line 134
    invoke-virtual {v0, p0, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 141
    .line 142
    .line 143
    return-object v0
.end method

.method public static prepareJsonBuilder(Lorg/schabi/newpipe/extractor/localization/Localization;Lorg/schabi/newpipe/extractor/localization/ContentCountry;Lorg/jsoup/parser/TokenData;)Lcom/grack/nanojson/JsonBuilder;
    .locals 6

    .line 1
    new-instance v0, Lcom/grack/nanojson/JsonBuilder;

    .line 2
    .line 3
    new-instance v1, Lcom/grack/nanojson/JsonObject;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v2, v2}, Lcom/grack/nanojson/JsonBuilder;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/util/Stack;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v3, v0, Lcom/grack/nanojson/JsonBuilder;->json:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object v1, v0, Lcom/grack/nanojson/JsonBuilder;->root:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const-string v1, "context"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v1, "client"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p2, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Lokhttp3/Dispatcher;

    .line 37
    .line 38
    iget-object p2, p2, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p2, Landroidx/compose/ui/node/RulerTrackingMap;

    .line 41
    .line 42
    iget-object v4, v1, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v4, Ljava/lang/String;

    .line 45
    .line 46
    const-string v5, "clientName"

    .line 47
    .line 48
    invoke-virtual {v0, v4, v5}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, v1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .line 55
    const-string v5, "clientVersion"

    .line 56
    .line 57
    invoke-virtual {v0, v4, v5}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, v1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v4, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v4, :cond_0

    .line 65
    .line 66
    const-string v5, "clientScreen"

    .line 67
    .line 68
    invoke-virtual {v0, v4, v5}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v4, p2, Landroidx/compose/ui/node/RulerTrackingMap;->rulers:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v4, Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v4, :cond_1

    .line 76
    .line 77
    const-string v5, "platform"

    .line 78
    .line 79
    invoke-virtual {v0, v4, v5}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v1, v1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, Ljava/lang/String;

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    const-string/jumbo v4, "visitorData"

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v1, p2, Landroidx/compose/ui/node/RulerTrackingMap;->values:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v1, :cond_3

    .line 99
    .line 100
    const-string v4, "deviceMake"

    .line 101
    .line 102
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v1, p2, Landroidx/compose/ui/node/RulerTrackingMap;->accessFlags:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v1, Ljava/lang/String;

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    const-string v4, "deviceModel"

    .line 112
    .line 113
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object v1, p2, Landroidx/compose/ui/node/RulerTrackingMap;->layoutNodes:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v1, Ljava/lang/String;

    .line 119
    .line 120
    if-eqz v1, :cond_5

    .line 121
    .line 122
    const-string v4, "osName"

    .line 123
    .line 124
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    iget-object v1, p2, Landroidx/compose/ui/node/RulerTrackingMap;->newRulers:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Ljava/lang/String;

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    const-string v4, "osVersion"

    .line 134
    .line 135
    invoke-virtual {v0, v1, v4}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    iget p2, p2, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 139
    .line 140
    if-lez p2, :cond_7

    .line 141
    .line 142
    const-string v1, "androidSdkVersion"

    .line 143
    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {v0, p2, v1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_7
    const-string p2, "hl"

    .line 152
    .line 153
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/localization/Localization;->getLocalizationCode()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {v0, p0, p2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string p0, "gl"

    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->getCountryCode()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {v0, p1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string/jumbo p0, "utcOffsetMinutes"

    .line 170
    .line 171
    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {v0, p1, p0}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 180
    .line 181
    .line 182
    const-string p0, "request"

    .line 183
    .line 184
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    new-instance p0, Lcom/grack/nanojson/JsonArray;

    .line 188
    .line 189
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string p1, "internalExperimentFlags"

    .line 193
    .line 194
    invoke-virtual {v0, p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 201
    .line 202
    .line 203
    const-string/jumbo p0, "useSsl"

    .line 204
    .line 205
    .line 206
    const/4 p1, 0x1

    .line 207
    invoke-virtual {v0, p0, p1}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 211
    .line 212
    .line 213
    const-string/jumbo p0, "user"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, p0}, Lcom/grack/nanojson/JsonBuilder;->object(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string p0, "lockedSafetyMode"

    .line 220
    .line 221
    invoke-virtual {v0, p0, v2}, Lcom/grack/nanojson/JsonBuilder;->value(Ljava/lang/String;Z)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonBuilder;->end()V

    .line 228
    .line 229
    .line 230
    return-object v0
.end method
