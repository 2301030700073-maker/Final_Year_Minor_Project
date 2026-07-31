.class public final Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/core/impl/Observable$Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mDelegate:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "CameraPresencePrvdr"

    .line 23
    .line 24
    const-string v1, "Error from source camera presence observable. Triggering refresh."

    .line 25
    .line 26
    invoke-static {v0, v1, p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->sourcePresenceObservable:Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;

    .line 30
    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/fsck/k9/ui/compose/QuotedMessagePresenter;->fetchData()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void

    .line 37
    :pswitch_0
    const-string p0, "ObserverToConsumerAdapter"

    .line 38
    .line 39
    const-string v0, "Unexpected error in Observable"

    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNewData(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->isMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_10

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraFactory:Landroidx/compose/ui/node/NodeChain;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_10

    .line 31
    .line 32
    :cond_1
    iget-object v2, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    goto/16 :goto_10

    .line 37
    .line 38
    :cond_2
    iget-object v0, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraValidator:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 39
    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    goto/16 :goto_10

    .line 43
    .line 44
    :cond_3
    const/16 v3, 0xa

    .line 45
    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    new-instance v4, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_5

    .line 66
    .line 67
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Landroidx/camera/core/CameraIdentifier;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    sget-object v4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 82
    .line 83
    :cond_5
    const/4 p1, 0x0

    .line 84
    :try_start_0
    iget-object v5, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v5, Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 87
    .line 88
    iget-object v5, v5, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    .line 89
    .line 90
    iget-object v6, v1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_6

    .line 99
    .line 100
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    invoke-virtual {v1, v4}, Landroidx/compose/ui/node/NodeChain;->calculateAvailableCameraIds(Ljava/util/List;)Ljava/util/LinkedHashSet;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .line 119
    .line 120
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_7

    .line 129
    .line 130
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    check-cast v8, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-static {v8, p1, p1}, Landroidx/appcompat/app/ActionBar;->create(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/AutoValue_Identifier;)Landroidx/camera/core/CameraIdentifier;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :catch_0
    move-exception v0

    .line 148
    goto :goto_3

    .line 149
    :cond_7
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Ljava/lang/Iterable;

    .line 158
    .line 159
    invoke-static {v5, v6}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    move-object v6, v5

    .line 164
    check-cast v6, Ljava/util/Collection;

    .line 165
    .line 166
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-nez v6, :cond_8

    .line 171
    .line 172
    invoke-virtual {v2}, Landroidx/camera/core/impl/CameraRepository;->getCameras()Ljava/util/LinkedHashSet;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v0, v2, v5}, Lcom/fsck/k9/mailstore/LocalFolder$8;->isChangeInvalid(Ljava/util/LinkedHashSet;Ljava/util/Set;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_8

    .line 181
    .line 182
    const-string v0, "CameraPresencePrvdr"

    .line 183
    .line 184
    const-string v2, "Camera removal update invalid. Aborting."

    .line 185
    .line 186
    invoke-static {v0, v2}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    .line 189
    goto/16 :goto_10

    .line 190
    .line 191
    :goto_3
    const-string v2, "CameraPresencePrvdr"

    .line 192
    .line 193
    const-string v5, "Failed to interrogate camera factory. Falling back to full update."

    .line 194
    .line 195
    invoke-static {v2, v5, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    :try_start_1
    invoke-virtual {v1, v4}, Landroidx/compose/ui/node/NodeChain;->onCameraIdsUpdated(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getAvailableCameraIds()Ljava/util/Set;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Ljava/lang/Iterable;

    .line 206
    .line 207
    new-instance v1, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_9

    .line 225
    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    invoke-static {v2, p1, p1}, Landroidx/appcompat/app/ActionBar;->create(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/AutoValue_Identifier;)Landroidx/camera/core/CameraIdentifier;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_9
    iget-object v0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v0, Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 246
    .line 247
    iget-object v0, v0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    .line 248
    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_a

    .line 254
    .line 255
    goto/16 :goto_10

    .line 256
    .line 257
    :cond_a
    iget-object p0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast p0, Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 260
    .line 261
    iget-object v0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    .line 262
    .line 263
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_b

    .line 272
    .line 273
    goto/16 :goto_10

    .line 274
    .line 275
    :cond_b
    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryLock:Ljava/lang/Object;

    .line 276
    .line 277
    monitor-enter v2

    .line 278
    :try_start_2
    iget-object v4, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 279
    .line 280
    if-eqz v4, :cond_c

    .line 281
    .line 282
    const-string v4, "CameraPresencePrvdr"

    .line 283
    .line 284
    const-string v5, "Camera list updated. Cancelling any pending retries."

    .line 285
    .line 286
    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    iget-object v4, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 290
    .line 291
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    const/4 v5, 0x0

    .line 295
    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 296
    .line 297
    .line 298
    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->retryScanFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    .line 300
    goto :goto_5

    .line 301
    :catchall_0
    move-exception p0

    .line 302
    goto/16 :goto_f

    .line 303
    .line 304
    :cond_c
    :goto_5
    monitor-exit v2

    .line 305
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    move-object v4, p1

    .line 314
    check-cast v4, Ljava/lang/Iterable;

    .line 315
    .line 316
    invoke-static {v2, v4}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v2, Ljava/lang/Iterable;

    .line 321
    .line 322
    invoke-static {p1, v2}, Lorg/jsoup/helper/Validate;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .line 330
    .line 331
    new-instance v5, Ljava/util/ArrayList;

    .line 332
    .line 333
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 334
    .line 335
    .line 336
    move-result v6

    .line 337
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    if-eqz v7, :cond_d

    .line 349
    .line 350
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v7

    .line 354
    check-cast v7, Landroidx/camera/core/CameraIdentifier;

    .line 355
    .line 356
    invoke-virtual {v7}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v7

    .line 360
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto :goto_6

    .line 364
    :cond_d
    :try_start_3
    move-object v6, p1

    .line 365
    check-cast v6, Ljava/lang/Iterable;

    .line 366
    .line 367
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 368
    .line 369
    .line 370
    move-result-object v6

    .line 371
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 372
    .line 373
    .line 374
    move-result v7

    .line 375
    if-eqz v7, :cond_e

    .line 376
    .line 377
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    check-cast v7, Landroidx/camera/core/CameraIdentifier;

    .line 382
    .line 383
    invoke-virtual {v7}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    invoke-virtual {p0, v7}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraStateObserver(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    goto :goto_7

    .line 391
    :catch_1
    move-exception v1

    .line 392
    goto/16 :goto_a

    .line 393
    .line 394
    :cond_e
    iget-object v6, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->cameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 395
    .line 396
    if-eqz v6, :cond_f

    .line 397
    .line 398
    const-string v7, "CameraPresencePrvdr"

    .line 399
    .line 400
    const-string v8, "Updating CameraRepository..."

    .line 401
    .line 402
    invoke-static {v7, v8}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6, v5}, Landroidx/camera/core/impl/CameraRepository;->onCamerasUpdated(Ljava/util/List;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    const-string v6, "CameraPresencePrvdr"

    .line 412
    .line 413
    const-string v7, "CameraRepository updated successfully."

    .line 414
    .line 415
    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    :cond_f
    iget-object v6, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 419
    .line 420
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 421
    .line 422
    .line 423
    move-result v6

    .line 424
    if-nez v6, :cond_10

    .line 425
    .line 426
    const-string v6, "CameraPresencePrvdr"

    .line 427
    .line 428
    new-instance v7, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v8, "Updating "

    .line 434
    .line 435
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    iget-object v8, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 439
    .line 440
    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 441
    .line 442
    .line 443
    move-result v8

    .line 444
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const-string v8, " dependent listeners..."

    .line 448
    .line 449
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v7

    .line 456
    invoke-static {v6, v7}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget-object v6, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->dependentInternalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 460
    .line 461
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 462
    .line 463
    .line 464
    move-result-object v6

    .line 465
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 466
    .line 467
    .line 468
    move-result v7

    .line 469
    if-eqz v7, :cond_10

    .line 470
    .line 471
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    check-cast v7, Landroidx/camera/core/impl/InternalCameraPresenceListener;

    .line 476
    .line 477
    invoke-interface {v7, v5}, Landroidx/camera/core/impl/InternalCameraPresenceListener;->onCamerasUpdated(Ljava/util/List;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    goto :goto_8

    .line 484
    :cond_10
    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->currentFilteredIds:Ljava/util/List;

    .line 485
    .line 486
    move-object v1, v4

    .line 487
    check-cast v1, Ljava/lang/Iterable;

    .line 488
    .line 489
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    if-eqz v5, :cond_11

    .line 498
    .line 499
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v5

    .line 503
    check-cast v5, Landroidx/camera/core/CameraIdentifier;

    .line 504
    .line 505
    invoke-virtual {v5}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v5

    .line 509
    invoke-virtual {p0, v5}, Landroidx/camera/core/impl/CameraPresenceProvider;->conditionallySetupCameraStateObserver(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    goto :goto_9

    .line 513
    :cond_11
    invoke-virtual {p0, v4, p1}, Landroidx/camera/core/impl/CameraPresenceProvider;->notifyPublicListeners(Ljava/util/Set;Ljava/util/Set;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 514
    .line 515
    .line 516
    goto/16 :goto_10

    .line 517
    .line 518
    :goto_a
    const-string v5, "CameraPresencePrvdr"

    .line 519
    .line 520
    const-string v6, "A core module failed to update. Rolling back changes."

    .line 521
    .line 522
    invoke-static {v5, v6, v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 523
    .line 524
    .line 525
    new-instance v1, Ljava/util/ArrayList;

    .line 526
    .line 527
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 528
    .line 529
    .line 530
    move-result v3

    .line 531
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    .line 533
    .line 534
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    if-eqz v3, :cond_12

    .line 543
    .line 544
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    check-cast v3, Landroidx/camera/core/CameraIdentifier;

    .line 549
    .line 550
    invoke-virtual {v3}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    goto :goto_b

    .line 558
    :cond_12
    new-instance v0, Lkotlin/collections/ReversedList;

    .line 559
    .line 560
    invoke-direct {v0, v2}, Lkotlin/collections/ReversedList;-><init>(Ljava/util/List;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0}, Lkotlin/collections/ReversedList;->iterator()Ljava/util/Iterator;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    :goto_c
    move-object v2, v0

    .line 568
    check-cast v2, Lkotlin/collections/ReversedList$listIterator$1;

    .line 569
    .line 570
    iget-object v3, v2, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v3, Ljava/util/ListIterator;

    .line 573
    .line 574
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    if-eqz v3, :cond_13

    .line 579
    .line 580
    iget-object v2, v2, Lkotlin/collections/ReversedList$listIterator$1;->delegateIterator:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v2, Ljava/util/ListIterator;

    .line 583
    .line 584
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    check-cast v2, Landroidx/camera/core/impl/InternalCameraPresenceListener;

    .line 589
    .line 590
    :try_start_4
    invoke-interface {v2, v1}, Landroidx/camera/core/impl/InternalCameraPresenceListener;->onCamerasUpdated(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 591
    .line 592
    .line 593
    goto :goto_c

    .line 594
    :catch_2
    move-exception v3

    .line 595
    const-string v5, "CameraPresencePrvdr"

    .line 596
    .line 597
    new-instance v6, Ljava/lang/StringBuilder;

    .line 598
    .line 599
    const-string v7, "Failed to rollback listener: "

    .line 600
    .line 601
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    invoke-static {v5, v2, v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 612
    .line 613
    .line 614
    goto :goto_c

    .line 615
    :cond_13
    check-cast p1, Ljava/lang/Iterable;

    .line 616
    .line 617
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 618
    .line 619
    .line 620
    move-result-object p1

    .line 621
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    .line 623
    .line 624
    move-result v0

    .line 625
    if-eqz v0, :cond_14

    .line 626
    .line 627
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    check-cast v0, Landroidx/camera/core/CameraIdentifier;

    .line 632
    .line 633
    invoke-virtual {v0}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->conditionallySetupCameraStateObserver(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    goto :goto_d

    .line 641
    :cond_14
    check-cast v4, Ljava/lang/Iterable;

    .line 642
    .line 643
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 644
    .line 645
    .line 646
    move-result-object p1

    .line 647
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    if-eqz v0, :cond_15

    .line 652
    .line 653
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    check-cast v0, Landroidx/camera/core/CameraIdentifier;

    .line 658
    .line 659
    invoke-virtual {v0}, Landroidx/camera/core/CameraIdentifier;->getInternalId()Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v0

    .line 663
    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->removeCameraStateObserver(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    goto :goto_e

    .line 667
    :goto_f
    monitor-exit v2

    .line 668
    throw p0

    .line 669
    :catch_3
    move-exception p0

    .line 670
    const-string p1, "CameraPresencePrvdr"

    .line 671
    .line 672
    const-string v0, "CameraFactory failed to update. The camera list may be stale until the next update."

    .line 673
    .line 674
    invoke-static {p1, v0, p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    .line 676
    .line 677
    :cond_15
    :goto_10
    return-void

    .line 678
    :pswitch_0
    iget-object p0, p0, Landroidx/camera/core/impl/QuirkSettingsHolder$ObserverToConsumerAdapter;->mDelegate:Ljava/lang/Object;

    .line 679
    .line 680
    check-cast p0, Landroidx/core/util/Consumer;

    .line 681
    .line 682
    invoke-interface {p0, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 683
    .line 684
    .line 685
    return-void

    .line 686
    nop

    .line 687
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
