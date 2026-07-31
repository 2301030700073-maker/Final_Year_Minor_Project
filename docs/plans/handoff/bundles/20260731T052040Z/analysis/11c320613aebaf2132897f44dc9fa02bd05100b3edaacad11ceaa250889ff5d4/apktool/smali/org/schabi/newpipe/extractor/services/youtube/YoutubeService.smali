.class public final Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final SUPPORTED_COUNTRIES:Ljava/util/List;

.field public static final SUPPORTED_LANGUAGES:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 112

    .line 1
    const-string v0, "en-GB"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget-object v0, v0, v2

    .line 14
    .line 15
    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/JavaScript;->forLanguageTag(Ljava/lang/String;)Lj$/util/Optional;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-instance v4, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/16 v5, 0x15

    .line 22
    .line 23
    invoke-direct {v4, v5}, Lorg/jsoup/select/Nodes$$ExternalSyntheticLambda0;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v4}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v4, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    invoke-direct {v4, v0, v5}, Lorg/jsoup/internal/StringUtil$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lj$/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_LANGUAGES:Ljava/util/List;

    .line 50
    .line 51
    const-string v110, "YE"

    .line 52
    .line 53
    const-string v111, "ZW"

    .line 54
    .line 55
    const-string v3, "DZ"

    .line 56
    .line 57
    const-string v4, "AR"

    .line 58
    .line 59
    const-string v5, "AU"

    .line 60
    .line 61
    const-string v6, "AT"

    .line 62
    .line 63
    const-string v7, "AZ"

    .line 64
    .line 65
    const-string v8, "BH"

    .line 66
    .line 67
    const-string v9, "BD"

    .line 68
    .line 69
    const-string v10, "BY"

    .line 70
    .line 71
    const-string v11, "BE"

    .line 72
    .line 73
    const-string v12, "BO"

    .line 74
    .line 75
    const-string v13, "BA"

    .line 76
    .line 77
    const-string v14, "BR"

    .line 78
    .line 79
    const-string v15, "BG"

    .line 80
    .line 81
    const-string v16, "KH"

    .line 82
    .line 83
    const-string v17, "CA"

    .line 84
    .line 85
    const-string v18, "CL"

    .line 86
    .line 87
    const-string v19, "CO"

    .line 88
    .line 89
    const-string v20, "CR"

    .line 90
    .line 91
    const-string v21, "HR"

    .line 92
    .line 93
    const-string v22, "CY"

    .line 94
    .line 95
    const-string v23, "CZ"

    .line 96
    .line 97
    const-string v24, "DK"

    .line 98
    .line 99
    const-string v25, "DO"

    .line 100
    .line 101
    const-string v26, "EC"

    .line 102
    .line 103
    const-string v27, "EG"

    .line 104
    .line 105
    const-string v28, "SV"

    .line 106
    .line 107
    const-string v29, "EE"

    .line 108
    .line 109
    const-string v30, "FI"

    .line 110
    .line 111
    const-string v31, "FR"

    .line 112
    .line 113
    const-string v32, "GE"

    .line 114
    .line 115
    const-string v33, "DE"

    .line 116
    .line 117
    const-string v34, "GH"

    .line 118
    .line 119
    const-string v35, "GR"

    .line 120
    .line 121
    const-string v36, "GT"

    .line 122
    .line 123
    const-string v37, "HN"

    .line 124
    .line 125
    const-string v38, "HK"

    .line 126
    .line 127
    const-string v39, "HU"

    .line 128
    .line 129
    const-string v40, "IS"

    .line 130
    .line 131
    const-string v41, "IN"

    .line 132
    .line 133
    const-string v42, "ID"

    .line 134
    .line 135
    const-string v43, "IQ"

    .line 136
    .line 137
    const-string v44, "IE"

    .line 138
    .line 139
    const-string v45, "IL"

    .line 140
    .line 141
    const-string v46, "IT"

    .line 142
    .line 143
    const-string v47, "JM"

    .line 144
    .line 145
    const-string v48, "JP"

    .line 146
    .line 147
    const-string v49, "JO"

    .line 148
    .line 149
    const-string v50, "KZ"

    .line 150
    .line 151
    const-string v51, "KE"

    .line 152
    .line 153
    const-string v52, "KW"

    .line 154
    .line 155
    const-string v53, "LA"

    .line 156
    .line 157
    const-string v54, "LV"

    .line 158
    .line 159
    const-string v55, "LB"

    .line 160
    .line 161
    const-string v56, "LY"

    .line 162
    .line 163
    const-string v57, "LI"

    .line 164
    .line 165
    const-string v58, "LT"

    .line 166
    .line 167
    const-string v59, "LU"

    .line 168
    .line 169
    const-string v60, "MY"

    .line 170
    .line 171
    const-string v61, "MT"

    .line 172
    .line 173
    const-string v62, "MX"

    .line 174
    .line 175
    const-string v63, "ME"

    .line 176
    .line 177
    const-string v64, "MA"

    .line 178
    .line 179
    const-string v65, "NP"

    .line 180
    .line 181
    const-string v66, "NL"

    .line 182
    .line 183
    const-string v67, "NZ"

    .line 184
    .line 185
    const-string v68, "NI"

    .line 186
    .line 187
    const-string v69, "NG"

    .line 188
    .line 189
    const-string v70, "MK"

    .line 190
    .line 191
    const-string v71, "NO"

    .line 192
    .line 193
    const-string v72, "OM"

    .line 194
    .line 195
    const-string v73, "PK"

    .line 196
    .line 197
    const-string v74, "PA"

    .line 198
    .line 199
    const-string v75, "PG"

    .line 200
    .line 201
    const-string v76, "PY"

    .line 202
    .line 203
    const-string v77, "PE"

    .line 204
    .line 205
    const-string v78, "PH"

    .line 206
    .line 207
    const-string v79, "PL"

    .line 208
    .line 209
    const-string v80, "PT"

    .line 210
    .line 211
    const-string v81, "PR"

    .line 212
    .line 213
    const-string v82, "QA"

    .line 214
    .line 215
    const-string v83, "RO"

    .line 216
    .line 217
    const-string v84, "RU"

    .line 218
    .line 219
    const-string v85, "SA"

    .line 220
    .line 221
    const-string v86, "SN"

    .line 222
    .line 223
    const-string v87, "RS"

    .line 224
    .line 225
    const-string v88, "SG"

    .line 226
    .line 227
    const-string v89, "SK"

    .line 228
    .line 229
    const-string v90, "SI"

    .line 230
    .line 231
    const-string v91, "ZA"

    .line 232
    .line 233
    const-string v92, "KR"

    .line 234
    .line 235
    const-string v93, "ES"

    .line 236
    .line 237
    const-string v94, "LK"

    .line 238
    .line 239
    const-string v95, "SE"

    .line 240
    .line 241
    const-string v96, "CH"

    .line 242
    .line 243
    const-string v97, "TW"

    .line 244
    .line 245
    const-string v98, "TZ"

    .line 246
    .line 247
    const-string v99, "TH"

    .line 248
    .line 249
    const-string v100, "TN"

    .line 250
    .line 251
    const-string v101, "TR"

    .line 252
    .line 253
    const-string v102, "UG"

    .line 254
    .line 255
    const-string v103, "UA"

    .line 256
    .line 257
    const-string v104, "AE"

    .line 258
    .line 259
    const-string v105, "GB"

    .line 260
    .line 261
    const-string v106, "US"

    .line 262
    .line 263
    const-string v107, "UY"

    .line 264
    .line 265
    const-string v108, "VE"

    .line 266
    .line 267
    const-string v109, "VN"

    .line 268
    .line 269
    filled-new-array/range {v3 .. v111}, [Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .line 277
    .line 278
    :goto_0
    const/16 v3, 0x6d

    .line 279
    .line 280
    if-ge v2, v3, :cond_0

    .line 281
    .line 282
    aget-object v3, v0, v2

    .line 283
    .line 284
    new-instance v4, Lorg/schabi/newpipe/extractor/localization/ContentCountry;

    .line 285
    .line 286
    invoke-direct {v4, v3}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    add-int/lit8 v2, v2, 0x1

    .line 293
    .line 294
    goto :goto_0

    .line 295
    :cond_0
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_COUNTRIES:Ljava/util/List;

    .line 300
    .line 301
    return-void
.end method


# virtual methods
.method public final getChannelExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/ListExtractor;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelExtractor;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final getChannelLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getChannelTabExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/StreamingService;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public final getChannelTabLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$1:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCommentsExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeCommentsExtractor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public final getCommentsLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$2:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFeedExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeFeedExtractor;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeChannelLinkHandlerFactory;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;->fromUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final getKioskList()Lorg/jsoup/parser/TokenData;
    .locals 10

    .line 1
    const-string v0, "live"

    .line 2
    .line 3
    new-instance v1, Lorg/jsoup/parser/TokenData;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/jsoup/parser/TokenData;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$5:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 9
    .line 10
    sget-object v3, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 11
    .line 12
    sget-object v4, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$8:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 13
    .line 14
    sget-object v5, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$4:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 15
    .line 16
    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$6:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 17
    .line 18
    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$7:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 19
    .line 20
    :try_start_0
    new-instance v8, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    invoke-direct {v8, p0, v9}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v8, v3, v0}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    const/4 v8, 0x1

    .line 32
    invoke-direct {v3, p0, v8}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;I)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v8, "trending_podcasts_episodes"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3, v4, v8}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    const/4 v4, 0x2

    .line 44
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;I)V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v4, "trending_gaming"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v3, v5, v4}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;I)V

    .line 57
    .line 58
    .line 59
    const-string/jumbo v4, "trending_movies_and_shows"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v3, v6, v4}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    const/4 v4, 0x4

    .line 68
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;I)V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v4, "trending_music"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v3, v7, v4}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    const/4 v4, 0x5

    .line 80
    invoke-direct {v3, p0, v4}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;I)V

    .line 81
    .line 82
    .line 83
    const-string p0, "Trending"

    .line 84
    .line 85
    invoke-virtual {v1, v3, v2, p0}, Lorg/jsoup/parser/TokenData;->addKioskEntry(Lorg/schabi/newpipe/extractor/kiosk/KioskList$KioskExtractorFactory;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, v1, Lorg/jsoup/parser/TokenData;->value:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    return-object v1

    .line 91
    :catch_0
    move-exception p0

    .line 92
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    throw v0
.end method

.method public final getPlaylistExtractor(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeParsingHelper;->clientVersion:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "RD"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMixPlaylistExtractor;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubePlaylistExtractor;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final getPlaylistLHFactory()Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;->INSTANCE$3:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeLiveLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSearchExtractor(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "music_"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeMusicSearchExtractor;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSearchExtractor;

    .line 33
    .line 34
    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSearchExtractor;-><init>(Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final getSearchQHFactory()Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandlerFactory;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeSearchQueryHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getStreamExtractor(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/ListExtractor;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lorg/schabi/newpipe/extractor/ListExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    iput p0, v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;->ageLimit:I

    .line 9
    .line 10
    return-object v0
.end method

.method public final getStreamLHFactory()Lokhttp3/Cookie$Companion;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;->INSTANCE:Lorg/schabi/newpipe/extractor/services/youtube/linkHandler/YoutubeStreamLinkHandlerFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSubscriptionExtractor()Landroidx/core/app/NotificationCompat$Style;
    .locals 2

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSubscriptionExtractor;

    .line 2
    .line 3
    sget-object v1, Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;->INPUT_STREAM:Lorg/schabi/newpipe/extractor/subscription/SubscriptionExtractor$ContentSource;

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Style;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getSuggestionExtractor()Lorg/koin/core/logger/Logger;
    .locals 1

    .line 1
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeSuggestionExtractor;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/koin/core/logger/Logger;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getSupportedCountries()Ljava/util/List;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_COUNTRIES:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSupportedLocalizations()Ljava/util/List;
    .locals 0

    .line 1
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeService;->SUPPORTED_LANGUAGES:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
