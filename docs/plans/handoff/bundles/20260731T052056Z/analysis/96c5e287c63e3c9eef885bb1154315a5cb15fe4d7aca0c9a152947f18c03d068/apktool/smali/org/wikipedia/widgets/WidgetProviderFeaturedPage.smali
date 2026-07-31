.class public final Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;
.super Landroid/appwidget/AppWidgetProvider;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;",
        "Landroid/appwidget/AppWidgetProvider;",
        "<init>",
        "()V",
        "Companion",
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

.field public static lastServerUpdateMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Landroid/content/ComponentName;

    .line 11
    .line 12
    const-class p3, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;

    .line 13
    .line 14
    invoke-direct {p0, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    array-length p3, p0

    .line 25
    const/4 v0, 0x0

    .line 26
    move v1, v0

    .line 27
    :goto_0
    if-ge v1, p3, :cond_8

    .line 28
    .line 29
    aget v2, p0, v1

    .line 30
    .line 31
    const-string/jumbo v3, "updating widget..."

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Lorg/wikipedia/util/log/L;->d(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v3, Landroid/widget/RemoteViews;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const v5, 0x7f0c0604

    .line 44
    .line 45
    .line 46
    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-class v5, Landroid/os/Bundle;

    .line 54
    .line 55
    const-string v6, "title"

    .line 56
    .line 57
    invoke-static {v4, v6, v5}, Landroidx/room/Room;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/os/Bundle;

    .line 62
    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    sget-object v5, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 66
    .line 67
    invoke-static {}, Lorg/jsoup/Jsoup;->getInstance()Lorg/wikipedia/WikipediaApp;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 76
    .line 77
    .line 78
    const-class v5, Lorg/wikipedia/page/PageTitle;

    .line 79
    .line 80
    invoke-static {v4, v6, v5}, Landroidx/room/Room;->getParcelable(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Lorg/wikipedia/page/PageTitle;

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_0
    const/4 v4, 0x0

    .line 88
    :goto_1
    if-eqz v4, :cond_7

    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    sget-wide v7, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->lastServerUpdateMillis:J

    .line 95
    .line 96
    sub-long/2addr v5, v7

    .line 97
    const-wide/32 v7, 0x36ee80

    .line 98
    .line 99
    .line 100
    cmp-long v5, v5, v7

    .line 101
    .line 102
    if-lez v5, :cond_1

    .line 103
    .line 104
    goto/16 :goto_6

    .line 105
    .line 106
    :cond_1
    sget-object v5, Lorg/wikipedia/util/StringUtil;->INSTANCE:Lorg/wikipedia/util/StringUtil;

    .line 107
    .line 108
    invoke-virtual {v4}, Lorg/wikipedia/page/PageTitle;->getDisplayText()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-static {v5}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const v6, 0x7f090770

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    iget-object v5, v4, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 123
    .line 124
    const/16 v6, 0x8

    .line 125
    .line 126
    const v7, 0x7f09076e

    .line 127
    .line 128
    .line 129
    if-eqz v5, :cond_3

    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-nez v5, :cond_2

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_2
    iget-object v5, v4, Lorg/wikipedia/page/PageTitle;->description:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v3, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v7, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_3
    :goto_2
    invoke-virtual {v3, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 148
    .line 149
    .line 150
    :goto_3
    iget-object v5, v4, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 151
    .line 152
    const v7, 0x7f09076f

    .line 153
    .line 154
    .line 155
    if-eqz v5, :cond_6

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-nez v5, :cond_4

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_4
    sget-object v5, Lorg/wikipedia/util/ImageUrlUtil;->WIDTH_IN_IMAGE_URL_REGEX:Ljava/util/regex/Pattern;

    .line 165
    .line 166
    iget-object v5, v4, Lorg/wikipedia/page/PageTitle;->thumbUrl:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    const/16 v6, 0x14a

    .line 172
    .line 173
    invoke-static {v6, v5}, Lorg/wikipedia/util/ImageUrlUtil;->getUrlForPreferredSize(ILjava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    new-instance v6, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;

    .line 178
    .line 179
    const/4 v8, 0x6

    .line 180
    invoke-direct {v6, v3, p2, v2, v8}, Landroidx/compose/foundation/ScrollNode$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 181
    .line 182
    .line 183
    sget-object v8, Lokio/Okio__OkioKt;->_implementation:Lokio/ByteString$Companion;

    .line 184
    .line 185
    if-eqz v8, :cond_5

    .line 186
    .line 187
    new-instance v8, Lcoil3/request/ImageRequest$Builder;

    .line 188
    .line 189
    invoke-direct {v8, p1}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    iput-object v5, v8, Lcoil3/request/ImageRequest$Builder;->data:Ljava/lang/Object;

    .line 193
    .line 194
    new-instance v5, Landroidx/compose/ui/draw/DrawResult;

    .line 195
    .line 196
    invoke-direct {v5, v6}, Landroidx/compose/ui/draw/DrawResult;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 197
    .line 198
    .line 199
    iput-object v5, v8, Lcoil3/request/ImageRequest$Builder;->target:Lcoil3/target/Target;

    .line 200
    .line 201
    invoke-virtual {v8}, Lcoil3/request/ImageRequest$Builder;->build()Lcoil3/request/ImageRequest;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-static {p1}, Lcoil3/SingletonImageLoader;->get(Landroid/content/Context;)Lcoil3/RealImageLoader;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v6, v5}, Lcoil3/RealImageLoader;->enqueue(Lcoil3/request/ImageRequest;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v3, v7, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_5
    const-string p0, "ImageService has not been set, call ImageService.setImplementation() before using ImageService"

    .line 217
    .line 218
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_6
    :goto_4
    invoke-virtual {v3, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 223
    .line 224
    .line 225
    :goto_5
    new-instance v5, Lorg/wikipedia/history/HistoryEntry;

    .line 226
    .line 227
    const/16 v6, 0x1d

    .line 228
    .line 229
    invoke-direct {v5, v6, v4}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 230
    .line 231
    .line 232
    sget v4, Lorg/wikipedia/page/PageActivity;->$r8$clinit:I

    .line 233
    .line 234
    invoke-virtual {v5}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-static {p1, v5, v4}, Lorg/wikipedia/login/LoginClient;->newIntentForNewTab(Landroid/content/Context;Lorg/wikipedia/history/HistoryEntry;Lorg/wikipedia/page/PageTitle;)Landroid/content/Intent;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    const-string v5, "invokeSource"

    .line 243
    .line 244
    sget-object v6, Lorg/wikipedia/Constants$InvokeSource;->WIDGET:Lorg/wikipedia/Constants$InvokeSource;

    .line 245
    .line 246
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    sget-object v5, Lorg/wikipedia/widgets/WidgetTypes;->FEATURED_ARTICLE:Lorg/wikipedia/widgets/WidgetTypes;

    .line 251
    .line 252
    invoke-virtual {v5}, Lorg/wikipedia/widgets/WidgetTypes;->getValue()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    const-string/jumbo v6, "widgetType"

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    const/high16 v5, 0x10000000

    .line 264
    .line 265
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    const/high16 v5, 0x8000000

    .line 270
    .line 271
    const/4 v6, 0x1

    .line 272
    invoke-static {p1, v6, v4, v5}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    const v5, 0x7f09076d

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p2, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 283
    .line 284
    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_7
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 290
    .line 291
    .line 292
    move-result-wide p2

    .line 293
    sput-wide p2, Lorg/wikipedia/widgets/WidgetProviderFeaturedPage;->lastServerUpdateMillis:J

    .line 294
    .line 295
    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    iget-object p2, p0, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 300
    .line 301
    iget-object p2, p2, Landroidx/work/Configuration;->tracer:Landroidx/work/SystemClock;

    .line 302
    .line 303
    const-string p3, "CancelWorkByTag_"

    .line 304
    .line 305
    const-string v0, "WidgetFeaturedPageWorker"

    .line 306
    .line 307
    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 312
    .line 313
    iget-object v1, v1, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Landroidx/room/TransactionExecutor;

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    new-instance v2, Landroidx/work/impl/WorkManagerImpl$$ExternalSyntheticLambda0;

    .line 319
    .line 320
    const/4 v3, 0x2

    .line 321
    invoke-direct {v2, p0, v3}, Landroidx/work/impl/WorkManagerImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkManagerImpl;I)V

    .line 322
    .line 323
    .line 324
    invoke-static {p2, p3, v1, v2}, Landroidx/work/OperationKt;->launchOperation(Landroidx/work/SystemClock;Ljava/lang/String;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function0;)Landroidx/work/Data$Builder;

    .line 325
    .line 326
    .line 327
    new-instance p0, Landroidx/compose/runtime/Latch;

    .line 328
    .line 329
    const-class p2, Lorg/wikipedia/widgets/WidgetFeaturedPageWorker;

    .line 330
    .line 331
    invoke-direct {p0, p2}, Landroidx/compose/runtime/Latch;-><init>(Ljava/lang/Class;)V

    .line 332
    .line 333
    .line 334
    iget-object p2, p0, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast p2, Ljava/util/LinkedHashSet;

    .line 337
    .line 338
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    sget-object p2, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    .line 342
    .line 343
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/Latch;->setBackoffCriteria(Landroidx/work/BackoffPolicy;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->build()Landroidx/work/OneTimeWorkRequest;

    .line 347
    .line 348
    .line 349
    move-result-object p0

    .line 350
    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance$1(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p1, p0}, Landroidx/work/impl/WorkManagerImpl;->enqueue(Landroidx/work/OneTimeWorkRequest;)V

    .line 355
    .line 356
    .line 357
    :cond_8
    return-void
.end method
