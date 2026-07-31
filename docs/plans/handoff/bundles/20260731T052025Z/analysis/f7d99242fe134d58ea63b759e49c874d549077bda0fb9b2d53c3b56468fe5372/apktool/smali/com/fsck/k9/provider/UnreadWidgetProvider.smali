.class public final Lcom/fsck/k9/provider/UnreadWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# instance fields
.field public final logger$delegate:Lkotlin/Lazy;

.field public final repository$delegate:Lkotlin/Lazy;

.field public final widgetScope:Lkotlinx/coroutines/internal/ContextScope;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 11
    .line 12
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/fsck/k9/provider/UnreadWidgetProvider;->repository$delegate:Lkotlin/Lazy;

    .line 17
    .line 18
    new-instance v0, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;

    .line 19
    .line 20
    const/4 v2, 0x7

    .line 21
    invoke-direct {v0, p0, v2}, Lcom/fsck/k9/K9$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/fsck/k9/provider/UnreadWidgetProvider;->logger$delegate:Lkotlin/Lazy;

    .line 29
    .line 30
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 35
    .line 36
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/fsck/k9/provider/UnreadWidgetProvider;->widgetScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 47
    .line 48
    return-void
.end method

.method public static final access$updateWidgets(Lcom/fsck/k9/provider/UnreadWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    instance-of v2, v0, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;

    .line 11
    .line 12
    iget v3, v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->label:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;

    .line 25
    .line 26
    invoke-direct {v2, v1, v0}, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;-><init>(Lcom/fsck/k9/provider/UnreadWidgetProvider;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    iget v3, v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->label:I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v6, :cond_1

    .line 39
    .line 40
    iget v3, v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->I$1:I

    .line 41
    .line 42
    iget v7, v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->I$0:I

    .line 43
    .line 44
    iget-object v8, v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->L$2:[I

    .line 45
    .line 46
    iget-object v9, v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->L$1:Landroid/appwidget/AppWidgetManager;

    .line 47
    .line 48
    iget-object v10, v2, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->L$0:Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object v14, v8

    .line 54
    move v8, v3

    .line 55
    move-object v3, v14

    .line 56
    move-object v14, v4

    .line 57
    move-object v4, v2

    .line 58
    move-object v2, v9

    .line 59
    goto/16 :goto_b

    .line 60
    .line 61
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v4

    .line 67
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    move-object/from16 v0, p3

    .line 71
    .line 72
    array-length v3, v0

    .line 73
    move-object v7, v2

    .line 74
    move v8, v3

    .line 75
    move v9, v5

    .line 76
    move-object/from16 v2, p2

    .line 77
    .line 78
    move-object v3, v0

    .line 79
    move-object/from16 v0, p1

    .line 80
    .line 81
    :goto_1
    if-ge v9, v8, :cond_1a

    .line 82
    .line 83
    aget v10, v3, v9

    .line 84
    .line 85
    iget-object v11, v1, Lcom/fsck/k9/provider/UnreadWidgetProvider;->repository$delegate:Lkotlin/Lazy;

    .line 86
    .line 87
    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    check-cast v11, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;

    .line 92
    .line 93
    iput-object v0, v7, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->L$0:Landroid/content/Context;

    .line 94
    .line 95
    iput-object v2, v7, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->L$1:Landroid/appwidget/AppWidgetManager;

    .line 96
    .line 97
    iput-object v3, v7, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->L$2:[I

    .line 98
    .line 99
    iput v9, v7, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->I$0:I

    .line 100
    .line 101
    iput v8, v7, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->I$1:I

    .line 102
    .line 103
    iput v6, v7, Lapp/k9mail/feature/widget/unread/BaseUnreadWidgetProvider$updateWidgets$1;->label:I

    .line 104
    .line 105
    iget-object v12, v11, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;->context:Landroid/content/Context;

    .line 106
    .line 107
    const-string/jumbo v13, "unread_widget_configuration.xml"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v12, v13, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    const-string/jumbo v13, "version"

    .line 115
    .line 116
    .line 117
    invoke-interface {v12, v13, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    const-string v15, ".folder_id"

    .line 122
    .line 123
    const-string v4, "unread_widget."

    .line 124
    .line 125
    const/4 v6, 0x2

    .line 126
    if-eq v14, v6, :cond_d

    .line 127
    .line 128
    if-gt v14, v6, :cond_c

    .line 129
    .line 130
    iget-object v5, v11, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;->migrations:Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;

    .line 131
    .line 132
    if-ge v14, v6, :cond_b

    .line 133
    .line 134
    invoke-interface {v12}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 139
    .line 140
    .line 141
    move-result-object v14

    .line 142
    check-cast v14, Ljava/lang/Iterable;

    .line 143
    .line 144
    new-instance v6, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v16

    .line 157
    move-object/from16 p2, v0

    .line 158
    .line 159
    const-string v0, ".folder_name"

    .line 160
    .line 161
    if-eqz v16, :cond_4

    .line 162
    .line 163
    move-object/from16 v16, v2

    .line 164
    .line 165
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    move-object/from16 p3, v3

    .line 170
    .line 171
    move-object v3, v2

    .line 172
    check-cast v3, Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    move/from16 v17, v8

    .line 178
    .line 179
    const/4 v8, 0x0

    .line 180
    invoke-static {v3, v0, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_3

    .line 185
    .line 186
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    :cond_3
    move-object/from16 v0, p2

    .line 190
    .line 191
    move-object/from16 v3, p3

    .line 192
    .line 193
    move-object/from16 v2, v16

    .line 194
    .line 195
    move/from16 v8, v17

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_4
    move-object/from16 v16, v2

    .line 199
    .line 200
    move-object/from16 p3, v3

    .line 201
    .line 202
    move/from16 v17, v8

    .line 203
    .line 204
    new-instance v2, Ljava/util/ArrayList;

    .line 205
    .line 206
    const/16 v3, 0xa

    .line 207
    .line 208
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_5

    .line 224
    .line 225
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    check-cast v6, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    const-string v8, "."

    .line 235
    .line 236
    filled-new-array {v8}, [Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    const/4 v14, 0x6

    .line 241
    invoke-static {v6, v8, v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    const/4 v8, 0x1

    .line 246
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    check-cast v6, Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_5
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    if-eqz v6, :cond_a

    .line 269
    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    check-cast v6, Ljava/lang/String;

    .line 275
    .line 276
    new-instance v8, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    const/4 v14, 0x0

    .line 289
    invoke-interface {v12, v8, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    if-nez v8, :cond_6

    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_6
    iget-object v14, v5, Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;->accountRepository:Lcom/fsck/k9/Preferences;

    .line 297
    .line 298
    invoke-virtual {v14, v8}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    if-nez v8, :cond_7

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v14

    .line 320
    move-object/from16 v18, v2

    .line 321
    .line 322
    const/4 v2, 0x0

    .line 323
    invoke-interface {v12, v14, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v14

    .line 327
    if-eqz v14, :cond_9

    .line 328
    .line 329
    iget-object v2, v5, Lapp/k9mail/feature/widget/unread/UnreadWidgetMigrations;->folderRepository:Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;

    .line 330
    .line 331
    iget-object v8, v8, Lnet/thunderbird/core/android/account/LegacyAccountDto;->id:Lnet/thunderbird/feature/account/AccountId;

    .line 332
    .line 333
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    iget-object v2, v2, Lapp/k9mail/legacy/mailstore/DefaultFolderRepository;->messageStoreManager:Lapp/k9mail/legacy/mailstore/MessageStoreManager;

    .line 337
    .line 338
    invoke-virtual {v2, v8}, Lapp/k9mail/legacy/mailstore/MessageStoreManager;->getMessageStore(Lnet/thunderbird/feature/account/AccountId;)Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    iget-object v2, v2, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 343
    .line 344
    iget-object v2, v2, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v2, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 347
    .line 348
    invoke-virtual {v2, v14}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolderId(Ljava/lang/String;)Ljava/lang/Long;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-static {v4, v6, v15}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    if-eqz v2, :cond_8

    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 359
    .line 360
    .line 361
    move-result-wide v19

    .line 362
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v14

    .line 366
    goto :goto_5

    .line 367
    :cond_8
    const/4 v14, 0x0

    .line 368
    :goto_5
    invoke-interface {v3, v8, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 369
    .line 370
    .line 371
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    .line 388
    .line 389
    move-object/from16 v2, v18

    .line 390
    .line 391
    goto :goto_4

    .line 392
    :cond_a
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 393
    .line 394
    .line 395
    goto :goto_6

    .line 396
    :cond_b
    move-object/from16 p2, v0

    .line 397
    .line 398
    move-object/from16 v16, v2

    .line 399
    .line 400
    move-object/from16 p3, v3

    .line 401
    .line 402
    move/from16 v17, v8

    .line 403
    .line 404
    :goto_6
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    const/4 v2, 0x2

    .line 409
    invoke-interface {v0, v13, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 410
    .line 411
    .line 412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    .line 414
    .line 415
    :goto_7
    const/4 v14, 0x0

    .line 416
    goto :goto_8

    .line 417
    :cond_c
    const-string v0, "UnreadWidgetRepository: Version downgrades are not supported"

    .line 418
    .line 419
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    const/4 v14, 0x0

    .line 423
    return-object v14

    .line 424
    :cond_d
    move-object/from16 p2, v0

    .line 425
    .line 426
    move-object/from16 v16, v2

    .line 427
    .line 428
    move-object/from16 p3, v3

    .line 429
    .line 430
    move/from16 v17, v8

    .line 431
    .line 432
    goto :goto_7

    .line 433
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-interface {v12, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 450
    .line 451
    if-nez v0, :cond_e

    .line 452
    .line 453
    move-object v0, v14

    .line 454
    goto :goto_a

    .line 455
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    invoke-interface {v12, v3, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    if-eqz v3, :cond_f

    .line 475
    .line 476
    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    goto :goto_9

    .line 481
    :cond_f
    move-object v3, v14

    .line 482
    :goto_9
    new-instance v4, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 483
    .line 484
    invoke-direct {v4, v10, v3, v0}, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;-><init>(ILjava/lang/Long;Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    iget-object v5, v11, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;->dataRetriever:Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;

    .line 488
    .line 489
    const-string v6, "unified_folders"

    .line 490
    .line 491
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-eqz v0, :cond_11

    .line 496
    .line 497
    invoke-virtual {v5, v4, v7}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->loadUnifiedFoldersData(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    if-ne v0, v2, :cond_10

    .line 502
    .line 503
    goto :goto_a

    .line 504
    :cond_10
    check-cast v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;

    .line 505
    .line 506
    goto :goto_a

    .line 507
    :cond_11
    if-eqz v3, :cond_13

    .line 508
    .line 509
    invoke-virtual {v5, v4, v7}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->loadFolderData(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    if-ne v0, v2, :cond_12

    .line 514
    .line 515
    goto :goto_a

    .line 516
    :cond_12
    check-cast v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;

    .line 517
    .line 518
    goto :goto_a

    .line 519
    :cond_13
    invoke-virtual {v5, v4, v7}, Lapp/k9mail/feature/widget/unread/UnreadWidgetDataProvider;->loadAccountData(Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    if-ne v0, v2, :cond_14

    .line 524
    .line 525
    goto :goto_a

    .line 526
    :cond_14
    check-cast v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;

    .line 527
    .line 528
    :goto_a
    if-ne v0, v2, :cond_15

    .line 529
    .line 530
    goto/16 :goto_11

    .line 531
    .line 532
    :cond_15
    move-object/from16 v10, p2

    .line 533
    .line 534
    move-object/from16 v3, p3

    .line 535
    .line 536
    move-object v4, v7

    .line 537
    move v7, v9

    .line 538
    move-object/from16 v2, v16

    .line 539
    .line 540
    move/from16 v8, v17

    .line 541
    .line 542
    :goto_b
    check-cast v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;

    .line 543
    .line 544
    if-nez v0, :cond_16

    .line 545
    .line 546
    const/4 v12, 0x0

    .line 547
    const/4 v13, 0x1

    .line 548
    goto/16 :goto_10

    .line 549
    .line 550
    :cond_16
    new-instance v5, Landroid/widget/RemoteViews;

    .line 551
    .line 552
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v6

    .line 556
    const v9, 0x7f0c0583

    .line 557
    .line 558
    .line 559
    invoke-direct {v5, v6, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 560
    .line 561
    .line 562
    iget-object v6, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;->configuration:Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;

    .line 563
    .line 564
    iget v6, v6, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfiguration;->appWidgetId:I

    .line 565
    .line 566
    :try_start_0
    iget v9, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;->unreadCount:I

    .line 567
    .line 568
    const v11, 0x7f090469

    .line 569
    .line 570
    .line 571
    if-gtz v9, :cond_17

    .line 572
    .line 573
    const/16 v9, 0x8

    .line 574
    .line 575
    invoke-virtual {v5, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .line 577
    .line 578
    const/4 v12, 0x0

    .line 579
    goto :goto_d

    .line 580
    :catch_0
    move-exception v0

    .line 581
    const/4 v12, 0x0

    .line 582
    goto :goto_e

    .line 583
    :cond_17
    const/4 v12, 0x0

    .line 584
    :try_start_1
    invoke-virtual {v5, v11, v12}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 585
    .line 586
    .line 587
    const/16 v13, 0x270f

    .line 588
    .line 589
    if-gt v9, v13, :cond_18

    .line 590
    .line 591
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    goto :goto_c

    .line 596
    :catch_1
    move-exception v0

    .line 597
    goto :goto_e

    .line 598
    :cond_18
    const-string v9, "9999+"

    .line 599
    .line 600
    :goto_c
    invoke-virtual {v5, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 601
    .line 602
    .line 603
    :goto_d
    iget-object v9, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;->title:Ljava/lang/String;

    .line 604
    .line 605
    const v11, 0x7f090439

    .line 606
    .line 607
    .line 608
    invoke-virtual {v5, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 609
    .line 610
    .line 611
    iget-object v0, v0, Lapp/k9mail/feature/widget/unread/UnreadWidgetData;->clickIntent:Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    .line 613
    goto :goto_f

    .line 614
    :goto_e
    iget-object v9, v1, Lcom/fsck/k9/provider/UnreadWidgetProvider;->logger$delegate:Lkotlin/Lazy;

    .line 615
    .line 616
    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v9

    .line 620
    check-cast v9, Lnet/thunderbird/core/logging/Logger;

    .line 621
    .line 622
    new-instance v11, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;

    .line 623
    .line 624
    const/4 v13, 0x1

    .line 625
    invoke-direct {v11, v6, v13}, Lcom/fsck/k9/notification/NotificationHelper$$ExternalSyntheticLambda0;-><init>(II)V

    .line 626
    .line 627
    .line 628
    const-string v13, "BaseUnreadWidgetProvider"

    .line 629
    .line 630
    invoke-interface {v9, v13, v0, v11}, Lnet/thunderbird/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 631
    .line 632
    .line 633
    move-object v0, v14

    .line 634
    :goto_f
    if-nez v0, :cond_19

    .line 635
    .line 636
    new-instance v0, Landroid/content/Intent;

    .line 637
    .line 638
    const-class v9, Lapp/k9mail/feature/widget/unread/UnreadWidgetConfigurationActivity;

    .line 639
    .line 640
    invoke-direct {v0, v10, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 641
    .line 642
    .line 643
    const-string v9, "appWidgetId"

    .line 644
    .line 645
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    .line 647
    .line 648
    const/high16 v9, 0x10000000

    .line 649
    .line 650
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 651
    .line 652
    .line 653
    :cond_19
    const/high16 v9, 0x8000000

    .line 654
    .line 655
    const/4 v13, 0x1

    .line 656
    invoke-static {v10, v6, v0, v9, v13}, Landroidx/core/app/NavUtils;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    const v9, 0x7f09046a

    .line 661
    .line 662
    .line 663
    invoke-virtual {v5, v9, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v2, v6, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 667
    .line 668
    .line 669
    :goto_10
    add-int/lit8 v9, v7, 0x1

    .line 670
    .line 671
    move-object v7, v4

    .line 672
    move-object v0, v10

    .line 673
    move v5, v12

    .line 674
    move v6, v13

    .line 675
    move-object v4, v14

    .line 676
    goto/16 :goto_1

    .line 677
    .line 678
    :cond_1a
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 679
    .line 680
    :goto_11
    return-object v2
.end method


# virtual methods
.method public final bridge getKoin()Lorg/koin/core/Koin;
    .locals 0

    .line 1
    invoke-static {}, Lkotlinx/io/Sink$-CC;->$default$getKoin()Lorg/koin/core/Koin;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final onDeleted(Landroid/content/Context;[I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    array-length p1, p2

    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_0
    if-ge v1, p1, :cond_0

    .line 11
    .line 12
    aget v2, p2, v1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/fsck/k9/provider/UnreadWidgetProvider;->repository$delegate:Lkotlin/Lazy;

    .line 15
    .line 16
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;

    .line 21
    .line 22
    iget-object v3, v3, Lapp/k9mail/feature/widget/unread/UnreadWidgetRepository;->context:Landroid/content/Context;

    .line 23
    .line 24
    const-string/jumbo v4, "unread_widget_configuration.xml"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v5, "unread_widget."

    .line 41
    .line 42
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, ".folder_id"

    .line 64
    .line 65
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    .line 74
    .line 75
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    .line 77
    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 8

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
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/16 v7, 0xe

    .line 18
    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move-object v4, p3

    .line 23
    invoke-direct/range {v0 .. v7}, Landroidx/navigation/compose/NavHostKt$NavHost$25$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x3

    .line 27
    iget-object p1, v1, Lcom/fsck/k9/provider/UnreadWidgetProvider;->widgetScope:Lkotlinx/coroutines/internal/ContextScope;

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-static {p1, p2, p2, v0, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 31
    .line 32
    .line 33
    return-void
.end method
