.class public final Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

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
    iget p1, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_1
    new-instance p1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;-><init>(Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget v0, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->$r8$classId:I

    .line 4
    .line 5
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 6
    .line 7
    iget-object v2, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->this$0:Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v5, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->label:I

    .line 17
    .line 18
    if-eqz v5, :cond_1

    .line 19
    .line 20
    if-ne v5, v3, :cond_0

    .line 21
    .line 22
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object/from16 v1, p1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v1, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->fromPlaces:Z

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 46
    .line 47
    iget-object v1, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 48
    .line 49
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 50
    .line 51
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v2, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 56
    .line 57
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput v3, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->label:I

    .line 62
    .line 63
    invoke-interface {v1, v2, v6}, Lorg/wikipedia/dataclient/Service;->getWatchedStatus(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-ne v1, v0, :cond_2

    .line 68
    .line 69
    move-object v4, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    move-object v4, v1

    .line 72
    check-cast v4, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 73
    .line 74
    :cond_3
    :goto_1
    return-object v4

    .line 75
    :pswitch_0
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 76
    .line 77
    iget v0, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->label:I

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    if-ne v0, v3, :cond_4

    .line 82
    .line 83
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    move-object/from16 v0, p1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    move-object v0, v4

    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 98
    .line 99
    iget-object v0, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 100
    .line 101
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 102
    .line 103
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 108
    .line 109
    invoke-virtual {v1}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iput v3, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->label:I

    .line 114
    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    const/16 v7, 0x3e

    .line 120
    .line 121
    invoke-static/range {v0 .. v7}, Lorg/wikipedia/dataclient/Service$-CC;->getSummaryResponse$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-ne v0, v8, :cond_6

    .line 126
    .line 127
    move-object v0, v8

    .line 128
    :cond_6
    :goto_2
    return-object v0

    .line 129
    :pswitch_1
    iget-object v0, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 130
    .line 131
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 132
    .line 133
    iget v7, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->label:I

    .line 134
    .line 135
    const/4 v8, 0x2

    .line 136
    if-eqz v7, :cond_9

    .line 137
    .line 138
    if-eq v7, v3, :cond_8

    .line 139
    .line 140
    if-ne v7, v8, :cond_7

    .line 141
    .line 142
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    move-object/from16 v1, p1

    .line 146
    .line 147
    goto/16 :goto_7

    .line 148
    .line 149
    :cond_7
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_a

    .line 153
    .line 154
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    move-object/from16 v1, p1

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 164
    .line 165
    iget-object v1, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 166
    .line 167
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 168
    .line 169
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    iget-object v7, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 174
    .line 175
    invoke-virtual {v7}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    iput v3, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->label:I

    .line 180
    .line 181
    invoke-static {v1, v7, v6}, Lorg/wikipedia/dataclient/Service$-CC;->getMediaList$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-ne v1, v5, :cond_a

    .line 186
    .line 187
    goto/16 :goto_6

    .line 188
    .line 189
    :cond_a
    :goto_3
    check-cast v1, Lorg/wikipedia/gallery/MediaList;

    .line 190
    .line 191
    const-string v3, "image"

    .line 192
    .line 193
    const-string/jumbo v7, "video"

    .line 194
    .line 195
    .line 196
    filled-new-array {v3, v7}, [Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v1, v3}, Lorg/wikipedia/gallery/MediaList;->getItems([Ljava/lang/String;)Ljava/util/ArrayList;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    new-instance v3, Lkotlin/collections/ReversedList;

    .line 205
    .line 206
    invoke-direct {v3, v1}, Lkotlin/collections/ReversedList;-><init>(Ljava/util/ArrayList;)V

    .line 207
    .line 208
    .line 209
    new-instance v1, Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Lkotlin/collections/ReversedList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    :cond_b
    :goto_4
    move-object v7, v3

    .line 219
    check-cast v7, Lkotlin/collections/ReversedList$listIterator$1;

    .line 220
    .line 221
    iget-object v7, v7, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v7, Ljava/util/ListIterator;

    .line 224
    .line 225
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    if-eqz v9, :cond_c

    .line 230
    .line 231
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    move-object v9, v7

    .line 236
    check-cast v9, Lorg/wikipedia/gallery/MediaListItem;

    .line 237
    .line 238
    iget-boolean v9, v9, Lorg/wikipedia/gallery/MediaListItem;->showInGallery:Z

    .line 239
    .line 240
    if-eqz v9, :cond_b

    .line 241
    .line 242
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    .line 247
    .line 248
    const/16 v7, 0xa

    .line 249
    .line 250
    invoke-static {v1, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    if-eqz v9, :cond_d

    .line 266
    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    check-cast v9, Lorg/wikipedia/gallery/MediaListItem;

    .line 272
    .line 273
    iget-object v9, v9, Lorg/wikipedia/gallery/MediaListItem;->title:Ljava/lang/String;

    .line 274
    .line 275
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_d
    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_e

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    sget-object v1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Completed;->INSTANCE:Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Completed;

    .line 293
    .line 294
    invoke-virtual {v0, v4, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    goto :goto_9

    .line 298
    :cond_e
    sget-object v1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 299
    .line 300
    iget-object v1, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 301
    .line 302
    iget-object v1, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 303
    .line 304
    invoke-static {v1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    const/4 v14, 0x0

    .line 309
    const/16 v15, 0x3e

    .line 310
    .line 311
    const-string/jumbo v11, "|"

    .line 312
    .line 313
    .line 314
    const/4 v12, 0x0

    .line 315
    const/4 v13, 0x0

    .line 316
    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    iget-object v2, v2, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 321
    .line 322
    iget-object v2, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 323
    .line 324
    iget-object v2, v2, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 325
    .line 326
    iput v8, v6, Lorg/wikipedia/page/linkpreview/LinkPreviewViewModel$loadGallery$2;->label:I

    .line 327
    .line 328
    invoke-interface {v1, v3, v2, v6}, Lorg/wikipedia/dataclient/Service;->getImageInfo(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-ne v1, v5, :cond_f

    .line 333
    .line 334
    :goto_6
    move-object v4, v5

    .line 335
    goto :goto_a

    .line 336
    :cond_f
    :goto_7
    check-cast v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 337
    .line 338
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 339
    .line 340
    if-eqz v1, :cond_11

    .line 341
    .line 342
    iget-object v1, v1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->pages:Ljava/util/List;

    .line 343
    .line 344
    if-eqz v1, :cond_11

    .line 345
    .line 346
    new-instance v2, Ljava/util/ArrayList;

    .line 347
    .line 348
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    :cond_10
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 356
    .line 357
    .line 358
    move-result v3

    .line 359
    if-eqz v3, :cond_12

    .line 360
    .line 361
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    move-object v5, v3

    .line 366
    check-cast v5, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 367
    .line 368
    invoke-virtual {v5}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->imageInfo()Lorg/wikipedia/gallery/ImageInfo;

    .line 369
    .line 370
    .line 371
    move-result-object v5

    .line 372
    if-eqz v5, :cond_10

    .line 373
    .line 374
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_11
    move-object v2, v4

    .line 379
    :cond_12
    if-nez v2, :cond_13

    .line 380
    .line 381
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 382
    .line 383
    :cond_13
    new-instance v1, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Gallery;

    .line 384
    .line 385
    invoke-direct {v1, v2}, Lorg/wikipedia/page/linkpreview/LinkPreviewViewState$Gallery;-><init>(Ljava/util/List;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v4, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    :goto_9
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 395
    .line 396
    :goto_a
    return-object v4

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
