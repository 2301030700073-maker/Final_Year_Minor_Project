.class public final Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $campaignList:Ljava/util/ArrayList;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->$campaignList:Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->$campaignList:Ljava/util/ArrayList;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;-><init>(Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;-><init>(Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$getConfig$2;->$campaignList:Ljava/util/ArrayList;

    .line 6
    .line 7
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 19
    .line 20
    new-array p1, v4, [Ljava/lang/Object;

    .line 21
    .line 22
    sget-object v0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 23
    .line 24
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v6, 0x7f1205cd

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v4, v0, v6}, Lcoil3/size/ViewSizeResolver$-CC;->m([Ljava/lang/Object;ILandroid/content/res/Resources;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v4, p1, v4}, Lcoil3/size/ViewSizeResolver$-CC;->m(Lorg/wikipedia/WikipediaApp;ILjava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const-string p1, "https://test.wikipedia.org/wiki/MediaWiki:AppsCampaignConfig.json?action=raw"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string p1, "https://donate.wikimedia.org/wiki/MediaWiki:AppsCampaignConfig.json?action=raw"

    .line 53
    .line 54
    :goto_0
    new-instance v0, Lokhttp3/Request$Builder;

    .line 55
    .line 56
    invoke-direct {v0, v4}, Lokhttp3/Request$Builder;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lokhttp3/Request;

    .line 63
    .line 64
    invoke-direct {p1, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 65
    .line 66
    .line 67
    sget-object v0, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    new-instance v4, Lokhttp3/internal/connection/RealCall;

    .line 73
    .line 74
    invoke-direct {v4, v0, p1}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 82
    .line 83
    iget-object p1, p1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 84
    .line 85
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    :try_start_0
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance v4, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 104
    .line 105
    sget-object v6, Lkotlinx/serialization/json/JsonElement;->Companion:Lkotlinx/serialization/json/JsonElement$Companion;

    .line 106
    .line 107
    invoke-virtual {v6}, Lkotlinx/serialization/json/JsonElement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-direct {v4, v6, v5}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 112
    .line 113
    .line 114
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 119
    .line 120
    invoke-virtual {v0, p1, v4}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_2

    .line 125
    :catch_0
    move-exception p1

    .line 126
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_1
    move-object p1, v3

    .line 130
    :goto_2
    check-cast p1, Ljava/util/List;

    .line 131
    .line 132
    if-nez p1, :cond_3

    .line 133
    .line 134
    move-object v0, v2

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    move-object v0, p1

    .line 137
    :goto_3
    invoke-static {}, Lj$/time/LocalDateTime;->now()Lj$/time/LocalDateTime;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 142
    .line 143
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getDonationResults()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_4

    .line 156
    .line 157
    move-object p1, v3

    .line 158
    goto :goto_4

    .line 159
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-nez v2, :cond_5

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_5
    move-object v2, p1

    .line 171
    check-cast v2, Lorg/wikipedia/donate/DonationResult;

    .line 172
    .line 173
    iget-object v2, v2, Lorg/wikipedia/donate/DonationResult;->dateTime:Ljava/lang/String;

    .line 174
    .line 175
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    move-object v8, v4

    .line 180
    check-cast v8, Lorg/wikipedia/donate/DonationResult;

    .line 181
    .line 182
    iget-object v8, v8, Lorg/wikipedia/donate/DonationResult;->dateTime:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v2, v8}, Ljava/lang/String;->compareTo(Ljava/lang/Object;)I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    if-gez v9, :cond_7

    .line 189
    .line 190
    move-object p1, v4

    .line 191
    move-object v2, v8

    .line 192
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-nez v4, :cond_6

    .line 197
    .line 198
    :goto_4
    check-cast p1, Lorg/wikipedia/donate/DonationResult;

    .line 199
    .line 200
    if-eqz p1, :cond_8

    .line 201
    .line 202
    iget-object p1, p1, Lorg/wikipedia/donate/DonationResult;->dateTime:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {p1}, Lj$/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Lj$/time/LocalDateTime;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    goto :goto_5

    .line 209
    :cond_8
    move-object p1, v3

    .line 210
    :goto_5
    new-instance v2, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-eqz v4, :cond_a

    .line 224
    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    move-object v7, v4

    .line 230
    check-cast v7, Lkotlinx/serialization/json/JsonElement;

    .line 231
    .line 232
    sget-object v8, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 233
    .line 234
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    sget-object v9, Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto;->Companion:Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto$Companion;

    .line 238
    .line 239
    invoke-virtual {v9}, Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    check-cast v9, Lkotlinx/serialization/KSerializer;

    .line 244
    .line 245
    invoke-virtual {v8, v9, v7}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v7

    .line 249
    check-cast v7, Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto;

    .line 250
    .line 251
    iget v7, v7, Lorg/wikipedia/dataclient/donate/CampaignCollection$CampaignProto;->version:I

    .line 252
    .line 253
    const/4 v8, 0x2

    .line 254
    if-ne v7, v8, :cond_9

    .line 255
    .line 256
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_b

    .line 278
    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    .line 284
    .line 285
    sget-object v4, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 286
    .line 287
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    sget-object v7, Lorg/wikipedia/dataclient/donate/Campaign;->Companion:Lorg/wikipedia/dataclient/donate/Campaign$Companion;

    .line 291
    .line 292
    invoke-virtual {v7}, Lorg/wikipedia/dataclient/donate/Campaign$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    check-cast v7, Lkotlinx/serialization/KSerializer;

    .line 297
    .line 298
    invoke-virtual {v4, v7, v2}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    check-cast v2, Lorg/wikipedia/dataclient/donate/Campaign;

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    .line 309
    .line 310
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-eqz v2, :cond_11

    .line 322
    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    move-object v4, v2

    .line 328
    check-cast v4, Lorg/wikipedia/dataclient/donate/Campaign;

    .line 329
    .line 330
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    .line 332
    .line 333
    iget-object v7, v4, Lorg/wikipedia/dataclient/donate/Campaign;->platforms:Ljava/util/Map;

    .line 334
    .line 335
    const-string v8, "Android"

    .line 336
    .line 337
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    if-eqz v7, :cond_c

    .line 342
    .line 343
    iget-object v7, v4, Lorg/wikipedia/dataclient/donate/Campaign;->countries:Ljava/util/List;

    .line 344
    .line 345
    :try_start_1
    sget-object v8, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 346
    .line 347
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    if-eqz v8, :cond_e

    .line 352
    .line 353
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    if-nez v8, :cond_d

    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_d
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getGeoIPCountryOverride()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v8

    .line 364
    goto :goto_a

    .line 365
    :cond_e
    :goto_9
    invoke-static {}, Lorg/jsoup/Jsoup;->unmarshal()Lkotlinx/coroutines/internal/Symbol;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    iget-object v8, v8, Lkotlinx/coroutines/internal/Symbol;->symbol:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 370
    .line 371
    goto :goto_a

    .line 372
    :catch_1
    move-object v8, v3

    .line 373
    :goto_a
    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v7

    .line 377
    if-eqz v7, :cond_c

    .line 378
    .line 379
    sget-object v7, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 380
    .line 381
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getIgnoreDateForAnnouncements()Z

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    if-nez v7, :cond_f

    .line 386
    .line 387
    iget-object v7, v4, Lorg/wikipedia/dataclient/donate/Campaign;->startDateTime:Lj$/time/LocalDateTime;

    .line 388
    .line 389
    if-eqz v7, :cond_c

    .line 390
    .line 391
    invoke-virtual {v7, v6}, Lj$/time/LocalDateTime;->isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z

    .line 392
    .line 393
    .line 394
    move-result v7

    .line 395
    if-ne v7, v5, :cond_c

    .line 396
    .line 397
    iget-object v4, v4, Lorg/wikipedia/dataclient/donate/Campaign;->endDateTime:Lj$/time/LocalDateTime;

    .line 398
    .line 399
    if-eqz v4, :cond_c

    .line 400
    .line 401
    invoke-virtual {v4, v6}, Lj$/time/LocalDateTime;->isAfter(Lj$/time/chrono/ChronoLocalDateTime;)Z

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    if-ne v4, v5, :cond_c

    .line 406
    .line 407
    :cond_f
    if-eqz p1, :cond_10

    .line 408
    .line 409
    const-wide/16 v7, 0xfa

    .line 410
    .line 411
    invoke-virtual {v6, v7, v8}, Lj$/time/LocalDateTime;->minusDays(J)Lj$/time/LocalDateTime;

    .line 412
    .line 413
    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {p1, v4}, Lj$/time/LocalDateTime;->isBefore(Lj$/time/chrono/ChronoLocalDateTime;)Z

    .line 416
    .line 417
    .line 418
    move-result v4

    .line 419
    if-eqz v4, :cond_c

    .line 420
    .line 421
    :cond_10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    goto :goto_8

    .line 425
    :cond_11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 426
    .line 427
    .line 428
    move-result p0

    .line 429
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    return-object p0

    .line 434
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    new-instance p1, Lokhttp3/Request$Builder;

    .line 438
    .line 439
    invoke-direct {p1, v4}, Lokhttp3/Request$Builder;-><init>(I)V

    .line 440
    .line 441
    .line 442
    const-string v0, "https://donate.wikimedia.org/wiki/MediaWiki:AppsDonationConfig.json?action=raw"

    .line 443
    .line 444
    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    new-instance v0, Lokhttp3/Request;

    .line 448
    .line 449
    invoke-direct {v0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    .line 450
    .line 451
    .line 452
    sget-object p1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->client:Lokhttp3/OkHttpClient;

    .line 453
    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 455
    .line 456
    .line 457
    new-instance v4, Lokhttp3/internal/connection/RealCall;

    .line 458
    .line 459
    invoke-direct {v4, p1, v0}, Lokhttp3/internal/connection/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v4}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 467
    .line 468
    iget-object p1, p1, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    .line 469
    .line 470
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    if-eqz p1, :cond_13

    .line 475
    .line 476
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-nez v0, :cond_12

    .line 481
    .line 482
    goto :goto_b

    .line 483
    :cond_12
    :try_start_2
    sget-object v0, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    new-instance v4, Lkotlinx/serialization/internal/HashSetSerializer;

    .line 489
    .line 490
    sget-object v6, Lkotlinx/serialization/json/JsonElement;->Companion:Lkotlinx/serialization/json/JsonElement$Companion;

    .line 491
    .line 492
    invoke-virtual {v6}, Lkotlinx/serialization/json/JsonElement$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 493
    .line 494
    .line 495
    move-result-object v6

    .line 496
    invoke-direct {v4, v6, v5}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;I)V

    .line 497
    .line 498
    .line 499
    invoke-static {v4}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    check-cast v4, Lkotlinx/serialization/KSerializer;

    .line 504
    .line 505
    invoke-virtual {v0, p1, v4}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 509
    goto :goto_b

    .line 510
    :catch_2
    move-exception p1

    .line 511
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 512
    .line 513
    .line 514
    :cond_13
    :goto_b
    check-cast v3, Ljava/util/List;

    .line 515
    .line 516
    if-nez v3, :cond_14

    .line 517
    .line 518
    goto :goto_c

    .line 519
    :cond_14
    move-object v2, v3

    .line 520
    :goto_c
    new-instance p1, Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    :cond_15
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_16

    .line 534
    .line 535
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    move-object v3, v2

    .line 540
    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    .line 541
    .line 542
    sget-object v4, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 543
    .line 544
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    sget-object v6, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$ConfigProto;->Companion:Lorg/wikipedia/dataclient/donate/DonationConfigHelper$ConfigProto$Companion;

    .line 548
    .line 549
    invoke-virtual {v6}, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$ConfigProto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    check-cast v6, Lkotlinx/serialization/KSerializer;

    .line 554
    .line 555
    invoke-virtual {v4, v6, v3}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    check-cast v3, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$ConfigProto;

    .line 560
    .line 561
    iget v3, v3, Lorg/wikipedia/dataclient/donate/DonationConfigHelper$ConfigProto;->version:I

    .line 562
    .line 563
    if-ne v3, v5, :cond_15

    .line 564
    .line 565
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    goto :goto_d

    .line 569
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    .line 570
    .line 571
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 572
    .line 573
    .line 574
    move-result v1

    .line 575
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    if-eqz v1, :cond_17

    .line 587
    .line 588
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    .line 593
    .line 594
    sget-object v2, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 595
    .line 596
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    sget-object v3, Lorg/wikipedia/dataclient/donate/DonationConfig;->Companion:Lorg/wikipedia/dataclient/donate/DonationConfig$Companion;

    .line 600
    .line 601
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/donate/DonationConfig$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 606
    .line 607
    invoke-virtual {v2, v3, v1}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    check-cast v1, Lorg/wikipedia/dataclient/donate/DonationConfig;

    .line 612
    .line 613
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    goto :goto_e

    .line 617
    :cond_17
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 618
    .line 619
    .line 620
    move-result p0

    .line 621
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 622
    .line 623
    .line 624
    move-result-object p0

    .line 625
    return-object p0

    .line 626
    nop

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
