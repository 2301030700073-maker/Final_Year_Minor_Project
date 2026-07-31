.class public abstract Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final CACHED_THROTTLING_PARAMETERS:Ljava/util/HashMap;

.field public static cachedJavaScriptPlayerCode:Ljava/lang/String;

.field public static cachedSignatureDeobfuscationFunction:Ljava/lang/String;

.field public static cachedThrottlingDeobfuscationFunction:Ljava/lang/String;

.field public static cachedThrottlingDeobfuscationFunctionName:Ljava/lang/String;

.field public static sigDeobFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

.field public static throttlingDeobfFuncExtractionEx:Lorg/schabi/newpipe/extractor/exceptions/ParsingException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->CACHED_THROTTLING_PARAMETERS:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static extractJavaScriptCodeIfNeeded(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "Could not get JavaScript base player\'s code"

    .line 2
    .line 3
    const-string v1, "https://www.youtube.com"

    .line 4
    .line 5
    const-string v2, "/"

    .line 6
    .line 7
    const-string v3, "https:"

    .line 8
    .line 9
    const-string v4, "//"

    .line 10
    .line 11
    sget-object v5, Lorg/schabi/newpipe/extractor/localization/Localization;->DEFAULT:Lorg/schabi/newpipe/extractor/localization/Localization;

    .line 12
    .line 13
    sget-object v6, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v6, :cond_7

    .line 16
    .line 17
    const/4 v6, 0x0

    .line 18
    :try_start_0
    invoke-static {}, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->extractJavaScriptUrlWithIframeResource()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v7

    .line 22
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    if-eqz v8, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    if-eqz v8, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    :cond_1
    :goto_0
    new-instance v8, Ljava/net/URL;

    .line 44
    .line 45
    invoke-direct {v8, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    .line 47
    .line 48
    :try_start_1
    sget-object v8, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 49
    .line 50
    invoke-virtual {v8, v7, v6, v5}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    iget-object v7, v7, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 55
    .line 56
    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 57
    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :catch_0
    move-exception v7

    .line 61
    :try_start_2
    new-instance v8, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    .line 62
    .line 63
    invoke-direct {v8, v0, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 67
    :catch_1
    const-string v7, "https://www.youtube.com/embed/"

    .line 68
    .line 69
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    sget-object v7, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 82
    .line 83
    invoke-virtual {v7, p0, v6, v5}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 88
    .line 89
    check-cast p0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 90
    .line 91
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    const-string v8, "script"

    .line 96
    .line 97
    invoke-virtual {v7, v8}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_2

    .line 110
    .line 111
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    check-cast v9, Lorg/jsoup/nodes/Element;

    .line 116
    .line 117
    const-string v10, "name"

    .line 118
    .line 119
    const-string v11, "player/base"

    .line 120
    .line 121
    invoke-virtual {v9, v10, v11}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-eqz v8, :cond_4

    .line 134
    .line 135
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    check-cast v8, Lorg/jsoup/nodes/Element;

    .line 140
    .line 141
    const-string/jumbo v9, "src"

    .line 142
    .line 143
    .line 144
    invoke-virtual {v8, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    const-string v9, "base.js"

    .line 149
    .line 150
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-eqz v9, :cond_3

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    :try_start_4
    sget-object v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->EMBEDDED_WATCH_PAGE_JS_BASE_PLAYER_URL_PATTERN:Ljava/util/regex/Pattern;

    .line 158
    .line 159
    const/4 v8, 0x1

    .line 160
    invoke-static {p0, v7, v8}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup(Ljava/lang/String;Ljava/util/regex/Pattern;I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8
    :try_end_4
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_4 .. :try_end_4} :catch_4

    .line 164
    :goto_2
    sget-object p0, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptExtractor;->IFRAME_RES_JS_BASE_PLAYER_HASH_PATTERN:Ljava/util/regex/Pattern;

    .line 165
    .line 166
    invoke-virtual {v8, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-eqz p0, :cond_5

    .line 171
    .line 172
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    goto :goto_3

    .line 177
    :cond_5
    invoke-virtual {v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result p0

    .line 181
    if-eqz p0, :cond_6

    .line 182
    .line 183
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    :cond_6
    :goto_3
    :try_start_5
    new-instance p0, Ljava/net/URL;

    .line 188
    .line 189
    invoke-direct {p0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 190
    .line 191
    .line 192
    :try_start_6
    sget-object p0, Lus/shandian/giga/util/Utility;->downloader:Lorg/schabi/newpipe/DownloaderImpl;

    .line 193
    .line 194
    invoke-virtual {p0, v8, v6, v5}, Lkotlin/io/CloseableKt;->get(Ljava/lang/String;Ljava/util/Map;Lorg/schabi/newpipe/extractor/localization/Localization;)Landroidx/recyclerview/widget/ChildHelper;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/io/Serializable;

    .line 199
    .line 200
    move-object v7, p0

    .line 201
    check-cast v7, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 202
    .line 203
    :goto_4
    sput-object v7, Lorg/schabi/newpipe/extractor/services/youtube/YoutubeJavaScriptPlayerManager;->cachedJavaScriptPlayerCode:Ljava/lang/String;

    .line 204
    .line 205
    return-void

    .line 206
    :catch_2
    move-exception p0

    .line 207
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :catch_3
    move-exception p0

    .line 212
    const-string v0, "The extracted and built JavaScript URL is invalid"

    .line 213
    .line 214
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    return-void

    .line 218
    :catch_4
    move-exception p0

    .line 219
    const-string v0, "Embedded watch page didn\'t provide JavaScript base player\'s URL"

    .line 220
    .line 221
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :catch_5
    move-exception p0

    .line 226
    const-string v0, "Could not fetch embedded watch page"

    .line 227
    .line 228
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/utils/Utils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    .line 230
    .line 231
    :cond_7
    return-void
.end method
