.class public final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $pair:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $retryLimit:J

.field public final synthetic $sourceLang:Ljava/lang/String;

.field public final synthetic $targetLang:Ljava/lang/String;

.field public I$0:I

.field public label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$sourceLang:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$targetLang:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$pair:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-wide p4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$retryLimit:J

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;

    .line 2
    .line 3
    iget-object v3, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$pair:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-wide v4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$retryLimit:J

    .line 6
    .line 7
    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$sourceLang:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$targetLang:Ljava/lang/String;

    .line 10
    .line 11
    move-object v6, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->label:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$targetLang:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$sourceLang:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    iget-object v6, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$pair:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    if-ne v1, v5, :cond_0

    .line 17
    .line 18
    iget v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->I$0:I

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/wikipedia/dataclient/mwapi/MwException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto/16 :goto_d

    .line 27
    .line 28
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v7

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 40
    .line 41
    .line 42
    :try_start_1
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheFromLang:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheToLang:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    :cond_2
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCache:Lkotlin/collections/ArrayDeque;

    .line 59
    .line 60
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 61
    .line 62
    .line 63
    :cond_3
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCache:Lkotlin/collections/ArrayDeque;

    .line 64
    .line 65
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 76
    .line 77
    :cond_4
    sput-object v4, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheFromLang:Ljava/lang/String;

    .line 78
    .line 79
    sput-object v3, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCacheToLang:Ljava/lang/String;

    .line 80
    .line 81
    move p1, v2

    .line 82
    :cond_5
    :goto_0
    add-int/lit8 v1, p1, 0x1

    .line 83
    .line 84
    int-to-long v8, p1

    .line 85
    iget-wide v10, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->$retryLimit:J

    .line 86
    .line 87
    cmp-long p1, v8, v10

    .line 88
    .line 89
    if-gtz p1, :cond_19

    .line 90
    .line 91
    iget-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Lkotlin/Pair;

    .line 94
    .line 95
    iget-object p1, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Ljava/lang/CharSequence;

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_6

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    iget-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Lkotlin/Pair;

    .line 109
    .line 110
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Ljava/lang/CharSequence;

    .line 113
    .line 114
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 115
    .line 116
    .line 117
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-nez p1, :cond_19

    .line 119
    .line 120
    :goto_1
    :try_start_2
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 121
    .line 122
    sget-object p1, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 123
    .line 124
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->I$0:I

    .line 129
    .line 130
    iput v5, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$4;->label:I

    .line 131
    .line 132
    const/16 v8, 0x32

    .line 133
    .line 134
    invoke-interface {p1, v8, p0}, Lorg/wikipedia/dataclient/Service;->getRandomImages(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-ne p1, v0, :cond_7

    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_7
    :goto_2
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 142
    .line 143
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;
    :try_end_2
    .catch Lorg/wikipedia/dataclient/mwapi/MwException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .line 145
    const-string v8, ""

    .line 146
    .line 147
    if-eqz p1, :cond_b

    .line 148
    .line 149
    :try_start_3
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 150
    .line 151
    if-eqz p1, :cond_b

    .line 152
    .line 153
    new-instance v9, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v10

    .line 166
    if-eqz v10, :cond_c

    .line 167
    .line 168
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    move-object v11, v10

    .line 173
    check-cast v11, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 174
    .line 175
    invoke-virtual {v11}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    if-eqz v12, :cond_9

    .line 180
    .line 181
    iget-object v12, v12, Lorg/wikipedia/gallery/ImageInfo;->mime:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_9
    move-object v12, v7

    .line 185
    :goto_4
    if-nez v12, :cond_a

    .line 186
    .line 187
    move-object v12, v8

    .line 188
    :cond_a
    const-string v13, "image"

    .line 189
    .line 190
    invoke-static {v12, v13, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    if-eqz v12, :cond_8

    .line 195
    .line 196
    iget-object v11, v11, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection:Ljava/util/List;

    .line 197
    .line 198
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v11

    .line 202
    if-eqz v11, :cond_8

    .line 203
    .line 204
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_b
    move-object v9, v7

    .line 209
    :cond_c
    if-nez v9, :cond_d

    .line 210
    .line 211
    sget-object v9, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 212
    .line 213
    :cond_d
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    :cond_e
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v9

    .line 221
    if-eqz v9, :cond_18

    .line 222
    .line 223
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    check-cast v9, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 228
    .line 229
    iget-object v10, v9, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 230
    .line 231
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v10

    .line 235
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 236
    .line 237
    if-eqz v10, :cond_f

    .line 238
    .line 239
    const-string v11, "mediainfo"

    .line 240
    .line 241
    invoke-virtual {v10, v11}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getContentFromSlot(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    goto :goto_6

    .line 246
    :cond_f
    move-object v10, v7

    .line 247
    :goto_6
    if-eqz v10, :cond_e

    .line 248
    .line 249
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 250
    .line 251
    .line 252
    move-result v11

    .line 253
    if-nez v11, :cond_10

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_10
    sget-object v11, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 257
    .line 258
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 259
    .line 260
    .line 261
    move-result v11
    :try_end_3
    .catch Lorg/wikipedia/dataclient/mwapi/MwException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    if-nez v11, :cond_11

    .line 263
    .line 264
    :goto_7
    move-object v10, v7

    .line 265
    goto :goto_8

    .line 266
    :cond_11
    :try_start_4
    sget-object v11, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 267
    .line 268
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 269
    .line 270
    .line 271
    sget-object v12, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->Companion:Lorg/wikipedia/dataclient/wikidata/Entities$Entity$Companion;

    .line 272
    .line 273
    invoke-virtual {v12}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 274
    .line 275
    .line 276
    move-result-object v12

    .line 277
    invoke-static {v12}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    check-cast v12, Lkotlinx/serialization/KSerializer;

    .line 282
    .line 283
    invoke-virtual {v11, v10, v12}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 287
    goto :goto_8

    .line 288
    :catch_1
    move-exception v10

    .line 289
    :try_start_5
    invoke-static {v10}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    goto :goto_7

    .line 293
    :goto_8
    check-cast v10, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 294
    .line 295
    if-eqz v10, :cond_e

    .line 296
    .line 297
    invoke-virtual {v10}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getLabels()Ljava/util/Map;

    .line 298
    .line 299
    .line 300
    move-result-object v10

    .line 301
    sget-object v11, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 302
    .line 303
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    invoke-static {v4}, Lorg/wikipedia/dataclient/WikiSite$Companion;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v11

    .line 310
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    check-cast v11, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    .line 315
    .line 316
    if-eqz v11, :cond_12

    .line 317
    .line 318
    iget-object v11, v11, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value:Ljava/lang/String;

    .line 319
    .line 320
    goto :goto_9

    .line 321
    :cond_12
    move-object v11, v7

    .line 322
    :goto_9
    if-nez v11, :cond_13

    .line 323
    .line 324
    move-object v11, v8

    .line 325
    :cond_13
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 326
    .line 327
    .line 328
    move-result v11

    .line 329
    if-lez v11, :cond_e

    .line 330
    .line 331
    invoke-static {v3}, Lorg/wikipedia/dataclient/WikiSite$Companion;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    check-cast v11, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    .line 340
    .line 341
    if-eqz v11, :cond_14

    .line 342
    .line 343
    iget-object v11, v11, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value:Ljava/lang/String;

    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_14
    move-object v11, v7

    .line 347
    :goto_a
    if-eqz v11, :cond_15

    .line 348
    .line 349
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    if-nez v11, :cond_e

    .line 354
    .line 355
    :cond_15
    sget-object v11, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCache:Lkotlin/collections/ArrayDeque;

    .line 356
    .line 357
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v10

    .line 361
    check-cast v10, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    .line 362
    .line 363
    if-eqz v10, :cond_16

    .line 364
    .line 365
    iget-object v10, v10, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value:Ljava/lang/String;

    .line 366
    .line 367
    goto :goto_b

    .line 368
    :cond_16
    move-object v10, v7

    .line 369
    :goto_b
    if-nez v10, :cond_17

    .line 370
    .line 371
    move-object v10, v8

    .line 372
    :cond_17
    iget-object v9, v9, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 373
    .line 374
    new-instance v12, Lkotlin/Pair;

    .line 375
    .line 376
    invoke-direct {v12, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v11, v12}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/wikipedia/dataclient/mwapi/MwException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 380
    .line 381
    .line 382
    goto/16 :goto_5

    .line 383
    .line 384
    :cond_18
    :goto_c
    move p1, v1

    .line 385
    goto :goto_e

    .line 386
    :goto_d
    :try_start_6
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 387
    .line 388
    .line 389
    goto :goto_c

    .line 390
    :goto_e
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithTranslatableCaptionCache:Lkotlin/collections/ArrayDeque;

    .line 391
    .line 392
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 393
    .line 394
    .line 395
    move-result v8

    .line 396
    if-nez v8, :cond_5

    .line 397
    .line 398
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    iput-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :cond_19
    sget-object p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 407
    .line 408
    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 409
    .line 410
    .line 411
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 412
    .line 413
    return-object p0

    .line 414
    :catchall_0
    move-exception p0

    .line 415
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 416
    .line 417
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 418
    .line 419
    .line 420
    throw p0
.end method
