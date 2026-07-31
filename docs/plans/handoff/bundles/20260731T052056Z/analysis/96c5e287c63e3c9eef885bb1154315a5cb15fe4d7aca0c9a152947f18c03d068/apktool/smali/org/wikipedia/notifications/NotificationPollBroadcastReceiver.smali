.class public final Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/notifications/NotificationPollBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "MultiSelectCallback",
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


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of p0, p0, Lorg/wikipedia/WikipediaApp;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lorg/wikipedia/util/DeviceUtil$$ExternalSyntheticLambda1;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const-string p0, "android.intent.action.BOOT_COMPLETED"

    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_1

    .line 45
    .line 46
    invoke-static {p1}, Lorg/jsoup/select/NodeTraversor;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p2, "channel="

    .line 51
    .line 52
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->startPollTask(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    const-string p0, "action_notification_poll"

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    const/4 v1, 0x1

    .line 74
    if-eqz p0, :cond_7

    .line 75
    .line 76
    invoke-static {}, Lokhttp3/Headers$Companion;->isLoggedIn()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_2

    .line 81
    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :cond_2
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 85
    .line 86
    const-wide/16 v2, 0x0

    .line 87
    .line 88
    const p0, 0x7f120622

    .line 89
    .line 90
    .line 91
    invoke-static {v2, v3, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    cmp-long p2, v4, v2

    .line 96
    .line 97
    if-eqz p2, :cond_6

    .line 98
    .line 99
    sget-object p2, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 100
    .line 101
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iget-object p2, p2, Lorg/wikipedia/WikipediaApp;->activityLifecycleHandler:Lorg/wikipedia/ActivityLifecycleHandler;

    .line 106
    .line 107
    iget-object p2, p2, Lorg/wikipedia/ActivityLifecycleHandler;->currentActivity:Landroid/app/Activity;

    .line 108
    .line 109
    if-eqz p2, :cond_3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    invoke-static {v2, v3, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 117
    .line 118
    .line 119
    move-result-wide v6

    .line 120
    sub-long/2addr v4, v6

    .line 121
    const-wide/32 v6, 0x5265c00

    .line 122
    .line 123
    .line 124
    div-long/2addr v4, v6

    .line 125
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsReactivationTestEnabled()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_4

    .line 130
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v4

    .line 135
    invoke-static {v2, v3, p0}, Lorg/wikipedia/settings/PrefsIoUtil;->getLong(JI)J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    sub-long/2addr v4, v2

    .line 140
    const-wide/32 v2, 0xea60

    .line 141
    .line 142
    .line 143
    div-long/2addr v4, v2

    .line 144
    :cond_4
    const-wide/16 v2, 0x3

    .line 145
    .line 146
    cmp-long p0, v2, v4

    .line 147
    .line 148
    const p2, 0x7f12068f

    .line 149
    .line 150
    .line 151
    const-wide/16 v2, 0x7

    .line 152
    .line 153
    if-gtz p0, :cond_5

    .line 154
    .line 155
    cmp-long p0, v4, v2

    .line 156
    .line 157
    if-gez p0, :cond_5

    .line 158
    .line 159
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsReactivationPassStageOne()Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_5

    .line 164
    .line 165
    invoke-static {p2, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 166
    .line 167
    .line 168
    const p0, 0x7f1208fb

    .line 169
    .line 170
    .line 171
    invoke-static {p1, p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->showSuggestedEditsLocalNotification(Landroid/content/Context;I)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_5
    cmp-long p0, v4, v2

    .line 176
    .line 177
    if-ltz p0, :cond_6

    .line 178
    .line 179
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isSuggestedEditsReactivationPassStageOne()Z

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-eqz p0, :cond_6

    .line 184
    .line 185
    invoke-static {p2, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 186
    .line 187
    .line 188
    const p0, 0x7f1208fc

    .line 189
    .line 190
    .line 191
    invoke-static {p1, p0}, Lorg/wikipedia/readinglist/ReadingListFragment$MultiSelectCallback;->showSuggestedEditsLocalNotification(Landroid/content/Context;I)V

    .line 192
    .line 193
    .line 194
    :cond_6
    :goto_0
    invoke-static {p1}, Lokio/Okio__JvmOkioKt;->schedulePollNotificationJob(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_7
    const-string p0, "action_direct_reply"

    .line 199
    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-eqz p0, :cond_b

    .line 209
    .line 210
    invoke-static {p2}, Landroid/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    const/4 v2, 0x0

    .line 215
    if-eqz p0, :cond_8

    .line 216
    .line 217
    const-string v3, "key_direct_reply"

    .line 218
    .line 219
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    goto :goto_1

    .line 224
    :cond_8
    move-object p0, v2

    .line 225
    :goto_1
    const-string/jumbo v3, "wikiSite"

    .line 226
    .line 227
    .line 228
    const-class v4, Lorg/wikipedia/dataclient/WikiSite;

    .line 229
    .line 230
    invoke-static {p2, v3, v4}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v3, Landroid/os/Parcelable;

    .line 235
    .line 236
    move-object v5, v3

    .line 237
    check-cast v5, Lorg/wikipedia/dataclient/WikiSite;

    .line 238
    .line 239
    const-string v3, "title"

    .line 240
    .line 241
    const-class v4, Lorg/wikipedia/page/PageTitle;

    .line 242
    .line 243
    invoke-static {p2, v3, v4}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Landroid/os/Parcelable;

    .line 248
    .line 249
    move-object v6, v3

    .line 250
    check-cast v6, Lorg/wikipedia/page/PageTitle;

    .line 251
    .line 252
    if-eqz v5, :cond_e

    .line 253
    .line 254
    if-eqz v6, :cond_e

    .line 255
    .line 256
    if-eqz p0, :cond_e

    .line 257
    .line 258
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 259
    .line 260
    .line 261
    move-result v3

    .line 262
    if-nez v3, :cond_9

    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v7

    .line 269
    const-string p0, "extra_reply_to"

    .line 270
    .line 271
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    if-nez p0, :cond_a

    .line 276
    .line 277
    const-string p0, ""

    .line 278
    .line 279
    :cond_a
    const-string v3, "extra_id"

    .line 280
    .line 281
    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 282
    .line 283
    .line 284
    move-result v9

    .line 285
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    new-array p2, v1, [Ljava/lang/Object;

    .line 289
    .line 290
    aput-object p0, p2, v0

    .line 291
    .line 292
    const p0, 0x7f12048a

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 304
    .line 305
    .line 306
    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 307
    .line 308
    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 309
    .line 310
    invoke-static {p0}, Lkotlinx/coroutines/AwaitKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    new-instance p2, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;

    .line 315
    .line 316
    invoke-direct {p2, p1, v6}, Landroidx/compose/runtime/RememberedCoroutineScope$special$$inlined$CoroutineExceptionHandler$1;-><init>(Landroid/content/Context;Lorg/wikipedia/page/PageTitle;)V

    .line 317
    .line 318
    .line 319
    new-instance v4, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;

    .line 320
    .line 321
    const/4 v10, 0x0

    .line 322
    move-object v8, p1

    .line 323
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/talk/NotificationDirectReplyHelper$handleReply$2;-><init>(Lorg/wikipedia/dataclient/WikiSite;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Landroid/content/Context;ILkotlin/coroutines/Continuation;)V

    .line 324
    .line 325
    .line 326
    const/4 p1, 0x2

    .line 327
    invoke-static {p0, p2, v2, v4, p1}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :cond_b
    move-object v8, p1

    .line 332
    const-string p0, "action_daily_game"

    .line 333
    .line 334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result p0

    .line 342
    if-eqz p0, :cond_c

    .line 343
    .line 344
    invoke-static {v8}, Lorg/jsoup/nodes/NodeUtils;->showNotification(Landroid/content/Context;)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :cond_c
    const-string p0, "action_recommended_reading_list"

    .line 349
    .line 350
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result p0

    .line 358
    if-eqz p0, :cond_e

    .line 359
    .line 360
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 361
    .line 362
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListUpdateFrequency()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    sget-object p1, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;->MONTHLY:Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 367
    .line 368
    if-ne p0, p1, :cond_d

    .line 369
    .line 370
    invoke-static {v8}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->scheduleRecommendedReadingListNotification(Landroid/content/Context;)V

    .line 371
    .line 372
    .line 373
    :cond_d
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecommendedReadingListUpdateFrequency()Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    invoke-static {v8, p0}, Lorg/wikipedia/readinglist/recommended/RecommendedReadingListSourceScreenKt;->showNotification(Landroid/content/Context;Lorg/wikipedia/readinglist/recommended/RecommendedReadingListUpdateFrequency;)V

    .line 378
    .line 379
    .line 380
    :cond_e
    :goto_2
    return-void
.end method
