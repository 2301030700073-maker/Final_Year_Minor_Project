.class public final Lnet/openid/appauth/AuthorizationService;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

.field public final mClientConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

.field public final mContext:Landroid/content/Context;

.field public final mCustomTabManager:Lokhttp3/Dispatcher;

.field public mDisposed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    sget-object v0, Lnet/openid/appauth/AppAuthConfiguration;->DEFAULT:Lnet/openid/appauth/AppAuthConfiguration;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Lnet/openid/appauth/browser/BrowserSelector;->BROWSER_INTENT:Landroid/content/Intent;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lnet/openid/appauth/browser/BrowserSelector;->BROWSER_INTENT:Landroid/content/Intent;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/4 v6, 0x0

    .line 25
    if-eqz v5, :cond_0

    .line 26
    .line 27
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 28
    .line 29
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v5, v6

    .line 33
    :goto_0
    const v7, 0x20040

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_8

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 55
    .line 56
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 57
    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    const-string v9, "android.intent.action.VIEW"

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-eqz v8, :cond_1

    .line 67
    .line 68
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 69
    .line 70
    const-string v9, "android.intent.category.BROWSABLE"

    .line 71
    .line 72
    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_1

    .line 77
    .line 78
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 79
    .line 80
    invoke-virtual {v8}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    if-nez v8, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 88
    .line 89
    invoke-virtual {v8}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    if-eqz v8, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 97
    .line 98
    invoke-virtual {v8}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    move v9, v4

    .line 103
    move v10, v9

    .line 104
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-eqz v11, :cond_1

    .line 109
    .line 110
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    check-cast v11, Ljava/lang/String;

    .line 115
    .line 116
    const-string v12, "http"

    .line 117
    .line 118
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    or-int/2addr v9, v12

    .line 123
    const-string v12, "https"

    .line 124
    .line 125
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    or-int/2addr v10, v11

    .line 130
    if-eqz v9, :cond_4

    .line 131
    .line 132
    if-eqz v10, :cond_4

    .line 133
    .line 134
    :try_start_0
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 135
    .line 136
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 137
    .line 138
    const/16 v9, 0x40

    .line 139
    .line 140
    invoke-virtual {v1, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 145
    .line 146
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 147
    .line 148
    new-instance v10, Landroid/content/Intent;

    .line 149
    .line 150
    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v11, "android.support.customtabs.action.CustomTabsService"

    .line 154
    .line 155
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v10, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    if-eqz v9, :cond_6

    .line 166
    .line 167
    new-instance v9, Lnet/openid/appauth/browser/BrowserDescriptor;

    .line 168
    .line 169
    const/4 v10, 0x1

    .line 170
    invoke-direct {v9, v8, v10}, Lnet/openid/appauth/browser/BrowserDescriptor;-><init>(Landroid/content/pm/PackageInfo;Z)V

    .line 171
    .line 172
    .line 173
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 174
    .line 175
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    if-eqz v11, :cond_5

    .line 182
    .line 183
    invoke-virtual {v2, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_5
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    :cond_6
    move v10, v4

    .line 191
    :goto_2
    new-instance v9, Lnet/openid/appauth/browser/BrowserDescriptor;

    .line 192
    .line 193
    invoke-direct {v9, v8, v4}, Lnet/openid/appauth/browser/BrowserDescriptor;-><init>(Landroid/content/pm/PackageInfo;Z)V

    .line 194
    .line 195
    .line 196
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 197
    .line 198
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_7

    .line 205
    .line 206
    invoke-virtual {v2, v10, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_7
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .line 213
    .line 214
    goto/16 :goto_1

    .line 215
    .line 216
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    move-object v2, v6

    .line 221
    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_b

    .line 226
    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    check-cast v3, Lnet/openid/appauth/browser/BrowserDescriptor;

    .line 232
    .line 233
    iget-object v5, v3, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-eqz v5, :cond_a

    .line 240
    .line 241
    move-object v2, v3

    .line 242
    goto :goto_4

    .line 243
    :cond_a
    if-nez v2, :cond_9

    .line 244
    .line 245
    move-object v2, v3

    .line 246
    goto :goto_3

    .line 247
    :cond_b
    :goto_4
    new-instance v1, Lokhttp3/Dispatcher;

    .line 248
    .line 249
    invoke-direct {v1, p1}, Lokhttp3/Dispatcher;-><init>(Landroid/content/Context;)V

    .line 250
    .line 251
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    .line 254
    .line 255
    iput-boolean v4, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    .line 256
    .line 257
    iput-object p1, p0, Lnet/openid/appauth/AuthorizationService;->mContext:Landroid/content/Context;

    .line 258
    .line 259
    iput-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mClientConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    .line 260
    .line 261
    iput-object v1, p0, Lnet/openid/appauth/AuthorizationService;->mCustomTabManager:Lokhttp3/Dispatcher;

    .line 262
    .line 263
    iput-object v2, p0, Lnet/openid/appauth/AuthorizationService;->mBrowser:Lnet/openid/appauth/browser/BrowserDescriptor;

    .line 264
    .line 265
    if-eqz v2, :cond_10

    .line 266
    .line 267
    iget-object p0, v2, Lnet/openid/appauth/browser/BrowserDescriptor;->useCustomTab:Ljava/lang/Boolean;

    .line 268
    .line 269
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 270
    .line 271
    .line 272
    move-result p0

    .line 273
    if-eqz p0, :cond_10

    .line 274
    .line 275
    iget-object p0, v2, Lnet/openid/appauth/browser/BrowserDescriptor;->packageName:Ljava/lang/String;

    .line 276
    .line 277
    monitor-enter v1

    .line 278
    :try_start_1
    iget-object p1, v1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast p1, Lnet/openid/appauth/browser/CustomTabManager$1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    .line 282
    if-eqz p1, :cond_c

    .line 283
    .line 284
    monitor-exit v1

    .line 285
    goto :goto_5

    .line 286
    :cond_c
    :try_start_2
    new-instance p1, Lnet/openid/appauth/browser/CustomTabManager$1;

    .line 287
    .line 288
    invoke-direct {p1, v1}, Lnet/openid/appauth/browser/CustomTabManager$1;-><init>(Lokhttp3/Dispatcher;)V

    .line 289
    .line 290
    .line 291
    iput-object p1, v1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 292
    .line 293
    iget-object p1, v1, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 294
    .line 295
    check-cast p1, Ljava/lang/ref/WeakReference;

    .line 296
    .line 297
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    check-cast p1, Landroid/content/Context;

    .line 302
    .line 303
    if-eqz p1, :cond_e

    .line 304
    .line 305
    iget-object v0, v1, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Lnet/openid/appauth/browser/CustomTabManager$1;

    .line 308
    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    iput-object v2, v0, Lnet/openid/appauth/browser/CustomTabManager$1;->mApplicationContext:Landroid/content/Context;

    .line 314
    .line 315
    new-instance v2, Landroid/content/Intent;

    .line 316
    .line 317
    const-string v3, "android.support.customtabs.action.CustomTabsService"

    .line 318
    .line 319
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-nez v3, :cond_d

    .line 327
    .line 328
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    :cond_d
    const/16 p0, 0x21

    .line 332
    .line 333
    invoke-virtual {p1, v2, v0, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    if-nez p0, :cond_f

    .line 338
    .line 339
    :cond_e
    const-string p0, "Unable to bind custom tabs service"

    .line 340
    .line 341
    new-array p1, v4, [Ljava/lang/Object;

    .line 342
    .line 343
    invoke-static {}, Lnet/openid/appauth/internal/Logger;->getInstance()Lnet/openid/appauth/internal/Logger;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const/4 v2, 0x4

    .line 348
    invoke-virtual {v0, v2, v6, p0, p1}, Lnet/openid/appauth/internal/Logger;->log(ILjava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    iget-object p0, v1, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 352
    .line 353
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 354
    .line 355
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    .line 357
    .line 358
    :cond_f
    monitor-exit v1

    .line 359
    goto :goto_5

    .line 360
    :catchall_0
    move-exception p0

    .line 361
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 362
    throw p0

    .line 363
    :cond_10
    :goto_5
    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/openid/appauth/AuthorizationService;->mCustomTabManager:Lokhttp3/Dispatcher;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lnet/openid/appauth/browser/CustomTabManager$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :try_start_1
    iget-object v1, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/content/Context;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v2, v0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Lnet/openid/appauth/browser/CustomTabManager$1;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    :goto_0
    iget-object v1, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "CustomTabsService is disconnected"

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v1, v2}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    :goto_1
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    .line 58
    .line 59
    return-void

    .line 60
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    throw p0
.end method

.method public final performTokenRequest$1(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnet/openid/appauth/AuthorizationService;->mDisposed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p1, Lnet/openid/appauth/TokenRequest;->configuration:Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/net/Uri;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v0, v1, v2

    .line 16
    .line 17
    const-string v0, "Initiating code exchange request to %s"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lnet/openid/appauth/internal/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;

    .line 23
    .line 24
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationService;->mClientConfiguration:Lnet/openid/appauth/AppAuthConfiguration;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-boolean p0, p0, Lnet/openid/appauth/AppAuthConfiguration;->mSkipIssuerHttpsCheck:Z

    .line 30
    .line 31
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p1, p2, p0}, Lnet/openid/appauth/AuthorizationService$TokenRequestTask;-><init>(Lnet/openid/appauth/TokenRequest;Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;Ljava/lang/Boolean;)V

    .line 36
    .line 37
    .line 38
    new-array p0, v2, [Ljava/lang/Void;

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const-string p0, "Service has been disposed and rendered inoperable"

    .line 45
    .line 46
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
