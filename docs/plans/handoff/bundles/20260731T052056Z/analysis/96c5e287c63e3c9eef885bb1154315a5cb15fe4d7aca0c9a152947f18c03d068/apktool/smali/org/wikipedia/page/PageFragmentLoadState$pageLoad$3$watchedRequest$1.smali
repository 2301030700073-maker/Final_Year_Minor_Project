.class public final Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $makeWatchRequest:Z

.field public final synthetic $r8$classId:I

.field public final synthetic $title:Lorg/wikipedia/page/PageTitle;

.field public label:I


# direct methods
.method public synthetic constructor <init>(ZLorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$makeWatchRequest:Z

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$title:Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$title:Lorg/wikipedia/page/PageTitle;

    .line 4
    .line 5
    iget-boolean p0, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$makeWatchRequest:Z

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;-><init>(ZLorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;-><init>(ZLorg/wikipedia/page/PageTitle;Lkotlin/coroutines/Continuation;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 9

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lorg/wikipedia/util/log/L;->LEVEL_W:Lorg/wikipedia/util/log/L$LEVEL_D$1;

    .line 4
    .line 5
    iget-boolean v2, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$makeWatchRequest:Z

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->$title:Lorg/wikipedia/page/PageTitle;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iget v7, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->label:I

    .line 19
    .line 20
    if-eqz v7, :cond_1

    .line 21
    .line 22
    if-ne v7, v4, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    :try_start_1
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 38
    .line 39
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 50
    .line 51
    iget-object p1, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 52
    .line 53
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getText()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput v4, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->label:I

    .line 62
    .line 63
    invoke-interface {p1, v2, p0}, Lorg/wikipedia/dataclient/Service;->getCategoriesProps(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v0, :cond_2

    .line 68
    .line 69
    move-object v6, v0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 72
    .line 73
    move-object v6, p1

    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 76
    .line 77
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    move-object v6, p0

    .line 81
    goto :goto_1

    .line 82
    :catch_0
    const-string p0, "Ignoring network error while fetching categories."

    .line 83
    .line 84
    invoke-virtual {v1, p0, v6}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    new-instance v6, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 88
    .line 89
    invoke-direct {v6}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;-><init>()V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-object v6

    .line 93
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 94
    .line 95
    iget v7, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->label:I

    .line 96
    .line 97
    const/4 v8, 0x2

    .line 98
    if-eqz v7, :cond_6

    .line 99
    .line 100
    if-eq v7, v4, :cond_5

    .line 101
    .line 102
    if-ne v7, v8, :cond_4

    .line 103
    .line 104
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/wikipedia/dataclient/mwapi/MwNotLoggedInException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    .line 106
    .line 107
    goto/16 :goto_7

    .line 108
    .line 109
    :cond_4
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_9

    .line 113
    .line 114
    :cond_5
    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/wikipedia/dataclient/mwapi/MwNotLoggedInException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    if-eqz v2, :cond_8

    .line 122
    .line 123
    :try_start_4
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 124
    .line 125
    iget-object p1, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 126
    .line 127
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v5}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iput v4, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->label:I

    .line 136
    .line 137
    invoke-interface {p1, v2, p0}, Lorg/wikipedia/dataclient/Service;->getWatchedStatusWithCategories(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    if-ne p1, v0, :cond_7

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_7
    :goto_2
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 145
    .line 146
    :goto_3
    move-object v6, p1

    .line 147
    goto/16 :goto_9

    .line 148
    .line 149
    :cond_8
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 150
    .line 151
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_b

    .line 160
    .line 161
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_b

    .line 166
    .line 167
    iget-object p1, v5, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 168
    .line 169
    iput v8, p0, Lorg/wikipedia/page/PageFragmentLoadState$pageLoad$3$watchedRequest$1;->label:I

    .line 170
    .line 171
    new-instance v2, Ljava/util/Date;

    .line 172
    .line 173
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 177
    .line 178
    .line 179
    move-result-wide v2

    .line 180
    sget-object v5, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 181
    .line 182
    const v5, 0x7f12061d

    .line 183
    .line 184
    .line 185
    const-wide/16 v7, 0x0

    .line 186
    .line 187
    invoke-static {v7, v8, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 188
    .line 189
    .line 190
    move-result-wide v7

    .line 191
    sub-long/2addr v2, v7

    .line 192
    const-wide/32 v7, 0x240c8400

    .line 193
    .line 194
    .line 195
    cmp-long v2, v2, v7

    .line 196
    .line 197
    if-gez v2, :cond_9

    .line 198
    .line 199
    sget-object v2, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 200
    .line 201
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-interface {p1, p0}, Lorg/wikipedia/dataclient/Service;->getUserInfo(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    :goto_4
    move-object p1, p0

    .line 210
    goto :goto_5

    .line 211
    :cond_9
    new-instance p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 212
    .line 213
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;-><init>()V

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :goto_5
    if-ne p1, v0, :cond_a

    .line 218
    .line 219
    :goto_6
    move-object v6, v0

    .line 220
    goto :goto_9

    .line 221
    :cond_a
    :goto_7
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_b
    new-instance p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 225
    .line 226
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;-><init>()V
    :try_end_4
    .catch Lorg/wikipedia/dataclient/mwapi/MwNotLoggedInException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 227
    .line 228
    .line 229
    :goto_8
    move-object v6, p0

    .line 230
    goto :goto_9

    .line 231
    :catch_1
    const-string p0, "Ignoring network error while fetching watched status."

    .line 232
    .line 233
    invoke-virtual {v1, p0, v6}, Lorg/wikipedia/util/log/L$LEVEL_D$1;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    new-instance p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 237
    .line 238
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;-><init>()V

    .line 239
    .line 240
    .line 241
    goto :goto_8

    .line 242
    :catch_2
    sget-object p0, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 243
    .line 244
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 245
    .line 246
    .line 247
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->resetAfterLogOut()V

    .line 248
    .line 249
    .line 250
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 251
    .line 252
    invoke-static {v4}, Lorg/wikipedia/settings/Prefs;->setQueueLoggedOutInBackgroundDialog(Z)V

    .line 253
    .line 254
    .line 255
    new-instance p0, Lorg/wikipedia/events/LoggedOutInBackgroundEvent;

    .line 256
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-static {p0}, Lorg/wikipedia/concurrency/FlowEventBus;->post(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    new-instance p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 264
    .line 265
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;-><init>()V

    .line 266
    .line 267
    .line 268
    goto :goto_8

    .line 269
    :goto_9
    return-object v6

    .line 270
    nop

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
