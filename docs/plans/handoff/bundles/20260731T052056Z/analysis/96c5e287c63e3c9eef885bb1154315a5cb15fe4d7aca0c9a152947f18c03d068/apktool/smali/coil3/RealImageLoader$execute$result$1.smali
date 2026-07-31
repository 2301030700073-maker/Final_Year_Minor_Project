.class public final Lcoil3/RealImageLoader$execute$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $cachedPlaceholder:Ljava/lang/Object;

.field public synthetic $eventListener:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public $request:Ljava/lang/Object;

.field public $size:Ljava/lang/Object;

.field public label:I

.field public this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 18
    iput p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$r8$classId:I

    iput-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p7, p0, Lcoil3/RealImageLoader$execute$result$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 19
    iput p6, p0, Lcoil3/RealImageLoader$execute$result$1;->$r8$classId:I

    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    iput-object p4, p0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 20
    iput p5, p0, Lcoil3/RealImageLoader$execute$result$1;->$r8$classId:I

    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcoil3/RealImageLoader$execute$result$1;->$r8$classId:I

    .line 21
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private final invokeSuspend$org$wikipedia$language$LangLinksViewModel$fetchAllData$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/wikipedia/language/LangLinksViewModel;

    .line 6
    .line 7
    iget-object v2, v1, Lorg/wikipedia/language/LangLinksViewModel;->app:Lorg/wikipedia/WikipediaApp;

    .line 8
    .line 9
    iget-object v3, v0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 12
    .line 13
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    iget v5, v0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 16
    .line 17
    const/4 v6, 0x3

    .line 18
    const/4 v7, 0x1

    .line 19
    const/4 v8, 0x2

    .line 20
    const/4 v9, 0x0

    .line 21
    if-eqz v5, :cond_3

    .line 22
    .line 23
    if-eq v5, v7, :cond_2

    .line 24
    .line 25
    if-eq v5, v8, :cond_1

    .line 26
    .line 27
    if-ne v5, v6, :cond_0

    .line 28
    .line 29
    iget-object v0, v0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Lorg/wikipedia/language/LangLinksViewModel;

    .line 32
    .line 33
    check-cast v0, Ljava/util/List;

    .line 34
    .line 35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_d

    .line 39
    .line 40
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object v9

    .line 46
    :cond_1
    iget-object v5, v0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v5, Lorg/wikipedia/language/LangLinksViewModel;

    .line 49
    .line 50
    iget-object v7, v0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v7, Ljava/util/List;

    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v8, v7

    .line 58
    move-object v7, v5

    .line 59
    move-object/from16 v5, p1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v5, v0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Lkotlinx/coroutines/DeferredCoroutine;

    .line 65
    .line 66
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object v10, v5

    .line 70
    move-object/from16 v5, p1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    new-instance v5, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;

    .line 77
    .line 78
    const/4 v10, 0x5

    .line 79
    invoke-direct {v5, v10, v1, v9}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v9, v5, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    new-instance v10, Lorg/wikipedia/feed/HomeViewModel$1;

    .line 87
    .line 88
    const/4 v11, 0x7

    .line 89
    invoke-direct {v10, v8, v11, v9}, Lorg/wikipedia/feed/HomeViewModel$1;-><init>(IILkotlin/coroutines/Continuation;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v9, v10, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    iput-object v3, v0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v10, v0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 99
    .line 100
    iput v7, v0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 101
    .line 102
    invoke-virtual {v5, v0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    if-ne v5, v4, :cond_4

    .line 107
    .line 108
    goto/16 :goto_c

    .line 109
    .line 110
    :cond_4
    :goto_0
    move-object v7, v5

    .line 111
    check-cast v7, Ljava/util/List;

    .line 112
    .line 113
    iput-object v3, v0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object v9, v0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 116
    .line 117
    iput-object v7, v0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object v1, v0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 120
    .line 121
    iput v8, v0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 122
    .line 123
    invoke-interface {v10, v0}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-ne v5, v4, :cond_5

    .line 128
    .line 129
    goto/16 :goto_c

    .line 130
    .line 131
    :cond_5
    move-object v8, v7

    .line 132
    move-object v7, v1

    .line 133
    :goto_1
    check-cast v5, Ljava/util/List;

    .line 134
    .line 135
    iput-object v5, v7, Lorg/wikipedia/language/LangLinksViewModel;->siteInfoList:Ljava/util/List;

    .line 136
    .line 137
    iget-object v5, v1, Lorg/wikipedia/language/LangLinksViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 138
    .line 139
    invoke-interface {v8}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v10

    .line 147
    const-string v11, "be-tarask"

    .line 148
    .line 149
    const-string v12, "be-x-old"

    .line 150
    .line 151
    if-eqz v10, :cond_9

    .line 152
    .line 153
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    check-cast v10, Lorg/wikipedia/page/PageTitle;

    .line 158
    .line 159
    iget-object v13, v10, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 160
    .line 161
    iget-object v13, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 162
    .line 163
    sget-object v14, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 164
    .line 165
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    invoke-virtual {v14}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    invoke-virtual {v14, v13}, Lorg/wikipedia/language/AppLanguageState;->getLanguageVariants(Ljava/lang/String;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v14

    .line 177
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v12

    .line 181
    if-eqz v12, :cond_7

    .line 182
    .line 183
    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    .line 184
    .line 185
    .line 186
    new-instance v12, Lorg/wikipedia/page/PageTitle;

    .line 187
    .line 188
    invoke-virtual {v10}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    sget-object v13, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 193
    .line 194
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    invoke-static {v11}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-direct {v12, v10, v11, v9}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v7, v12}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_7
    if-eqz v14, :cond_6

    .line 209
    .line 210
    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    .line 211
    .line 212
    .line 213
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v12

    .line 221
    if-eqz v12, :cond_6

    .line 222
    .line 223
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    check-cast v12, Ljava/lang/String;

    .line 228
    .line 229
    new-instance v13, Lorg/wikipedia/page/PageTitle;

    .line 230
    .line 231
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    .line 232
    .line 233
    .line 234
    move-result v14

    .line 235
    if-eqz v14, :cond_8

    .line 236
    .line 237
    invoke-static {v12}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    goto :goto_4

    .line 242
    :cond_8
    invoke-virtual {v10}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v14

    .line 246
    :goto_4
    sget-object v15, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 247
    .line 248
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {v12}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    invoke-direct {v13, v14, v12, v9}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v7, v13}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_9
    sget-object v7, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 263
    .line 264
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v7}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    iget-object v10, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 279
    .line 280
    iget-object v10, v10, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v7, v10}, Lorg/wikipedia/language/AppLanguageState;->getDefaultLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    const/4 v13, 0x0

    .line 287
    if-eqz v10, :cond_d

    .line 288
    .line 289
    invoke-virtual {v7, v10}, Lorg/wikipedia/language/AppLanguageState;->getLanguageVariants(Ljava/lang/String;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    if-eqz v7, :cond_d

    .line 294
    .line 295
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    :cond_a
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v10

    .line 303
    if-eqz v10, :cond_d

    .line 304
    .line 305
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    check-cast v10, Ljava/lang/String;

    .line 310
    .line 311
    const-string/jumbo v14, "zh-hant"

    .line 312
    .line 313
    .line 314
    const-string/jumbo v15, "zh-hans"

    .line 315
    .line 316
    .line 317
    filled-new-array {v14, v15}, [Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    invoke-static {v14}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v14

    .line 325
    invoke-interface {v14, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v14

    .line 329
    if-eqz v14, :cond_b

    .line 330
    .line 331
    goto :goto_5

    .line 332
    :cond_b
    iget-object v14, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 333
    .line 334
    iget-object v14, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 335
    .line 336
    invoke-static {v14, v10, v13}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 337
    .line 338
    .line 339
    move-result v14

    .line 340
    if-nez v14, :cond_a

    .line 341
    .line 342
    new-instance v14, Lorg/wikipedia/page/PageTitle;

    .line 343
    .line 344
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->isMainPage()Z

    .line 345
    .line 346
    .line 347
    move-result v15

    .line 348
    if-eqz v15, :cond_c

    .line 349
    .line 350
    invoke-static {v10}, Lorg/wikipedia/staticdata/MainPageNameData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v15

    .line 354
    goto :goto_6

    .line 355
    :cond_c
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v15

    .line 359
    :goto_6
    sget-object v16, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 360
    .line 361
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    invoke-static {v10}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 365
    .line 366
    .line 367
    move-result-object v10

    .line 368
    invoke-direct {v14, v15, v10, v9}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v10

    .line 375
    iput-object v10, v14, Lorg/wikipedia/page/PageTitle;->_displayText:Ljava/lang/String;

    .line 376
    .line 377
    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_d
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 382
    .line 383
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-virtual {v5}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    iget-object v5, v5, Lorg/wikipedia/language/AppLanguageState;->_mruLanguageCodes:Ljava/util/ArrayList;

    .line 392
    .line 393
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    move v7, v13

    .line 398
    :cond_e
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 399
    .line 400
    .line 401
    move-result v10

    .line 402
    if-eqz v10, :cond_10

    .line 403
    .line 404
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    check-cast v10, Ljava/lang/String;

    .line 409
    .line 410
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 411
    .line 412
    .line 413
    move-result v14

    .line 414
    move v15, v13

    .line 415
    :goto_8
    if-ge v15, v14, :cond_e

    .line 416
    .line 417
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v16

    .line 421
    move-object/from16 v13, v16

    .line 422
    .line 423
    check-cast v13, Lorg/wikipedia/page/PageTitle;

    .line 424
    .line 425
    iget-object v13, v13, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 426
    .line 427
    iget-object v13, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 428
    .line 429
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v13

    .line 433
    if-eqz v13, :cond_f

    .line 434
    .line 435
    invoke-interface {v8, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v10

    .line 439
    check-cast v10, Lorg/wikipedia/page/PageTitle;

    .line 440
    .line 441
    add-int/lit8 v13, v7, 0x1

    .line 442
    .line 443
    invoke-interface {v8, v7, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    move v7, v13

    .line 447
    const/4 v13, 0x0

    .line 448
    goto :goto_7

    .line 449
    :cond_f
    add-int/lit8 v15, v15, 0x1

    .line 450
    .line 451
    const/4 v13, 0x0

    .line 452
    goto :goto_8

    .line 453
    :cond_10
    iput-object v8, v1, Lorg/wikipedia/language/LangLinksViewModel;->originalLanguageEntries:Ljava/util/List;

    .line 454
    .line 455
    new-instance v5, Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    :cond_11
    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 465
    .line 466
    .line 467
    move-result v10

    .line 468
    if-eqz v10, :cond_15

    .line 469
    .line 470
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    move-object v13, v10

    .line 475
    check-cast v13, Lorg/wikipedia/page/PageTitle;

    .line 476
    .line 477
    iget-object v14, v13, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 478
    .line 479
    iget-object v14, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 480
    .line 481
    const-string v15, "no"

    .line 482
    .line 483
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result v14

    .line 487
    if-eqz v14, :cond_12

    .line 488
    .line 489
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 490
    .line 491
    .line 492
    move-result-object v14

    .line 493
    invoke-virtual {v14}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 494
    .line 495
    .line 496
    move-result-object v14

    .line 497
    const-string v15, "nb"

    .line 498
    .line 499
    check-cast v14, Ljava/util/ArrayList;

    .line 500
    .line 501
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v14

    .line 505
    if-nez v14, :cond_14

    .line 506
    .line 507
    :cond_12
    iget-object v14, v13, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 508
    .line 509
    iget-object v14, v14, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 510
    .line 511
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v14

    .line 515
    if-eqz v14, :cond_13

    .line 516
    .line 517
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 518
    .line 519
    .line 520
    move-result-object v14

    .line 521
    invoke-virtual {v14}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 522
    .line 523
    .line 524
    move-result-object v14

    .line 525
    check-cast v14, Ljava/util/ArrayList;

    .line 526
    .line 527
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v14

    .line 531
    if-nez v14, :cond_14

    .line 532
    .line 533
    :cond_13
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 534
    .line 535
    .line 536
    move-result-object v14

    .line 537
    invoke-virtual {v14}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 538
    .line 539
    .line 540
    move-result-object v14

    .line 541
    iget-object v13, v13, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 542
    .line 543
    iget-object v13, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 544
    .line 545
    check-cast v14, Ljava/util/ArrayList;

    .line 546
    .line 547
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v13

    .line 551
    if-eqz v13, :cond_11

    .line 552
    .line 553
    :cond_14
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    goto :goto_9

    .line 557
    :cond_15
    iput-object v5, v1, Lorg/wikipedia/language/LangLinksViewModel;->appLanguageEntries:Ljava/util/List;

    .line 558
    .line 559
    new-instance v5, Ljava/util/ArrayList;

    .line 560
    .line 561
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .line 563
    .line 564
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 565
    .line 566
    .line 567
    move-result-object v7

    .line 568
    :cond_16
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 569
    .line 570
    .line 571
    move-result v8

    .line 572
    if-eqz v8, :cond_17

    .line 573
    .line 574
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v8

    .line 578
    check-cast v8, Lorg/wikipedia/page/PageTitle;

    .line 579
    .line 580
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 581
    .line 582
    .line 583
    move-result-object v10

    .line 584
    iget-object v8, v8, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 585
    .line 586
    iget-object v8, v8, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 587
    .line 588
    invoke-virtual {v10, v8}, Lorg/wikipedia/language/AppLanguageState;->getDefaultLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    if-eqz v8, :cond_16

    .line 593
    .line 594
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    goto :goto_a

    .line 598
    :cond_17
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    iput-object v2, v1, Lorg/wikipedia/language/LangLinksViewModel;->variantLangToUpdate:Ljava/util/Set;

    .line 603
    .line 604
    new-instance v2, Ljava/util/ArrayList;

    .line 605
    .line 606
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .line 608
    .line 609
    iget-object v5, v1, Lorg/wikipedia/language/LangLinksViewModel;->variantLangToUpdate:Ljava/util/Set;

    .line 610
    .line 611
    check-cast v5, Ljava/lang/Iterable;

    .line 612
    .line 613
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 614
    .line 615
    .line 616
    move-result-object v5

    .line 617
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 618
    .line 619
    .line 620
    move-result-object v5

    .line 621
    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    .line 623
    .line 624
    move-result v7

    .line 625
    if-eqz v7, :cond_18

    .line 626
    .line 627
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v7

    .line 631
    check-cast v7, Ljava/lang/String;

    .line 632
    .line 633
    new-instance v8, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 634
    .line 635
    const/16 v10, 0x11

    .line 636
    .line 637
    invoke-direct {v8, v1, v7, v9, v10}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 638
    .line 639
    .line 640
    invoke-static {v3, v9, v8, v6}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 641
    .line 642
    .line 643
    move-result-object v7

    .line 644
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .line 646
    .line 647
    goto :goto_b

    .line 648
    :cond_18
    iput-object v9, v0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 649
    .line 650
    iput-object v9, v0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 651
    .line 652
    iput-object v9, v0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 653
    .line 654
    iput-object v9, v0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 655
    .line 656
    iput v6, v0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 657
    .line 658
    invoke-static {v2, v0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/List;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    if-ne v0, v4, :cond_19

    .line 663
    .line 664
    :goto_c
    return-object v4

    .line 665
    :cond_19
    :goto_d
    const-string v0, ""

    .line 666
    .line 667
    invoke-virtual {v1, v0}, Lorg/wikipedia/language/LangLinksViewModel;->updateLanguageItems(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 671
    .line 672
    return-object v0
.end method

.method private final invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$deletePages$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 6
    .line 7
    iget-object v2, v0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    .line 10
    .line 11
    iget-object v3, v0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Landroidx/appcompat/app/AppCompatActivity;

    .line 14
    .line 15
    iget-object v4, v0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 18
    .line 19
    iget-object v5, v0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v5, Ljava/util/List;

    .line 22
    .line 23
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 24
    .line 25
    iget v7, v0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 26
    .line 27
    const/4 v8, 0x3

    .line 28
    const/4 v9, 0x2

    .line 29
    const/4 v10, 0x0

    .line 30
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 31
    .line 32
    const/4 v12, 0x1

    .line 33
    if-eqz v7, :cond_3

    .line 34
    .line 35
    if-eq v7, v12, :cond_2

    .line 36
    .line 37
    if-eq v7, v9, :cond_1

    .line 38
    .line 39
    if-ne v7, v8, :cond_0

    .line 40
    .line 41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    return-object v0

    .line 53
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    move-object/from16 v0, p1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object/from16 v4, p1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-le v7, v12, :cond_7

    .line 73
    .line 74
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 75
    .line 76
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget-object v15, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 88
    .line 89
    iget-object v7, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iput-object v7, v15, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v13, Lorg/wikipedia/page/PageTitle;

    .line 100
    .line 101
    iget-object v14, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v7, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v8, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v4, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 108
    .line 109
    move-object/from16 v18, v4

    .line 110
    .line 111
    move-object/from16 v16, v7

    .line 112
    .line 113
    move-object/from16 v17, v8

    .line 114
    .line 115
    invoke-direct/range {v13 .. v18}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput v12, v0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 119
    .line 120
    invoke-virtual {v5, v13, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->getAllPageOccurrences(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    if-ne v4, v6, :cond_4

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_4
    :goto_0
    check-cast v4, Ljava/util/List;

    .line 128
    .line 129
    sget-object v5, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 130
    .line 131
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    iput v9, v0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-static {v5, v4, v0}, Lorg/wikipedia/dataclient/Service$-CC;->getListsFromPageOccurrences$suspendImpl(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-ne v0, v6, :cond_5

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    :goto_1
    check-cast v0, Ljava/util/List;

    .line 152
    .line 153
    invoke-static {v3}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-nez v4, :cond_6

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_6
    new-instance v4, Lokhttp3/Dispatcher$promoteAndExecute$Effects;

    .line 161
    .line 162
    invoke-direct {v4, v0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;-><init>(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;

    .line 166
    .line 167
    invoke-direct {v0, v3, v2, v1, v9}, Landroidx/work/ListenableFutureKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v3, v0}, Lokhttp3/Dispatcher$promoteAndExecute$Effects;->deleteOrShowDialog(Landroid/app/Activity;Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V

    .line 171
    .line 172
    .line 173
    return-object v11

    .line 174
    :cond_7
    sget-object v7, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 175
    .line 176
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-virtual {v7}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    check-cast v9, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 189
    .line 190
    invoke-static {v4}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    iput v8, v0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 195
    .line 196
    invoke-virtual {v7, v9, v13, v12, v0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->markPagesForDeletion(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    if-ne v0, v6, :cond_8

    .line 201
    .line 202
    :goto_2
    return-object v6

    .line 203
    :cond_8
    :goto_3
    invoke-static {v3}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-nez v0, :cond_9

    .line 208
    .line 209
    :goto_4
    return-object v11

    .line 210
    :cond_9
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 215
    .line 216
    iget-object v0, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    sget-object v0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->allReadingLists:Ljava/util/List;

    .line 222
    .line 223
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 228
    .line 229
    invoke-static {v4}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-static {v3, v0, v4, v2}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->showDeletePagesUndoSnackbar(Landroidx/appcompat/app/AppCompatActivity;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v1}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    .line 237
    .line 238
    .line 239
    return-object v11
.end method

.method private final invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$renameReadingList$1$1$onSuccess$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    if-ne v2, v5, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iput-object p1, v0, Lorg/wikipedia/readinglist/database/ReadingList;->listTitle:Ljava/lang/String;

    .line 41
    .line 42
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Ljava/lang/String;

    .line 45
    .line 46
    iput-object p1, v0, Lorg/wikipedia/readinglist/database/ReadingList;->description:Ljava/lang/String;

    .line 47
    .line 48
    iput-boolean v5, v0, Lorg/wikipedia/readinglist/database/ReadingList;->dirty:Z

    .line 49
    .line 50
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 51
    .line 52
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListDao()Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput v5, p0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v2, p1, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 70
    .line 71
    new-instance v6, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$updateLists$2;

    .line 72
    .line 73
    invoke-direct {v6, p1, v0, v5, v3}, Lorg/wikipedia/readinglist/db/ReadingListDao_Impl$updateLists$2;-><init>(Lorg/wikipedia/readinglist/db/ReadingListDao_Impl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2, p0, v6}, Lkotlin/ExceptionsKt;->performInTransactionSuspending(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, v1, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    move-object p1, v4

    .line 84
    :goto_0
    if-ne p1, v1, :cond_3

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move-object p1, v4

    .line 88
    :goto_1
    if-ne p1, v1, :cond_4

    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_4
    :goto_2
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 94
    .line 95
    invoke-static {p1}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_5

    .line 100
    .line 101
    return-object v4

    .line 102
    :cond_5
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 105
    .line 106
    invoke-interface {p0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;->onCompleted()V

    .line 107
    .line 108
    .line 109
    return-object v4
.end method

.method private final invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    return-object p0

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/util/List;

    .line 35
    .line 36
    new-instance v2, Ljava/util/ArrayList;

    .line 37
    .line 38
    const/16 v4, 0xa

    .line 39
    .line 40
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 62
    .line 63
    new-instance v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v8, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->wiki:Lorg/wikipedia/dataclient/WikiSite;

    .line 69
    .line 70
    iget-object v6, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->lang:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iput-object v6, v8, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v6, Lorg/wikipedia/page/PageTitle;

    .line 81
    .line 82
    iget-object v7, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->apiTitle:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v9, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->thumbUrl:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v10, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->description:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v11, v4, Lorg/wikipedia/readinglist/database/ReadingListPage;->displayTitle:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct/range {v6 .. v11}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-direct {v5, v6}, Lorg/wikipedia/readinglist/database/ReadingListPage;-><init>(Lorg/wikipedia/page/PageTitle;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    sget-object p1, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 101
    .line 102
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object v2, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 111
    .line 112
    iput v3, p0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 113
    .line 114
    invoke-virtual {p1, v0, v2, v3, p0}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->addPagesToList(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ne p1, v1, :cond_3

    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_3
    move-object v1, v2

    .line 122
    :goto_1
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 125
    .line 126
    invoke-static {p1}, Lokio/Okio__OkioKt;->isStarted(Landroid/app/Activity;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 131
    .line 132
    if-nez p1, :cond_4

    .line 133
    .line 134
    return-object v2

    .line 135
    :cond_4
    iget-object p1, v0, Lorg/wikipedia/readinglist/database/ReadingList;->pages:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    .line 143
    .line 144
    invoke-interface {p0}, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;->onUndoDeleteClicked()V

    .line 145
    .line 146
    .line 147
    return-object v2
.end method

.method private final invokeSuspend$org$wikipedia$search$StandardSearchRepository$search$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v4, v0

    .line 4
    check-cast v4, Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v3, v0

    .line 9
    check-cast v3, Lorg/wikipedia/dataclient/WikiSite;

    .line 10
    .line 11
    iget-object v0, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 14
    .line 15
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    iget v1, p0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    if-ne v1, v8, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;

    .line 39
    .line 40
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 41
    .line 42
    move-object v2, p1

    .line 43
    check-cast v2, Lokio/ByteString$Companion;

    .line 44
    .line 45
    const/16 v6, 0x9

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-direct/range {v1 .. v6}, Lorg/wikipedia/util/ShareUtil$shareImage$2$uri$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x3

    .line 52
    invoke-static {v0, v5, v1, p1}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lorg/wikipedia/search/StandardSearchRepository$search$2$2;

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    invoke-direct {v2, v3, v4, v5, v6}, Lorg/wikipedia/search/StandardSearchRepository$search$2$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v5, v2, p1}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    new-instance v9, Lorg/wikipedia/search/StandardSearchRepository$search$2$2;

    .line 67
    .line 68
    invoke-direct {v9, v3, v4, v5, v8}, Lorg/wikipedia/search/StandardSearchRepository$search$2$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Lkotlin/coroutines/Continuation;I)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0, v5, v9, p1}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-array p1, p1, [Lkotlinx/coroutines/Deferred;

    .line 76
    .line 77
    aput-object v1, p1, v6

    .line 78
    .line 79
    aput-object v2, p1, v8

    .line 80
    .line 81
    const/4 v1, 0x2

    .line 82
    aput-object v0, p1, v1

    .line 83
    .line 84
    invoke-static {p1}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object v5, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 89
    .line 90
    iput v8, p0, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 91
    .line 92
    invoke-static {p1, p0}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/List;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-ne p1, v7, :cond_2

    .line 97
    .line 98
    return-object v7

    .line 99
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    .line 100
    .line 101
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_3

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lorg/wikipedia/search/SearchResults;

    .line 120
    .line 121
    iget-object v0, v0, Lorg/wikipedia/search/SearchResults;->results:Ljava/util/List;

    .line 122
    .line 123
    invoke-static {v0, v8}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 132
    .line 133
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget v0, p0, Lcoil3/RealImageLoader$execute$result$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcoil3/RealImageLoader$execute$result$1;

    .line 9
    .line 10
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 11
    .line 12
    move-object v3, p1

    .line 13
    check-cast v3, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 14
    .line 15
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    move-object v4, p1

    .line 18
    check-cast v4, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 19
    .line 20
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 21
    .line 22
    move-object v5, p1

    .line 23
    check-cast v5, Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 26
    .line 27
    move-object v6, p0

    .line 28
    check-cast v6, Ljava/lang/String;

    .line 29
    .line 30
    move-object v7, v1

    .line 31
    check-cast v7, Ljava/lang/String;

    .line 32
    .line 33
    const/16 v9, 0x14

    .line 34
    .line 35
    move-object v8, p2

    .line 36
    invoke-direct/range {v2 .. v9}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :pswitch_0
    move-object v8, p2

    .line 41
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 42
    .line 43
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v4, p2

    .line 46
    check-cast v4, Lokio/ByteString$Companion;

    .line 47
    .line 48
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 49
    .line 50
    move-object v5, p2

    .line 51
    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 52
    .line 53
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 54
    .line 55
    move-object v6, p0

    .line 56
    check-cast v6, Ljava/lang/String;

    .line 57
    .line 58
    move-object v7, v1

    .line 59
    check-cast v7, Ljava/util/ArrayList;

    .line 60
    .line 61
    const/16 v9, 0x13

    .line 62
    .line 63
    invoke-direct/range {v3 .. v9}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, v3, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 67
    .line 68
    return-object v3

    .line 69
    :pswitch_1
    move-object v8, p2

    .line 70
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 71
    .line 72
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 73
    .line 74
    move-object v4, p1

    .line 75
    check-cast v4, Ljava/util/List;

    .line 76
    .line 77
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 78
    .line 79
    move-object v5, p1

    .line 80
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 81
    .line 82
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v6, p0

    .line 85
    check-cast v6, Landroidx/appcompat/app/AppCompatActivity;

    .line 86
    .line 87
    move-object v7, v1

    .line 88
    check-cast v7, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    .line 89
    .line 90
    const/16 v9, 0x12

    .line 91
    .line 92
    invoke-direct/range {v3 .. v9}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 93
    .line 94
    .line 95
    return-object v3

    .line 96
    :pswitch_2
    move-object v8, p2

    .line 97
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 98
    .line 99
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 100
    .line 101
    move-object v4, p1

    .line 102
    check-cast v4, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 103
    .line 104
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 105
    .line 106
    move-object v5, p1

    .line 107
    check-cast v5, Ljava/lang/String;

    .line 108
    .line 109
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 110
    .line 111
    move-object v6, p1

    .line 112
    check-cast v6, Ljava/lang/String;

    .line 113
    .line 114
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 115
    .line 116
    move-object v7, p0

    .line 117
    check-cast v7, Landroidx/appcompat/app/AppCompatActivity;

    .line 118
    .line 119
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 120
    .line 121
    const/16 v10, 0x11

    .line 122
    .line 123
    move-object v9, v8

    .line 124
    move-object v8, v1

    .line 125
    invoke-direct/range {v3 .. v10}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 126
    .line 127
    .line 128
    return-object v3

    .line 129
    :pswitch_3
    move-object v8, p2

    .line 130
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 131
    .line 132
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 133
    .line 134
    move-object v4, p1

    .line 135
    check-cast v4, Ljava/util/List;

    .line 136
    .line 137
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 138
    .line 139
    move-object v5, p1

    .line 140
    check-cast v5, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 141
    .line 142
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 143
    .line 144
    move-object v6, p1

    .line 145
    check-cast v6, Landroidx/appcompat/app/AppCompatActivity;

    .line 146
    .line 147
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 148
    .line 149
    move-object v7, p0

    .line 150
    check-cast v7, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    .line 151
    .line 152
    check-cast v1, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$Callback;

    .line 153
    .line 154
    const/16 v10, 0x10

    .line 155
    .line 156
    move-object v9, v8

    .line 157
    move-object v8, v1

    .line 158
    invoke-direct/range {v3 .. v10}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 159
    .line 160
    .line 161
    return-object v3

    .line 162
    :pswitch_4
    move-object v8, p2

    .line 163
    new-instance p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 164
    .line 165
    check-cast v1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 166
    .line 167
    const/16 p2, 0xf

    .line 168
    .line 169
    invoke-direct {p0, p2, v1, v8}, Lcoil3/RealImageLoader$execute$result$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 170
    .line 171
    .line 172
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 173
    .line 174
    return-object p0

    .line 175
    :pswitch_5
    move-object v8, p2

    .line 176
    new-instance p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 177
    .line 178
    check-cast v1, Lorg/wikipedia/language/LangLinksViewModel;

    .line 179
    .line 180
    const/16 p2, 0xe

    .line 181
    .line 182
    invoke-direct {p0, p2, v1, v8}, Lcoil3/RealImageLoader$execute$result$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 183
    .line 184
    .line 185
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 186
    .line 187
    return-object p0

    .line 188
    :pswitch_6
    move-object v8, p2

    .line 189
    new-instance p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 190
    .line 191
    check-cast v1, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 192
    .line 193
    const/16 p2, 0xd

    .line 194
    .line 195
    invoke-direct {p0, p2, v1, v8}, Lcoil3/RealImageLoader$execute$result$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 196
    .line 197
    .line 198
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_7
    move-object v8, p2

    .line 202
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 203
    .line 204
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 205
    .line 206
    move-object v4, p2

    .line 207
    check-cast v4, Landroidx/navigation/compose/ComposeNavigator;

    .line 208
    .line 209
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 210
    .line 211
    move-object v5, p2

    .line 212
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 213
    .line 214
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 215
    .line 216
    move-object v6, p0

    .line 217
    check-cast v6, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 218
    .line 219
    move-object v7, v1

    .line 220
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 221
    .line 222
    const/16 v9, 0xc

    .line 223
    .line 224
    invoke-direct/range {v3 .. v9}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 225
    .line 226
    .line 227
    iput-object p1, v3, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 228
    .line 229
    return-object v3

    .line 230
    :pswitch_8
    move-object v8, p2

    .line 231
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 232
    .line 233
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 234
    .line 235
    move-object v4, p2

    .line 236
    check-cast v4, Landroidx/lifecycle/LifecycleRegistry;

    .line 237
    .line 238
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 239
    .line 240
    move-object v5, p2

    .line 241
    check-cast v5, Landroidx/lifecycle/Lifecycle$State;

    .line 242
    .line 243
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 244
    .line 245
    move-object v6, p0

    .line 246
    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    .line 247
    .line 248
    move-object v7, v1

    .line 249
    check-cast v7, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 250
    .line 251
    const/16 v9, 0xb

    .line 252
    .line 253
    invoke-direct/range {v3 .. v9}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 254
    .line 255
    .line 256
    iput-object p1, v3, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 257
    .line 258
    return-object v3

    .line 259
    :pswitch_9
    move-object v8, p2

    .line 260
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 261
    .line 262
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 263
    .line 264
    move-object v4, p2

    .line 265
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 266
    .line 267
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 268
    .line 269
    move-object v5, p2

    .line 270
    check-cast v5, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;

    .line 271
    .line 272
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 273
    .line 274
    move-object v6, p0

    .line 275
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 276
    .line 277
    move-object v7, v1

    .line 278
    check-cast v7, Ljava/util/concurrent/atomic/AtomicReference;

    .line 279
    .line 280
    const/16 v9, 0xa

    .line 281
    .line 282
    invoke-direct/range {v3 .. v9}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 283
    .line 284
    .line 285
    iput-object p1, v3, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 286
    .line 287
    return-object v3

    .line 288
    :pswitch_a
    move-object v8, p2

    .line 289
    new-instance p2, Lcoil3/RealImageLoader$execute$result$1;

    .line 290
    .line 291
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 292
    .line 293
    check-cast p0, Ljava/util/List;

    .line 294
    .line 295
    check-cast v1, Ljava/util/ArrayList;

    .line 296
    .line 297
    invoke-direct {p2, p0, v1, v8}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/util/List;Ljava/util/ArrayList;Lkotlin/coroutines/Continuation;)V

    .line 298
    .line 299
    .line 300
    iput-object p1, p2, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 301
    .line 302
    return-object p2

    .line 303
    :pswitch_b
    move-object v8, p2

    .line 304
    new-instance p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 305
    .line 306
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 307
    .line 308
    const/16 p2, 0x8

    .line 309
    .line 310
    invoke-direct {p0, p2, v1, v8}, Lcoil3/RealImageLoader$execute$result$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 311
    .line 312
    .line 313
    iput-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 314
    .line 315
    return-object p0

    .line 316
    :pswitch_c
    move-object v8, p2

    .line 317
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 318
    .line 319
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 320
    .line 321
    move-object v4, p2

    .line 322
    check-cast v4, Landroidx/compose/runtime/Recomposer;

    .line 323
    .line 324
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 325
    .line 326
    move-object v5, p0

    .line 327
    check-cast v5, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    .line 328
    .line 329
    move-object v6, v1

    .line 330
    check-cast v6, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 331
    .line 332
    move-object v9, v8

    .line 333
    const/4 v8, 0x7

    .line 334
    move-object v7, v9

    .line 335
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 336
    .line 337
    .line 338
    iput-object p1, v3, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 339
    .line 340
    return-object v3

    .line 341
    :pswitch_d
    move-object v8, p2

    .line 342
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 343
    .line 344
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 345
    .line 346
    move-object v4, p2

    .line 347
    check-cast v4, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 348
    .line 349
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 350
    .line 351
    move-object v5, p2

    .line 352
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 353
    .line 354
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 355
    .line 356
    move-object v6, p0

    .line 357
    check-cast v6, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 358
    .line 359
    move-object v7, v1

    .line 360
    check-cast v7, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 361
    .line 362
    const/4 v9, 0x6

    .line 363
    invoke-direct/range {v3 .. v9}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 364
    .line 365
    .line 366
    iput-object p1, v3, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 367
    .line 368
    return-object v3

    .line 369
    :pswitch_e
    move-object v8, p2

    .line 370
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 371
    .line 372
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 373
    .line 374
    move-object v4, p1

    .line 375
    check-cast v4, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 376
    .line 377
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 378
    .line 379
    move-object v5, p1

    .line 380
    check-cast v5, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 381
    .line 382
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 383
    .line 384
    move-object v6, p1

    .line 385
    check-cast v6, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 386
    .line 387
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 388
    .line 389
    move-object v7, p0

    .line 390
    check-cast v7, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 391
    .line 392
    check-cast v1, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 393
    .line 394
    const/4 v10, 0x5

    .line 395
    move-object v9, v8

    .line 396
    move-object v8, v1

    .line 397
    invoke-direct/range {v3 .. v10}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 398
    .line 399
    .line 400
    return-object v3

    .line 401
    :pswitch_f
    move-object v8, p2

    .line 402
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 403
    .line 404
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 405
    .line 406
    move-object v4, p1

    .line 407
    check-cast v4, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 408
    .line 409
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 410
    .line 411
    move-object v5, p1

    .line 412
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 413
    .line 414
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 415
    .line 416
    move-object v6, p1

    .line 417
    check-cast v6, Landroidx/compose/ui/text/input/TextInputService;

    .line 418
    .line 419
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 420
    .line 421
    move-object v7, p0

    .line 422
    check-cast v7, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 423
    .line 424
    check-cast v1, Landroidx/compose/ui/text/input/ImeOptions;

    .line 425
    .line 426
    const/4 v10, 0x4

    .line 427
    move-object v9, v8

    .line 428
    move-object v8, v1

    .line 429
    invoke-direct/range {v3 .. v10}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 430
    .line 431
    .line 432
    return-object v3

    .line 433
    :pswitch_10
    move-object v8, p2

    .line 434
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 435
    .line 436
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 437
    .line 438
    move-object v4, p2

    .line 439
    check-cast v4, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 440
    .line 441
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 442
    .line 443
    move-object v5, p0

    .line 444
    check-cast v5, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 445
    .line 446
    move-object v6, v1

    .line 447
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 448
    .line 449
    move-object v9, v8

    .line 450
    const/4 v8, 0x3

    .line 451
    move-object v7, v9

    .line 452
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 453
    .line 454
    .line 455
    iput-object p1, v3, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 456
    .line 457
    return-object v3

    .line 458
    :pswitch_11
    move-object v8, p2

    .line 459
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 460
    .line 461
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 462
    .line 463
    move-object v4, p2

    .line 464
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 465
    .line 466
    iget-object p2, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 467
    .line 468
    move-object v5, p2

    .line 469
    check-cast v5, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;

    .line 470
    .line 471
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 472
    .line 473
    move-object v6, p0

    .line 474
    check-cast v6, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 475
    .line 476
    move-object v7, v1

    .line 477
    check-cast v7, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 478
    .line 479
    const/4 v9, 0x2

    .line 480
    invoke-direct/range {v3 .. v9}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 481
    .line 482
    .line 483
    iput-object p1, v3, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 484
    .line 485
    return-object v3

    .line 486
    :pswitch_12
    move-object v8, p2

    .line 487
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 488
    .line 489
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 490
    .line 491
    move-object v4, p1

    .line 492
    check-cast v4, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 493
    .line 494
    iget-object v5, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 495
    .line 496
    move-object v6, v1

    .line 497
    check-cast v6, Landroidx/compose/animation/core/Transition;

    .line 498
    .line 499
    move-object v9, v8

    .line 500
    const/4 v8, 0x1

    .line 501
    move-object v7, v9

    .line 502
    invoke-direct/range {v3 .. v8}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 503
    .line 504
    .line 505
    return-object v3

    .line 506
    :pswitch_13
    move-object v8, p2

    .line 507
    new-instance v3, Lcoil3/RealImageLoader$execute$result$1;

    .line 508
    .line 509
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 510
    .line 511
    move-object v4, p1

    .line 512
    check-cast v4, Lcoil3/request/ImageRequest;

    .line 513
    .line 514
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 515
    .line 516
    move-object v5, p1

    .line 517
    check-cast v5, Lcoil3/RealImageLoader;

    .line 518
    .line 519
    iget-object p1, p0, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 520
    .line 521
    move-object v6, p1

    .line 522
    check-cast v6, Lcoil3/size/Size;

    .line 523
    .line 524
    iget-object p0, p0, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 525
    .line 526
    move-object v7, p0

    .line 527
    check-cast v7, Lcoil3/EventListener$Companion$NONE$1;

    .line 528
    .line 529
    check-cast v1, Lcoil3/Image;

    .line 530
    .line 531
    const/4 v10, 0x0

    .line 532
    move-object v9, v8

    .line 533
    move-object v8, v1

    .line 534
    invoke-direct/range {v3 .. v10}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 535
    .line 536
    .line 537
    return-object v3

    .line 538
    nop

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcoil3/RealImageLoader$execute$result$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 129
    .line 130
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_8
    check-cast p1, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 144
    .line 145
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 159
    .line 160
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :pswitch_a
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 174
    .line 175
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 180
    .line 181
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    return-object p0

    .line 186
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 187
    .line 188
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 189
    .line 190
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 195
    .line 196
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 202
    .line 203
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 204
    .line 205
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 210
    .line 211
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    return-object p0

    .line 216
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 217
    .line 218
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 219
    .line 220
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 225
    .line 226
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 232
    .line 233
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 234
    .line 235
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 240
    .line 241
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    return-object p0

    .line 246
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 247
    .line 248
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 249
    .line 250
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 255
    .line 256
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    return-object p0

    .line 261
    :pswitch_10
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 262
    .line 263
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 264
    .line 265
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 266
    .line 267
    .line 268
    move-result-object p0

    .line 269
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 270
    .line 271
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    return-object p0

    .line 276
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 277
    .line 278
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 279
    .line 280
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 281
    .line 282
    .line 283
    move-result-object p0

    .line 284
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 285
    .line 286
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 292
    .line 293
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 294
    .line 295
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 300
    .line 301
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p0

    .line 305
    return-object p0

    .line 306
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 307
    .line 308
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 309
    .line 310
    invoke-virtual {p0, p1, p2}, Lcoil3/RealImageLoader$execute$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    check-cast p0, Lcoil3/RealImageLoader$execute$result$1;

    .line 315
    .line 316
    invoke-virtual {p0, v1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p0

    .line 320
    return-object p0

    .line 321
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$r8$classId:I

    .line 4
    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x6

    .line 14
    const/4 v7, 0x3

    .line 15
    const/4 v8, 0x2

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x1

    .line 18
    const/4 v11, 0x0

    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    .line 24
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v5, Lorg/wikipedia/talk/TalkReplyViewModel;

    .line 39
    .line 40
    iget-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v6, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 43
    .line 44
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 45
    .line 46
    iget v8, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 47
    .line 48
    if-eqz v8, :cond_1

    .line 49
    .line 50
    if-ne v8, v10, :cond_0

    .line 51
    .line 52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iput-object v4, v6, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    iput-object v3, v6, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iput-object v2, v6, Lorg/wikipedia/talk/db/TalkTemplate;->message:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v8, v5, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplatesRepository:Lorg/wikipedia/media/AvPlayer;

    .line 82
    .line 83
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 84
    .line 85
    iget-object v8, v8, Lorg/wikipedia/media/AvPlayer;->player:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v8, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;

    .line 88
    .line 89
    iget-object v12, v8, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 90
    .line 91
    new-instance v13, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$$ExternalSyntheticLambda1;

    .line 92
    .line 93
    invoke-direct {v13, v8, v6, v10}, Lorg/wikipedia/talk/db/TalkTemplateDao_Impl$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/talk/db/TalkTemplateDao_Impl;Lorg/wikipedia/talk/db/TalkTemplate;I)V

    .line 94
    .line 95
    .line 96
    invoke-static {v12, v9, v10, v13, v1}, Lkotlin/ExceptionsKt;->performSuspending(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    if-ne v1, v7, :cond_2

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    move-object v1, v0

    .line 104
    :goto_0
    if-ne v1, v7, :cond_3

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move-object v1, v0

    .line 108
    :goto_1
    if-ne v1, v7, :cond_4

    .line 109
    .line 110
    move-object v11, v7

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    :goto_2
    iget-object v1, v5, Lorg/wikipedia/talk/TalkReplyViewModel;->talkTemplatesList:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_6

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    move-object v8, v7

    .line 129
    check-cast v8, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 130
    .line 131
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v8

    .line 135
    if-eqz v8, :cond_5

    .line 136
    .line 137
    move-object v11, v7

    .line 138
    :cond_6
    check-cast v11, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 139
    .line 140
    if-eqz v11, :cond_7

    .line 141
    .line 142
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iput-object v4, v11, Lorg/wikipedia/talk/db/TalkTemplate;->title:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    iput-object v3, v11, Lorg/wikipedia/talk/db/TalkTemplate;->subject:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    iput-object v2, v11, Lorg/wikipedia/talk/db/TalkTemplate;->message:Ljava/lang/String;

    .line 156
    .line 157
    :cond_7
    iget-object v1, v5, Lorg/wikipedia/talk/TalkReplyViewModel;->saveTemplateData:Lorg/wikipedia/util/SingleLiveData;

    .line 158
    .line 159
    new-instance v2, Lorg/wikipedia/util/Resource$Success;

    .line 160
    .line 161
    invoke-direct {v2, v6}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    move-object v11, v0

    .line 168
    :goto_3
    return-object v11

    .line 169
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend$org$wikipedia$search$StandardSearchRepository$search$2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    return-object v0

    .line 174
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$showDeletePagesUndoSnackbar$1$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    return-object v0

    .line 179
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$renameReadingList$1$1$onSuccess$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    return-object v0

    .line 184
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend$org$wikipedia$readinglist$ReadingListBehaviorsUtil$deletePages$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    return-object v0

    .line 189
    :pswitch_4
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 192
    .line 193
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 196
    .line 197
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 198
    .line 199
    iget v4, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 200
    .line 201
    if-eqz v4, :cond_b

    .line 202
    .line 203
    if-eq v4, v10, :cond_a

    .line 204
    .line 205
    if-eq v4, v8, :cond_9

    .line 206
    .line 207
    if-ne v4, v7, :cond_8

    .line 208
    .line 209
    iget-object v1, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 212
    .line 213
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    move-object v4, v1

    .line 217
    move-object/from16 v1, p1

    .line 218
    .line 219
    goto/16 :goto_a

    .line 220
    .line 221
    :cond_8
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 222
    .line 223
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto/16 :goto_c

    .line 227
    .line 228
    :cond_9
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 231
    .line 232
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v4, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 235
    .line 236
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    move-object v5, v2

    .line 240
    move-object/from16 v2, p1

    .line 241
    .line 242
    goto/16 :goto_7

    .line 243
    .line 244
    :cond_a
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v2, Lkotlinx/coroutines/DeferredCoroutine;

    .line 247
    .line 248
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    move-object/from16 v4, p1

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    new-instance v4, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;

    .line 258
    .line 259
    invoke-direct {v4, v0, v11, v10}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 260
    .line 261
    .line 262
    invoke-static {v2, v11, v4, v7}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    new-instance v5, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;

    .line 267
    .line 268
    invoke-direct {v5, v0, v11, v8}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 269
    .line 270
    .line 271
    invoke-static {v2, v11, v5, v7}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 276
    .line 277
    iput-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 278
    .line 279
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 280
    .line 281
    invoke-virtual {v4, v1}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    if-ne v4, v3, :cond_c

    .line 286
    .line 287
    goto/16 :goto_9

    .line 288
    .line 289
    :cond_c
    :goto_4
    check-cast v4, Lretrofit2/Response;

    .line 290
    .line 291
    iget-object v5, v4, Lretrofit2/Response;->body:Ljava/lang/Object;

    .line 292
    .line 293
    iget-object v4, v4, Lretrofit2/Response;->rawResponse:Lokhttp3/Response;

    .line 294
    .line 295
    iget-object v4, v4, Lokhttp3/Response;->request:Lokhttp3/Request;

    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 298
    .line 299
    .line 300
    check-cast v5, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 301
    .line 302
    iget-object v6, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 303
    .line 304
    iget-object v6, v6, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 305
    .line 306
    new-instance v12, Lorg/wikipedia/page/PageTitle;

    .line 307
    .line 308
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/page/PageSummary;->getApiTitle()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    iget-object v14, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 313
    .line 314
    iget-object v14, v14, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 315
    .line 316
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/page/PageSummary;->getThumbnailUrl()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v15

    .line 320
    iget-object v9, v5, Lorg/wikipedia/dataclient/page/PageSummary;->description:Ljava/lang/String;

    .line 321
    .line 322
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/page/PageSummary;->getDisplayTitle()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v17

    .line 326
    move-object/from16 v16, v9

    .line 327
    .line 328
    invoke-direct/range {v12 .. v17}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iput-object v12, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 332
    .line 333
    iget-object v9, v4, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 334
    .line 335
    iget-object v9, v9, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    .line 336
    .line 337
    if-eqz v9, :cond_e

    .line 338
    .line 339
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    if-nez v9, :cond_d

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :cond_d
    iget-object v6, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 347
    .line 348
    iget-object v4, v4, Lokhttp3/Request;->url:Lokhttp3/HttpUrl;

    .line 349
    .line 350
    iget-object v4, v4, Lokhttp3/HttpUrl;->fragment:Ljava/lang/String;

    .line 351
    .line 352
    iput-object v4, v6, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 353
    .line 354
    goto :goto_6

    .line 355
    :cond_e
    :goto_5
    if-eqz v6, :cond_10

    .line 356
    .line 357
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-nez v4, :cond_f

    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_f
    iget-object v4, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 365
    .line 366
    iput-object v6, v4, Lorg/wikipedia/page/PageTitle;->fragment:Ljava/lang/String;

    .line 367
    .line 368
    :cond_10
    :goto_6
    iget-boolean v4, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 369
    .line 370
    if-eqz v4, :cond_15

    .line 371
    .line 372
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 373
    .line 374
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 375
    .line 376
    iput-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 377
    .line 378
    iput-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 379
    .line 380
    iput v8, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 381
    .line 382
    invoke-interface {v2, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    if-ne v2, v3, :cond_11

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_11
    move-object v4, v5

    .line 390
    move-object v5, v0

    .line 391
    :goto_7
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 392
    .line 393
    if-eqz v2, :cond_12

    .line 394
    .line 395
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 396
    .line 397
    if-eqz v2, :cond_12

    .line 398
    .line 399
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    if-eqz v2, :cond_12

    .line 404
    .line 405
    iget-boolean v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->watched:Z

    .line 406
    .line 407
    goto :goto_8

    .line 408
    :cond_12
    const/4 v2, 0x0

    .line 409
    :goto_8
    iput-boolean v2, v5, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->isWatched:Z

    .line 410
    .line 411
    sget-object v2, Lorg/wikipedia/database/AppDatabase;->MIGRATION_19_20:Lorg/wikipedia/database/AppDatabase$Companion$MIGRATION_19_20$1;

    .line 412
    .line 413
    invoke-static {}, Lokhttp3/Cookie$Companion;->getInstance()Lorg/wikipedia/database/AppDatabase;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v2}, Lorg/wikipedia/database/AppDatabase;->readingListPageDao()Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    iget-object v5, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 422
    .line 423
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 424
    .line 425
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 426
    .line 427
    iput-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 428
    .line 429
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 430
    .line 431
    iput v7, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 432
    .line 433
    invoke-virtual {v2, v5, v1}, Lorg/wikipedia/readinglist/db/ReadingListPageDao_Impl;->findPageInAnyList(Lorg/wikipedia/page/PageTitle;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    if-ne v1, v3, :cond_13

    .line 438
    .line 439
    :goto_9
    move-object v11, v3

    .line 440
    goto :goto_c

    .line 441
    :cond_13
    :goto_a
    check-cast v1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 442
    .line 443
    if-eqz v1, :cond_14

    .line 444
    .line 445
    move v9, v10

    .line 446
    goto :goto_b

    .line 447
    :cond_14
    const/4 v9, 0x0

    .line 448
    :goto_b
    iput-boolean v9, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->isInReadingList:Z

    .line 449
    .line 450
    move-object v5, v4

    .line 451
    :cond_15
    iget-object v1, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->location:Landroid/location/Location;

    .line 452
    .line 453
    if-nez v1, :cond_16

    .line 454
    .line 455
    iget-object v1, v5, Lorg/wikipedia/dataclient/page/PageSummary;->coordinates:Landroid/location/Location;

    .line 456
    .line 457
    iput-object v1, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->location:Landroid/location/Location;

    .line 458
    .line 459
    :cond_16
    iget-object v0, v0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 460
    .line 461
    new-instance v1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Content;

    .line 462
    .line 463
    invoke-direct {v1, v5}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Content;-><init>(Lorg/wikipedia/dataclient/page/PageSummary;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0, v11, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 470
    .line 471
    .line 472
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 473
    .line 474
    :goto_c
    return-object v11

    .line 475
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcoil3/RealImageLoader$execute$result$1;->invokeSuspend$org$wikipedia$language$LangLinksViewModel$fetchAllData$2(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    return-object v0

    .line 480
    :pswitch_6
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;

    .line 483
    .line 484
    iget-object v2, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->_loadPageSummaryState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 485
    .line 486
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 489
    .line 490
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 491
    .line 492
    iget v5, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 493
    .line 494
    if-eqz v5, :cond_19

    .line 495
    .line 496
    if-eq v5, v10, :cond_18

    .line 497
    .line 498
    if-ne v5, v8, :cond_17

    .line 499
    .line 500
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 503
    .line 504
    iget-object v1, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 507
    .line 508
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    move-object v3, v1

    .line 512
    move-object/from16 v1, p1

    .line 513
    .line 514
    goto/16 :goto_12

    .line 515
    .line 516
    :cond_17
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 517
    .line 518
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    goto/16 :goto_13

    .line 522
    .line 523
    :cond_18
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast v3, Lkotlinx/coroutines/DeferredCoroutine;

    .line 526
    .line 527
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    move-object v6, v3

    .line 531
    move-object/from16 v3, p1

    .line 532
    .line 533
    goto :goto_d

    .line 534
    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    new-instance v5, Lorg/wikipedia/util/Resource$Loading;

    .line 538
    .line 539
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v2, v11, v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    const/4 v5, 0x0

    .line 549
    iput-boolean v5, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->editingAllowed:Z

    .line 550
    .line 551
    new-instance v6, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;

    .line 552
    .line 553
    invoke-direct {v6, v0, v11, v10}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 554
    .line 555
    .line 556
    invoke-static {v3, v11, v6, v7}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 557
    .line 558
    .line 559
    move-result-object v6

    .line 560
    new-instance v9, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;

    .line 561
    .line 562
    invoke-direct {v9, v0, v11, v5}, Lorg/wikipedia/descriptions/DescriptionEditViewModel$loadPageSummary$2$infoResponse$1;-><init>(Lorg/wikipedia/descriptions/DescriptionEditViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 563
    .line 564
    .line 565
    invoke-static {v3, v11, v9, v7}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 570
    .line 571
    iput-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 572
    .line 573
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 574
    .line 575
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    if-ne v3, v4, :cond_1a

    .line 580
    .line 581
    goto :goto_11

    .line 582
    :cond_1a
    :goto_d
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 583
    .line 584
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 585
    .line 586
    if-eqz v3, :cond_1b

    .line 587
    .line 588
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    if-eqz v3, :cond_1b

    .line 593
    .line 594
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->getErrorForAction()Ljava/util/List;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    goto :goto_e

    .line 599
    :cond_1b
    move-object v3, v11

    .line 600
    :goto_e
    if-eqz v3, :cond_1d

    .line 601
    .line 602
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    if-eqz v5, :cond_1c

    .line 607
    .line 608
    goto :goto_f

    .line 609
    :cond_1c
    const/4 v5, 0x0

    .line 610
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    move-result-object v3

    .line 614
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 615
    .line 616
    goto :goto_10

    .line 617
    :cond_1d
    :goto_f
    iput-boolean v10, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->editingAllowed:Z

    .line 618
    .line 619
    move-object v3, v11

    .line 620
    :goto_10
    iget-object v0, v0, Lorg/wikipedia/descriptions/DescriptionEditViewModel;->sourceSummary:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 621
    .line 622
    if-eqz v0, :cond_1f

    .line 623
    .line 624
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 625
    .line 626
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 627
    .line 628
    iput-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 629
    .line 630
    iput-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 631
    .line 632
    iput v8, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 633
    .line 634
    invoke-interface {v6, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    if-ne v1, v4, :cond_1e

    .line 639
    .line 640
    :goto_11
    move-object v11, v4

    .line 641
    goto :goto_13

    .line 642
    :cond_1e
    :goto_12
    check-cast v1, Lorg/wikipedia/dataclient/page/PageSummary;

    .line 643
    .line 644
    iget-object v1, v1, Lorg/wikipedia/dataclient/page/PageSummary;->extractHtml:Ljava/lang/String;

    .line 645
    .line 646
    iput-object v1, v0, Lorg/wikipedia/suggestededits/PageSummaryForEdit;->extractHtml:Ljava/lang/String;

    .line 647
    .line 648
    :cond_1f
    new-instance v0, Lorg/wikipedia/util/Resource$Success;

    .line 649
    .line 650
    invoke-direct {v0, v3}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v2, v11, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 660
    .line 661
    :goto_13
    return-object v11

    .line 662
    :pswitch_7
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 663
    .line 664
    check-cast v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 665
    .line 666
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 667
    .line 668
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 669
    .line 670
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 671
    .line 672
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 673
    .line 674
    check-cast v4, Landroidx/navigation/compose/ComposeNavigator;

    .line 675
    .line 676
    iget-object v7, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 677
    .line 678
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 679
    .line 680
    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 681
    .line 682
    iget v12, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 683
    .line 684
    if-eqz v12, :cond_23

    .line 685
    .line 686
    if-eq v12, v10, :cond_21

    .line 687
    .line 688
    if-ne v12, v8, :cond_20

    .line 689
    .line 690
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 691
    .line 692
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 693
    .line 694
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    .line 696
    .line 697
    :goto_14
    const/4 v5, 0x0

    .line 698
    goto/16 :goto_17

    .line 699
    .line 700
    :catchall_0
    move-exception v0

    .line 701
    goto/16 :goto_19

    .line 702
    .line 703
    :cond_20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 704
    .line 705
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_18

    .line 709
    .line 710
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 711
    .line 712
    .line 713
    :cond_22
    :goto_15
    move-object v11, v2

    .line 714
    goto :goto_18

    .line 715
    :cond_23
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    iget-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 719
    .line 720
    check-cast v11, Lkotlinx/coroutines/flow/Flow;

    .line 721
    .line 722
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v12

    .line 726
    check-cast v12, Ljava/util/List;

    .line 727
    .line 728
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 729
    .line 730
    .line 731
    move-result v12

    .line 732
    if-ge v12, v8, :cond_24

    .line 733
    .line 734
    sget-object v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1$1;->INSTANCE:Landroidx/navigation/compose/NavHostKt$NavHost$25$1$1;

    .line 735
    .line 736
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 737
    .line 738
    invoke-interface {v11, v0, v1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    if-ne v0, v9, :cond_22

    .line 743
    .line 744
    goto :goto_16

    .line 745
    :cond_24
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 746
    .line 747
    .line 748
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v5

    .line 752
    check-cast v5, Ljava/util/List;

    .line 753
    .line 754
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 759
    .line 760
    invoke-virtual {v4, v5}, Landroidx/navigation/compose/ComposeNavigator;->prepareForTransition(Landroidx/navigation/NavBackStackEntry;)V

    .line 761
    .line 762
    .line 763
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v10

    .line 767
    check-cast v10, Ljava/util/List;

    .line 768
    .line 769
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v7

    .line 773
    check-cast v7, Ljava/util/List;

    .line 774
    .line 775
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 776
    .line 777
    .line 778
    move-result v7

    .line 779
    sub-int/2addr v7, v8

    .line 780
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 781
    .line 782
    .line 783
    move-result-object v7

    .line 784
    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 785
    .line 786
    invoke-virtual {v4, v7}, Landroidx/navigation/compose/ComposeNavigator;->prepareForTransition(Landroidx/navigation/NavBackStackEntry;)V

    .line 787
    .line 788
    .line 789
    :try_start_1
    new-instance v7, Landroidx/compose/material3/ThumbNode$onAttach$1$1;

    .line 790
    .line 791
    invoke-direct {v7, v6, v3, v0}, Landroidx/compose/material3/ThumbNode$onAttach$1$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 792
    .line 793
    .line 794
    iput-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 795
    .line 796
    iput v8, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 797
    .line 798
    invoke-interface {v11, v7, v1}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    if-ne v0, v9, :cond_25

    .line 803
    .line 804
    :goto_16
    move-object v11, v9

    .line 805
    goto :goto_18

    .line 806
    :cond_25
    move-object v0, v5

    .line 807
    goto :goto_14

    .line 808
    :goto_17
    invoke-virtual {v4, v0, v5}, Landroidx/navigation/compose/ComposeNavigator;->popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    .line 810
    .line 811
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 812
    .line 813
    invoke-interface {v3, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 814
    .line 815
    .line 816
    goto :goto_15

    .line 817
    :goto_18
    return-object v11

    .line 818
    :goto_19
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 819
    .line 820
    invoke-interface {v3, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 821
    .line 822
    .line 823
    throw v0

    .line 824
    :pswitch_8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 825
    .line 826
    iget v2, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 827
    .line 828
    if-eqz v2, :cond_27

    .line 829
    .line 830
    if-ne v2, v10, :cond_26

    .line 831
    .line 832
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 833
    .line 834
    .line 835
    goto :goto_1a

    .line 836
    :cond_26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 837
    .line 838
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    goto :goto_1b

    .line 842
    :cond_27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 843
    .line 844
    .line 845
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 846
    .line 847
    move-object v6, v2

    .line 848
    check-cast v6, Landroidx/compose/runtime/ProduceStateScopeImpl;

    .line 849
    .line 850
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 851
    .line 852
    check-cast v2, Landroidx/lifecycle/LifecycleRegistry;

    .line 853
    .line 854
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 855
    .line 856
    move-object v9, v3

    .line 857
    check-cast v9, Landroidx/lifecycle/Lifecycle$State;

    .line 858
    .line 859
    new-instance v3, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 860
    .line 861
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 862
    .line 863
    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    .line 864
    .line 865
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 866
    .line 867
    check-cast v5, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 868
    .line 869
    const/4 v7, 0x0

    .line 870
    const/16 v8, 0x15

    .line 871
    .line 872
    invoke-direct/range {v3 .. v8}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 873
    .line 874
    .line 875
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 876
    .line 877
    invoke-static {v2, v9, v3, v1}, Landroidx/lifecycle/ViewModelKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleRegistry;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    if-ne v1, v0, :cond_28

    .line 882
    .line 883
    move-object v11, v0

    .line 884
    goto :goto_1b

    .line 885
    :cond_28
    :goto_1a
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 886
    .line 887
    :goto_1b
    return-object v11

    .line 888
    :pswitch_9
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 889
    .line 890
    iget v2, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 891
    .line 892
    if-eqz v2, :cond_2a

    .line 893
    .line 894
    if-ne v2, v10, :cond_29

    .line 895
    .line 896
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 897
    .line 898
    .line 899
    move-object/from16 v0, p1

    .line 900
    .line 901
    goto :goto_1c

    .line 902
    :cond_29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 903
    .line 904
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    move-object v0, v11

    .line 908
    goto :goto_1c

    .line 909
    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 910
    .line 911
    .line 912
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 913
    .line 914
    move-object v4, v2

    .line 915
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 916
    .line 917
    new-instance v3, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;

    .line 918
    .line 919
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 920
    .line 921
    move-object v5, v2

    .line 922
    check-cast v5, Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;

    .line 923
    .line 924
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 925
    .line 926
    move-object v6, v2

    .line 927
    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    .line 928
    .line 929
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 930
    .line 931
    move-object v7, v2

    .line 932
    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 933
    .line 934
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 935
    .line 936
    move-object v8, v2

    .line 937
    check-cast v8, Ljava/util/concurrent/atomic/AtomicReference;

    .line 938
    .line 939
    invoke-direct/range {v3 .. v8}, Landroidx/glance/session/TimerScopeKt$withTimer$2$1$blockScope$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/glance/session/TimeSource$Companion$$ExternalSyntheticLambda0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 940
    .line 941
    .line 942
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 943
    .line 944
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 945
    .line 946
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 947
    .line 948
    invoke-interface {v2, v3, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    if-ne v1, v0, :cond_2b

    .line 953
    .line 954
    goto :goto_1c

    .line 955
    :cond_2b
    move-object v0, v1

    .line 956
    :goto_1c
    return-object v0

    .line 957
    :pswitch_a
    iget v0, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 958
    .line 959
    if-eqz v0, :cond_2f

    .line 960
    .line 961
    if-eq v0, v10, :cond_2d

    .line 962
    .line 963
    if-ne v0, v8, :cond_2c

    .line 964
    .line 965
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast v0, Ljava/util/Iterator;

    .line 968
    .line 969
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v2, Ljava/util/List;

    .line 972
    .line 973
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    move-object v3, v2

    .line 977
    move-object v2, v0

    .line 978
    move-object/from16 v0, p1

    .line 979
    .line 980
    goto :goto_1d

    .line 981
    :cond_2c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 982
    .line 983
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    goto :goto_1e

    .line 987
    :cond_2d
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 988
    .line 989
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 990
    .line 991
    check-cast v2, Ljava/util/Iterator;

    .line 992
    .line 993
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v3, Ljava/util/List;

    .line 996
    .line 997
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 998
    .line 999
    .line 1000
    move-object/from16 v4, p1

    .line 1001
    .line 1002
    check-cast v4, Ljava/lang/Boolean;

    .line 1003
    .line 1004
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1005
    .line 1006
    .line 1007
    move-result v4

    .line 1008
    if-nez v4, :cond_2e

    .line 1009
    .line 1010
    goto :goto_1d

    .line 1011
    :cond_2e
    new-instance v0, Landroidx/datastore/core/DataMigrationInitializer$Companion$runMigrations$2$1$1;

    .line 1012
    .line 1013
    invoke-direct {v0, v10, v11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 1014
    .line 1015
    .line 1016
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1017
    .line 1018
    .line 1019
    iput-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1020
    .line 1021
    iput-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1022
    .line 1023
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1024
    .line 1025
    iput v8, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1026
    .line 1027
    throw v11

    .line 1028
    :cond_2f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1029
    .line 1030
    .line 1031
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1032
    .line 1033
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1034
    .line 1035
    check-cast v2, Ljava/util/List;

    .line 1036
    .line 1037
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 1038
    .line 1039
    check-cast v3, Ljava/util/ArrayList;

    .line 1040
    .line 1041
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v2

    .line 1045
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1046
    .line 1047
    .line 1048
    move-result v4

    .line 1049
    if-nez v4, :cond_30

    .line 1050
    .line 1051
    move-object v11, v0

    .line 1052
    goto :goto_1e

    .line 1053
    :cond_30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v4

    .line 1057
    if-eqz v4, :cond_31

    .line 1058
    .line 1059
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m$1()V

    .line 1060
    .line 1061
    .line 1062
    :goto_1e
    return-object v11

    .line 1063
    :cond_31
    iput-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1064
    .line 1065
    iput-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1066
    .line 1067
    iput-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1068
    .line 1069
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1070
    .line 1071
    throw v11

    .line 1072
    :pswitch_b
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 1073
    .line 1074
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 1075
    .line 1076
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1077
    .line 1078
    iget v3, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1079
    .line 1080
    if-eqz v3, :cond_35

    .line 1081
    .line 1082
    if-eq v3, v10, :cond_32

    .line 1083
    .line 1084
    if-eq v3, v8, :cond_34

    .line 1085
    .line 1086
    if-ne v3, v7, :cond_33

    .line 1087
    .line 1088
    :cond_32
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1089
    .line 1090
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1091
    .line 1092
    check-cast v4, Lkotlinx/coroutines/channels/Channel;

    .line 1093
    .line 1094
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1095
    .line 1096
    check-cast v5, Landroidx/appcompat/widget/PopupMenu$1;

    .line 1097
    .line 1098
    iget-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1099
    .line 1100
    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    .line 1101
    .line 1102
    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1103
    .line 1104
    .line 1105
    goto :goto_1f

    .line 1106
    :catchall_1
    move-exception v0

    .line 1107
    goto/16 :goto_23

    .line 1108
    .line 1109
    :cond_33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1110
    .line 1111
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1112
    .line 1113
    .line 1114
    goto/16 :goto_22

    .line 1115
    .line 1116
    :cond_34
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1117
    .line 1118
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1119
    .line 1120
    check-cast v4, Lkotlinx/coroutines/channels/Channel;

    .line 1121
    .line 1122
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v5, Landroidx/appcompat/widget/PopupMenu$1;

    .line 1125
    .line 1126
    iget-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1127
    .line 1128
    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    .line 1129
    .line 1130
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1131
    .line 1132
    .line 1133
    goto :goto_20

    .line 1134
    :cond_35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1135
    .line 1136
    .line 1137
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1138
    .line 1139
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 1140
    .line 1141
    new-instance v5, Landroidx/appcompat/widget/PopupMenu$1;

    .line 1142
    .line 1143
    const/16 v4, 0x19

    .line 1144
    .line 1145
    invoke-direct {v5, v4}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(I)V

    .line 1146
    .line 1147
    .line 1148
    new-instance v4, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    .line 1149
    .line 1150
    invoke-direct {v4}, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;-><init>()V

    .line 1151
    .line 1152
    .line 1153
    iput-object v4, v5, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 1154
    .line 1155
    invoke-static {v10, v6, v11}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v4

    .line 1159
    :try_start_4
    invoke-virtual {v5, v4, v0}, Landroidx/appcompat/widget/PopupMenu$1;->runAndWatch$runtime(Lkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v6

    .line 1163
    iput-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1164
    .line 1165
    iput-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1166
    .line 1167
    iput-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1168
    .line 1169
    iput-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1170
    .line 1171
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1172
    .line 1173
    invoke-interface {v3, v6, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v9

    .line 1177
    if-ne v9, v2, :cond_36

    .line 1178
    .line 1179
    goto :goto_21

    .line 1180
    :cond_36
    move-object/from16 v24, v6

    .line 1181
    .line 1182
    move-object v6, v3

    .line 1183
    move-object/from16 v3, v24

    .line 1184
    .line 1185
    :cond_37
    :goto_1f
    iput-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1186
    .line 1187
    iput-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1188
    .line 1189
    iput-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1190
    .line 1191
    iput-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1192
    .line 1193
    iput v8, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1194
    .line 1195
    invoke-interface {v4, v1}, Lkotlinx/coroutines/channels/Channel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-result-object v9

    .line 1199
    if-ne v9, v2, :cond_38

    .line 1200
    .line 1201
    goto :goto_21

    .line 1202
    :cond_38
    :goto_20
    invoke-virtual {v5, v4, v0}, Landroidx/appcompat/widget/PopupMenu$1;->runAndWatch$runtime(Lkotlinx/coroutines/channels/Channel;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v9

    .line 1206
    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v10

    .line 1210
    if-nez v10, :cond_37

    .line 1211
    .line 1212
    iput-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1213
    .line 1214
    iput-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1215
    .line 1216
    iput-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1217
    .line 1218
    iput-object v9, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1219
    .line 1220
    iput v7, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1221
    .line 1222
    invoke-interface {v6, v9, v1}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1226
    if-ne v3, v2, :cond_39

    .line 1227
    .line 1228
    :goto_21
    move-object v11, v2

    .line 1229
    :goto_22
    return-object v11

    .line 1230
    :cond_39
    move-object v3, v9

    .line 1231
    goto :goto_1f

    .line 1232
    :goto_23
    iget-object v1, v5, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 1233
    .line 1234
    check-cast v1, Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 1235
    .line 1236
    if-eqz v1, :cond_3a

    .line 1237
    .line 1238
    invoke-virtual {v1, v4}, Lorg/wikipedia/settings/BasePreferenceLoader;->reportSnapshotFlowCancellation$runtime(Lkotlinx/coroutines/channels/Channel;)V

    .line 1239
    .line 1240
    .line 1241
    :cond_3a
    iget-object v1, v5, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 1242
    .line 1243
    check-cast v1, Lorg/wikipedia/settings/BasePreferenceLoader;

    .line 1244
    .line 1245
    if-eqz v1, :cond_3b

    .line 1246
    .line 1247
    goto :goto_24

    .line 1248
    :cond_3b
    const-string v2, "Called dispose on a manager that has been disposed of"

    .line 1249
    .line 1250
    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    :goto_24
    invoke-virtual {v1}, Lorg/wikipedia/settings/BasePreferenceLoader;->dispose$runtime()V

    .line 1254
    .line 1255
    .line 1256
    iput-object v11, v5, Landroidx/appcompat/widget/PopupMenu$1;->this$0:Ljava/lang/Object;

    .line 1257
    .line 1258
    throw v0

    .line 1259
    :pswitch_c
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1260
    .line 1261
    iget v2, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1262
    .line 1263
    if-eqz v2, :cond_3d

    .line 1264
    .line 1265
    if-ne v2, v10, :cond_3c

    .line 1266
    .line 1267
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1268
    .line 1269
    move-object v2, v0

    .line 1270
    check-cast v2, Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

    .line 1271
    .line 1272
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1273
    .line 1274
    move-object v3, v0

    .line 1275
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 1276
    .line 1277
    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1278
    .line 1279
    .line 1280
    goto/16 :goto_29

    .line 1281
    .line 1282
    :catchall_2
    move-exception v0

    .line 1283
    goto/16 :goto_2d

    .line 1284
    .line 1285
    :cond_3c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1286
    .line 1287
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    goto/16 :goto_2b

    .line 1291
    .line 1292
    :cond_3d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1293
    .line 1294
    .line 1295
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1296
    .line 1297
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 1298
    .line 1299
    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v2

    .line 1303
    invoke-static {v2}, Lkotlinx/coroutines/AwaitKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v3

    .line 1307
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1308
    .line 1309
    check-cast v2, Landroidx/compose/runtime/Recomposer;

    .line 1310
    .line 1311
    sget-object v4, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1312
    .line 1313
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Recomposer;->registerRunnerJob(Lkotlinx/coroutines/Job;)V

    .line 1314
    .line 1315
    .line 1316
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1317
    .line 1318
    check-cast v2, Landroidx/compose/runtime/Recomposer;

    .line 1319
    .line 1320
    new-instance v4, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 1321
    .line 1322
    const/16 v5, 0x14

    .line 1323
    .line 1324
    invoke-direct {v4, v5, v2}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 1325
    .line 1326
    .line 1327
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->registerApplyObserver(Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;)Lorg/wikipedia/yearinreview/YearInReviewGeoSlideKt$$ExternalSyntheticLambda5;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v2

    .line 1331
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1332
    .line 1333
    check-cast v4, Landroidx/compose/runtime/Recomposer;

    .line 1334
    .line 1335
    iget-object v4, v4, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 1336
    .line 1337
    :cond_3e
    sget-object v5, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1338
    .line 1339
    invoke-virtual {v5}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v6

    .line 1343
    check-cast v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 1344
    .line 1345
    sget-object v7, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;->INSTANCE:Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/EndOfChain;

    .line 1346
    .line 1347
    iget-object v8, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->hashMap:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 1348
    .line 1349
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1350
    .line 1351
    .line 1352
    move-result v9

    .line 1353
    if-eqz v9, :cond_3f

    .line 1354
    .line 1355
    move-object v8, v6

    .line 1356
    goto :goto_25

    .line 1357
    :cond_3f
    invoke-virtual {v6}, Lkotlin/collections/AbstractCollection;->isEmpty()Z

    .line 1358
    .line 1359
    .line 1360
    move-result v9

    .line 1361
    if-eqz v9, :cond_40

    .line 1362
    .line 1363
    new-instance v9, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 1364
    .line 1365
    invoke-direct {v9, v7, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v8, v4, v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v7

    .line 1372
    new-instance v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 1373
    .line 1374
    invoke-direct {v8, v4, v4, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    .line 1375
    .line 1376
    .line 1377
    goto :goto_25

    .line 1378
    :cond_40
    iget-object v9, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->lastElement:Ljava/lang/Object;

    .line 1379
    .line 1380
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    move-result-object v12

    .line 1384
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1385
    .line 1386
    .line 1387
    check-cast v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 1388
    .line 1389
    new-instance v13, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 1390
    .line 1391
    iget-object v12, v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;->previous:Ljava/lang/Object;

    .line 1392
    .line 1393
    invoke-direct {v13, v12, v4}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v8, v9, v13}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v8

    .line 1400
    new-instance v12, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;

    .line 1401
    .line 1402
    invoke-direct {v12, v9, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1403
    .line 1404
    .line 1405
    invoke-virtual {v8, v4, v12}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;->put(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v7

    .line 1409
    new-instance v8, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;

    .line 1410
    .line 1411
    iget-object v9, v6, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;->firstElement:Ljava/lang/Object;

    .line 1412
    .line 1413
    invoke-direct {v8, v9, v4, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;)V

    .line 1414
    .line 1415
    .line 1416
    :goto_25
    if-eq v6, v8, :cond_41

    .line 1417
    .line 1418
    invoke-virtual {v5, v6, v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1419
    .line 1420
    .line 1421
    move-result v5

    .line 1422
    if-eqz v5, :cond_3e

    .line 1423
    .line 1424
    :cond_41
    :try_start_6
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1425
    .line 1426
    check-cast v4, Landroidx/compose/runtime/Recomposer;

    .line 1427
    .line 1428
    invoke-virtual {v4}, Landroidx/compose/runtime/Recomposer;->knownCompositions()Ljava/util/List;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v4

    .line 1432
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 1433
    .line 1434
    .line 1435
    move-result v5

    .line 1436
    const/4 v6, 0x0

    .line 1437
    :goto_26
    if-ge v6, v5, :cond_45

    .line 1438
    .line 1439
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v7

    .line 1443
    check-cast v7, Landroidx/compose/runtime/CompositionImpl;

    .line 1444
    .line 1445
    iget-object v7, v7, Landroidx/compose/runtime/CompositionImpl;->slotStorage:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 1446
    .line 1447
    iget-object v7, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->slots:[Ljava/lang/Object;

    .line 1448
    .line 1449
    array-length v8, v7

    .line 1450
    const/4 v9, 0x0

    .line 1451
    :goto_27
    if-ge v9, v8, :cond_44

    .line 1452
    .line 1453
    aget-object v12, v7, v9

    .line 1454
    .line 1455
    instance-of v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1456
    .line 1457
    if-eqz v13, :cond_42

    .line 1458
    .line 1459
    check-cast v12, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1460
    .line 1461
    goto :goto_28

    .line 1462
    :cond_42
    move-object v12, v11

    .line 1463
    :goto_28
    if-eqz v12, :cond_43

    .line 1464
    .line 1465
    iget-object v13, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/CompositionImpl;

    .line 1466
    .line 1467
    if-eqz v13, :cond_43

    .line 1468
    .line 1469
    invoke-virtual {v13, v12, v11}, Landroidx/compose/runtime/CompositionImpl;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 1470
    .line 1471
    .line 1472
    :cond_43
    add-int/lit8 v9, v9, 0x1

    .line 1473
    .line 1474
    goto :goto_27

    .line 1475
    :cond_44
    add-int/lit8 v6, v6, 0x1

    .line 1476
    .line 1477
    goto :goto_26

    .line 1478
    :cond_45
    new-instance v4, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 1479
    .line 1480
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1481
    .line 1482
    check-cast v5, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    .line 1483
    .line 1484
    iget-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 1485
    .line 1486
    check-cast v6, Landroidx/compose/runtime/MonotonicFrameClock;

    .line 1487
    .line 1488
    const/16 v7, 0x10

    .line 1489
    .line 1490
    invoke-direct {v4, v5, v6, v11, v7}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1491
    .line 1492
    .line 1493
    iput-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1494
    .line 1495
    iput-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1496
    .line 1497
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1498
    .line 1499
    invoke-static {v4, v1}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1503
    if-ne v4, v0, :cond_46

    .line 1504
    .line 1505
    move-object v11, v0

    .line 1506
    goto :goto_2b

    .line 1507
    :cond_46
    :goto_29
    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 1508
    .line 1509
    .line 1510
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1511
    .line 1512
    check-cast v0, Landroidx/compose/runtime/Recomposer;

    .line 1513
    .line 1514
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 1515
    .line 1516
    monitor-enter v2

    .line 1517
    :try_start_7
    iget-object v4, v0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    .line 1518
    .line 1519
    if-ne v4, v3, :cond_47

    .line 1520
    .line 1521
    iput-object v11, v0, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    .line 1522
    .line 1523
    goto :goto_2a

    .line 1524
    :catchall_3
    move-exception v0

    .line 1525
    goto :goto_2c

    .line 1526
    :cond_47
    :goto_2a
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v0

    .line 1530
    if-eqz v0, :cond_48

    .line 1531
    .line 1532
    const-string v0, "called outside of runRecomposeAndApplyChanges"

    .line 1533
    .line 1534
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1535
    .line 1536
    .line 1537
    :cond_48
    monitor-exit v2

    .line 1538
    sget-object v0, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1539
    .line 1540
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1541
    .line 1542
    check-cast v0, Landroidx/compose/runtime/Recomposer;

    .line 1543
    .line 1544
    iget-object v0, v0, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 1545
    .line 1546
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->removeRunning(Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 1547
    .line 1548
    .line 1549
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1550
    .line 1551
    :goto_2b
    return-object v11

    .line 1552
    :goto_2c
    monitor-exit v2

    .line 1553
    throw v0

    .line 1554
    :goto_2d
    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/ObserverHandle;->dispose()V

    .line 1555
    .line 1556
    .line 1557
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1558
    .line 1559
    check-cast v2, Landroidx/compose/runtime/Recomposer;

    .line 1560
    .line 1561
    iget-object v4, v2, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 1562
    .line 1563
    monitor-enter v4

    .line 1564
    :try_start_8
    iget-object v5, v2, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    .line 1565
    .line 1566
    if-ne v5, v3, :cond_49

    .line 1567
    .line 1568
    iput-object v11, v2, Landroidx/compose/runtime/Recomposer;->runnerJob:Lkotlinx/coroutines/Job;

    .line 1569
    .line 1570
    goto :goto_2e

    .line 1571
    :catchall_4
    move-exception v0

    .line 1572
    goto :goto_2f

    .line 1573
    :cond_49
    :goto_2e
    invoke-virtual {v2}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v2

    .line 1577
    if-eqz v2, :cond_4a

    .line 1578
    .line 1579
    const-string v2, "called outside of runRecomposeAndApplyChanges"

    .line 1580
    .line 1581
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1582
    .line 1583
    .line 1584
    :cond_4a
    monitor-exit v4

    .line 1585
    sget-object v2, Landroidx/compose/runtime/Recomposer;->_runningRecomposers:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1586
    .line 1587
    iget-object v1, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1588
    .line 1589
    check-cast v1, Landroidx/compose/runtime/Recomposer;

    .line 1590
    .line 1591
    iget-object v1, v1, Landroidx/compose/runtime/Recomposer;->recomposerInfo:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 1592
    .line 1593
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->removeRunning(Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 1594
    .line 1595
    .line 1596
    throw v0

    .line 1597
    :goto_2f
    monitor-exit v4

    .line 1598
    throw v0

    .line 1599
    :pswitch_d
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1600
    .line 1601
    move-object v2, v0

    .line 1602
    check-cast v2, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 1603
    .line 1604
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1605
    .line 1606
    check-cast v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 1607
    .line 1608
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1609
    .line 1610
    iget v4, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1611
    .line 1612
    if-eqz v4, :cond_4c

    .line 1613
    .line 1614
    if-eq v4, v10, :cond_4b

    .line 1615
    .line 1616
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1617
    .line 1618
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1619
    .line 1620
    .line 1621
    goto :goto_30

    .line 1622
    :cond_4b
    :try_start_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1623
    .line 1624
    .line 1625
    goto :goto_31

    .line 1626
    :catchall_5
    move-exception v0

    .line 1627
    goto :goto_32

    .line 1628
    :cond_4c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1629
    .line 1630
    .line 1631
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1632
    .line 1633
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 1634
    .line 1635
    sget-object v5, Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt;->inputMethodManagerFactory:Landroidx/compose/foundation/text/input/internal/LegacyPlatformTextInputServiceAdapter_androidKt$inputMethodManagerFactory$1;

    .line 1636
    .line 1637
    iget-object v6, v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->view:Landroid/view/View;

    .line 1638
    .line 1639
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1640
    .line 1641
    .line 1642
    new-instance v5, Landroidx/cardview/widget/CardView$1;

    .line 1643
    .line 1644
    invoke-direct {v5, v6}, Landroidx/cardview/widget/CardView$1;-><init>(Landroid/view/View;)V

    .line 1645
    .line 1646
    .line 1647
    new-instance v6, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 1648
    .line 1649
    iget-object v8, v0, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->view:Landroid/view/View;

    .line 1650
    .line 1651
    new-instance v9, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;

    .line 1652
    .line 1653
    iget-object v12, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 1654
    .line 1655
    check-cast v12, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 1656
    .line 1657
    invoke-direct {v9, v12}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;-><init>(Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;)V

    .line 1658
    .line 1659
    .line 1660
    invoke-direct {v6, v8, v9, v5}, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;-><init>(Landroid/view/View;Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter$startInput$2$1$request$1;Landroidx/cardview/widget/CardView$1;)V

    .line 1661
    .line 1662
    .line 1663
    sget-boolean v8, Landroidx/compose/foundation/text/handwriting/StylusHandwriting_androidKt;->isStylusHandwritingSupported:Z

    .line 1664
    .line 1665
    if-eqz v8, :cond_4d

    .line 1666
    .line 1667
    new-instance v8, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 1668
    .line 1669
    const/16 v9, 0xd

    .line 1670
    .line 1671
    invoke-direct {v8, v2, v5, v11, v9}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1672
    .line 1673
    .line 1674
    invoke-static {v4, v11, v11, v8, v7}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1675
    .line 1676
    .line 1677
    :cond_4d
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1678
    .line 1679
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 1680
    .line 1681
    if-eqz v4, :cond_4e

    .line 1682
    .line 1683
    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    :cond_4e
    iput-object v6, v2, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->currentRequest:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 1687
    .line 1688
    :try_start_a
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1689
    .line 1690
    invoke-virtual {v0, v6, v1}, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->startInputMethod(Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1691
    .line 1692
    .line 1693
    move-result-object v0

    .line 1694
    if-ne v0, v3, :cond_4f

    .line 1695
    .line 1696
    move-object v11, v3

    .line 1697
    :goto_30
    return-object v11

    .line 1698
    :cond_4f
    :goto_31
    new-instance v0, Lcoil3/network/HttpException;

    .line 1699
    .line 1700
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 1701
    .line 1702
    .line 1703
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1704
    :goto_32
    iput-object v11, v2, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->currentRequest:Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    .line 1705
    .line 1706
    throw v0

    .line 1707
    :pswitch_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1708
    .line 1709
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1710
    .line 1711
    iget v7, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1712
    .line 1713
    if-eqz v7, :cond_52

    .line 1714
    .line 1715
    if-ne v7, v10, :cond_51

    .line 1716
    .line 1717
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1718
    .line 1719
    .line 1720
    :cond_50
    move-object v11, v0

    .line 1721
    goto :goto_35

    .line 1722
    :cond_51
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1723
    .line 1724
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1725
    .line 1726
    .line 1727
    goto :goto_35

    .line 1728
    :cond_52
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1729
    .line 1730
    .line 1731
    iget-object v7, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1732
    .line 1733
    check-cast v7, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;

    .line 1734
    .line 1735
    iget-object v8, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1736
    .line 1737
    check-cast v8, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1738
    .line 1739
    iget-object v9, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1740
    .line 1741
    check-cast v9, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1742
    .line 1743
    iget-object v9, v9, Landroidx/compose/foundation/text/LegacyTextFieldState;->textDelegate:Landroidx/compose/foundation/text/TextDelegate;

    .line 1744
    .line 1745
    iget-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1746
    .line 1747
    check-cast v11, Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 1748
    .line 1749
    iget-object v11, v11, Landroidx/compose/foundation/text/TextLayoutResultProxy;->value:Landroidx/compose/ui/text/TextLayoutResult;

    .line 1750
    .line 1751
    iget-object v12, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 1752
    .line 1753
    check-cast v12, Landroidx/compose/ui/text/input/OffsetMapping;

    .line 1754
    .line 1755
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1756
    .line 1757
    iget-wide v13, v8, Landroidx/compose/ui/text/input/TextFieldValue;->selection:J

    .line 1758
    .line 1759
    invoke-static {v13, v14}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 1760
    .line 1761
    .line 1762
    move-result v8

    .line 1763
    invoke-interface {v12, v8}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 1764
    .line 1765
    .line 1766
    move-result v8

    .line 1767
    iget-object v12, v11, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 1768
    .line 1769
    iget-object v12, v12, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 1770
    .line 1771
    iget-object v12, v12, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 1772
    .line 1773
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 1774
    .line 1775
    .line 1776
    move-result v12

    .line 1777
    if-ge v8, v12, :cond_53

    .line 1778
    .line 1779
    invoke-virtual {v11, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v2

    .line 1783
    goto :goto_33

    .line 1784
    :cond_53
    if-eqz v8, :cond_54

    .line 1785
    .line 1786
    sub-int/2addr v8, v10

    .line 1787
    invoke-virtual {v11, v8}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 1788
    .line 1789
    .line 1790
    move-result-object v2

    .line 1791
    goto :goto_33

    .line 1792
    :cond_54
    iget-object v8, v9, Landroidx/compose/foundation/text/TextDelegate;->style:Ljava/lang/Object;

    .line 1793
    .line 1794
    check-cast v8, Landroidx/compose/ui/text/TextStyle;

    .line 1795
    .line 1796
    iget-object v10, v9, Landroidx/compose/foundation/text/TextDelegate;->density:Ljava/lang/Object;

    .line 1797
    .line 1798
    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 1799
    .line 1800
    iget-object v9, v9, Landroidx/compose/foundation/text/TextDelegate;->fontFamilyResolver:Ljava/lang/Object;

    .line 1801
    .line 1802
    check-cast v9, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 1803
    .line 1804
    invoke-static {v8, v10, v9}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText$default(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)J

    .line 1805
    .line 1806
    .line 1807
    move-result-wide v8

    .line 1808
    new-instance v10, Landroidx/compose/ui/geometry/Rect;

    .line 1809
    .line 1810
    and-long/2addr v2, v8

    .line 1811
    long-to-int v2, v2

    .line 1812
    int-to-float v2, v2

    .line 1813
    invoke-direct {v10, v5, v5, v4, v2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 1814
    .line 1815
    .line 1816
    move-object v2, v10

    .line 1817
    :goto_33
    invoke-virtual {v7, v2, v1}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterImpl;->bringIntoView(Landroidx/compose/ui/geometry/Rect;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v1

    .line 1821
    if-ne v1, v6, :cond_55

    .line 1822
    .line 1823
    goto :goto_34

    .line 1824
    :cond_55
    move-object v1, v0

    .line 1825
    :goto_34
    if-ne v1, v6, :cond_50

    .line 1826
    .line 1827
    move-object v11, v6

    .line 1828
    :goto_35
    return-object v11

    .line 1829
    :pswitch_f
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1830
    .line 1831
    move-object v13, v0

    .line 1832
    check-cast v13, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1833
    .line 1834
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1835
    .line 1836
    iget v2, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1837
    .line 1838
    if-eqz v2, :cond_57

    .line 1839
    .line 1840
    if-ne v2, v10, :cond_56

    .line 1841
    .line 1842
    :try_start_b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 1843
    .line 1844
    .line 1845
    goto :goto_36

    .line 1846
    :catchall_6
    move-exception v0

    .line 1847
    goto :goto_38

    .line 1848
    :cond_56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1849
    .line 1850
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1851
    .line 1852
    .line 1853
    goto :goto_37

    .line 1854
    :cond_57
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1855
    .line 1856
    .line 1857
    :try_start_c
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1858
    .line 1859
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 1860
    .line 1861
    new-instance v3, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;

    .line 1862
    .line 1863
    invoke-direct {v3, v2, v6}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 1864
    .line 1865
    .line 1866
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v2

    .line 1870
    new-instance v12, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    .line 1871
    .line 1872
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1873
    .line 1874
    move-object v14, v3

    .line 1875
    check-cast v14, Landroidx/compose/ui/text/input/TextInputService;

    .line 1876
    .line 1877
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1878
    .line 1879
    move-object v15, v3

    .line 1880
    check-cast v15, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1881
    .line 1882
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 1883
    .line 1884
    move-object/from16 v16, v3

    .line 1885
    .line 1886
    check-cast v16, Landroidx/compose/ui/text/input/ImeOptions;

    .line 1887
    .line 1888
    const/16 v17, 0x2

    .line 1889
    .line 1890
    invoke-direct/range {v12 .. v17}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1891
    .line 1892
    .line 1893
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1894
    .line 1895
    invoke-virtual {v2, v12, v1}, Lkotlinx/coroutines/flow/SafeFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1896
    .line 1897
    .line 1898
    move-result-object v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1899
    if-ne v1, v0, :cond_58

    .line 1900
    .line 1901
    move-object v11, v0

    .line 1902
    goto :goto_37

    .line 1903
    :cond_58
    :goto_36
    invoke-static {v13}, Landroidx/compose/foundation/text/BasicTextKt;->endInputSession(Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    .line 1904
    .line 1905
    .line 1906
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1907
    .line 1908
    :goto_37
    return-object v11

    .line 1909
    :goto_38
    invoke-static {v13}, Landroidx/compose/foundation/text/BasicTextKt;->endInputSession(Landroidx/compose/foundation/text/LegacyTextFieldState;)V

    .line 1910
    .line 1911
    .line 1912
    throw v0

    .line 1913
    :pswitch_10
    iget-object v0, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 1914
    .line 1915
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1916
    .line 1917
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 1918
    .line 1919
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1920
    .line 1921
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 1922
    .line 1923
    check-cast v5, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 1924
    .line 1925
    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1926
    .line 1927
    iget v8, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 1928
    .line 1929
    if-eqz v8, :cond_5a

    .line 1930
    .line 1931
    if-ne v8, v10, :cond_59

    .line 1932
    .line 1933
    iget-object v8, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 1934
    .line 1935
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 1936
    .line 1937
    iget-object v9, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1938
    .line 1939
    check-cast v9, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 1940
    .line 1941
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1942
    .line 1943
    .line 1944
    move-object v12, v9

    .line 1945
    move-object v9, v8

    .line 1946
    move-object/from16 v8, p1

    .line 1947
    .line 1948
    goto :goto_3a

    .line 1949
    :cond_59
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1950
    .line 1951
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1952
    .line 1953
    .line 1954
    goto/16 :goto_3b

    .line 1955
    .line 1956
    :cond_5a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1957
    .line 1958
    .line 1959
    iget-object v8, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 1960
    .line 1961
    check-cast v8, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 1962
    .line 1963
    iget-object v9, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1964
    .line 1965
    check-cast v9, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 1966
    .line 1967
    iget-wide v12, v9, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->value:J

    .line 1968
    .line 1969
    invoke-virtual {v0, v12, v13}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 1970
    .line 1971
    .line 1972
    move-result-wide v12

    .line 1973
    invoke-virtual {v0, v12, v13}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toSingleAxisDeltaFromAngle-k-4lQ0M(J)F

    .line 1974
    .line 1975
    .line 1976
    move-result v9

    .line 1977
    iget-object v12, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1978
    .line 1979
    invoke-virtual {v12, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    .line 1980
    .line 1981
    .line 1982
    move-result v9

    .line 1983
    invoke-virtual {v12, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    .line 1984
    .line 1985
    .line 1986
    move-result-wide v13

    .line 1987
    invoke-virtual {v8, v13, v14, v10}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->scrollByWithOverscroll-OzD1aCk(JI)J

    .line 1988
    .line 1989
    .line 1990
    move-result-wide v13

    .line 1991
    invoke-virtual {v12, v13, v14}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 1992
    .line 1993
    .line 1994
    move-result-wide v13

    .line 1995
    invoke-virtual {v12, v13, v14}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 1996
    .line 1997
    .line 1998
    move-object v9, v8

    .line 1999
    :goto_39
    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2000
    .line 2001
    check-cast v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 2002
    .line 2003
    iget-boolean v8, v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->isEnd:Z

    .line 2004
    .line 2005
    if-nez v8, :cond_5d

    .line 2006
    .line 2007
    iget-object v8, v5, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2008
    .line 2009
    iput-object v9, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 2010
    .line 2011
    iput-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 2012
    .line 2013
    iput v10, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2014
    .line 2015
    new-instance v12, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 2016
    .line 2017
    invoke-direct {v12, v6, v8, v11}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 2018
    .line 2019
    .line 2020
    invoke-static {v12, v1}, Lkotlinx/coroutines/AwaitKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v8

    .line 2024
    if-ne v8, v7, :cond_5b

    .line 2025
    .line 2026
    move-object v11, v7

    .line 2027
    goto/16 :goto_3b

    .line 2028
    .line 2029
    :cond_5b
    move-object v12, v9

    .line 2030
    move-object v9, v4

    .line 2031
    :goto_3a
    iput-object v8, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2032
    .line 2033
    iget-object v8, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2034
    .line 2035
    check-cast v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 2036
    .line 2037
    iget-object v9, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->velocityTracker:Landroidx/cardview/widget/CardView$1;

    .line 2038
    .line 2039
    iget-wide v13, v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->timeMillis:J

    .line 2040
    .line 2041
    move-wide v15, v2

    .line 2042
    iget-wide v2, v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->value:J

    .line 2043
    .line 2044
    iget-object v8, v9, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 2045
    .line 2046
    check-cast v8, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 2047
    .line 2048
    const/16 v17, 0x20

    .line 2049
    .line 2050
    move-object/from16 v18, v7

    .line 2051
    .line 2052
    shr-long v6, v2, v17

    .line 2053
    .line 2054
    long-to-int v6, v6

    .line 2055
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 2056
    .line 2057
    .line 2058
    move-result v6

    .line 2059
    invoke-virtual {v8, v6, v13, v14}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->addDataPoint(FJ)V

    .line 2060
    .line 2061
    .line 2062
    iget-object v6, v9, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 2063
    .line 2064
    check-cast v6, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 2065
    .line 2066
    and-long/2addr v2, v15

    .line 2067
    long-to-int v2, v2

    .line 2068
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 2069
    .line 2070
    .line 2071
    move-result v2

    .line 2072
    invoke-virtual {v6, v2, v13, v14}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->addDataPoint(FJ)V

    .line 2073
    .line 2074
    .line 2075
    iget-object v2, v5, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2076
    .line 2077
    invoke-static {v2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->sumOrNull(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 2078
    .line 2079
    .line 2080
    move-result-object v2

    .line 2081
    if-eqz v2, :cond_5c

    .line 2082
    .line 2083
    iget-object v3, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->velocityTracker:Landroidx/cardview/widget/CardView$1;

    .line 2084
    .line 2085
    iget-wide v6, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->timeMillis:J

    .line 2086
    .line 2087
    iget-wide v8, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->value:J

    .line 2088
    .line 2089
    iget-object v13, v3, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 2090
    .line 2091
    check-cast v13, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 2092
    .line 2093
    shr-long v10, v8, v17

    .line 2094
    .line 2095
    long-to-int v10, v10

    .line 2096
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 2097
    .line 2098
    .line 2099
    move-result v10

    .line 2100
    invoke-virtual {v13, v10, v6, v7}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->addDataPoint(FJ)V

    .line 2101
    .line 2102
    .line 2103
    iget-object v3, v3, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 2104
    .line 2105
    check-cast v3, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 2106
    .line 2107
    and-long/2addr v8, v15

    .line 2108
    long-to-int v8, v8

    .line 2109
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 2110
    .line 2111
    .line 2112
    move-result v8

    .line 2113
    invoke-virtual {v3, v8, v6, v7}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->addDataPoint(FJ)V

    .line 2114
    .line 2115
    .line 2116
    iget-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2117
    .line 2118
    check-cast v3, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 2119
    .line 2120
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->plus(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v2

    .line 2124
    iput-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2125
    .line 2126
    :cond_5c
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2127
    .line 2128
    check-cast v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 2129
    .line 2130
    iget-wide v2, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->value:J

    .line 2131
    .line 2132
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 2133
    .line 2134
    .line 2135
    move-result-wide v2

    .line 2136
    invoke-virtual {v0, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toSingleAxisDeltaFromAngle-k-4lQ0M(J)F

    .line 2137
    .line 2138
    .line 2139
    move-result v2

    .line 2140
    iget-object v3, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2141
    .line 2142
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    .line 2143
    .line 2144
    .line 2145
    move-result v2

    .line 2146
    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toOffset-tuRUvjQ(F)J

    .line 2147
    .line 2148
    .line 2149
    move-result-wide v6

    .line 2150
    const/4 v2, 0x1

    .line 2151
    invoke-virtual {v12, v6, v7, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->scrollByWithOverscroll-OzD1aCk(JI)J

    .line 2152
    .line 2153
    .line 2154
    move-result-wide v6

    .line 2155
    invoke-virtual {v3, v6, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 2156
    .line 2157
    .line 2158
    move-result-wide v6

    .line 2159
    invoke-virtual {v3, v6, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 2160
    .line 2161
    .line 2162
    move v10, v2

    .line 2163
    move-object v9, v12

    .line 2164
    move-wide v2, v15

    .line 2165
    move-object/from16 v7, v18

    .line 2166
    .line 2167
    const/4 v6, 0x6

    .line 2168
    const/4 v11, 0x0

    .line 2169
    goto/16 :goto_39

    .line 2170
    .line 2171
    :cond_5d
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2172
    .line 2173
    :goto_3b
    return-object v11

    .line 2174
    :pswitch_11
    move v2, v10

    .line 2175
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2176
    .line 2177
    iget v3, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2178
    .line 2179
    if-eqz v3, :cond_5f

    .line 2180
    .line 2181
    if-ne v3, v2, :cond_5e

    .line 2182
    .line 2183
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2184
    .line 2185
    .line 2186
    goto :goto_3c

    .line 2187
    :cond_5e
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2188
    .line 2189
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2190
    .line 2191
    .line 2192
    const/4 v11, 0x0

    .line 2193
    goto :goto_3d

    .line 2194
    :cond_5f
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2195
    .line 2196
    .line 2197
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 2198
    .line 2199
    move-object v4, v2

    .line 2200
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 2201
    .line 2202
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 2203
    .line 2204
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 2205
    .line 2206
    new-instance v3, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;

    .line 2207
    .line 2208
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 2209
    .line 2210
    check-cast v5, Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;

    .line 2211
    .line 2212
    iget-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 2213
    .line 2214
    check-cast v6, Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;

    .line 2215
    .line 2216
    iget-object v7, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 2217
    .line 2218
    check-cast v7, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 2219
    .line 2220
    const/4 v8, 0x0

    .line 2221
    invoke-direct/range {v3 .. v8}, Lorg/wikipedia/compose/components/HtmlTextKt$HtmlText$1$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/text/TextFieldPressGestureFilterKt$tapPressTextFieldModifier$1$2$1$1;Lorg/wikipedia/search/SearchResultsScreenKt$$ExternalSyntheticLambda2;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    .line 2222
    .line 2223
    .line 2224
    const/4 v4, 0x1

    .line 2225
    iput v4, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2226
    .line 2227
    invoke-static {v2, v3, v1}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2228
    .line 2229
    .line 2230
    move-result-object v1

    .line 2231
    if-ne v1, v0, :cond_60

    .line 2232
    .line 2233
    move-object v11, v0

    .line 2234
    goto :goto_3d

    .line 2235
    :cond_60
    :goto_3c
    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2236
    .line 2237
    :goto_3d
    return-object v11

    .line 2238
    :pswitch_12
    sget-object v22, Landroidx/compose/animation/core/SeekableTransitionState;->Target1:Landroidx/compose/animation/core/AnimationVector1D;

    .line 2239
    .line 2240
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2241
    .line 2242
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 2243
    .line 2244
    check-cast v2, Landroidx/compose/animation/core/Transition;

    .line 2245
    .line 2246
    sget-object v3, Landroidx/compose/animation/core/SeekableTransitionState;->ZeroVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 2247
    .line 2248
    iget-object v6, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 2249
    .line 2250
    iget-object v9, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 2251
    .line 2252
    check-cast v9, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2253
    .line 2254
    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2255
    .line 2256
    iget v11, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2257
    .line 2258
    const/4 v15, 0x5

    .line 2259
    move/from16 v16, v4

    .line 2260
    .line 2261
    const/4 v4, 0x4

    .line 2262
    const-wide/high16 v20, -0x8000000000000000L

    .line 2263
    .line 2264
    const-wide/16 v12, 0x0

    .line 2265
    .line 2266
    if-eqz v11, :cond_66

    .line 2267
    .line 2268
    const/4 v14, 0x1

    .line 2269
    if-eq v11, v14, :cond_65

    .line 2270
    .line 2271
    if-eq v11, v8, :cond_64

    .line 2272
    .line 2273
    if-eq v11, v7, :cond_63

    .line 2274
    .line 2275
    if-eq v11, v4, :cond_62

    .line 2276
    .line 2277
    if-ne v11, v15, :cond_61

    .line 2278
    .line 2279
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2280
    .line 2281
    .line 2282
    goto/16 :goto_4c

    .line 2283
    .line 2284
    :cond_61
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2285
    .line 2286
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2287
    .line 2288
    .line 2289
    const/4 v11, 0x0

    .line 2290
    goto/16 :goto_4d

    .line 2291
    .line 2292
    :cond_62
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2293
    .line 2294
    .line 2295
    goto/16 :goto_4a

    .line 2296
    .line 2297
    :cond_63
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2298
    .line 2299
    .line 2300
    goto/16 :goto_41

    .line 2301
    .line 2302
    :cond_64
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2303
    .line 2304
    .line 2305
    goto/16 :goto_40

    .line 2306
    .line 2307
    :cond_65
    iget-object v2, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 2308
    .line 2309
    check-cast v2, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2310
    .line 2311
    iget-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 2312
    .line 2313
    check-cast v11, Lkotlinx/coroutines/sync/MutexImpl;

    .line 2314
    .line 2315
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2316
    .line 2317
    .line 2318
    goto :goto_3e

    .line 2319
    :cond_66
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2320
    .line 2321
    .line 2322
    iget-object v11, v9, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2323
    .line 2324
    invoke-virtual {v11}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2325
    .line 2326
    .line 2327
    move-result-object v11

    .line 2328
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2329
    .line 2330
    .line 2331
    move-result v14

    .line 2332
    if-nez v14, :cond_67

    .line 2333
    .line 2334
    invoke-virtual {v9}, Landroidx/compose/animation/core/SeekableTransitionState;->moveAnimationToInitialState()V

    .line 2335
    .line 2336
    .line 2337
    invoke-virtual {v9, v5}, Landroidx/compose/animation/core/SeekableTransitionState;->setFraction(F)V

    .line 2338
    .line 2339
    .line 2340
    invoke-virtual {v2, v6}, Landroidx/compose/animation/core/Transition;->updateTarget$animation_core(Ljava/lang/Object;)V

    .line 2341
    .line 2342
    .line 2343
    invoke-virtual {v2, v12, v13}, Landroidx/compose/animation/core/Transition;->setPlayTimeNanos(J)V

    .line 2344
    .line 2345
    .line 2346
    invoke-virtual {v9, v11}, Landroidx/compose/animation/core/SeekableTransitionState;->setCurrentState$animation_core(Ljava/lang/Object;)V

    .line 2347
    .line 2348
    .line 2349
    iget-object v2, v9, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2350
    .line 2351
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 2352
    .line 2353
    .line 2354
    :cond_67
    iget-object v11, v9, Landroidx/compose/animation/core/SeekableTransitionState;->compositionContinuationMutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 2355
    .line 2356
    iput-object v11, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 2357
    .line 2358
    iput-object v9, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 2359
    .line 2360
    const/4 v14, 0x1

    .line 2361
    iput v14, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2362
    .line 2363
    invoke-virtual {v11, v1}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2364
    .line 2365
    .line 2366
    move-result-object v2

    .line 2367
    if-ne v2, v10, :cond_68

    .line 2368
    .line 2369
    goto/16 :goto_4b

    .line 2370
    .line 2371
    :cond_68
    move-object v2, v9

    .line 2372
    :goto_3e
    :try_start_d
    iget-object v2, v2, Landroidx/compose/animation/core/SeekableTransitionState;->composedTargetState:Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 2373
    .line 2374
    const/4 v14, 0x0

    .line 2375
    invoke-interface {v11, v14}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2376
    .line 2377
    .line 2378
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 2379
    .line 2380
    .line 2381
    move-result v2

    .line 2382
    if-nez v2, :cond_6c

    .line 2383
    .line 2384
    iput-object v14, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 2385
    .line 2386
    iput-object v14, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 2387
    .line 2388
    iput v8, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2389
    .line 2390
    iget-wide v14, v9, Landroidx/compose/animation/core/SeekableTransitionState;->lastFrameTimeNanos:J

    .line 2391
    .line 2392
    cmp-long v8, v14, v20

    .line 2393
    .line 2394
    if-nez v8, :cond_6a

    .line 2395
    .line 2396
    iget-object v8, v9, Landroidx/compose/animation/core/SeekableTransitionState;->firstFrameLambda:Landroidx/compose/animation/core/SeekableTransitionState$$ExternalSyntheticLambda1;

    .line 2397
    .line 2398
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 2399
    .line 2400
    .line 2401
    move-result-object v11

    .line 2402
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 2403
    .line 2404
    .line 2405
    move-result-object v11

    .line 2406
    invoke-interface {v11, v8, v1}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2407
    .line 2408
    .line 2409
    move-result-object v8

    .line 2410
    if-ne v8, v10, :cond_69

    .line 2411
    .line 2412
    goto :goto_3f

    .line 2413
    :cond_69
    move-object v8, v0

    .line 2414
    goto :goto_3f

    .line 2415
    :cond_6a
    invoke-virtual {v9, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->animateOneFrame(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2416
    .line 2417
    .line 2418
    move-result-object v8

    .line 2419
    if-ne v8, v10, :cond_69

    .line 2420
    .line 2421
    :goto_3f
    if-ne v8, v10, :cond_6b

    .line 2422
    .line 2423
    goto/16 :goto_4b

    .line 2424
    .line 2425
    :cond_6b
    :goto_40
    iput v7, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2426
    .line 2427
    invoke-virtual {v9, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->waitForCompositionAfterTargetStateChange(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2428
    .line 2429
    .line 2430
    move-result-object v7

    .line 2431
    if-ne v7, v10, :cond_6c

    .line 2432
    .line 2433
    goto/16 :goto_4b

    .line 2434
    .line 2435
    :cond_6c
    :goto_41
    iget-object v7, v9, Landroidx/compose/animation/core/SeekableTransitionState;->currentState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2436
    .line 2437
    iget-object v8, v9, Landroidx/compose/animation/core/SeekableTransitionState;->fraction$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 2438
    .line 2439
    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 2440
    .line 2441
    .line 2442
    move-result-object v7

    .line 2443
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2444
    .line 2445
    .line 2446
    move-result v7

    .line 2447
    if-nez v7, :cond_79

    .line 2448
    .line 2449
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 2450
    .line 2451
    .line 2452
    move-result v7

    .line 2453
    cmpg-float v7, v7, v16

    .line 2454
    .line 2455
    if-gez v7, :cond_6d

    .line 2456
    .line 2457
    iget-object v7, v9, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 2458
    .line 2459
    if-eqz v7, :cond_6e

    .line 2460
    .line 2461
    iget-object v11, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 2462
    .line 2463
    const/4 v14, 0x0

    .line 2464
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2465
    .line 2466
    .line 2467
    move-result v11

    .line 2468
    if-nez v11, :cond_6d

    .line 2469
    .line 2470
    goto :goto_43

    .line 2471
    :cond_6d
    :goto_42
    const/4 v14, 0x0

    .line 2472
    goto/16 :goto_49

    .line 2473
    .line 2474
    :cond_6e
    :goto_43
    if-eqz v7, :cond_6f

    .line 2475
    .line 2476
    iget-object v11, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 2477
    .line 2478
    move-object/from16 v18, v11

    .line 2479
    .line 2480
    goto :goto_44

    .line 2481
    :cond_6f
    const/16 v18, 0x0

    .line 2482
    .line 2483
    :goto_44
    if-eqz v18, :cond_71

    .line 2484
    .line 2485
    move-object v15, v3

    .line 2486
    iget-wide v2, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->progressNanos:J

    .line 2487
    .line 2488
    iget-object v11, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->start:Landroidx/compose/animation/core/AnimationVector1D;

    .line 2489
    .line 2490
    iget-object v14, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->initialVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 2491
    .line 2492
    if-nez v14, :cond_70

    .line 2493
    .line 2494
    move-object/from16 v23, v15

    .line 2495
    .line 2496
    :goto_45
    move-wide/from16 v19, v2

    .line 2497
    .line 2498
    move-object/from16 v21, v11

    .line 2499
    .line 2500
    goto :goto_46

    .line 2501
    :cond_70
    move-object/from16 v23, v14

    .line 2502
    .line 2503
    goto :goto_45

    .line 2504
    :goto_46
    invoke-interface/range {v18 .. v23}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->getVelocityFromNanos(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 2505
    .line 2506
    .line 2507
    move-result-object v2

    .line 2508
    move-object v3, v2

    .line 2509
    check-cast v3, Landroidx/compose/animation/core/AnimationVector1D;

    .line 2510
    .line 2511
    goto :goto_48

    .line 2512
    :cond_71
    move-object v15, v3

    .line 2513
    if-eqz v7, :cond_74

    .line 2514
    .line 2515
    iget-wide v2, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->progressNanos:J

    .line 2516
    .line 2517
    cmp-long v2, v2, v12

    .line 2518
    .line 2519
    if-nez v2, :cond_72

    .line 2520
    .line 2521
    goto :goto_47

    .line 2522
    :cond_72
    iget-wide v2, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->durationNanos:J

    .line 2523
    .line 2524
    cmp-long v11, v2, v20

    .line 2525
    .line 2526
    if-nez v11, :cond_73

    .line 2527
    .line 2528
    iget-wide v2, v9, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 2529
    .line 2530
    :cond_73
    long-to-float v2, v2

    .line 2531
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 2532
    .line 2533
    .line 2534
    div-float/2addr v2, v3

    .line 2535
    cmpg-float v3, v2, v5

    .line 2536
    .line 2537
    if-gtz v3, :cond_75

    .line 2538
    .line 2539
    :cond_74
    :goto_47
    move-object v3, v15

    .line 2540
    goto :goto_48

    .line 2541
    :cond_75
    new-instance v3, Landroidx/compose/animation/core/AnimationVector1D;

    .line 2542
    .line 2543
    div-float v2, v16, v2

    .line 2544
    .line 2545
    invoke-direct {v3, v2}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 2546
    .line 2547
    .line 2548
    :goto_48
    if-nez v7, :cond_76

    .line 2549
    .line 2550
    new-instance v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 2551
    .line 2552
    invoke-direct {v7}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;-><init>()V

    .line 2553
    .line 2554
    .line 2555
    :cond_76
    iget-object v2, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->start:Landroidx/compose/animation/core/AnimationVector1D;

    .line 2556
    .line 2557
    const/4 v14, 0x0

    .line 2558
    iput-object v14, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpec:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    .line 2559
    .line 2560
    const/4 v11, 0x0

    .line 2561
    iput-boolean v11, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->isComplete:Z

    .line 2562
    .line 2563
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 2564
    .line 2565
    .line 2566
    move-result v15

    .line 2567
    iput v15, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->value:F

    .line 2568
    .line 2569
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 2570
    .line 2571
    .line 2572
    move-result v15

    .line 2573
    invoke-virtual {v2, v11, v15}, Landroidx/compose/animation/core/AnimationVector1D;->set$animation_core(IF)V

    .line 2574
    .line 2575
    .line 2576
    iget-wide v14, v9, Landroidx/compose/animation/core/SeekableTransitionState;->totalDurationNanos:J

    .line 2577
    .line 2578
    iput-wide v14, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->durationNanos:J

    .line 2579
    .line 2580
    iput-wide v12, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->progressNanos:J

    .line 2581
    .line 2582
    iput-object v3, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->initialVelocity:Landroidx/compose/animation/core/AnimationVector1D;

    .line 2583
    .line 2584
    long-to-double v2, v14

    .line 2585
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 2586
    .line 2587
    .line 2588
    move-result v8

    .line 2589
    float-to-double v11, v8

    .line 2590
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 2591
    .line 2592
    sub-double/2addr v13, v11

    .line 2593
    mul-double/2addr v13, v2

    .line 2594
    invoke-static {v13, v14}, Lkotlin/UnsignedKt;->roundToLong(D)J

    .line 2595
    .line 2596
    .line 2597
    move-result-wide v2

    .line 2598
    iput-wide v2, v7, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->animationSpecDuration:J

    .line 2599
    .line 2600
    iput-object v7, v9, Landroidx/compose/animation/core/SeekableTransitionState;->currentAnimation:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    .line 2601
    .line 2602
    goto/16 :goto_42

    .line 2603
    .line 2604
    :goto_49
    iput-object v14, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 2605
    .line 2606
    iput-object v14, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 2607
    .line 2608
    iput v4, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2609
    .line 2610
    invoke-virtual {v9, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->runAnimations(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2611
    .line 2612
    .line 2613
    move-result-object v2

    .line 2614
    if-ne v2, v10, :cond_77

    .line 2615
    .line 2616
    goto :goto_4b

    .line 2617
    :cond_77
    :goto_4a
    invoke-virtual {v9, v6}, Landroidx/compose/animation/core/SeekableTransitionState;->setCurrentState$animation_core(Ljava/lang/Object;)V

    .line 2618
    .line 2619
    .line 2620
    const/4 v2, 0x5

    .line 2621
    iput v2, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2622
    .line 2623
    invoke-virtual {v9, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->waitForComposition(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2624
    .line 2625
    .line 2626
    move-result-object v1

    .line 2627
    if-ne v1, v10, :cond_78

    .line 2628
    .line 2629
    :goto_4b
    move-object v11, v10

    .line 2630
    goto :goto_4d

    .line 2631
    :cond_78
    :goto_4c
    invoke-virtual {v9, v5}, Landroidx/compose/animation/core/SeekableTransitionState;->setFraction(F)V

    .line 2632
    .line 2633
    .line 2634
    :cond_79
    move-object v11, v0

    .line 2635
    :goto_4d
    return-object v11

    .line 2636
    :catchall_7
    move-exception v0

    .line 2637
    const/4 v14, 0x0

    .line 2638
    invoke-interface {v11, v14}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 2639
    .line 2640
    .line 2641
    throw v0

    .line 2642
    :pswitch_13
    move-object v14, v11

    .line 2643
    move v11, v9

    .line 2644
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2645
    .line 2646
    iget v2, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2647
    .line 2648
    if-eqz v2, :cond_7b

    .line 2649
    .line 2650
    const/4 v4, 0x1

    .line 2651
    if-ne v2, v4, :cond_7a

    .line 2652
    .line 2653
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2654
    .line 2655
    .line 2656
    move-object/from16 v14, p1

    .line 2657
    .line 2658
    goto :goto_4f

    .line 2659
    :cond_7a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2660
    .line 2661
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 2662
    .line 2663
    .line 2664
    goto :goto_4f

    .line 2665
    :cond_7b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2666
    .line 2667
    .line 2668
    new-instance v2, Lcoil3/intercept/RealInterceptorChain;

    .line 2669
    .line 2670
    iget-object v3, v1, Lcoil3/RealImageLoader$execute$result$1;->$request:Ljava/lang/Object;

    .line 2671
    .line 2672
    check-cast v3, Lcoil3/request/ImageRequest;

    .line 2673
    .line 2674
    iget-object v4, v1, Lcoil3/RealImageLoader$execute$result$1;->this$0:Ljava/lang/Object;

    .line 2675
    .line 2676
    check-cast v4, Lcoil3/RealImageLoader;

    .line 2677
    .line 2678
    iget-object v4, v4, Lcoil3/RealImageLoader;->components:Lcoil3/ComponentRegistry;

    .line 2679
    .line 2680
    iget-object v4, v4, Lcoil3/ComponentRegistry;->interceptors:Ljava/util/List;

    .line 2681
    .line 2682
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$size:Ljava/lang/Object;

    .line 2683
    .line 2684
    move-object v7, v5

    .line 2685
    check-cast v7, Lcoil3/size/Size;

    .line 2686
    .line 2687
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$eventListener:Ljava/lang/Object;

    .line 2688
    .line 2689
    move-object v8, v5

    .line 2690
    check-cast v8, Lcoil3/EventListener$Companion$NONE$1;

    .line 2691
    .line 2692
    iget-object v5, v1, Lcoil3/RealImageLoader$execute$result$1;->$cachedPlaceholder:Ljava/lang/Object;

    .line 2693
    .line 2694
    check-cast v5, Lcoil3/Image;

    .line 2695
    .line 2696
    if-eqz v5, :cond_7c

    .line 2697
    .line 2698
    const/4 v9, 0x1

    .line 2699
    goto :goto_4e

    .line 2700
    :cond_7c
    move v9, v11

    .line 2701
    :goto_4e
    const/4 v5, 0x0

    .line 2702
    move-object v6, v3

    .line 2703
    invoke-direct/range {v2 .. v9}, Lcoil3/intercept/RealInterceptorChain;-><init>(Lcoil3/request/ImageRequest;Ljava/util/List;ILcoil3/request/ImageRequest;Lcoil3/size/Size;Lcoil3/EventListener$Companion$NONE$1;Z)V

    .line 2704
    .line 2705
    .line 2706
    const/4 v14, 0x1

    .line 2707
    iput v14, v1, Lcoil3/RealImageLoader$execute$result$1;->label:I

    .line 2708
    .line 2709
    invoke-virtual {v2, v1}, Lcoil3/intercept/RealInterceptorChain;->proceed(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 2710
    .line 2711
    .line 2712
    move-result-object v1

    .line 2713
    if-ne v1, v0, :cond_7d

    .line 2714
    .line 2715
    move-object v14, v0

    .line 2716
    goto :goto_4f

    .line 2717
    :cond_7d
    move-object v14, v1

    .line 2718
    :goto_4f
    return-object v14

    .line 2719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
