.class public final Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $title:Lorg/wikipedia/page/PageTitle;

.field public label:I

.field public final synthetic this$0:Lcom/google/gson/GsonBuilder;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageTitle;Lcom/google/gson/GsonBuilder;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->this$0:Lcom/google/gson/GsonBuilder;

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
    iget p1, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->this$0:Lcom/google/gson/GsonBuilder;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;-><init>(Lorg/wikipedia/page/PageTitle;Lcom/google/gson/GsonBuilder;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {p1, p0, v0, p2, v1}, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;-><init>(Lorg/wikipedia/page/PageTitle;Lcom/google/gson/GsonBuilder;Lkotlin/coroutines/Continuation;I)V

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
    iget v0, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 14

    .line 1
    iget v0, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->$r8$classId:I

    .line 2
    .line 3
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 4
    .line 5
    iget-object v2, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->$title:Lorg/wikipedia/page/PageTitle;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iget-object v4, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->this$0:Lcom/google/gson/GsonBuilder;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 15
    .line 16
    iget v6, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->label:I

    .line 17
    .line 18
    if-eqz v6, :cond_1

    .line 19
    .line 20
    if-ne v6, v3, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    move-object p1, v5

    .line 30
    goto :goto_3

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 35
    .line 36
    iget-object p1, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 37
    .line 38
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->getRest(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/RestService;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    iget-object p1, v4, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lorg/wikipedia/page/PageViewModel;

    .line 49
    .line 50
    iget-boolean p1, p1, Lorg/wikipedia/page/PageViewModel;->forceNetwork:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    sget-object p1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    sget-object p1, Lorg/wikipedia/dataclient/okhttp/OkHttpConnectionFactory;->CACHE_CONTROL_NONE:Lokhttp3/CacheControl;

    .line 58
    .line 59
    :goto_1
    invoke-virtual {p1}, Lokhttp3/CacheControl;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    iget-object p1, v4, Lcom/google/gson/GsonBuilder;->excluder:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lorg/wikipedia/page/PageViewModel;

    .line 66
    .line 67
    iget-object p1, p1, Lorg/wikipedia/page/PageViewModel;->readingListPage:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 70
    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    const-string p1, "save"

    .line 74
    .line 75
    move-object v9, p1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move-object v9, v5

    .line 78
    :goto_2
    iget-object p1, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 79
    .line 80
    iget-object v10, p1, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v2}, Lorg/wikipedia/page/PageTitle;->getPrefixedText()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :try_start_0
    const-string v1, "UTF-8"

    .line 87
    .line 88
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    const-string v1, "+"

    .line 96
    .line 97
    const-string v2, "%20"

    .line 98
    .line 99
    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v11
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    iput v3, p0, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->label:I

    .line 104
    .line 105
    const/4 v13, 0x2

    .line 106
    move-object v12, p0

    .line 107
    invoke-static/range {v6 .. v13}, Lorg/wikipedia/dataclient/Service$-CC;->getSummaryResponse$default(Lorg/wikipedia/dataclient/RestService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/SuspendLambda;I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne p1, v0, :cond_4

    .line 112
    .line 113
    move-object p1, v0

    .line 114
    goto :goto_3

    .line 115
    :catch_0
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    :goto_3
    return-object p1

    .line 122
    :pswitch_0
    move-object v12, p0

    .line 123
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 124
    .line 125
    iget v0, v12, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->label:I

    .line 126
    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    if-ne v0, v3, :cond_5

    .line 130
    .line 131
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_5

    .line 139
    .line 140
    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 144
    .line 145
    iget-object p1, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 146
    .line 147
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget-object v0, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 152
    .line 153
    iget-object v0, v0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v0}, Lorg/wikipedia/staticdata/UserTalkAliasData;->valueFor(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 160
    .line 161
    const v1, 0x7f120620

    .line 162
    .line 163
    .line 164
    const-string v5, ""

    .line 165
    .line 166
    invoke-static {v1, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    const-string v5, ":"

    .line 171
    .line 172
    invoke-static {v0, v5, v1}, Landroidx/compose/animation/core/Animation$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput v3, v12, Lorg/wikipedia/page/PageFragmentLoadState$checkAnonNotifications$2;->label:I

    .line 177
    .line 178
    invoke-interface {p1, v0, v12}, Lorg/wikipedia/dataclient/Service;->getLastModified(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-ne p1, p0, :cond_7

    .line 183
    .line 184
    move-object v5, p0

    .line 185
    goto :goto_5

    .line 186
    :cond_7
    :goto_4
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 187
    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    iget-object p0, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 195
    .line 196
    if-eqz p0, :cond_8

    .line 197
    .line 198
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->firstPage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    if-eqz p0, :cond_8

    .line 203
    .line 204
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage;->revisions:Ljava/util/List;

    .line 205
    .line 206
    if-eqz p0, :cond_8

    .line 207
    .line 208
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;

    .line 213
    .line 214
    if-eqz p0, :cond_8

    .line 215
    .line 216
    iget-object p0, p0, Lorg/wikipedia/dataclient/mwapi/MwQueryPage$Revision;->timeStamp:Ljava/lang/String;

    .line 217
    .line 218
    if-eqz p0, :cond_8

    .line 219
    .line 220
    new-instance p1, Ljava/util/Date;

    .line 221
    .line 222
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 226
    .line 227
    .line 228
    move-result-wide v0

    .line 229
    sget-object p1, Lorg/wikipedia/util/DateUtil;->DATE_FORMATS:Lj$/util/concurrent/ConcurrentHashMap;

    .line 230
    .line 231
    invoke-static {p0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 236
    .line 237
    .line 238
    move-result-wide p0

    .line 239
    sub-long/2addr v0, p0

    .line 240
    const-wide/32 p0, 0x240c8400

    .line 241
    .line 242
    .line 243
    cmp-long p0, v0, p0

    .line 244
    .line 245
    if-gez p0, :cond_8

    .line 246
    .line 247
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 248
    .line 249
    const p0, 0x7f1205d2

    .line 250
    .line 251
    .line 252
    invoke-static {p0, v3}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 253
    .line 254
    .line 255
    new-instance p0, Ljava/util/Date;

    .line 256
    .line 257
    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 261
    .line 262
    .line 263
    move-result-wide p0

    .line 264
    const v0, 0x7f12061f

    .line 265
    .line 266
    .line 267
    invoke-static {p0, p1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setLong(JI)V

    .line 268
    .line 269
    .line 270
    iget-object p0, v2, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 271
    .line 272
    iget-object p0, p0, Lorg/wikipedia/dataclient/WikiSite;->languageCode:Ljava/lang/String;

    .line 273
    .line 274
    const p1, 0x7f12061e

    .line 275
    .line 276
    .line 277
    invoke-static {p1, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 278
    .line 279
    .line 280
    iget-object p0, v4, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p0, Lorg/wikipedia/page/PageFragment;

    .line 283
    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    check-cast p0, Lorg/wikipedia/page/PageActivity;

    .line 289
    .line 290
    invoke-virtual {p0, v3}, Lorg/wikipedia/page/PageActivity;->updateNotificationsButton(Z)V

    .line 291
    .line 292
    .line 293
    :cond_8
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 294
    .line 295
    :goto_5
    return-object v5

    .line 296
    nop

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
