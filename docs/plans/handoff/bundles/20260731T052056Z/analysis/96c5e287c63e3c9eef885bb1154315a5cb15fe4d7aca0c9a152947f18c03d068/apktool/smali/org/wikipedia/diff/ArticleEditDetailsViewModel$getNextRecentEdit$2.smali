.class public final Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

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
    iget p1, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;-><init>(Lorg/wikipedia/diff/ArticleEditDetailsViewModel;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 11

    .line 1
    iget v0, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->this$0:Lorg/wikipedia/diff/ArticleEditDetailsViewModel;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    iget v5, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->label:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    if-ne v5, v3, :cond_0

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    move-object p1, v4

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 33
    .line 34
    iget-object p1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 35
    .line 36
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 37
    .line 38
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget p1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    iget-wide v7, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 49
    .line 50
    iput v3, p0, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->label:I

    .line 51
    .line 52
    const/4 v6, 0x2

    .line 53
    move-object v9, p0

    .line 54
    invoke-interface/range {v4 .. v9}, Lorg/wikipedia/dataclient/Service;->getRevisionDetailsWithInfo(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    move-object p1, v0

    .line 61
    :cond_2
    :goto_0
    return-object p1

    .line 62
    :pswitch_0
    move-object v9, p0

    .line 63
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 64
    .line 65
    iget v0, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->label:I

    .line 66
    .line 67
    const/4 v5, 0x2

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    if-eq v0, v3, :cond_4

    .line 71
    .line 72
    if-ne v0, v5, :cond_3

    .line 73
    .line 74
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;->INSTANCE:Lorg/wikipedia/suggestededits/provider/EditingSuggestionsProvider;

    .line 91
    .line 92
    iget-object p1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 93
    .line 94
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 95
    .line 96
    iget-object p1, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 97
    .line 98
    iput v3, v9, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->label:I

    .line 99
    .line 100
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 101
    .line 102
    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 103
    .line 104
    new-instance v1, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 105
    .line 106
    const/16 v6, 0x9

    .line 107
    .line 108
    invoke-direct {v1, v6, p1, v4}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v1, v9}, Lkotlinx/coroutines/AwaitKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-ne p1, p0, :cond_6

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    :goto_1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;

    .line 119
    .line 120
    iget v0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->pageid:I

    .line 121
    .line 122
    iput v0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 123
    .line 124
    iget-wide v0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$RecentChange;->curRev:J

    .line 125
    .line 126
    iput-wide v0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 127
    .line 128
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 129
    .line 130
    iget-object p1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 131
    .line 132
    iget-object p1, p1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 133
    .line 134
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget v0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageId:I

    .line 139
    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    move-object v10, v9

    .line 145
    iget-wide v8, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 146
    .line 147
    iput v5, v10, Lorg/wikipedia/diff/ArticleEditDetailsViewModel$getNextRecentEdit$2;->label:I

    .line 148
    .line 149
    const/4 v7, 0x2

    .line 150
    move-object v5, p1

    .line 151
    invoke-interface/range {v5 .. v10}, Lorg/wikipedia/dataclient/Service;->getRevisionDetailsWithUserInfo(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    if-ne p1, p0, :cond_7

    .line 156
    .line 157
    :goto_2
    move-object v4, p0

    .line 158
    goto/16 :goto_7

    .line 159
    .line 160
    :cond_7
    :goto_3
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 161
    .line 162
    iget-object p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 163
    .line 164
    if-eqz p0, :cond_8

    .line 165
    .line 166
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    goto :goto_4

    .line 171
    :cond_8
    move-object p0, v4

    .line 172
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 176
    .line 177
    new-instance v1, Lorg/wikipedia/page/PageTitle;

    .line 178
    .line 179
    iget-object v5, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->title:Ljava/lang/String;

    .line 180
    .line 181
    iget-object v6, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 182
    .line 183
    iget-object v6, v6, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 184
    .line 185
    invoke-direct {v1, v5, v6, v4}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iput-object v1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->pageTitle:Lorg/wikipedia/page/PageTitle;

    .line 189
    .line 190
    iget-object v4, v1, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 191
    .line 192
    iget-object v4, v4, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {p0, v4}, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->displayTitle(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v1, v4}, Lorg/wikipedia/page/PageTitle;->setDisplayText(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->watchedStatus:Landroidx/lifecycle/MutableLiveData;

    .line 202
    .line 203
    new-instance v4, Lorg/wikipedia/util/Resource$Success;

    .line 204
    .line 205
    invoke-direct {v4, p0}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 212
    .line 213
    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_9

    .line 215
    .line 216
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->userInfo:Lorg/wikipedia/dataclient/mwapi/UserInfo;

    .line 217
    .line 218
    if-eqz p1, :cond_9

    .line 219
    .line 220
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/UserInfo;->rights:Ljava/util/List;

    .line 221
    .line 222
    if-eqz p1, :cond_9

    .line 223
    .line 224
    const-string v4, "rollback"

    .line 225
    .line 226
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    if-ne p1, v3, :cond_9

    .line 231
    .line 232
    move p1, v3

    .line 233
    goto :goto_5

    .line 234
    :cond_9
    move p1, v1

    .line 235
    :goto_5
    iput-boolean p1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->hasRollbackRights:Z

    .line 236
    .line 237
    iget-object v4, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->rollbackRights:Landroidx/lifecycle/MutableLiveData;

    .line 238
    .line 239
    new-instance v5, Lorg/wikipedia/util/Resource$Success;

    .line 240
    .line 241
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-direct {v5, p1}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 256
    .line 257
    iput-object p1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 258
    .line 259
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 264
    .line 265
    iget-wide v4, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 266
    .line 267
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->lastrevid:J

    .line 268
    .line 269
    cmp-long p0, v4, p0

    .line 270
    .line 271
    if-gez p0, :cond_a

    .line 272
    .line 273
    move v1, v3

    .line 274
    :cond_a
    iput-boolean v1, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->canGoForward:Z

    .line 275
    .line 276
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object p0

    .line 280
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 281
    .line 282
    iput-object p0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 283
    .line 284
    iget-object p0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 285
    .line 286
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 287
    .line 288
    .line 289
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 290
    .line 291
    iput-wide p0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 292
    .line 293
    iget-object p0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFrom:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 294
    .line 295
    if-eqz p0, :cond_b

    .line 296
    .line 297
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->revId:J

    .line 298
    .line 299
    goto :goto_6

    .line 300
    :cond_b
    iget-object p0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionTo:Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 301
    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    iget-wide p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->parentRevId:J

    .line 306
    .line 307
    :goto_6
    iput-wide p0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 308
    .line 309
    iget-object p0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionDetails:Landroidx/lifecycle/MutableLiveData;

    .line 310
    .line 311
    new-instance p1, Lorg/wikipedia/util/Resource$Success;

    .line 312
    .line 313
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 314
    .line 315
    invoke-direct {p1, v4}, Lorg/wikipedia/util/Resource$Success;-><init>(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    iget-wide p0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionFromId:J

    .line 322
    .line 323
    iget-wide v0, v2, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->revisionToId:J

    .line 324
    .line 325
    invoke-virtual {v2, p0, p1, v0, v1}, Lorg/wikipedia/diff/ArticleEditDetailsViewModel;->getDiffText(JJ)V

    .line 326
    .line 327
    .line 328
    :goto_7
    return-object v4

    .line 329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
