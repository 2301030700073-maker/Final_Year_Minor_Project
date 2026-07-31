.class public final Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $lang:Ljava/lang/String;

.field public final synthetic $r8$classId:I

.field public final synthetic $retryLimit:J

.field public final synthetic $title:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public I$0:I

.field public label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$lang:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$retryLimit:J

    .line 7
    .line 8
    iput-object p4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$title:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$r8$classId:I

    .line 15
    iput-object p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$lang:Ljava/lang/String;

    iput-object p2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$title:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-wide p3, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$retryLimit:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    iget p1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;

    .line 7
    .line 8
    iget-wide v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$retryLimit:J

    .line 9
    .line 10
    iget-object v4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$title:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    iget-object v1, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$lang:Ljava/lang/String;

    .line 13
    .line 14
    move-object v5, p2

    .line 15
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;-><init>(Ljava/lang/String;JLkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    move-object v5, p2

    .line 20
    new-instance v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;

    .line 21
    .line 22
    iget-object v3, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$title:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 23
    .line 24
    move-object v6, v5

    .line 25
    iget-wide v4, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$retryLimit:J

    .line 26
    .line 27
    iget-object v2, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$lang:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;JLkotlin/coroutines/Continuation;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v3, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$title:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-wide v4, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$retryLimit:J

    .line 10
    .line 11
    const-string v6, ""

    .line 12
    .line 13
    const/16 v7, 0xa

    .line 14
    .line 15
    const-string v8, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x1

    .line 19
    iget-object v11, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->$lang:Ljava/lang/String;

    .line 20
    .line 21
    packed-switch v0, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 25
    .line 26
    iget v13, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->label:I

    .line 27
    .line 28
    if-eqz v13, :cond_1

    .line 29
    .line 30
    if-ne v13, v10, :cond_0

    .line 31
    .line 32
    iget v8, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->I$0:I

    .line 33
    .line 34
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    move-object/from16 v11, p1

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_0
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    goto/16 :goto_8

    .line 45
    .line 46
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object v8, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 52
    .line 53
    .line 54
    :try_start_1
    sget-object v8, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCacheLang:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-nez v8, :cond_2

    .line 61
    .line 62
    sget-object v8, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCache:Lkotlin/collections/ArrayDeque;

    .line 63
    .line 64
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 65
    .line 66
    .line 67
    :cond_2
    sput-object v11, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCacheLang:Ljava/lang/String;

    .line 68
    .line 69
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v13

    .line 73
    sget-wide v15, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsLastMillis:J

    .line 74
    .line 75
    sub-long/2addr v13, v15

    .line 76
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v13

    .line 80
    const-wide/16 v15, 0x1388

    .line 81
    .line 82
    cmp-long v8, v13, v15

    .line 83
    .line 84
    if-gez v8, :cond_3

    .line 85
    .line 86
    const-wide/16 v13, 0x3e8

    .line 87
    .line 88
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v13

    .line 96
    sput-wide v13, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsLastMillis:J

    .line 97
    .line 98
    move v8, v9

    .line 99
    :goto_1
    sget-object v11, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCache:Lkotlin/collections/ArrayDeque;

    .line 100
    .line 101
    invoke-virtual {v11}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-eqz v11, :cond_b

    .line 106
    .line 107
    sget-object v11, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 108
    .line 109
    sget-object v11, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 110
    .line 111
    sget-object v13, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCacheLang:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v13}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    invoke-static {v11}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    iput v8, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->I$0:I

    .line 125
    .line 126
    iput v10, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->label:I

    .line 127
    .line 128
    invoke-interface {v11, v7, v1}, Lorg/wikipedia/dataclient/Service;->getPagesWithImageRecommendations(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    if-ne v11, v0, :cond_4

    .line 133
    .line 134
    move-object v2, v0

    .line 135
    goto/16 :goto_8

    .line 136
    .line 137
    :cond_4
    :goto_2
    check-cast v11, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 138
    .line 139
    iget-object v11, v11, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 140
    .line 141
    if-eqz v11, :cond_b

    .line 142
    .line 143
    iget-object v11, v11, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 144
    .line 145
    if-eqz v11, :cond_b

    .line 146
    .line 147
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    if-eqz v13, :cond_b

    .line 156
    .line 157
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    check-cast v13, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 162
    .line 163
    invoke-virtual {v13}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->thumbUrl()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    iget-object v15, v13, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->growthimagesuggestiondata:Ljava/util/List;

    .line 168
    .line 169
    if-eqz v14, :cond_6

    .line 170
    .line 171
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    if-nez v14, :cond_5

    .line 176
    .line 177
    :cond_6
    if-eqz v15, :cond_7

    .line 178
    .line 179
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    check-cast v14, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 184
    .line 185
    if-eqz v14, :cond_7

    .line 186
    .line 187
    iget-object v14, v14, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 188
    .line 189
    if-eqz v14, :cond_7

    .line 190
    .line 191
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v14

    .line 195
    check-cast v14, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_7
    const/4 v14, 0x0

    .line 199
    :goto_4
    if-eqz v14, :cond_5

    .line 200
    .line 201
    sget-object v14, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCacheLang:Ljava/lang/String;

    .line 202
    .line 203
    const-string v12, "de"

    .line 204
    .line 205
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v12

    .line 209
    if-eqz v12, :cond_a

    .line 210
    .line 211
    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    check-cast v12, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;

    .line 216
    .line 217
    iget-object v12, v12, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion;->images:Ljava/util/List;

    .line 218
    .line 219
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v12

    .line 223
    check-cast v12, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;

    .line 224
    .line 225
    iget-object v12, v12, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageItem;->metadata:Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;

    .line 226
    .line 227
    if-eqz v12, :cond_8

    .line 228
    .line 229
    iget-object v12, v12, Lorg/wikipedia/dataclient/growthtasks/GrowthImageSuggestion$ImageMetadata;->license:Ljava/lang/String;

    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_8
    const/4 v12, 0x0

    .line 233
    :goto_5
    if-nez v12, :cond_9

    .line 234
    .line 235
    move-object v12, v6

    .line 236
    :cond_9
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 237
    .line 238
    invoke-virtual {v12, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    const-string v14, "cc"

    .line 246
    .line 247
    invoke-static {v12, v14, v9}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 248
    .line 249
    .line 250
    move-result v12

    .line 251
    if-eqz v12, :cond_5

    .line 252
    .line 253
    sget-object v12, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCache:Lkotlin/collections/ArrayDeque;

    .line 254
    .line 255
    invoke-virtual {v12, v13}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_a
    sget-object v12, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCache:Lkotlin/collections/ArrayDeque;

    .line 260
    .line 261
    invoke-virtual {v12, v13}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_b
    add-int/lit8 v11, v8, 0x1

    .line 266
    .line 267
    int-to-long v12, v8

    .line 268
    cmp-long v8, v12, v4

    .line 269
    .line 270
    if-gez v8, :cond_d

    .line 271
    .line 272
    sget-object v8, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCache:Lkotlin/collections/ArrayDeque;

    .line 273
    .line 274
    invoke-virtual {v8}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-nez v8, :cond_c

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_c
    move v8, v11

    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :cond_d
    :goto_6
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->articlesWithImageRecommendationsCache:Lkotlin/collections/ArrayDeque;

    .line 285
    .line 286
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_e

    .line 291
    .line 292
    const/4 v12, 0x0

    .line 293
    goto :goto_7

    .line 294
    :cond_e
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    :goto_7
    iput-object v12, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    .line 300
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 301
    .line 302
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 303
    .line 304
    .line 305
    :goto_8
    return-object v2

    .line 306
    :catchall_0
    move-exception v0

    .line 307
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 310
    .line 311
    .line 312
    throw v0

    .line 313
    :pswitch_0
    sget-object v12, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 314
    .line 315
    iget v0, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->label:I

    .line 316
    .line 317
    if-eqz v0, :cond_10

    .line 318
    .line 319
    if-ne v0, v10, :cond_f

    .line 320
    .line 321
    iget v8, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->I$0:I

    .line 322
    .line 323
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/wikipedia/dataclient/mwapi/MwException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 324
    .line 325
    .line 326
    move-object/from16 v0, p1

    .line 327
    .line 328
    goto :goto_a

    .line 329
    :catch_0
    move-exception v0

    .line 330
    goto/16 :goto_13

    .line 331
    .line 332
    :cond_f
    invoke-static {v8}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const/4 v2, 0x0

    .line 336
    goto/16 :goto_14

    .line 337
    .line 338
    :cond_10
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 342
    .line 343
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 344
    .line 345
    .line 346
    :try_start_4
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCacheLang:Ljava/lang/String;

    .line 347
    .line 348
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-nez v0, :cond_11

    .line 353
    .line 354
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCache:Lkotlin/collections/ArrayDeque;

    .line 355
    .line 356
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 357
    .line 358
    .line 359
    :cond_11
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCache:Lkotlin/collections/ArrayDeque;

    .line 360
    .line 361
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    if-nez v8, :cond_12

    .line 366
    .line 367
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 372
    .line 373
    :cond_12
    sput-object v11, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCacheLang:Ljava/lang/String;

    .line 374
    .line 375
    move v0, v9

    .line 376
    :goto_9
    add-int/lit8 v8, v0, 0x1

    .line 377
    .line 378
    int-to-long v13, v0

    .line 379
    cmp-long v0, v13, v4

    .line 380
    .line 381
    if-gtz v0, :cond_22

    .line 382
    .line 383
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 384
    .line 385
    check-cast v0, Ljava/lang/CharSequence;

    .line 386
    .line 387
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 388
    .line 389
    .line 390
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 391
    if-nez v0, :cond_22

    .line 392
    .line 393
    :try_start_5
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 394
    .line 395
    sget-object v0, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 396
    .line 397
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    iput v8, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->I$0:I

    .line 402
    .line 403
    iput v10, v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider$getNextImageWithMissingCaption$2;->label:I

    .line 404
    .line 405
    invoke-interface {v0, v7, v1}, Lorg/wikipedia/dataclient/Service;->getRandomImages(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    if-ne v0, v12, :cond_13

    .line 410
    .line 411
    move-object v2, v12

    .line 412
    goto/16 :goto_14

    .line 413
    .line 414
    :cond_13
    :goto_a
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 415
    .line 416
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 417
    .line 418
    if-eqz v0, :cond_17

    .line 419
    .line 420
    iget-object v0, v0, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 421
    .line 422
    if-eqz v0, :cond_17

    .line 423
    .line 424
    new-instance v13, Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .line 428
    .line 429
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v14

    .line 437
    if-eqz v14, :cond_18

    .line 438
    .line 439
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v14

    .line 443
    move-object v15, v14

    .line 444
    check-cast v15, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 445
    .line 446
    invoke-virtual {v15}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    if-eqz v7, :cond_14

    .line 451
    .line 452
    iget-object v7, v7, Lorg/wikipedia/gallery/ImageInfo;->mime:Ljava/lang/String;

    .line 453
    .line 454
    goto :goto_c

    .line 455
    :cond_14
    const/4 v7, 0x0

    .line 456
    :goto_c
    if-nez v7, :cond_15

    .line 457
    .line 458
    move-object v7, v6

    .line 459
    :cond_15
    const-string v10, "image"

    .line 460
    .line 461
    invoke-static {v7, v10, v9}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 462
    .line 463
    .line 464
    move-result v7

    .line 465
    if-eqz v7, :cond_16

    .line 466
    .line 467
    iget-object v7, v15, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->protection:Ljava/util/List;

    .line 468
    .line 469
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v7

    .line 473
    if-eqz v7, :cond_16

    .line 474
    .line 475
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    :cond_16
    const/16 v7, 0xa

    .line 479
    .line 480
    const/4 v10, 0x1

    .line 481
    goto :goto_b

    .line 482
    :cond_17
    const/4 v13, 0x0

    .line 483
    :cond_18
    if-nez v13, :cond_19

    .line 484
    .line 485
    sget-object v13, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 486
    .line 487
    :cond_19
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    :cond_1a
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_20

    .line 496
    .line 497
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    move-object v10, v0

    .line 502
    check-cast v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 503
    .line 504
    iget-object v0, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 505
    .line 506
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 511
    .line 512
    if-eqz v0, :cond_1b

    .line 513
    .line 514
    const-string v13, "mediainfo"

    .line 515
    .line 516
    invoke-virtual {v0, v13}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->getContentFromSlot(Ljava/lang/String;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    goto :goto_e

    .line 521
    :cond_1b
    const/4 v0, 0x0

    .line 522
    :goto_e
    if-eqz v0, :cond_1a

    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 525
    .line 526
    .line 527
    move-result v13

    .line 528
    if-nez v13, :cond_1c

    .line 529
    .line 530
    goto :goto_d

    .line 531
    :cond_1c
    sget-object v13, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 532
    .line 533
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 534
    .line 535
    .line 536
    move-result v13
    :try_end_5
    .catch Lorg/wikipedia/dataclient/mwapi/MwException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 537
    if-nez v13, :cond_1d

    .line 538
    .line 539
    :goto_f
    const/4 v0, 0x0

    .line 540
    goto :goto_10

    .line 541
    :cond_1d
    :try_start_6
    sget-object v13, Lorg/wikipedia/json/JsonUtil;->json:Lkotlinx/serialization/json/JsonImpl;

    .line 542
    .line 543
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    sget-object v14, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->Companion:Lorg/wikipedia/dataclient/wikidata/Entities$Entity$Companion;

    .line 547
    .line 548
    invoke-virtual {v14}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    .line 549
    .line 550
    .line 551
    move-result-object v14

    .line 552
    invoke-static {v14}, Lkotlin/UnsignedKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    .line 553
    .line 554
    .line 555
    move-result-object v14

    .line 556
    check-cast v14, Lkotlinx/serialization/KSerializer;

    .line 557
    .line 558
    invoke-virtual {v13, v0, v14}, Lkotlinx/serialization/json/Json;->decodeFromString(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 562
    goto :goto_10

    .line 563
    :catch_1
    move-exception v0

    .line 564
    :try_start_7
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V

    .line 565
    .line 566
    .line 567
    goto :goto_f

    .line 568
    :goto_10
    check-cast v0, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;

    .line 569
    .line 570
    if-eqz v0, :cond_1a

    .line 571
    .line 572
    invoke-virtual {v0}, Lorg/wikipedia/dataclient/wikidata/Entities$Entity;->getLabels()Ljava/util/Map;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    sget-object v13, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 577
    .line 578
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    invoke-static {v11}, Lorg/wikipedia/dataclient/WikiSite$Companion;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v13

    .line 585
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    check-cast v0, Lorg/wikipedia/dataclient/wikidata/Entities$Label;

    .line 590
    .line 591
    if-eqz v0, :cond_1e

    .line 592
    .line 593
    iget-object v0, v0, Lorg/wikipedia/dataclient/wikidata/Entities$Label;->value:Ljava/lang/String;

    .line 594
    .line 595
    goto :goto_11

    .line 596
    :cond_1e
    const/4 v0, 0x0

    .line 597
    :goto_11
    if-eqz v0, :cond_1f

    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    if-nez v0, :cond_1a

    .line 604
    .line 605
    :cond_1f
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCache:Lkotlin/collections/ArrayDeque;

    .line 606
    .line 607
    iget-object v10, v10, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v0, v10}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    goto :goto_d

    .line 613
    :cond_20
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->imagesWithMissingCaptionsCache:Lkotlin/collections/ArrayDeque;

    .line 614
    .line 615
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 616
    .line 617
    .line 618
    move-result v7

    .line 619
    if-nez v7, :cond_21

    .line 620
    .line 621
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_7
    .catch Lorg/wikipedia/dataclient/mwapi/MwException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 626
    .line 627
    :cond_21
    :goto_12
    move v0, v8

    .line 628
    const/16 v7, 0xa

    .line 629
    .line 630
    const/4 v10, 0x1

    .line 631
    goto/16 :goto_9

    .line 632
    .line 633
    :goto_13
    :try_start_8
    invoke-static {v0}, Lorg/wikipedia/util/log/L;->w(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 634
    .line 635
    .line 636
    goto :goto_12

    .line 637
    :cond_22
    sget-object v0, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 638
    .line 639
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 640
    .line 641
    .line 642
    :goto_14
    return-object v2

    .line 643
    :catchall_1
    move-exception v0

    .line 644
    sget-object v1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->mutex:Ljava/util/concurrent/Semaphore;

    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 647
    .line 648
    .line 649
    throw v0

    .line 650
    nop

    .line 651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
