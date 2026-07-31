.class public final synthetic Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/material3/FadeInFadeOutState;)V
    .locals 0

    .line 11
    const/4 p1, 0x5

    iput p1, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method private final invoke$androidx$datastore$core$FileStorage$$ExternalSyntheticLambda1()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object p0, p0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/io/File;

    .line 4
    .line 5
    sget-object v0, Landroidx/datastore/core/FileStorage;->activeFilesLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Landroidx/datastore/core/FileStorage;->activeFiles:Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0

    .line 23
    throw p0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    .line 15
    .line 16
    invoke-static {v0}, Lcoil3/ImageLoader$Builder;->$r8$lambda$9sV9xdELP0jRY4FSQRSR08pAaNI(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :pswitch_0
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/AppVersion;

    .line 24
    .line 25
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/AppVersion;->packageName:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "Failed to load app info for package "

    .line 28
    .line 29
    const-string v2, "."

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :pswitch_1
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;

    .line 39
    .line 40
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/ImportAppFetcher;->context:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    :pswitch_2
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;

    .line 50
    .line 51
    sget-object v1, Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$ThundermailSignIn;->INSTANCE:Lapp/k9mail/feature/onboarding/main/navigation/OnboardingRoute$ThundermailSignIn;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lapp/k9mail/feature/launcher/navigation/FeatureLauncherNavHostKt$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    .line 58
    return-object v0

    .line 59
    :pswitch_3
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;

    .line 62
    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-boolean v0, v0, Lapp/k9mail/autodiscovery/api/AutoDiscoveryResult$Settings;->isTrusted:Z

    .line 66
    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move v3, v4

    .line 71
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    return-object v0

    .line 80
    :pswitch_4
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Landroidx/work/impl/WorkContinuationImpl;

    .line 83
    .line 84
    sget-object v1, Landroidx/work/impl/utils/EnqueueRunnable;->TAG:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v1, v0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 87
    .line 88
    new-instance v2, Ljava/util/HashSet;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v6, v0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 96
    .line 97
    .line 98
    invoke-static {v0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/HashSet;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_2

    .line 111
    .line 112
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    check-cast v8, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    iget-object v3, v0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 128
    .line 129
    .line 130
    move v3, v4

    .line 131
    :goto_1
    if-nez v3, :cond_4

    .line 132
    .line 133
    iget-object v2, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 134
    .line 135
    iget-object v3, v1, Landroidx/work/impl/WorkManagerImpl;->mConfiguration:Landroidx/work/Configuration;

    .line 136
    .line 137
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 138
    .line 139
    .line 140
    :try_start_0
    invoke-static {v2, v3, v0}, Landroidx/work/impl/utils/EnqueueUtilsKt;->checkContentUriTriggerWorkerLimits(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Landroidx/work/impl/utils/EnqueueRunnable;->processContinuation(Landroidx/work/impl/WorkContinuationImpl;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 151
    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    iget-object v0, v1, Landroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 156
    .line 157
    iget-object v1, v1, Landroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 158
    .line 159
    invoke-static {v3, v0, v1}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->internalEndTransaction()V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_4
    const-string v1, "WorkContinuation has cycles ("

    .line 171
    .line 172
    const-string v2, ")"

    .line 173
    .line 174
    invoke-static {v0, v2, v1}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :goto_2
    return-object v5

    .line 178
    :pswitch_5
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Landroidx/window/core/Version;

    .line 181
    .line 182
    iget v1, v0, Landroidx/window/core/Version;->major:I

    .line 183
    .line 184
    int-to-long v1, v1

    .line 185
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const/16 v2, 0x20

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget v3, v0, Landroidx/window/core/Version;->minor:I

    .line 196
    .line 197
    int-to-long v3, v3

    .line 198
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget v0, v0, Landroidx/window/core/Version;->patch:I

    .line 211
    .line 212
    int-to-long v2, v0

    .line 213
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    return-object v0

    .line 222
    :pswitch_6
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v0, Landroidx/window/core/ConsumerAdapter;

    .line 225
    .line 226
    iget-object v1, v0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    .line 227
    .line 228
    const-string v2, "androidx.window.extensions.WindowExtensionsProvider"

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    .line 236
    .line 237
    const-string v2, "getWindowExtensions"

    .line 238
    .line 239
    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    iget-object v0, v0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    .line 244
    .line 245
    const-string v2, "androidx.window.extensions.WindowExtensions"

    .line 246
    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    if-eqz v0, :cond_5

    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-eqz v0, :cond_5

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_5
    move v3, v4

    .line 279
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    return-object v0

    .line 284
    :pswitch_7
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    .line 287
    .line 288
    iget-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 289
    .line 290
    const/16 v2, 0x1a

    .line 291
    .line 292
    if-eqz v1, :cond_6

    .line 293
    .line 294
    iget-boolean v3, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->useNoBackupDirectory:Z

    .line 295
    .line 296
    if-eqz v3, :cond_6

    .line 297
    .line 298
    new-instance v3, Ljava/io/File;

    .line 299
    .line 300
    iget-object v4, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 301
    .line 302
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    new-instance v5, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 316
    .line 317
    iget-object v6, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v7

    .line 323
    new-instance v8, Landroidx/fragment/app/Fragment$7;

    .line 324
    .line 325
    invoke-direct {v8, v2}, Landroidx/fragment/app/Fragment$7;-><init>(I)V

    .line 326
    .line 327
    .line 328
    iget-object v9, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Lokio/PriorityQueue;

    .line 329
    .line 330
    iget-boolean v10, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 331
    .line 332
    invoke-direct/range {v5 .. v10}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment$7;Lokio/PriorityQueue;Z)V

    .line 333
    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_6
    new-instance v6, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 337
    .line 338
    iget-object v7, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 339
    .line 340
    iget-object v8, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 341
    .line 342
    new-instance v9, Landroidx/fragment/app/Fragment$7;

    .line 343
    .line 344
    invoke-direct {v9, v2}, Landroidx/fragment/app/Fragment$7;-><init>(I)V

    .line 345
    .line 346
    .line 347
    iget-object v10, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Lokio/PriorityQueue;

    .line 348
    .line 349
    iget-boolean v11, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 350
    .line 351
    invoke-direct/range {v6 .. v11}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment$7;Lokio/PriorityQueue;Z)V

    .line 352
    .line 353
    .line 354
    move-object v5, v6

    .line 355
    :goto_4
    iget-boolean v0, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->writeAheadLoggingEnabled:Z

    .line 356
    .line 357
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 358
    .line 359
    .line 360
    return-object v5

    .line 361
    :pswitch_8
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 364
    .line 365
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    new-instance v2, Landroidx/savedstate/Recreator;

    .line 370
    .line 371
    invoke-direct {v2, v4, v0}, Landroidx/savedstate/Recreator;-><init>(ILjava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 375
    .line 376
    .line 377
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 378
    .line 379
    return-object v0

    .line 380
    :pswitch_9
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v0, Landroidx/compose/ui/platform/WeakCache;

    .line 383
    .line 384
    const-string v1, ":memory:"

    .line 385
    .line 386
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/WeakCache;->open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    return-object v0

    .line 391
    :pswitch_a
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 392
    .line 393
    check-cast v0, Landroidx/room/InvalidationTracker;

    .line 394
    .line 395
    iget-object v0, v0, Landroidx/room/InvalidationTracker;->database:Landroidx/work/impl/WorkDatabase_Impl;

    .line 396
    .line 397
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->inCompatibilityMode$room_runtime_release()Z

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    if-eqz v1, :cond_8

    .line 402
    .line 403
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpenInternal()Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_7

    .line 408
    .line 409
    goto :goto_5

    .line 410
    :cond_7
    move v3, v4

    .line 411
    :cond_8
    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    return-object v0

    .line 416
    :pswitch_b
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 417
    .line 418
    check-cast v0, Landroidx/navigation/fragment/NavHostFragment;

    .line 419
    .line 420
    const-string v1, "android-support-nav:fragment:navControllerState"

    .line 421
    .line 422
    const-string v3, "android-support-nav:fragment:graphId"

    .line 423
    .line 424
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    if-eqz v6, :cond_10

    .line 429
    .line 430
    new-instance v7, Landroidx/navigation/NavHostController;

    .line 431
    .line 432
    invoke-direct {v7, v6}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    .line 433
    .line 434
    .line 435
    iget-object v6, v7, Landroidx/navigation/NavHostController;->navInflater$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 436
    .line 437
    iget-object v8, v7, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 438
    .line 439
    invoke-virtual {v7, v0}, Landroidx/navigation/NavHostController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    invoke-virtual {v7, v9}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    .line 447
    .line 448
    .line 449
    iget-object v9, v8, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 450
    .line 451
    new-instance v10, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 452
    .line 453
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 454
    .line 455
    .line 456
    move-result-object v11

    .line 457
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 458
    .line 459
    .line 460
    move-result-object v12

    .line 461
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    invoke-direct {v10, v11, v12}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v9, v10}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 468
    .line 469
    .line 470
    iget-object v9, v8, Landroidx/navigation/internal/NavControllerImpl;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 471
    .line 472
    new-instance v10, Landroidx/navigation/fragment/FragmentNavigator;

    .line 473
    .line 474
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 475
    .line 476
    .line 477
    move-result-object v11

    .line 478
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 479
    .line 480
    .line 481
    move-result-object v12

    .line 482
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    iget v13, v0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 486
    .line 487
    if-eqz v13, :cond_9

    .line 488
    .line 489
    const/4 v14, -0x1

    .line 490
    if-eq v13, v14, :cond_9

    .line 491
    .line 492
    goto :goto_6

    .line 493
    :cond_9
    const v13, 0x7f0902e5

    .line 494
    .line 495
    .line 496
    :goto_6
    invoke-direct {v10, v11, v12, v13}, Landroidx/navigation/fragment/FragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v9, v10}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)V

    .line 500
    .line 501
    .line 502
    iget-object v9, v0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lcom/beetstra/jutf7/Base64Util;

    .line 503
    .line 504
    iget-object v9, v9, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast v9, Lcom/beetstra/jutf7/Base64Util;

    .line 507
    .line 508
    invoke-virtual {v9, v1}, Lcom/beetstra/jutf7/Base64Util;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    if-eqz v9, :cond_a

    .line 513
    .line 514
    invoke-virtual {v7, v9}, Landroidx/navigation/NavHostController;->restoreState(Landroid/os/Bundle;)V

    .line 515
    .line 516
    .line 517
    :cond_a
    iget-object v9, v0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lcom/beetstra/jutf7/Base64Util;

    .line 518
    .line 519
    iget-object v9, v9, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 520
    .line 521
    check-cast v9, Lcom/beetstra/jutf7/Base64Util;

    .line 522
    .line 523
    new-instance v10, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda6;

    .line 524
    .line 525
    const/4 v11, 0x3

    .line 526
    invoke-direct {v10, v11, v7}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v9, v1, v10}, Lcom/beetstra/jutf7/Base64Util;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 530
    .line 531
    .line 532
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lcom/beetstra/jutf7/Base64Util;

    .line 533
    .line 534
    iget-object v1, v1, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v1, Lcom/beetstra/jutf7/Base64Util;

    .line 537
    .line 538
    invoke-virtual {v1, v3}, Lcom/beetstra/jutf7/Base64Util;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    if-eqz v1, :cond_b

    .line 543
    .line 544
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    iput v1, v0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 549
    .line 550
    :cond_b
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Lcom/beetstra/jutf7/Base64Util;

    .line 551
    .line 552
    iget-object v1, v1, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v1, Lcom/beetstra/jutf7/Base64Util;

    .line 555
    .line 556
    new-instance v9, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda6;

    .line 557
    .line 558
    invoke-direct {v9, v2, v0}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1, v3, v9}, Lcom/beetstra/jutf7/Base64Util;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 562
    .line 563
    .line 564
    iget v1, v0, Landroidx/navigation/fragment/NavHostFragment;->graphId:I

    .line 565
    .line 566
    if-eqz v1, :cond_d

    .line 567
    .line 568
    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    check-cast v0, Landroidx/navigation/NavInflater;

    .line 573
    .line 574
    invoke-virtual {v0, v1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    invoke-virtual {v8, v0, v5}, Landroidx/navigation/internal/NavControllerImpl;->setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 579
    .line 580
    .line 581
    :cond_c
    :goto_7
    move-object v5, v7

    .line 582
    goto :goto_8

    .line 583
    :cond_d
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 584
    .line 585
    if-eqz v0, :cond_e

    .line 586
    .line 587
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    :cond_e
    if-eqz v0, :cond_f

    .line 592
    .line 593
    const-string v1, "android-support-nav:fragment:startDestinationArgs"

    .line 594
    .line 595
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 596
    .line 597
    .line 598
    move-result-object v5

    .line 599
    :cond_f
    if-eqz v4, :cond_c

    .line 600
    .line 601
    invoke-virtual {v6}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    check-cast v0, Landroidx/navigation/NavInflater;

    .line 606
    .line 607
    invoke-virtual {v0, v4}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v8, v0, v5}, Landroidx/navigation/internal/NavControllerImpl;->setGraph$navigation_runtime_release(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 612
    .line 613
    .line 614
    goto :goto_7

    .line 615
    :cond_10
    const-string v0, "NavController cannot be created before the fragment is attached"

    .line 616
    .line 617
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    :goto_8
    return-object v5

    .line 621
    :pswitch_c
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 622
    .line 623
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 624
    .line 625
    iget-object v0, v0, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 626
    .line 627
    iget-boolean v1, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->savedStateRegistryAttached:Z

    .line 628
    .line 629
    if-eqz v1, :cond_13

    .line 630
    .line 631
    iget-object v1, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    .line 632
    .line 633
    iget-object v1, v1, Landroidx/lifecycle/LifecycleRegistry;->state:Landroidx/lifecycle/Lifecycle$State;

    .line 634
    .line 635
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    .line 636
    .line 637
    if-eq v1, v3, :cond_12

    .line 638
    .line 639
    iget-object v1, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->entry:Landroidx/navigation/NavBackStackEntry;

    .line 640
    .line 641
    iget-object v0, v0, Landroidx/navigation/internal/NavBackStackEntryImpl;->navResultSavedStateFactory$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 642
    .line 643
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 648
    .line 649
    invoke-static {v1, v0, v2}, Lcom/bumptech/glide/load/Option$1;->create$default(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;I)Landroidx/lifecycle/AtomicReference;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    const-class v1, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    .line 654
    .line 655
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    iget-object v0, v0, Landroidx/lifecycle/AtomicReference;->base:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v0, Lokhttp3/Dispatcher;

    .line 662
    .line 663
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getQualifiedName()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    if-eqz v2, :cond_11

    .line 668
    .line 669
    const-string v3, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 670
    .line 671
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v2

    .line 675
    invoke-virtual {v0, v2, v1}, Lokhttp3/Dispatcher;->getViewModel$lifecycle_viewmodel(Ljava/lang/String;Lkotlin/jvm/internal/ClassReference;)Landroidx/lifecycle/ViewModel;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    goto :goto_9

    .line 680
    :cond_11
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 681
    .line 682
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    :goto_9
    check-cast v5, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;

    .line 686
    .line 687
    iget-object v5, v5, Landroidx/navigation/internal/NavBackStackEntryImpl$SavedStateViewModel;->handle:Landroidx/lifecycle/SavedStateHandle;

    .line 688
    .line 689
    goto :goto_a

    .line 690
    :cond_12
    const-string v0, "You cannot access the NavBackStackEntry\'s SavedStateHandle after the NavBackStackEntry is destroyed."

    .line 691
    .line 692
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    goto :goto_a

    .line 696
    :cond_13
    const-string v0, "You cannot access the NavBackStackEntry\'s SavedStateHandle until it is added to the NavController\'s back stack (i.e., the Lifecycle of the NavBackStackEntry reaches the CREATED state)."

    .line 697
    .line 698
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 699
    .line 700
    .line 701
    :goto_a
    return-object v5

    .line 702
    :pswitch_d
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 703
    .line 704
    check-cast v0, Landroidx/lifecycle/ViewModelStoreOwner;

    .line 705
    .line 706
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getSavedStateHandlesVM(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    return-object v0

    .line 711
    :pswitch_e
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast v0, Landroidx/lifecycle/CoroutineLiveData;

    .line 714
    .line 715
    iput-object v5, v0, Landroidx/lifecycle/CoroutineLiveData;->blockRunner:Lcom/eygraber/uri/Uri$Builder;

    .line 716
    .line 717
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 718
    .line 719
    return-object v0

    .line 720
    :pswitch_f
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 721
    .line 722
    check-cast v0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 723
    .line 724
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->invoke()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    check-cast v0, Ljava/io/File;

    .line 729
    .line 730
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 735
    .line 736
    .line 737
    const/16 v2, 0x2e

    .line 738
    .line 739
    const-string v3, ""

    .line 740
    .line 741
    invoke-static {v2, v1, v3}, Lkotlin/text/StringsKt;->substringAfterLast(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    const-string v2, "preferences_pb"

    .line 746
    .line 747
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 748
    .line 749
    .line 750
    move-result v1

    .line 751
    if-eqz v1, :cond_14

    .line 752
    .line 753
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 754
    .line 755
    .line 756
    move-result-object v5

    .line 757
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 758
    .line 759
    .line 760
    goto :goto_b

    .line 761
    :cond_14
    const-string v1, "File extension for file: "

    .line 762
    .line 763
    const-string v2, " does not match required extension for Preferences file: preferences_pb"

    .line 764
    .line 765
    invoke-static {v0, v2, v1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    :goto_b
    return-object v5

    .line 769
    :pswitch_10
    invoke-direct {v0}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->invoke$androidx$datastore$core$FileStorage$$ExternalSyntheticLambda1()Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    return-object v0

    .line 774
    :pswitch_11
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 775
    .line 776
    check-cast v0, Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 777
    .line 778
    return-object v0

    .line 779
    :pswitch_12
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 780
    .line 781
    check-cast v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 782
    .line 783
    iget-object v1, v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 784
    .line 785
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 790
    .line 791
    iget-wide v2, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 792
    .line 793
    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    cmp-long v2, v2, v6

    .line 799
    .line 800
    if-nez v2, :cond_15

    .line 801
    .line 802
    goto :goto_c

    .line 803
    :cond_15
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v2

    .line 807
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 808
    .line 809
    iget-wide v2, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 810
    .line 811
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    .line 812
    .line 813
    .line 814
    move-result v2

    .line 815
    if-eqz v2, :cond_16

    .line 816
    .line 817
    goto :goto_c

    .line 818
    :cond_16
    iget-object v0, v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    .line 819
    .line 820
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 825
    .line 826
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 827
    .line 828
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    .line 829
    .line 830
    .line 831
    move-result-object v5

    .line 832
    :goto_c
    return-object v5

    .line 833
    :pswitch_13
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 834
    .line 835
    move-object v1, v0

    .line 836
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 837
    .line 838
    :goto_d
    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMapsLock:Ljava/lang/Object;

    .line 839
    .line 840
    monitor-enter v2

    .line 841
    :try_start_1
    iget-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    .line 842
    .line 843
    if-nez v0, :cond_1c

    .line 844
    .line 845
    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 846
    .line 847
    :try_start_2
    iget-object v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    .line 848
    .line 849
    iget-object v5, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 850
    .line 851
    iget v0, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 852
    .line 853
    move v6, v4

    .line 854
    :goto_e
    if-ge v6, v0, :cond_1b

    .line 855
    .line 856
    :try_start_3
    aget-object v7, v5, v6

    .line 857
    .line 858
    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    .line 859
    .line 860
    iget-object v8, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    .line 861
    .line 862
    iget-object v7, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    .line 863
    .line 864
    iget-object v9, v8, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 865
    .line 866
    iget-object v10, v8, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 867
    .line 868
    array-length v11, v10

    .line 869
    add-int/lit8 v11, v11, -0x2

    .line 870
    .line 871
    if-ltz v11, :cond_1a

    .line 872
    .line 873
    move v12, v4

    .line 874
    :goto_f
    aget-wide v13, v10, v12

    .line 875
    .line 876
    not-long v3, v13

    .line 877
    const/16 v16, 0x7

    .line 878
    .line 879
    shl-long v3, v3, v16

    .line 880
    .line 881
    and-long/2addr v3, v13

    .line 882
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    and-long v3, v3, v16

    .line 888
    .line 889
    cmp-long v3, v3, v16

    .line 890
    .line 891
    if-eqz v3, :cond_19

    .line 892
    .line 893
    sub-int v3, v12, v11

    .line 894
    .line 895
    not-int v3, v3

    .line 896
    ushr-int/lit8 v3, v3, 0x1f

    .line 897
    .line 898
    const/16 v4, 0x8

    .line 899
    .line 900
    rsub-int/lit8 v3, v3, 0x8

    .line 901
    .line 902
    const/4 v15, 0x0

    .line 903
    :goto_10
    if-ge v15, v3, :cond_18

    .line 904
    .line 905
    const-wide/16 v16, 0xff

    .line 906
    .line 907
    and-long v16, v13, v16

    .line 908
    .line 909
    const-wide/16 v18, 0x80

    .line 910
    .line 911
    cmp-long v16, v16, v18

    .line 912
    .line 913
    if-gez v16, :cond_17

    .line 914
    .line 915
    shl-int/lit8 v16, v12, 0x3

    .line 916
    .line 917
    add-int v16, v16, v15

    .line 918
    .line 919
    move/from16 v17, v4

    .line 920
    .line 921
    aget-object v4, v9, v16

    .line 922
    .line 923
    invoke-interface {v7, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    goto :goto_11

    .line 927
    :cond_17
    move/from16 v17, v4

    .line 928
    .line 929
    :goto_11
    shr-long v13, v13, v17

    .line 930
    .line 931
    add-int/lit8 v15, v15, 0x1

    .line 932
    .line 933
    move/from16 v4, v17

    .line 934
    .line 935
    goto :goto_10

    .line 936
    :cond_18
    if-ne v3, v4, :cond_1a

    .line 937
    .line 938
    :cond_19
    if-eq v12, v11, :cond_1a

    .line 939
    .line 940
    add-int/lit8 v12, v12, 0x1

    .line 941
    .line 942
    const/4 v3, 0x1

    .line 943
    const/4 v4, 0x0

    .line 944
    goto :goto_f

    .line 945
    :cond_1a
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 946
    .line 947
    .line 948
    add-int/lit8 v6, v6, 0x1

    .line 949
    .line 950
    const/4 v3, 0x1

    .line 951
    const/4 v4, 0x0

    .line 952
    goto :goto_e

    .line 953
    :goto_12
    const/4 v3, 0x0

    .line 954
    goto :goto_13

    .line 955
    :catchall_1
    move-exception v0

    .line 956
    goto :goto_12

    .line 957
    :cond_1b
    move v3, v4

    .line 958
    :try_start_4
    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    .line 959
    .line 960
    goto :goto_14

    .line 961
    :catchall_2
    move-exception v0

    .line 962
    goto :goto_15

    .line 963
    :catchall_3
    move-exception v0

    .line 964
    move v3, v4

    .line 965
    :goto_13
    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    .line 966
    .line 967
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 968
    :cond_1c
    :goto_14
    monitor-exit v2

    .line 969
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->drainChanges()Z

    .line 970
    .line 971
    .line 972
    move-result v0

    .line 973
    if-nez v0, :cond_1d

    .line 974
    .line 975
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 976
    .line 977
    return-object v0

    .line 978
    :cond_1d
    const/4 v3, 0x1

    .line 979
    const/4 v4, 0x0

    .line 980
    goto/16 :goto_d

    .line 981
    .line 982
    :goto_15
    monitor-exit v2

    .line 983
    throw v0

    .line 984
    :pswitch_14
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 985
    .line 986
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    .line 987
    .line 988
    iget-object v0, v0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;->_controller:Lcom/beetstra/jutf7/Base64Util;

    .line 989
    .line 990
    if-eqz v0, :cond_1f

    .line 991
    .line 992
    const/4 v3, 0x0

    .line 993
    new-array v1, v3, [Lkotlin/Pair;

    .line 994
    .line 995
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v1

    .line 999
    check-cast v1, [Lkotlin/Pair;

    .line 1000
    .line 1001
    invoke-static {v1}, Lorg/slf4j/helpers/Util;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    invoke-virtual {v0, v1}, Lcom/beetstra/jutf7/Base64Util;->performSave(Landroid/os/Bundle;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    if-eqz v0, :cond_1e

    .line 1013
    .line 1014
    goto :goto_16

    .line 1015
    :cond_1e
    move-object v5, v1

    .line 1016
    :cond_1f
    :goto_16
    return-object v5

    .line 1017
    :pswitch_15
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1018
    .line 1019
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1020
    .line 1021
    iget-object v1, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->saver:Landroidx/compose/runtime/saveable/Saver;

    .line 1022
    .line 1023
    iget-object v2, v0, Landroidx/compose/runtime/saveable/SaveableHolder;->value:Ljava/lang/Object;

    .line 1024
    .line 1025
    if-eqz v2, :cond_20

    .line 1026
    .line 1027
    invoke-interface {v1, v0, v2}, Landroidx/compose/runtime/saveable/Saver;->save(Landroidx/compose/runtime/saveable/SaveableHolder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v5

    .line 1031
    goto :goto_17

    .line 1032
    :cond_20
    const-string v0, "Value should be initialized"

    .line 1033
    .line 1034
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 1035
    .line 1036
    .line 1037
    :goto_17
    return-object v5

    .line 1038
    :pswitch_16
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1039
    .line 1040
    check-cast v0, Landroidx/compose/material3/internal/FloatProducer;

    .line 1041
    .line 1042
    invoke-interface {v0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    .line 1043
    .line 1044
    .line 1045
    move-result v0

    .line 1046
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1047
    .line 1048
    cmpl-float v0, v0, v1

    .line 1049
    .line 1050
    if-ltz v0, :cond_21

    .line 1051
    .line 1052
    goto :goto_18

    .line 1053
    :cond_21
    const v1, 0x3e99999a    # 0.3f

    .line 1054
    .line 1055
    .line 1056
    :goto_18
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v0

    .line 1060
    return-object v0

    .line 1061
    :pswitch_17
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1062
    .line 1063
    check-cast v0, Landroidx/compose/material3/FadeInFadeOutState;

    .line 1064
    .line 1065
    iget-object v1, v0, Landroidx/compose/material3/FadeInFadeOutState;->current:Ljava/lang/Object;

    .line 1066
    .line 1067
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1068
    .line 1069
    .line 1070
    move-result v1

    .line 1071
    if-nez v1, :cond_22

    .line 1072
    .line 1073
    iget-object v1, v0, Landroidx/compose/material3/FadeInFadeOutState;->items:Ljava/util/ArrayList;

    .line 1074
    .line 1075
    new-instance v2, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 1076
    .line 1077
    invoke-direct {v2, v5}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 1081
    .line 1082
    .line 1083
    iget-object v0, v0, Landroidx/compose/material3/FadeInFadeOutState;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1084
    .line 1085
    if-eqz v0, :cond_22

    .line 1086
    .line 1087
    iget-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 1088
    .line 1089
    if-eqz v1, :cond_22

    .line 1090
    .line 1091
    invoke-interface {v1, v0, v5}, Landroidx/compose/runtime/RecomposeScopeOwner;->invalidate(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Landroidx/compose/runtime/InvalidationResult;

    .line 1092
    .line 1093
    .line 1094
    :cond_22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1095
    .line 1096
    return-object v0

    .line 1097
    :pswitch_18
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1098
    .line 1099
    check-cast v0, Landroidx/compose/material3/SheetState;

    .line 1100
    .line 1101
    iget-object v0, v0, Landroidx/compose/material3/SheetState;->anchoredDraggableMotionSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 1102
    .line 1103
    return-object v0

    .line 1104
    :pswitch_19
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v0, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;

    .line 1107
    .line 1108
    const/high16 v1, 0x41800000    # 16.0f

    .line 1109
    .line 1110
    invoke-virtual {v0}, Landroidx/compose/material3/internal/TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0;->invoke()F

    .line 1111
    .line 1112
    .line 1113
    move-result v0

    .line 1114
    const/high16 v2, 0x41c00000    # 24.0f

    .line 1115
    .line 1116
    invoke-static {v2, v1, v0}, Landroidx/room/util/DBUtil;->lerp(FFF)F

    .line 1117
    .line 1118
    .line 1119
    move-result v0

    .line 1120
    new-instance v1, Landroidx/compose/ui/unit/Dp;

    .line 1121
    .line 1122
    invoke-direct {v1, v0}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    .line 1123
    .line 1124
    .line 1125
    return-object v1

    .line 1126
    :pswitch_1a
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1127
    .line 1128
    check-cast v0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;

    .line 1129
    .line 1130
    iget-object v0, v0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper;->onDismissRequest:Lkotlin/jvm/functions/Function0;

    .line 1131
    .line 1132
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1136
    .line 1137
    return-object v0

    .line 1138
    :pswitch_1b
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1139
    .line 1140
    check-cast v0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;

    .line 1141
    .line 1142
    invoke-virtual {v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;->invoke()Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1146
    .line 1147
    return-object v0

    .line 1148
    :pswitch_1c
    iget-object v0, v0, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1149
    .line 1150
    check-cast v0, Lcoil3/ImageLoader$Builder;

    .line 1151
    .line 1152
    invoke-static {v0}, Lcoil3/ImageLoader$Builder;->$r8$lambda$cN14KJ-5b8LtaneJqFUMenudOvU(Lcoil3/ImageLoader$Builder;)Lcoil3/memory/MemoryCache;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v0

    .line 1156
    return-object v0

    .line 1157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
