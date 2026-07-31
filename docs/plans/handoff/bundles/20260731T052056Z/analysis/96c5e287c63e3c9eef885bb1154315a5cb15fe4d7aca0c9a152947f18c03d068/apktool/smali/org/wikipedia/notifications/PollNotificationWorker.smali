.class public final Lorg/wikipedia/notifications/PollNotificationWorker;
.super Landroidx/work/CoroutineWorker;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/wikipedia/notifications/PollNotificationWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "okio/Okio__JvmOkioKt",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/wikipedia/notifications/PollNotificationWorker;->appContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;

    .line 21
    .line 22
    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;-><init>(Lorg/wikipedia/notifications/PollNotificationWorker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget-object p0, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->L$0:Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_a

    .line 51
    .line 52
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-object v6

    .line 58
    :cond_2
    iget-object p0, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->L$0:Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 59
    .line 60
    check-cast p0, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 61
    .line 62
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_7

    .line 66
    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto/16 :goto_8

    .line 69
    .line 70
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :try_start_1
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 78
    .line 79
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 80
    .line 81
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iput v5, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->label:I

    .line 94
    .line 95
    invoke-interface {p1, v0}, Lorg/wikipedia/dataclient/Service;->lastUnreadNotification(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v1, :cond_5

    .line 100
    .line 101
    goto/16 :goto_9

    .line 102
    .line 103
    :cond_5
    :goto_1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 104
    .line 105
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .line 107
    const-string v2, ""

    .line 108
    .line 109
    if-eqz p1, :cond_b

    .line 110
    .line 111
    :try_start_2
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    .line 112
    .line 113
    if-eqz p1, :cond_b

    .line 114
    .line 115
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list:Ljava/util/List;

    .line 116
    .line 117
    if-eqz p1, :cond_b

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_6

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    check-cast v5, Lorg/wikipedia/notifications/db/Notification;

    .line 135
    .line 136
    iget-object v5, v5, Lorg/wikipedia/notifications/db/Notification;->timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 137
    .line 138
    if-eqz v5, :cond_7

    .line 139
    .line 140
    iget-object v5, v5, Lorg/wikipedia/notifications/db/Notification$Timestamp;->utciso8601:Ljava/lang/String;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    move-object v5, v6

    .line 144
    :goto_2
    if-nez v5, :cond_8

    .line 145
    .line 146
    move-object v5, v2

    .line 147
    :cond_8
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-eqz v7, :cond_c

    .line 152
    .line 153
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v7

    .line 157
    check-cast v7, Lorg/wikipedia/notifications/db/Notification;

    .line 158
    .line 159
    iget-object v7, v7, Lorg/wikipedia/notifications/db/Notification;->timestamp:Lorg/wikipedia/notifications/db/Notification$Timestamp;

    .line 160
    .line 161
    if-eqz v7, :cond_9

    .line 162
    .line 163
    iget-object v7, v7, Lorg/wikipedia/notifications/db/Notification$Timestamp;->utciso8601:Ljava/lang/String;

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    move-object v7, v6

    .line 167
    :goto_4
    if-nez v7, :cond_a

    .line 168
    .line 169
    move-object v7, v2

    .line 170
    :cond_a
    invoke-virtual {v5, v7}, Ljava/lang/String;->compareTo(Ljava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    if-gez v8, :cond_8

    .line 175
    .line 176
    move-object v5, v7

    .line 177
    goto :goto_3

    .line 178
    :cond_b
    :goto_5
    move-object v5, v6

    .line 179
    :cond_c
    if-nez v5, :cond_d

    .line 180
    .line 181
    move-object v5, v2

    .line 182
    :cond_d
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 183
    .line 184
    const p1, 0x7f120673

    .line 185
    .line 186
    .line 187
    invoke-static {p1, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getString(ILjava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    if-nez v7, :cond_e

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_e
    move-object v2, v7

    .line 195
    :goto_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-lez v2, :cond_f

    .line 200
    .line 201
    invoke-static {p1, v5}, Lorg/wikipedia/settings/PrefsIoUtil;->setString(ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iput-object v6, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->L$0:Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 205
    .line 206
    iput v4, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->label:I

    .line 207
    .line 208
    invoke-virtual {p0, v0}, Lorg/wikipedia/notifications/PollNotificationWorker;->retrieveNotifications(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    if-ne p0, v1, :cond_f

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_f
    :goto_7
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result$Success;

    .line 216
    .line 217
    .line 218
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    return-object p0

    .line 220
    :goto_8
    instance-of p1, p0, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 221
    .line 222
    if-eqz p1, :cond_10

    .line 223
    .line 224
    move-object p1, p0

    .line 225
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 226
    .line 227
    iget-object v2, p1, Lorg/wikipedia/dataclient/mwapi/MwException;->error:Lorg/wikipedia/dataclient/mwapi/MwServiceError;

    .line 228
    .line 229
    invoke-virtual {v2}, Lorg/wikipedia/dataclient/mwapi/MwServiceError;->getKey()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    const-string v4, "login-required"

    .line 234
    .line 235
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_10

    .line 240
    .line 241
    sget-object v2, Lorg/wikipedia/csrf/CsrfTokenClient;->INSTANCE:Lorg/wikipedia/csrf/CsrfTokenClient;

    .line 242
    .line 243
    sget-object v2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 244
    .line 245
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    iput-object p1, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->L$0:Lorg/wikipedia/dataclient/mwapi/MwException;

    .line 254
    .line 255
    iput v3, v0, Lorg/wikipedia/notifications/PollNotificationWorker$doWork$1;->label:I

    .line 256
    .line 257
    invoke-static {v2, v0}, Lorg/wikipedia/csrf/CsrfTokenClient;->getToken$default(Lorg/wikipedia/dataclient/WikiSite;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    if-ne p1, v1, :cond_10

    .line 262
    .line 263
    :goto_9
    return-object v1

    .line 264
    :cond_10
    :goto_a
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 265
    .line 266
    .line 267
    new-instance p0, Landroidx/work/ListenableWorker$Result$Failure;

    .line 268
    .line 269
    invoke-direct {p0}, Landroidx/work/ListenableWorker$Result$Failure;-><init>()V

    .line 270
    .line 271
    .line 272
    return-object p0
.end method

.method public final retrieveNotifications(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p1, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;

    .line 7
    .line 8
    iget v1, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;-><init>(Lorg/wikipedia/notifications/PollNotificationWorker;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object v1, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->L$1:Ljava/util/Map;

    .line 41
    .line 42
    iget-object v0, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->L$0:Ljava/util/Map;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    move-object v9, v0

    .line 48
    move-object v8, v1

    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object v3

    .line 57
    :cond_2
    iget-object v2, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->L$1:Ljava/util/Map;

    .line 58
    .line 59
    iget-object v5, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->L$0:Ljava/util/Map;

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;

    .line 74
    .line 75
    const/16 v6, 0x1a

    .line 76
    .line 77
    invoke-direct {v2, v6}, Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v2}, Lkotlin/text/UStringsKt;->withDefaultMutable(Ljava/util/LinkedHashMap;Lorg/wikipedia/feed/ForYouCardKt$$ExternalSyntheticLambda1;)Ljava/util/Map;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 87
    .line 88
    .line 89
    sget-object v6, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 90
    .line 91
    sget-object v6, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 92
    .line 93
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-static {v6}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    iput-object p1, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->L$0:Ljava/util/Map;

    .line 106
    .line 107
    iput-object v2, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->L$1:Ljava/util/Map;

    .line 108
    .line 109
    iput v5, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->label:I

    .line 110
    .line 111
    invoke-interface {v6, v0}, Lorg/wikipedia/dataclient/Service;->unreadNotificationWikis(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    if-ne v5, v1, :cond_4

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move-object v11, v5

    .line 119
    move-object v5, p1

    .line 120
    move-object p1, v11

    .line 121
    :goto_1
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 122
    .line 123
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->unreadNotificationWikis:Ljava/util/Map;

    .line 129
    .line 130
    if-nez p1, :cond_5

    .line 131
    .line 132
    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 133
    .line 134
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    if-eqz v6, :cond_7

    .line 147
    .line 148
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    check-cast v6, Ljava/util/Map$Entry;

    .line 153
    .line 154
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    check-cast v7, Ljava/lang/String;

    .line 159
    .line 160
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    check-cast v6, Lorg/wikipedia/notifications/db/Notification$UnreadNotificationWikiItem;

    .line 165
    .line 166
    iget-object v8, v6, Lorg/wikipedia/notifications/db/Notification$UnreadNotificationWikiItem;->source:Lorg/wikipedia/notifications/db/Notification$Source;

    .line 167
    .line 168
    if-eqz v8, :cond_6

    .line 169
    .line 170
    new-instance v9, Lorg/wikipedia/dataclient/WikiSite;

    .line 171
    .line 172
    iget-object v8, v8, Lorg/wikipedia/notifications/db/Notification$Source;->base:Ljava/lang/String;

    .line 173
    .line 174
    invoke-direct {v9, v8}, Lorg/wikipedia/dataclient/WikiSite;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v5, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iget-object v6, v6, Lorg/wikipedia/notifications/db/Notification$UnreadNotificationWikiItem;->source:Lorg/wikipedia/notifications/db/Notification$Source;

    .line 181
    .line 182
    iget-object v6, v6, Lorg/wikipedia/notifications/db/Notification$Source;->title:Ljava/lang/String;

    .line 183
    .line 184
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_7
    sget-object p1, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 189
    .line 190
    sget-object p1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 191
    .line 192
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lorg/wikipedia/WikipediaApp;->getWikiSite()Lorg/wikipedia/dataclient/WikiSite;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1}, Lorg/wikipedia/dataclient/ServiceFactory;->get(Lorg/wikipedia/dataclient/WikiSite;)Lorg/wikipedia/dataclient/Service;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iput-object v5, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->L$0:Ljava/util/Map;

    .line 205
    .line 206
    iput-object v2, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->L$1:Ljava/util/Map;

    .line 207
    .line 208
    iput v4, v0, Lorg/wikipedia/notifications/PollNotificationWorker$retrieveNotifications$1;->label:I

    .line 209
    .line 210
    const-string v6, "!read"

    .line 211
    .line 212
    invoke-interface {p1, v6, v3, v0}, Lorg/wikipedia/dataclient/Service;->getAllNotifications(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    if-ne p1, v1, :cond_8

    .line 217
    .line 218
    :goto_3
    return-object v1

    .line 219
    :cond_8
    move-object v8, v2

    .line 220
    move-object v9, v5

    .line 221
    :goto_4
    check-cast p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;

    .line 222
    .line 223
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResponse;->query:Lorg/wikipedia/dataclient/mwapi/MwQueryResult;

    .line 224
    .line 225
    if-eqz p1, :cond_a

    .line 226
    .line 227
    iget-object p1, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult;->notifications:Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;

    .line 228
    .line 229
    if-eqz p1, :cond_a

    .line 230
    .line 231
    iget-object v6, p1, Lorg/wikipedia/dataclient/mwapi/MwQueryResult$NotificationList;->list:Ljava/util/List;

    .line 232
    .line 233
    if-eqz v6, :cond_a

    .line 234
    .line 235
    sget p1, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;->$r8$clinit:I

    .line 236
    .line 237
    iget-object v7, p0, Lorg/wikipedia/notifications/PollNotificationWorker;->appContext:Landroid/content/Context;

    .line 238
    .line 239
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 249
    .line 250
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsHighestPriorityEnabled()Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-eqz p0, :cond_9

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_9
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    sget-object p1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE$1:Lkotlinx/coroutines/Job$Key;

    .line 262
    .line 263
    new-instance v0, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;

    .line 264
    .line 265
    const/16 v1, 0xf

    .line 266
    .line 267
    invoke-direct {v0, p1, v1}, Lorg/wikipedia/WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlin/coroutines/CoroutineContext$Key;I)V

    .line 268
    .line 269
    .line 270
    new-instance v5, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;

    .line 271
    .line 272
    const/4 v10, 0x0

    .line 273
    invoke-direct/range {v5 .. v10}, Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver$Companion$onNotificationsComplete$2;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    .line 274
    .line 275
    .line 276
    invoke-static {p0, v0, v3, v5, v4}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 277
    .line 278
    .line 279
    :cond_a
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 280
    .line 281
    return-object p0
.end method
