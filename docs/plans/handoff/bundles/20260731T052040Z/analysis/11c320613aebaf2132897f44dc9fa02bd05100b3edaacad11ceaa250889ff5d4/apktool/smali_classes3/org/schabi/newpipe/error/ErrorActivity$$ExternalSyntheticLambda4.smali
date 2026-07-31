.class public final synthetic Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p4, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 7
    .line 8
    iget-object p0, p0, Lorg/schabi/newpipe/error/ErrorActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;

    .line 14
    .line 15
    check-cast v2, Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    .line 16
    .line 17
    check-cast v1, Landroid/net/Uri;

    .line 18
    .line 19
    sget p1, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->$r8$clinit:I

    .line 20
    .line 21
    :try_start_0
    new-instance p1, Ljava/util/zip/ZipInputStream;

    .line 22
    .line 23
    new-instance p2, Ljava/io/BufferedInputStream;

    .line 24
    .line 25
    new-instance v3, Lorg/schabi/newpipe/streams/DataReader$1;

    .line 26
    .line 27
    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getStream()Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v3, v4}, Lorg/schabi/newpipe/streams/DataReader$1;-><init>(Lorg/schabi/newpipe/streams/io/SharpStream;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    .line 42
    .line 43
    :try_start_1
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/export/ImportExportManager;->ensureDbDirectoryExists()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string p2, "newpipe.db"

    .line 54
    .line 55
    iget-object p1, p1, Lorg/schabi/newpipe/settings/export/ImportExportManager;->fileLocator:Lorg/schabi/newpipe/settings/export/BackupFileLocator;

    .line 56
    .line 57
    iget-object v3, p1, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->db:Lj$/nio/file/Path;

    .line 58
    .line 59
    new-instance v4, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;

    .line 60
    .line 61
    const/16 v5, 0x17

    .line 62
    .line 63
    invoke-direct {v4, v3, v5}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p2, v4}, Lorg/schabi/newpipe/util/ZipHelper;->extractFileFromZip(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;Lorg/schabi/newpipe/util/ZipHelper$InputStreamConsumer;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_0

    .line 71
    .line 72
    iget-object v3, p1, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbJournal:Lj$/nio/file/Path;

    .line 73
    .line 74
    invoke-static {v3}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    .line 75
    .line 76
    .line 77
    iget-object v3, p1, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbWal:Lj$/nio/file/Path;

    .line 78
    .line 79
    invoke-static {v3}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    .line 80
    .line 81
    .line 82
    iget-object p1, p1, Lorg/schabi/newpipe/settings/export/BackupFileLocator;->dbShm:Lj$/nio/file/Path;

    .line 83
    .line 84
    invoke-static {p1}, Lj$/nio/file/Files;->deleteIfExists(Lj$/nio/file/Path;)Z

    .line 85
    .line 86
    .line 87
    :cond_0
    if-nez p2, :cond_1

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const p2, 0x7f1300c4

    .line 94
    .line 95
    .line 96
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    move-object p1, v0

    .line 106
    move-object v1, p1

    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    const-string p1, "preferences.json"

    .line 115
    .line 116
    invoke-static {v2, p1}, Lorg/schabi/newpipe/util/ZipHelper;->zipContainsFile(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_3

    .line 121
    .line 122
    iget-object p2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->manager:Lorg/schabi/newpipe/settings/export/ImportExportManager;

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    const-string p2, "newpipe.settings"

    .line 128
    .line 129
    invoke-static {v2, p2}, Lorg/schabi/newpipe/util/ZipHelper;->zipContainsFile(Lorg/schabi/newpipe/streams/io/StoredFileHelper;Ljava/lang/String;)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-eqz p2, :cond_2

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    iget-object p1, p0, Lorg/schabi/newpipe/settings/BasePreferenceFragment;->defaultPreferences:Landroid/content/SharedPreferences;

    .line 137
    .line 138
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object p2, p0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;->importExportDataPathKey:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Landroidx/sqlite/SQLite;->restartApp(Landroid/app/Activity;)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_3
    :goto_1
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 164
    .line 165
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    const v0, 0x7f13021b

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    .line 176
    .line 177
    .line 178
    if-eqz p1, :cond_4

    .line 179
    .line 180
    const/4 v0, 0x0

    .line 181
    goto :goto_2

    .line 182
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const v3, 0x7f13021c

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    :goto_2
    iget-object v3, p2, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    .line 194
    .line 195
    iput-object v0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 196
    .line 197
    new-instance v0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;

    .line 198
    .line 199
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda12;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;Landroid/net/Uri;)V

    .line 200
    .line 201
    .line 202
    iput-object v0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 203
    .line 204
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;

    .line 205
    .line 206
    const/16 v3, 0x8

    .line 207
    .line 208
    invoke-direct {v0, p0, v1, v3}, Lorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 209
    .line 210
    .line 211
    const v3, 0x7f130076

    .line 212
    .line 213
    .line 214
    invoke-virtual {p2, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    new-instance v0, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda14;

    .line 219
    .line 220
    invoke-direct {v0, p0, p1, v2, v1}, Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment$$ExternalSyntheticLambda14;-><init>(Lorg/schabi/newpipe/settings/BackupRestoreSettingsFragment;ZLorg/schabi/newpipe/streams/io/StoredFileHelper;Landroid/net/Uri;)V

    .line 221
    .line 222
    .line 223
    const p1, 0x7f130397

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :goto_3
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 235
    .line 236
    const/4 v4, 0x0

    .line 237
    const/16 v5, 0x18

    .line 238
    .line 239
    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->DATABASE_IMPORT_EXPORT:Lorg/schabi/newpipe/error/UserAction;

    .line 240
    .line 241
    const-string v3, "Importing database and settings"

    .line 242
    .line 243
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 244
    .line 245
    .line 246
    sget-object p1, Lorg/schabi/newpipe/error/ErrorUtil;->Companion:Lorg/schabi/newpipe/error/ErrorUtil$Companion;

    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil$Companion;->showSnackbar(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 252
    .line 253
    .line 254
    goto :goto_4

    .line 255
    :catch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    const p1, 0x7f130370

    .line 260
    .line 261
    .line 262
    const/4 p2, 0x0

    .line 263
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 268
    .line 269
    .line 270
    :goto_4
    return-void

    .line 271
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 272
    .line 273
    check-cast v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 274
    .line 275
    check-cast v1, Ljava/util/List;

    .line 276
    .line 277
    sget-object p1, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 278
    .line 279
    new-instance p1, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;

    .line 280
    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    invoke-direct {p1, p2}, Lorg/schabi/newpipe/local/subscription/SubscriptionManager;-><init>(Landroid/content/Context;)V

    .line 289
    .line 290
    .line 291
    iget p2, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->serviceId:I

    .line 292
    .line 293
    iget-object v2, v2, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->url:Ljava/lang/String;

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    new-instance v3, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;

    .line 299
    .line 300
    invoke-direct {v3, p1, p2, v2}, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda4;-><init>(Lorg/schabi/newpipe/local/subscription/SubscriptionManager;ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;

    .line 304
    .line 305
    invoke-direct {p1, v3, v0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableFromAction;-><init>(Ljava/lang/Object;I)V

    .line 306
    .line 307
    .line 308
    sget-object p2, Lio/reactivex/rxjava3/schedulers/Schedulers;->IO:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;

    .line 309
    .line 310
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/internal/operators/completable/CompletableObserveOn;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    new-instance p2, Lio/reactivex/rxjava3/internal/observers/EmptyCompletableObserver;

    .line 323
    .line 324
    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Completable;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleItemsErrors(Ljava/util/List;)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    .line 335
    .line 336
    check-cast v2, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;

    .line 337
    .line 338
    check-cast v1, Lorg/jsoup/parser/TokenData;

    .line 339
    .line 340
    sget p1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->$r8$clinit:I

    .line 341
    .line 342
    invoke-virtual {v2}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    .line 343
    .line 344
    .line 345
    move-result-wide v4

    .line 346
    iget-object p1, v1, Lorg/jsoup/parser/TokenData;->builder:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast p1, Lorg/schabi/newpipe/views/NewPipeEditText;

    .line 349
    .line 350
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    iget-object v3, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->localPlaylistManager:Lokhttp3/Dispatcher;

    .line 359
    .line 360
    if-nez v3, :cond_5

    .line 361
    .line 362
    goto :goto_5

    .line 363
    :cond_5
    const-wide/16 v6, -0x2

    .line 364
    .line 365
    const/4 v9, 0x0

    .line 366
    invoke-virtual/range {v3 .. v9}, Lokhttp3/Dispatcher;->modifyPlaylist(JJLjava/lang/String;Z)Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    new-instance v0, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;

    .line 375
    .line 376
    const/16 v1, 0x9

    .line 377
    .line 378
    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/FeedViewModel$$ExternalSyntheticLambda0;-><init>(I)V

    .line 379
    .line 380
    .line 381
    new-instance v1, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda0;

    .line 382
    .line 383
    const/4 v2, 0x2

    .line 384
    invoke-direct {v1, p0, v2}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;I)V

    .line 385
    .line 386
    .line 387
    sget-object v2, Lio/reactivex/rxjava3/internal/functions/Functions;->EMPTY_ACTION:Landroidx/transition/Transition$1;

    .line 388
    .line 389
    new-instance v3, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;

    .line 390
    .line 391
    invoke-direct {v3, v0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeCallbackObserver;-><init>(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;)V

    .line 392
    .line 393
    .line 394
    :try_start_2
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;

    .line 395
    .line 396
    invoke-direct {v0, v3, p2}, Lio/reactivex/rxjava3/internal/operators/maybe/MaybeObserveOn$ObserveOnMaybeObserver;-><init>(Lio/reactivex/rxjava3/core/MaybeObserver;Lio/reactivex/rxjava3/core/Scheduler;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/core/MaybeObserver;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    .line 401
    .line 402
    iget-object p0, p0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 403
    .line 404
    invoke-virtual {p0, v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 405
    .line 406
    .line 407
    :goto_5
    return-void

    .line 408
    :catchall_0
    move-exception v0

    .line 409
    move-object p0, v0

    .line 410
    const-string p1, "subscribeActual failed"

    .line 411
    .line 412
    invoke-static {p0, p1, p0}, Landroidx/compose/ui/node/Owner$-CC;->m(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    throw p0

    .line 417
    :catch_2
    move-exception v0

    .line 418
    move-object p0, v0

    .line 419
    throw p0

    .line 420
    :pswitch_2
    check-cast p0, Ljava/util/List;

    .line 421
    .line 422
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 423
    .line 424
    check-cast v1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 425
    .line 426
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    check-cast p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    .line 431
    .line 432
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;->action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

    .line 433
    .line 434
    invoke-interface {p0, v2, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;->onClick(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 435
    .line 436
    .line 437
    return-void

    .line 438
    :pswitch_3
    check-cast p0, Ljava/lang/String;

    .line 439
    .line 440
    check-cast v2, Lorg/schabi/newpipe/error/ErrorActivity;

    .line 441
    .line 442
    check-cast v1, Landroid/content/Context;

    .line 443
    .line 444
    sget-object p1, Lorg/schabi/newpipe/error/ErrorActivity;->Companion:Lorg/schabi/newpipe/error/ErrorActivity$Companion;

    .line 445
    .line 446
    const-string p1, "EMAIL"

    .line 447
    .line 448
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result p1

    .line 452
    if-eqz p1, :cond_6

    .line 453
    .line 454
    new-instance p0, Landroid/content/Intent;

    .line 455
    .line 456
    const-string p1, "android.intent.action.SENDTO"

    .line 457
    .line 458
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    const-string p1, "mailto:"

    .line 462
    .line 463
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 468
    .line 469
    .line 470
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 471
    .line 472
    .line 473
    move-result-object p0

    .line 474
    const-string p1, "crashreport@newpipe.schabi.org"

    .line 475
    .line 476
    filled-new-array {p1}, [Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    const-string p2, "android.intent.extra.EMAIL"

    .line 481
    .line 482
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    .line 484
    .line 485
    move-result-object p0

    .line 486
    const p1, 0x7f13003a

    .line 487
    .line 488
    .line 489
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    new-instance p2, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v3, "Exception in  "

    .line 496
    .line 497
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string p1, " 0.29.0"

    .line 504
    .line 505
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object p1

    .line 512
    const-string p2, "android.intent.extra.SUBJECT"

    .line 513
    .line 514
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    .line 516
    .line 517
    move-result-object p0

    .line 518
    const-string p1, "android.intent.extra.TEXT"

    .line 519
    .line 520
    invoke-virtual {v2}, Lorg/schabi/newpipe/error/ErrorActivity;->buildJson()Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p2

    .line 524
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    .line 526
    .line 527
    move-result-object p0

    .line 528
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    .line 530
    .line 531
    :try_start_3
    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 532
    .line 533
    .line 534
    goto :goto_6

    .line 535
    :catch_3
    const p0, 0x7f13035e

    .line 536
    .line 537
    .line 538
    invoke-static {v1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 539
    .line 540
    .line 541
    move-result-object p0

    .line 542
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 543
    .line 544
    .line 545
    goto :goto_6

    .line 546
    :cond_6
    const-string p1, "GITHUB"

    .line 547
    .line 548
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result p0

    .line 552
    if-eqz p0, :cond_7

    .line 553
    .line 554
    const-string p0, "https://github.com/TeamNewPipe/NewPipe/issues"

    .line 555
    .line 556
    invoke-static {v2, p0}, Landroidx/transition/Transition$Impl26;->openUrlInApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    :cond_7
    :goto_6
    return-void

    .line 560
    nop

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
