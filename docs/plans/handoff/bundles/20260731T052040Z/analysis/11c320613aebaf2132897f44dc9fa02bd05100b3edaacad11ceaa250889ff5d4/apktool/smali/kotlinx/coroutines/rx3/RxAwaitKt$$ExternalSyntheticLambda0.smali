.class public final synthetic Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 0

    .line 1
    const/4 p2, 0x3

    .line 2
    iput p2, p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object p0, p0, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 15
    .line 16
    check-cast p1, Lorg/schabi/newpipe/extractor/Image;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Image;->getEstimatedResolutionLevel()Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lorg/schabi/newpipe/util/image/ImageStrategy$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    aget v0, v0, v2

    .line 32
    .line 33
    if-ne v0, v4, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    if-ne p1, p0, :cond_1

    .line 38
    .line 39
    move v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    move v1, v4

    .line 44
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    .line 50
    .line 51
    check-cast p1, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;

    .line 52
    .line 53
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;->INSTANCE$1:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;

    .line 54
    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->_binding:Lorg/jsoup/nodes/Printer;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    iget-object p1, p1, Lorg/jsoup/nodes/Printer;->accum:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Landroid/widget/Button;

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iput-boolean v3, p0, Landroidx/fragment/app/DialogFragment;->mCancelable:Z

    .line 73
    .line 74
    iget-object p0, p0, Landroidx/fragment/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 75
    .line 76
    if-eqz p0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    sget-object v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;->INSTANCE:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialogViewModel$DialogEvent$SuccessEvent;

    .line 83
    .line 84
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0, v3, v3}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_1
    move-object v2, v5

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-object v2

    .line 99
    :pswitch_1
    check-cast p0, Lorg/schabi/newpipe/local/feed/FeedFragment;

    .line 100
    .line 101
    check-cast p1, Lorg/schabi/newpipe/local/feed/FeedState;

    .line 102
    .line 103
    sget-object v0, Lorg/schabi/newpipe/local/feed/FeedFragment;->Companion:Lorg/schabi/newpipe/local/feed/FeedFragment$Companion;

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->handleResult(Lorg/schabi/newpipe/local/feed/FeedState;)V

    .line 108
    .line 109
    .line 110
    :cond_7
    return-object v5

    .line 111
    :pswitch_2
    check-cast p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;

    .line 112
    .line 113
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    const-string v0, "SELECT * FROM search_history WHERE id = (SELECT MAX(id) FROM search_history)"

    .line 119
    .line 120
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    :try_start_0
    const-string v0, "creation_date"

    .line 125
    .line 126
    invoke-static {p1, v0}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    const-string v1, "service_id"

    .line 131
    .line 132
    invoke-static {p1, v1}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    const-string v3, "search"

    .line 137
    .line 138
    invoke-static {p1, v3}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    const-string v4, "id"

    .line 143
    .line 144
    invoke-static {p1, v4}, Landroidx/room/util/DBUtil;->getColumnIndexOrThrow(Landroidx/sqlite/SQLiteStatement;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_a

    .line 153
    .line 154
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_8

    .line 159
    .line 160
    move-object v0, v2

    .line 161
    goto :goto_3

    .line 162
    :cond_8
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 163
    .line 164
    .line 165
    move-result-wide v5

    .line 166
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    :goto_3
    iget-object p0, p0, Lorg/schabi/newpipe/database/history/dao/SearchHistoryDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 171
    .line 172
    invoke-static {v0}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 177
    .line 178
    .line 179
    move-result-wide v0

    .line 180
    long-to-int v7, v0

    .line 181
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    if-eqz p0, :cond_9

    .line 186
    .line 187
    :goto_4
    move-object v8, v2

    .line 188
    goto :goto_5

    .line 189
    :cond_9
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getText(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    goto :goto_4

    .line 194
    :goto_5
    invoke-interface {p1, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 195
    .line 196
    .line 197
    move-result-wide v9

    .line 198
    new-instance v5, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;

    .line 199
    .line 200
    invoke-direct/range {v5 .. v10}, Lorg/schabi/newpipe/database/history/model/SearchHistoryEntry;-><init>(Lj$/time/OffsetDateTime;ILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .line 202
    .line 203
    move-object v2, v5

    .line 204
    goto :goto_6

    .line 205
    :catchall_0
    move-exception v0

    .line 206
    move-object p0, v0

    .line 207
    goto :goto_7

    .line 208
    :cond_a
    :goto_6
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 209
    .line 210
    .line 211
    return-object v2

    .line 212
    :goto_7
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 213
    .line 214
    .line 215
    throw p0

    .line 216
    :pswitch_3
    check-cast p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;

    .line 217
    .line 218
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    const-string v0, "SELECT MIN(last_updated) FROM feed_last_updated"

    .line 224
    .line 225
    invoke-interface {p1, v0}, Landroidx/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .line 233
    .line 234
    :goto_8
    invoke-interface {p1}, Landroidx/sqlite/SQLiteStatement;->step()Z

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    if-eqz v1, :cond_c

    .line 239
    .line 240
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->isNull(I)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_b

    .line 245
    .line 246
    move-object v1, v2

    .line 247
    goto :goto_9

    .line 248
    :cond_b
    invoke-interface {p1, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    .line 249
    .line 250
    .line 251
    move-result-wide v4

    .line 252
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    :goto_9
    iget-object v4, p0, Lorg/schabi/newpipe/database/feed/dao/FeedDAO_Impl;->__converters:Lokio/Path$Companion;

    .line 257
    .line 258
    invoke-static {v1}, Lokio/Path$Companion;->offsetDateTimeFromTimestamp(Ljava/lang/Long;)Lj$/time/OffsetDateTime;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    .line 264
    .line 265
    goto :goto_8

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    move-object p0, v0

    .line 268
    goto :goto_a

    .line 269
    :cond_c
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 270
    .line 271
    .line 272
    return-object v0

    .line 273
    :goto_a
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 274
    .line 275
    .line 276
    throw p0

    .line 277
    :pswitch_4
    check-cast p0, Landroid/content/Context;

    .line 278
    .line 279
    check-cast p1, Lorg/koin/core/module/Module;

    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 282
    .line 283
    .line 284
    instance-of v0, p0, Landroid/app/Application;

    .line 285
    .line 286
    sget-object v11, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    .line 287
    .line 288
    const-class v1, Landroid/content/Context;

    .line 289
    .line 290
    if-eqz v0, :cond_d

    .line 291
    .line 292
    new-instance v10, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda1;

    .line 293
    .line 294
    invoke-direct {v10, p0, v3}, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    .line 295
    .line 296
    .line 297
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 298
    .line 299
    const-class p0, Landroid/app/Application;

    .line 300
    .line 301
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    sget-object v7, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 306
    .line 307
    const/4 v9, 0x0

    .line 308
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/TypeQualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 309
    .line 310
    .line 311
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 312
    .line 313
    invoke-direct {p0, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 317
    .line 318
    .line 319
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    iget-object v1, v6, Lorg/koin/core/definition/BeanDefinition;->_secondaryTypes:Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-static {v0}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const/16 v0, 0x3a

    .line 341
    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v2, ""

    .line 346
    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    iget-object p1, p1, Lorg/koin/core/module/Module;->mappings:Ljava/util/LinkedHashMap;

    .line 361
    .line 362
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_d
    new-instance v10, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda1;

    .line 367
    .line 368
    invoke-direct {v10, p0, v4}, Lorg/koin/android/ext/koin/KoinExtKt$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;I)V

    .line 369
    .line 370
    .line 371
    new-instance v6, Lorg/koin/core/definition/BeanDefinition;

    .line 372
    .line 373
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    sget-object v7, Lorg/koin/core/registry/ScopeRegistry;->rootScopeQualifier:Lorg/koin/core/qualifier/StringQualifier;

    .line 378
    .line 379
    const/4 v9, 0x0

    .line 380
    invoke-direct/range {v6 .. v11}, Lorg/koin/core/definition/BeanDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/TypeQualifier;Lkotlin/jvm/functions/Function2;Lorg/koin/core/definition/Kind;)V

    .line 381
    .line 382
    .line 383
    new-instance p0, Lorg/koin/core/instance/SingleInstanceFactory;

    .line 384
    .line 385
    invoke-direct {p0, v6}, Lorg/koin/core/instance/InstanceFactory;-><init>(Lorg/koin/core/definition/BeanDefinition;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p1, p0}, Lorg/koin/core/module/Module;->indexPrimaryType(Lorg/koin/core/instance/InstanceFactory;)V

    .line 389
    .line 390
    .line 391
    :goto_b
    return-object v5

    .line 392
    :pswitch_5
    check-cast p0, Ljava/util/List;

    .line 393
    .line 394
    check-cast p1, Lkotlin/text/MatcherMatchResult;

    .line 395
    .line 396
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    check-cast p1, Lkotlin/collections/ReversedListReadOnly;

    .line 404
    .line 405
    invoke-virtual {p1, v4}, Lkotlin/collections/ReversedListReadOnly;->get(I)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    check-cast p1, Ljava/lang/String;

    .line 410
    .line 411
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    sub-int/2addr p1, v4

    .line 416
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    check-cast p0, Ljava/lang/CharSequence;

    .line 421
    .line 422
    return-object p0

    .line 423
    :pswitch_6
    check-cast p0, Landroidx/compose/ui/unit/Density;

    .line 424
    .line 425
    check-cast p1, [B

    .line 426
    .line 427
    new-instance v0, Lorg/jetbrains/compose/resources/ImageCache$Vector;

    .line 428
    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 430
    .line 431
    .line 432
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-virtual {v2, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    new-instance v3, Lorg/xml/sax/InputSource;

    .line 444
    .line 445
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 446
    .line 447
    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 448
    .line 449
    .line 450
    invoke-direct {v3, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    new-instance v2, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;

    .line 465
    .line 466
    invoke-direct {v2, p1}, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;-><init>(Lorg/w3c/dom/Element;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    new-instance p1, Lokhttp3/Headers$Builder;

    .line 473
    .line 474
    invoke-direct {p1, v1}, Lokhttp3/Headers$Builder;-><init>(I)V

    .line 475
    .line 476
    .line 477
    new-instance v3, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 478
    .line 479
    const-string/jumbo v1, "width"

    .line 480
    .line 481
    .line 482
    invoke-static {v2, v1}, Landroidx/work/OperationKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-static {v1, p0}, Landroidx/core/os/BundleKt;->parseDp(Ljava/lang/String;Landroidx/compose/ui/unit/Density;)F

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    const-string v1, "height"

    .line 491
    .line 492
    invoke-static {v2, v1}, Landroidx/work/OperationKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    invoke-static {v1, p0}, Landroidx/core/os/BundleKt;->parseDp(Ljava/lang/String;Landroidx/compose/ui/unit/Density;)F

    .line 497
    .line 498
    .line 499
    move-result v5

    .line 500
    const-string/jumbo p0, "viewportWidth"

    .line 501
    .line 502
    .line 503
    invoke-static {v2, p0}, Landroidx/work/OperationKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p0

    .line 507
    const/4 v1, 0x0

    .line 508
    if-eqz p0, :cond_e

    .line 509
    .line 510
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 511
    .line 512
    .line 513
    move-result p0

    .line 514
    move v6, p0

    .line 515
    goto :goto_c

    .line 516
    :cond_e
    move v6, v1

    .line 517
    :goto_c
    const-string/jumbo p0, "viewportHeight"

    .line 518
    .line 519
    .line 520
    invoke-static {v2, p0}, Landroidx/work/OperationKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    if-eqz p0, :cond_f

    .line 525
    .line 526
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    :cond_f
    move v7, v1

    .line 531
    const-string p0, "autoMirrored"

    .line 532
    .line 533
    invoke-static {v2, p0}, Landroidx/work/OperationKt;->attributeOrNull(Lorg/jetbrains/compose/resources/vector/xmldom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object p0

    .line 537
    const-string/jumbo v1, "true"

    .line 538
    .line 539
    .line 540
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 541
    .line 542
    .line 543
    move-result v8

    .line 544
    const/16 v9, 0x61

    .line 545
    .line 546
    invoke-direct/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(FFFFZI)V

    .line 547
    .line 548
    .line 549
    invoke-static {v2, v3, p1}, Landroidx/work/OperationKt;->parseVectorNodes(Lorg/jetbrains/compose/resources/vector/xmldom/Element;Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Lokhttp3/Headers$Builder;)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    invoke-direct {v0, p0}, Lorg/jetbrains/compose/resources/ImageCache$Vector;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V

    .line 557
    .line 558
    .line 559
    return-object v0

    .line 560
    :pswitch_7
    check-cast p0, Landroidx/compose/runtime/MutableState;

    .line 561
    .line 562
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 563
    .line 564
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    .line 566
    .line 567
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object p0

    .line 571
    check-cast p0, Ljava/util/List;

    .line 572
    .line 573
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    new-instance v1, Lnet/newpipe/app/screen/about/AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3;

    .line 578
    .line 579
    invoke-direct {v1, v4, p0}, Lnet/newpipe/app/screen/about/AboutPageKt$AboutPageContent$lambda$1$0$$inlined$items$default$3;-><init>(ILjava/util/List;)V

    .line 580
    .line 581
    .line 582
    new-instance v6, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;

    .line 583
    .line 584
    invoke-direct {v6, v3, p0}, Lnet/newpipe/app/screen/about/LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;-><init>(ILjava/util/List;)V

    .line 585
    .line 586
    .line 587
    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 588
    .line 589
    const v3, 0x2fd4df92

    .line 590
    .line 591
    .line 592
    invoke-direct {p0, v3, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 593
    .line 594
    .line 595
    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->intervals:Lcom/grack/nanojson/JsonParser;

    .line 596
    .line 597
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListInterval;

    .line 598
    .line 599
    invoke-direct {v3, v2, v1, p0}, Landroidx/compose/foundation/lazy/LazyListInterval;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {p1, v0, v3}, Lcom/grack/nanojson/JsonParser;->addInterval(ILandroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;)V

    .line 603
    .line 604
    .line 605
    return-object v5

    .line 606
    :pswitch_8
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 607
    .line 608
    check-cast p1, Ljava/lang/Integer;

    .line 609
    .line 610
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 611
    .line 612
    .line 613
    move-result p1

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    .line 615
    .line 616
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .line 618
    .line 619
    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    const-string v1, ": "

    .line 627
    .line 628
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 632
    .line 633
    .line 634
    move-result-object p0

    .line 635
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object p0

    .line 639
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object p0

    .line 646
    return-object p0

    .line 647
    :pswitch_9
    check-cast p0, Lkotlinx/serialization/internal/ObjectSerializer;

    .line 648
    .line 649
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 650
    .line 651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    iget-object p0, p0, Lkotlinx/serialization/internal/ObjectSerializer;->_annotations:Ljava/lang/Object;

    .line 655
    .line 656
    check-cast p0, Ljava/util/List;

    .line 657
    .line 658
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    iput-object p0, p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    .line 662
    .line 663
    return-object v5

    .line 664
    :pswitch_a
    check-cast p0, Lkotlinx/serialization/PolymorphicSerializer;

    .line 665
    .line 666
    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 667
    .line 668
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    const-string/jumbo v0, "type"

    .line 672
    .line 673
    .line 674
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->descriptor:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 675
    .line 676
    invoke-static {p1, v0, v1}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 677
    .line 678
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    const-string v1, "kotlinx.serialization.Polymorphic<"

    .line 682
    .line 683
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer;->baseClass:Lkotlin/jvm/internal/ClassReference;

    .line 687
    .line 688
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object p0

    .line 692
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    const/16 p0, 0x3e

    .line 696
    .line 697
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object p0

    .line 704
    sget-object v0, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    .line 705
    .line 706
    new-array v1, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 707
    .line 708
    invoke-static {p0, v0, v1}, Landroidx/work/OperationKt;->buildSerialDescriptor$default(Ljava/lang/String;Lorg/jsoup/Jsoup;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 709
    .line 710
    .line 711
    move-result-object p0

    .line 712
    const-string/jumbo v0, "value"

    .line 713
    .line 714
    .line 715
    invoke-static {p1, v0, p0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 716
    .line 717
    .line 718
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 719
    .line 720
    iput-object p0, p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->annotations:Ljava/util/List;

    .line 721
    .line 722
    return-object v5

    .line 723
    :pswitch_b
    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 724
    .line 725
    check-cast p1, Ljava/lang/Throwable;

    .line 726
    .line 727
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    .line 728
    .line 729
    .line 730
    return-object v5

    .line 731
    :pswitch_c
    check-cast p0, Lkotlin/text/MatcherMatchResult$groups$1;

    .line 732
    .line 733
    check-cast p1, Ljava/lang/Integer;

    .line 734
    .line 735
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 736
    .line 737
    .line 738
    move-result p1

    .line 739
    invoke-virtual {p0, p1}, Lkotlin/text/MatcherMatchResult$groups$1;->get(I)Lkotlin/text/MatchGroup;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    return-object p0

    .line 744
    :pswitch_d
    check-cast p0, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;

    .line 745
    .line 746
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 747
    .line 748
    .line 749
    invoke-virtual {p0}, Landroidx/activity/ImmLeaksCleaner$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object p0

    .line 753
    return-object p0

    .line 754
    :pswitch_e
    check-cast p0, Lio/reactivex/rxjava3/disposables/Disposable;

    .line 755
    .line 756
    check-cast p1, Ljava/lang/Throwable;

    .line 757
    .line 758
    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 759
    .line 760
    .line 761
    return-object v5

    .line 762
    nop

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
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
