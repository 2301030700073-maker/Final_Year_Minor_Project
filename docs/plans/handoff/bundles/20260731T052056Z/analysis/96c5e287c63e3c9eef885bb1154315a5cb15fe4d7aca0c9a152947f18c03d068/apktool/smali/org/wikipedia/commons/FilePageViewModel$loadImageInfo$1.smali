.class public final Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public I$0:I

.field public I$1:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$3:Ljava/lang/Object;

.field public L$4:Lorg/wikipedia/gallery/ImageInfo;

.field public L$5:Lkotlinx/coroutines/DeferredCoroutine;

.field public L$7:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

.field public Z$0:Z

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/commons/FilePageViewModel;


# direct methods
.method public constructor <init>(Lorg/wikipedia/commons/FilePageViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->this$0:Lorg/wikipedia/commons/FilePageViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->this$0:Lorg/wikipedia/commons/FilePageViewModel;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;-><init>(Lorg/wikipedia/commons/FilePageViewModel;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->this$0:Lorg/wikipedia/commons/FilePageViewModel;

    .line 4
    .line 5
    iget-object v5, v1, Lorg/wikipedia/commons/FilePageViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    iget-object v2, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    move-object v14, v2

    .line 10
    check-cast v14, Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    sget-object v15, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    iget v2, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->label:I

    .line 15
    .line 16
    const/4 v3, 0x4

    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v6, 0x2

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x1

    .line 21
    const/4 v9, 0x0

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    if-eq v2, v8, :cond_3

    .line 25
    .line 26
    if-eq v2, v6, :cond_2

    .line 27
    .line 28
    if-eq v2, v4, :cond_1

    .line 29
    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    iget v1, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->I$1:I

    .line 33
    .line 34
    iget-boolean v2, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->Z$0:Z

    .line 35
    .line 36
    iget-object v3, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$7:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 37
    .line 38
    iget-object v4, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$4:Lorg/wikipedia/gallery/ImageInfo;

    .line 39
    .line 40
    iget-object v0, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lorg/wikipedia/commons/FilePageViewModel;

    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move v5, v1

    .line 48
    move/from16 v18, v2

    .line 49
    .line 50
    move-object/from16 v21, v3

    .line 51
    .line 52
    move-object v14, v9

    .line 53
    move-object/from16 v2, p1

    .line 54
    .line 55
    move-object v1, v0

    .line 56
    move v0, v8

    .line 57
    move v8, v7

    .line 58
    goto/16 :goto_e

    .line 59
    .line 60
    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v9

    .line 66
    :cond_1
    iget-boolean v1, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->Z$0:Z

    .line 67
    .line 68
    iget v2, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->I$0:I

    .line 69
    .line 70
    iget-object v4, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$5:Lkotlinx/coroutines/DeferredCoroutine;

    .line 71
    .line 72
    iget-object v5, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$4:Lorg/wikipedia/gallery/ImageInfo;

    .line 73
    .line 74
    iget-object v6, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v6, Lorg/wikipedia/commons/FilePageViewModel;

    .line 77
    .line 78
    iget-object v10, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 79
    .line 80
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object v3, v14

    .line 84
    move-object v14, v9

    .line 85
    move-object v9, v15

    .line 86
    move-object v15, v10

    .line 87
    move v10, v2

    .line 88
    move-object v2, v4

    .line 89
    move v4, v1

    .line 90
    move-object v1, v6

    .line 91
    move-object v6, v0

    .line 92
    move v0, v8

    .line 93
    move v8, v7

    .line 94
    move-object v7, v5

    .line 95
    move-object/from16 v5, p1

    .line 96
    .line 97
    goto/16 :goto_9

    .line 98
    .line 99
    :cond_2
    iget-object v2, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 102
    .line 103
    iget-object v6, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 104
    .line 105
    iget-object v10, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 106
    .line 107
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    move-object v11, v10

    .line 111
    move-object v10, v2

    .line 112
    move-object/from16 v2, p1

    .line 113
    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :cond_3
    iget-object v2, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 119
    .line 120
    iget-object v10, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 121
    .line 122
    iget-object v11, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 123
    .line 124
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    move-object/from16 v3, p1

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 139
    .line 140
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 141
    .line 142
    .line 143
    sget-object v11, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 144
    .line 145
    sget-object v11, Lorg/wikipedia/Constants;->commonsWikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 146
    .line 147
    invoke-static {v11}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    iget-object v13, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 156
    .line 157
    iget-object v13, v13, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    .line 161
    .line 162
    const-string v3, "test"

    .line 163
    .line 164
    invoke-static {v13, v3, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_5

    .line 169
    .line 170
    const-string/jumbo v3, "uselang"

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_5
    move-object v3, v13

    .line 175
    :goto_0
    iput-object v14, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v2, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 178
    .line 179
    iput-object v10, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 180
    .line 181
    iput-object v10, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 182
    .line 183
    iput v8, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->label:I

    .line 184
    .line 185
    invoke-interface {v11, v12, v13, v3, v0}, Lorg/wikipedia/dataclient/Service;->getImageInfoWithEntityTerms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-ne v3, v15, :cond_6

    .line 190
    .line 191
    :goto_1
    move-object v9, v15

    .line 192
    goto/16 :goto_d

    .line 193
    .line 194
    :cond_6
    move-object v11, v2

    .line 195
    move-object v2, v10

    .line 196
    :goto_2
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 197
    .line 198
    iget-object v3, v3, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 199
    .line 200
    if-eqz v3, :cond_7

    .line 201
    .line 202
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    goto :goto_3

    .line 207
    :cond_7
    move-object v3, v9

    .line 208
    :goto_3
    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 209
    .line 210
    iget-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 213
    .line 214
    if-eqz v2, :cond_8

    .line 215
    .line 216
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->entityTerms:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;

    .line 217
    .line 218
    if-eqz v2, :cond_8

    .line 219
    .line 220
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$EntityTerms;->label:Ljava/util/List;

    .line 221
    .line 222
    if-eqz v2, :cond_8

    .line 223
    .line 224
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Ljava/lang/String;

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_8
    move-object v2, v9

    .line 232
    :goto_4
    iput-object v2, v5, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 233
    .line 234
    iget-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 237
    .line 238
    if-eqz v2, :cond_9

    .line 239
    .line 240
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    goto :goto_5

    .line 245
    :cond_9
    move-object v2, v9

    .line 246
    :goto_5
    if-nez v2, :cond_c

    .line 247
    .line 248
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 249
    .line 250
    iget-object v2, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 251
    .line 252
    invoke-static {v2}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    iget-object v12, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 261
    .line 262
    iget-object v12, v12, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 263
    .line 264
    iput-object v14, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 265
    .line 266
    iput-object v11, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 267
    .line 268
    iput-object v10, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 269
    .line 270
    iput-object v10, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 271
    .line 272
    iput v6, v0, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->label:I

    .line 273
    .line 274
    invoke-interface {v2, v3, v12, v0}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v2

    .line 278
    if-ne v2, v15, :cond_a

    .line 279
    .line 280
    goto :goto_1

    .line 281
    :cond_a
    move-object v6, v10

    .line 282
    :goto_6
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 283
    .line 284
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 285
    .line 286
    if-eqz v2, :cond_b

    .line 287
    .line 288
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    goto :goto_7

    .line 293
    :cond_b
    move-object v2, v9

    .line 294
    :goto_7
    iput-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 295
    .line 296
    move-object v2, v6

    .line 297
    goto :goto_8

    .line 298
    :cond_c
    iget-object v2, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 301
    .line 302
    iget-object v2, v2, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imagerepository:Ljava/lang/String;

    .line 303
    .line 304
    if-nez v2, :cond_d

    .line 305
    .line 306
    const-string v2, ""

    .line 307
    .line 308
    :cond_d
    const-string v3, "shared"

    .line 309
    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    xor-int/2addr v2, v8

    .line 315
    iput-boolean v2, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 316
    .line 317
    move-object v2, v10

    .line 318
    :goto_8
    iget-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v3, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 321
    .line 322
    if-eqz v3, :cond_14

    .line 323
    .line 324
    invoke-virtual {v3}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    if-eqz v3, :cond_14

    .line 329
    .line 330
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    iget-object v10, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 335
    .line 336
    iget-object v10, v10, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 337
    .line 338
    move-object v12, v6

    .line 339
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    sget-object v13, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 344
    .line 345
    iget-object v13, v3, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 346
    .line 347
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v13}, Lorg/wikipedia/gallery/ExtMetadata;->imageDescription()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    invoke-static {v13}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 355
    .line 356
    .line 357
    move-result-object v13

    .line 358
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v13

    .line 362
    invoke-static {v13}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 363
    .line 364
    .line 365
    move-result v17

    .line 366
    if-eqz v17, :cond_e

    .line 367
    .line 368
    move-object v13, v9

    .line 369
    :cond_e
    move/from16 v17, v8

    .line 370
    .line 371
    iget-object v8, v3, Lorg/wikipedia/gallery/ImageInfo;->thumbUrl:Ljava/lang/String;

    .line 372
    .line 373
    move-object/from16 v18, v11

    .line 374
    .line 375
    iget-object v11, v3, Lorg/wikipedia/gallery/ImageInfo;->timestamp:Ljava/lang/String;

    .line 376
    .line 377
    move-object/from16 v19, v12

    .line 378
    .line 379
    iget-object v12, v3, Lorg/wikipedia/gallery/ImageInfo;->user:Ljava/lang/String;

    .line 380
    .line 381
    move/from16 v20, v7

    .line 382
    .line 383
    move-object v7, v13

    .line 384
    iget-object v13, v3, Lorg/wikipedia/gallery/ImageInfo;->metadata:Lorg/wikipedia/gallery/ExtMetadata;

    .line 385
    .line 386
    move-object/from16 v21, v2

    .line 387
    .line 388
    new-instance v2, Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 389
    .line 390
    move-object/from16 v22, v9

    .line 391
    .line 392
    const/4 v9, 0x0

    .line 393
    move/from16 v23, v4

    .line 394
    .line 395
    move-object v4, v10

    .line 396
    const/4 v10, 0x0

    .line 397
    move-object/from16 v25, v3

    .line 398
    .line 399
    move-object/from16 v16, v14

    .line 400
    .line 401
    move-object/from16 v24, v15

    .line 402
    .line 403
    move/from16 v0, v17

    .line 404
    .line 405
    move-object/from16 v3, v19

    .line 406
    .line 407
    move-object/from16 v15, v21

    .line 408
    .line 409
    move-object/from16 v14, v22

    .line 410
    .line 411
    invoke-direct/range {v2 .. v13}, Lorg/wikipedia/suggestededits/PageSummaryForEdit;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/gallery/ExtMetadata;)V

    .line 412
    .line 413
    .line 414
    iput-object v2, v1, Lorg/wikipedia/commons/FilePageViewModel;->pageSummaryForEdit:Lorg/wikipedia/suggestededits/PageSummaryForEdit;

    .line 415
    .line 416
    new-instance v2, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;

    .line 417
    .line 418
    invoke-direct {v2, v15, v1, v14, v0}, Lorg/wikipedia/page/PageActivity$onCreate$1$1$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 419
    .line 420
    .line 421
    move-object/from16 v3, v16

    .line 422
    .line 423
    const/4 v4, 0x3

    .line 424
    invoke-static {v3, v14, v2, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    new-instance v5, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 429
    .line 430
    const/16 v6, 0x1a

    .line 431
    .line 432
    invoke-direct {v5, v6, v1, v14}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 433
    .line 434
    .line 435
    invoke-static {v3, v14, v5, v4}, Lkotlinx/coroutines/AwaitKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    move-object/from16 v11, v18

    .line 440
    .line 441
    iget-boolean v4, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 442
    .line 443
    iget-boolean v6, v1, Lorg/wikipedia/commons/FilePageViewModel;->allowEdit:Z

    .line 444
    .line 445
    if-eqz v6, :cond_11

    .line 446
    .line 447
    if-eqz v4, :cond_11

    .line 448
    .line 449
    move-object/from16 v6, p0

    .line 450
    .line 451
    iput-object v3, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 452
    .line 453
    iput-object v14, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 454
    .line 455
    iput-object v15, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 456
    .line 457
    iput-object v1, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 458
    .line 459
    move-object/from16 v7, v25

    .line 460
    .line 461
    iput-object v7, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$4:Lorg/wikipedia/gallery/ImageInfo;

    .line 462
    .line 463
    iput-object v2, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$5:Lkotlinx/coroutines/DeferredCoroutine;

    .line 464
    .line 465
    const/4 v8, 0x0

    .line 466
    iput v8, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->I$0:I

    .line 467
    .line 468
    iput-boolean v4, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->Z$0:Z

    .line 469
    .line 470
    const/4 v9, 0x3

    .line 471
    iput v9, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->label:I

    .line 472
    .line 473
    invoke-virtual {v5, v6}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    move-object/from16 v9, v24

    .line 478
    .line 479
    if-ne v5, v9, :cond_f

    .line 480
    .line 481
    goto :goto_d

    .line 482
    :cond_f
    move v10, v8

    .line 483
    :goto_9
    check-cast v5, Ljava/lang/Boolean;

    .line 484
    .line 485
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    if-nez v5, :cond_10

    .line 490
    .line 491
    move v5, v0

    .line 492
    goto :goto_c

    .line 493
    :cond_10
    :goto_a
    move v5, v4

    .line 494
    move-object v4, v2

    .line 495
    move-object v2, v15

    .line 496
    goto :goto_b

    .line 497
    :cond_11
    move-object/from16 v6, p0

    .line 498
    .line 499
    move-object/from16 v9, v24

    .line 500
    .line 501
    move-object/from16 v7, v25

    .line 502
    .line 503
    const/4 v8, 0x0

    .line 504
    move v10, v8

    .line 505
    goto :goto_a

    .line 506
    :goto_b
    move-object v15, v2

    .line 507
    move-object v2, v4

    .line 508
    move v4, v5

    .line 509
    move v5, v8

    .line 510
    :goto_c
    iget-object v11, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 511
    .line 512
    check-cast v11, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 513
    .line 514
    iput-object v3, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$0:Ljava/lang/Object;

    .line 515
    .line 516
    iput-object v14, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 517
    .line 518
    iput-object v14, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 519
    .line 520
    iput-object v1, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$3:Ljava/lang/Object;

    .line 521
    .line 522
    iput-object v7, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$4:Lorg/wikipedia/gallery/ImageInfo;

    .line 523
    .line 524
    iput-object v14, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$5:Lkotlinx/coroutines/DeferredCoroutine;

    .line 525
    .line 526
    iput-object v11, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->L$7:Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 527
    .line 528
    iput v10, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->I$0:I

    .line 529
    .line 530
    iput-boolean v4, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->Z$0:Z

    .line 531
    .line 532
    iput v5, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->I$1:I

    .line 533
    .line 534
    const/4 v3, 0x4

    .line 535
    iput v3, v6, Lorg/wikipedia/commons/FilePageViewModel$loadImageInfo$1;->label:I

    .line 536
    .line 537
    invoke-interface {v2, v6}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    if-ne v2, v9, :cond_12

    .line 542
    .line 543
    :goto_d
    return-object v9

    .line 544
    :cond_12
    move/from16 v18, v4

    .line 545
    .line 546
    move-object v4, v7

    .line 547
    move-object/from16 v21, v11

    .line 548
    .line 549
    :goto_e
    move-object/from16 v22, v2

    .line 550
    .line 551
    check-cast v22, Ljava/util/Map;

    .line 552
    .line 553
    iget v2, v4, Lorg/wikipedia/gallery/ImageInfo;->thumbWidth:I

    .line 554
    .line 555
    iget v3, v4, Lorg/wikipedia/gallery/ImageInfo;->thumbHeight:I

    .line 556
    .line 557
    new-instance v15, Lorg/wikipedia/commons/FilePage;

    .line 558
    .line 559
    if-eqz v5, :cond_13

    .line 560
    .line 561
    move/from16 v19, v0

    .line 562
    .line 563
    goto :goto_f

    .line 564
    :cond_13
    move/from16 v19, v8

    .line 565
    .line 566
    :goto_f
    const/16 v20, 0x1

    .line 567
    .line 568
    move/from16 v16, v2

    .line 569
    .line 570
    move/from16 v17, v3

    .line 571
    .line 572
    invoke-direct/range {v15 .. v22}, Lorg/wikipedia/commons/FilePage;-><init>(IIZZZLorg/wikipedia/dataclient/mwapi/MwQueryPage;Ljava/util/Map;)V

    .line 573
    .line 574
    .line 575
    iput-object v4, v1, Lorg/wikipedia/commons/FilePageViewModel;->mediaInfo:Lorg/wikipedia/gallery/ImageInfo;

    .line 576
    .line 577
    iget-object v0, v1, Lorg/wikipedia/commons/FilePageViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 578
    .line 579
    new-instance v1, Lorg/wikipedia/util/Resource$Success;

    .line 580
    .line 581
    invoke-direct {v1, v15}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v14, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 588
    .line 589
    .line 590
    goto :goto_10

    .line 591
    :cond_14
    move-object v14, v9

    .line 592
    iget-object v0, v1, Lorg/wikipedia/commons/FilePageViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 593
    .line 594
    new-instance v1, Lorg/wikipedia/util/Resource$Error;

    .line 595
    .line 596
    new-instance v2, Ljava/lang/Throwable;

    .line 597
    .line 598
    const-string v3, "No image info found."

    .line 599
    .line 600
    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    invoke-direct {v1, v2}, Lorg/wikipedia/util/Resource$Error;-><init>(Ljava/lang/Throwable;)V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 607
    .line 608
    .line 609
    invoke-virtual {v0, v14, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 613
    .line 614
    return-object v0
.end method
