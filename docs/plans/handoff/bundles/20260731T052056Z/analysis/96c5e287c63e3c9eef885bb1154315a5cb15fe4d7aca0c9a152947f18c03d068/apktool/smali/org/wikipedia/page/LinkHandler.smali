.class public abstract Lorg/wikipedia/page/LinkHandler;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;
.implements Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;


# static fields
.field public static final KNOWN_SCHEMES:Ljava/util/List;


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "file"

    .line 2
    .line 3
    const-string v1, "content"

    .line 4
    .line 5
    const-string v2, "http"

    .line 6
    .line 7
    const-string v3, "https"

    .line 8
    .line 9
    const-string v4, "geo"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lorg/wikipedia/page/LinkHandler;->KNOWN_SCHEMES:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/LinkHandler;->context:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract getWikiSite()Lorg/wikipedia/dataclient/WikiSite;
.end method

.method public onDiffLinkClicked(Lorg/wikipedia/page/PageTitle;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public onExternalLinkClicked(Landroid/net/Uri;)V
    .locals 21

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move-object v1, v2

    .line 12
    :cond_0
    const-string v3, "geohack"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v1, v3, v4}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    move-object/from16 v3, p0

    .line 20
    .line 21
    iget-object v3, v3, Lorg/wikipedia/page/LinkHandler;->context:Landroid/content/Context;

    .line 22
    .line 23
    if-eqz v1, :cond_d

    .line 24
    .line 25
    instance-of v1, v3, Landroid/app/Activity;

    .line 26
    .line 27
    if-eqz v1, :cond_d

    .line 28
    .line 29
    sget-object v1, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 30
    .line 31
    const-string v1, "params"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v1, :cond_c

    .line 39
    .line 40
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_1

    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_1
    const-string v6, "(([\\d.]+)_)(([\\d.]+)_)?(([\\d.]+)_)?(([NS])_)(([\\d.]+)_)?(([\\d.]+)_)?(([\\d.]+)_)?([EW])"

    .line 49
    .line 50
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v6, v4, v1}, Lkotlin/text/RegexKt;->findNext(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_c

    .line 69
    .line 70
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    check-cast v4, Lkotlin/collections/ReversedListReadOnly;

    .line 75
    .line 76
    const/4 v6, 0x2

    .line 77
    invoke-virtual {v4, v6}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/lang/CharSequence;

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    const-string v7, "0"

    .line 88
    .line 89
    if-nez v6, :cond_2

    .line 90
    .line 91
    move-object v4, v7

    .line 92
    :cond_2
    check-cast v4, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const/4 v8, 0x4

    .line 99
    check-cast v6, Lkotlin/collections/ReversedListReadOnly;

    .line 100
    .line 101
    invoke-virtual {v6, v8}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Ljava/lang/CharSequence;

    .line 106
    .line 107
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-nez v8, :cond_3

    .line 112
    .line 113
    move-object v6, v7

    .line 114
    :cond_3
    check-cast v6, Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const/4 v9, 0x6

    .line 121
    check-cast v8, Lkotlin/collections/ReversedListReadOnly;

    .line 122
    .line 123
    invoke-virtual {v8, v9}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    check-cast v8, Ljava/lang/CharSequence;

    .line 128
    .line 129
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-nez v9, :cond_4

    .line 134
    .line 135
    move-object v8, v7

    .line 136
    :cond_4
    check-cast v8, Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    const/16 v10, 0x8

    .line 143
    .line 144
    check-cast v9, Lkotlin/collections/ReversedListReadOnly;

    .line 145
    .line 146
    invoke-virtual {v9, v10}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    check-cast v9, Ljava/lang/CharSequence;

    .line 151
    .line 152
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 153
    .line 154
    .line 155
    move-result v10

    .line 156
    if-nez v10, :cond_5

    .line 157
    .line 158
    move-object v9, v7

    .line 159
    :cond_5
    check-cast v9, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    const/16 v11, 0xa

    .line 166
    .line 167
    check-cast v10, Lkotlin/collections/ReversedListReadOnly;

    .line 168
    .line 169
    invoke-virtual {v10, v11}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    check-cast v10, Ljava/lang/CharSequence;

    .line 174
    .line 175
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    if-nez v11, :cond_6

    .line 180
    .line 181
    move-object v10, v7

    .line 182
    :cond_6
    check-cast v10, Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    const/16 v12, 0xc

    .line 189
    .line 190
    check-cast v11, Lkotlin/collections/ReversedListReadOnly;

    .line 191
    .line 192
    invoke-virtual {v11, v12}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v11

    .line 196
    check-cast v11, Ljava/lang/CharSequence;

    .line 197
    .line 198
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-nez v12, :cond_7

    .line 203
    .line 204
    move-object v11, v7

    .line 205
    :cond_7
    check-cast v11, Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    const/16 v13, 0xe

    .line 212
    .line 213
    check-cast v12, Lkotlin/collections/ReversedListReadOnly;

    .line 214
    .line 215
    invoke-virtual {v12, v13}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    check-cast v12, Ljava/lang/CharSequence;

    .line 220
    .line 221
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    if-nez v13, :cond_8

    .line 226
    .line 227
    move-object v12, v7

    .line 228
    :cond_8
    check-cast v12, Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    const/16 v13, 0xf

    .line 235
    .line 236
    check-cast v1, Lkotlin/collections/ReversedListReadOnly;

    .line 237
    .line 238
    invoke-virtual {v1, v13}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/CharSequence;

    .line 243
    .line 244
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 245
    .line 246
    .line 247
    move-result v13

    .line 248
    if-nez v13, :cond_9

    .line 249
    .line 250
    goto :goto_0

    .line 251
    :cond_9
    move-object v7, v1

    .line 252
    :goto_0
    check-cast v7, Ljava/lang/String;

    .line 253
    .line 254
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 255
    .line 256
    .line 257
    move-result-wide v13

    .line 258
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 259
    .line 260
    .line 261
    move-result-wide v15

    .line 262
    const-wide/high16 v17, 0x404e000000000000L    # 60.0

    .line 263
    .line 264
    div-double v15, v15, v17

    .line 265
    .line 266
    add-double/2addr v15, v13

    .line 267
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 268
    .line 269
    .line 270
    move-result-wide v13

    .line 271
    const-wide v19, 0x40ac200000000000L    # 3600.0

    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    div-double v13, v13, v19

    .line 277
    .line 278
    add-double/2addr v13, v15

    .line 279
    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 280
    .line 281
    .line 282
    move-result-wide v15

    .line 283
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 284
    .line 285
    .line 286
    move-result-wide v10

    .line 287
    div-double v10, v10, v17

    .line 288
    .line 289
    add-double/2addr v10, v15

    .line 290
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 291
    .line 292
    .line 293
    move-result-wide v15

    .line 294
    div-double v15, v15, v19

    .line 295
    .line 296
    add-double/2addr v10, v15

    .line 297
    new-instance v1, Landroid/location/Location;

    .line 298
    .line 299
    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const-string v2, "S"

    .line 303
    .line 304
    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eqz v2, :cond_a

    .line 309
    .line 310
    neg-double v13, v13

    .line 311
    :cond_a
    invoke-virtual {v1, v13, v14}, Landroid/location/Location;->setLatitude(D)V

    .line 312
    .line 313
    .line 314
    const-string v2, "W"

    .line 315
    .line 316
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_b

    .line 321
    .line 322
    neg-double v10, v10

    .line 323
    :cond_b
    invoke-virtual {v1, v10, v11}, Landroid/location/Location;->setLongitude(D)V

    .line 324
    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_c
    :goto_1
    move-object v1, v5

    .line 328
    :goto_2
    if-eqz v1, :cond_d

    .line 329
    .line 330
    move-object v0, v3

    .line 331
    check-cast v0, Landroid/app/Activity;

    .line 332
    .line 333
    sget v2, Lorg/wikipedia/places/PlacesActivity;->$r8$clinit:I

    .line 334
    .line 335
    invoke-static {v3, v5, v1}, Lokio/ByteString$Companion;->newIntent(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;Landroid/location/Location;)Landroid/content/Intent;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 340
    .line 341
    .line 342
    return-void

    .line 343
    :cond_d
    invoke-static {v3, v0}, Lorg/wikipedia/util/UriUtil;->visitInExternalBrowser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 344
    .line 345
    .line 346
    return-void
.end method

.method public abstract onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V
.end method

.method public onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMessage(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_5

    .line 5
    .line 6
    const-string p1, "href"

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object p1, v0

    .line 27
    :goto_0
    const-string v1, ""

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    move-object p1, v1

    .line 32
    :cond_1
    :try_start_0
    const-string v2, "+"

    .line 33
    .line 34
    const-string v3, "%2B"

    .line 35
    .line 36
    invoke-static {p1, v2, v3}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-string v3, "UTF-8"

    .line 41
    .line 42
    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    move-object p1, v2

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catch_1
    const-string v2, "URL decoding failed. String was: "

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    const-string v2, "title"

    .line 66
    .line 67
    invoke-virtual {p2, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    move-object v2, v0

    .line 85
    :goto_2
    const-string v3, "text"

    .line 86
    .line 87
    invoke-virtual {p2, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 92
    .line 93
    if-eqz p2, :cond_3

    .line 94
    .line 95
    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->getJsonPrimitive(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :cond_3
    if-nez v0, :cond_4

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    move-object v1, v0

    .line 107
    :goto_3
    invoke-virtual {p0, p1, v2, v1}, Lorg/wikipedia/page/LinkHandler;->onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    return-void
.end method

.method public onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onUrlClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string v0, "mailto:"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-static {v0, p1}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p0, p0, Lorg/wikipedia/page/LinkHandler;->context:Landroid/content/Context;

    .line 22
    .line 23
    const/16 p2, 0xc

    .line 24
    .line 25
    invoke-static {p0, p1, v3, v3, p2}, Lorg/wikipedia/util/ShareUtil;->composeEmail$default(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string v0, "//"

    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v2, ":"

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/page/LinkHandler;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "./"

    .line 64
    .line 65
    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    const-string v4, "/wiki/"

    .line 72
    .line 73
    invoke-static {p1, v0, v4}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_2
    :goto_0
    const-string v0, "?event-logging-label"

    .line 78
    .line 79
    const/4 v4, 0x6

    .line 80
    invoke-static {p1, v0, v1, v1, v4}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_3

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    const-string v5, "cite"

    .line 104
    .line 105
    invoke-static {v4, v5, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0, v4, p3}, Lorg/wikipedia/page/LinkHandler;->onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    sget-object v4, Lorg/wikipedia/page/LinkHandler;->KNOWN_SCHEMES:Ljava/util/List;

    .line 116
    .line 117
    if-eqz v4, :cond_5

    .line 118
    .line 119
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_5

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_7

    .line 135
    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Ljava/lang/String;

    .line 141
    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-static {p1, v5, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_6

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    :goto_1
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lorg/wikipedia/page/LinkHandler;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->scheme()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lorg/wikipedia/page/LinkHandler;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/WikiSite;->authority()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    :goto_2
    const-string v2, "^.*?/(wiki|[a-z]{2,3}|[a-z]{2,3}-.*)/"

    .line 204
    .line 205
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    const-string v2, ""

    .line 217
    .line 218
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    .line 224
    .line 225
    const-string v4, "#.*$"

    .line 226
    .line 227
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    const-string v4, "_"

    .line 246
    .line 247
    const-string v5, " "

    .line 248
    .line 249
    invoke-static {p1, v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-nez v4, :cond_8

    .line 258
    .line 259
    move-object p2, p1

    .line 260
    :cond_8
    new-instance p1, Lorg/wikipedia/dataclient/WikiSite;

    .line 261
    .line 262
    invoke-direct {p1, v0}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Landroid/net/Uri;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Lorg/wikipedia/dataclient/WikiSite;->subdomain()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-virtual {p0}, Lorg/wikipedia/page/LinkHandler;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/WikiSite;->subdomain()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v5

    .line 277
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-eqz v4, :cond_9

    .line 282
    .line 283
    iget-object v4, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {p0}, Lorg/wikipedia/page/LinkHandler;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 290
    .line 291
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    if-nez v4, :cond_9

    .line 296
    .line 297
    new-instance p1, Lorg/wikipedia/dataclient/WikiSite;

    .line 298
    .line 299
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Lorg/wikipedia/page/LinkHandler;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    iget-object v5, v5, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 311
    .line 312
    invoke-direct {p1, v4, v5}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    const-string v5, "Link clicked was "

    .line 318
    .line 319
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-static {v4}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    const/4 v5, 0x1

    .line 337
    if-eqz v4, :cond_a

    .line 338
    .line 339
    sget-object v6, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 340
    .line 341
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite$Companion;->supportedAuthority(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    if-ne v4, v5, :cond_a

    .line 349
    .line 350
    move v1, v5

    .line 351
    :cond_a
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    if-eqz v4, :cond_10

    .line 356
    .line 357
    const-string v6, "^/(wiki|[a-z]{2,3}|[a-z]{2,3}-.*)/.*"

    .line 358
    .line 359
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 367
    .line 368
    .line 369
    move-result-object v4

    .line 370
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    if-ne v4, v5, :cond_10

    .line 375
    .line 376
    if-eqz v1, :cond_10

    .line 377
    .line 378
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 379
    .line 380
    .line 381
    move-result p3

    .line 382
    if-nez p3, :cond_b

    .line 383
    .line 384
    sget-object p2, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 385
    .line 386
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p3

    .line 390
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    invoke-static {p3, p1}, Lorg/wikipedia/page/PageTitle$Companion;->titleForInternalLink(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/page/PageTitle;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    goto :goto_5

    .line 398
    :cond_b
    sget-object p3, Lorg/wikipedia/page/PageTitle;->Companion:Lorg/wikipedia/page/PageTitle$Companion;

    .line 399
    .line 400
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 405
    .line 406
    .line 407
    if-eqz v1, :cond_d

    .line 408
    .line 409
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 410
    .line 411
    .line 412
    move-result p3

    .line 413
    if-nez p3, :cond_c

    .line 414
    .line 415
    goto :goto_4

    .line 416
    :cond_c
    new-instance p3, Lorg/wikipedia/page/PageTitle;

    .line 417
    .line 418
    const-string v2, "#"

    .line 419
    .line 420
    invoke-static {p2, v2, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p2

    .line 424
    invoke-direct {p3, p2, p1, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    :goto_3
    move-object p1, p3

    .line 428
    goto :goto_5

    .line 429
    :cond_d
    :goto_4
    new-instance p3, Lorg/wikipedia/page/PageTitle;

    .line 430
    .line 431
    invoke-direct {p3, p2, p1, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    goto :goto_3

    .line 435
    :goto_5
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isFilePage()Z

    .line 436
    .line 437
    .line 438
    move-result p2

    .line 439
    if-eqz p2, :cond_e

    .line 440
    .line 441
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/LinkHandler;->onMediaLinkClicked(Lorg/wikipedia/page/PageTitle;)V

    .line 442
    .line 443
    .line 444
    return-void

    .line 445
    :cond_e
    invoke-virtual {p1}, Lorg/wikipedia/page/PageTitle;->isSpecial()Z

    .line 446
    .line 447
    .line 448
    move-result p2

    .line 449
    if-eqz p2, :cond_f

    .line 450
    .line 451
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/LinkHandler;->onExternalLinkClicked(Landroid/net/Uri;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_f
    invoke-virtual {p0, p1}, Lorg/wikipedia/page/LinkHandler;->onInternalLinkClicked(Lorg/wikipedia/page/PageTitle;)V

    .line 456
    .line 457
    .line 458
    return-void

    .line 459
    :cond_10
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p2

    .line 463
    if-eqz p2, :cond_12

    .line 464
    .line 465
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 466
    .line 467
    .line 468
    move-result p2

    .line 469
    if-nez p2, :cond_11

    .line 470
    .line 471
    goto :goto_6

    .line 472
    :cond_11
    if-eqz v1, :cond_12

    .line 473
    .line 474
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    invoke-virtual {p0, p1, p3}, Lorg/wikipedia/page/LinkHandler;->onPageLinkClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    return-void

    .line 485
    :cond_12
    :goto_6
    const-string p2, "title"

    .line 486
    .line 487
    invoke-virtual {v0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p3

    .line 491
    if-eqz p3, :cond_1a

    .line 492
    .line 493
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 494
    .line 495
    .line 496
    move-result p3

    .line 497
    if-nez p3, :cond_13

    .line 498
    .line 499
    goto :goto_9

    .line 500
    :cond_13
    const-string p3, "diff"

    .line 501
    .line 502
    invoke-virtual {v0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v4

    .line 506
    if-eqz v4, :cond_1a

    .line 507
    .line 508
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 509
    .line 510
    .line 511
    move-result v4

    .line 512
    if-nez v4, :cond_14

    .line 513
    .line 514
    goto :goto_9

    .line 515
    :cond_14
    if-eqz v1, :cond_1a

    .line 516
    .line 517
    invoke-virtual {v0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p3

    .line 521
    if-nez p3, :cond_15

    .line 522
    .line 523
    goto :goto_7

    .line 524
    :cond_15
    move-object v2, p3

    .line 525
    :goto_7
    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 526
    .line 527
    .line 528
    move-result-object p3

    .line 529
    const-wide/16 v4, -0x1

    .line 530
    .line 531
    if-eqz p3, :cond_16

    .line 532
    .line 533
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 534
    .line 535
    .line 536
    move-result-wide v6

    .line 537
    goto :goto_8

    .line 538
    :cond_16
    move-wide v6, v4

    .line 539
    :goto_8
    const-string p3, "next"

    .line 540
    .line 541
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result p3

    .line 545
    if-nez p3, :cond_17

    .line 546
    .line 547
    const-string p3, "prev"

    .line 548
    .line 549
    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 550
    .line 551
    .line 552
    move-result p3

    .line 553
    if-eqz p3, :cond_19

    .line 554
    .line 555
    :cond_17
    const-string p3, "oldid"

    .line 556
    .line 557
    invoke-virtual {v0, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object p3

    .line 561
    if-eqz p3, :cond_18

    .line 562
    .line 563
    invoke-static {p3}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 564
    .line 565
    .line 566
    move-result-object p3

    .line 567
    if-eqz p3, :cond_18

    .line 568
    .line 569
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 570
    .line 571
    .line 572
    move-result-wide v4

    .line 573
    :cond_18
    move-wide v6, v4

    .line 574
    :cond_19
    new-instance p3, Lorg/wikipedia/page/PageTitle;

    .line 575
    .line 576
    invoke-virtual {v0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object p2

    .line 580
    invoke-direct {p3, p2, p1, v3}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {p0, p3, v6, v7}, Lorg/wikipedia/page/LinkHandler;->onDiffLinkClicked(Lorg/wikipedia/page/PageTitle;J)V

    .line 584
    .line 585
    .line 586
    return-void

    .line 587
    :cond_1a
    :goto_9
    invoke-virtual {p0, v0}, Lorg/wikipedia/page/LinkHandler;->onExternalLinkClicked(Landroid/net/Uri;)V

    .line 588
    .line 589
    .line 590
    return-void
.end method
