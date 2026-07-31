.class public final synthetic Landroidx/navigation/NavController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 13
    iput p1, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    iput v0, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p2, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const/4 v5, 0x5

    .line 10
    const-wide v6, 0xffffffffL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/16 v8, 0x20

    .line 16
    .line 17
    const/4 v9, 0x6

    .line 18
    const/16 v10, 0x11

    .line 19
    .line 20
    const/4 v11, 0x7

    .line 21
    const/16 v12, 0x8

    .line 22
    .line 23
    const/4 v13, 0x0

    .line 24
    const/4 v14, 0x0

    .line 25
    const/4 v15, 0x1

    .line 26
    packed-switch v2, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 32
    .line 33
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Landroidx/work/impl/model/WorkName;

    .line 36
    .line 37
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    iget-object v2, v2, Landroidx/work/impl/model/WorkNameDao_Impl;->__insertAdapterOfWorkName:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 43
    .line 44
    invoke-virtual {v2, v1, v0}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_0
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v2, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Landroidx/work/impl/model/SystemIdInfo;

    .line 57
    .line 58
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v2, v2, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->__insertAdapterOfSystemIdInfo:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 64
    .line 65
    invoke-virtual {v2, v1, v0}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    .line 70
    return-object v0

    .line 71
    :pswitch_1
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 74
    .line 75
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Landroidx/work/impl/model/Preference;

    .line 78
    .line 79
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    iget-object v2, v2, Landroidx/work/impl/model/PreferenceDao_Impl;->__insertAdapterOfPreference:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 85
    .line 86
    invoke-virtual {v2, v1, v0}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 90
    .line 91
    return-object v0

    .line 92
    :pswitch_2
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 95
    .line 96
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Landroidx/work/impl/model/Dependency;

    .line 99
    .line 100
    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    iget-object v2, v2, Landroidx/work/impl/model/DependencyDao_Impl;->__insertAdapterOfDependency:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    .line 106
    .line 107
    invoke-virtual {v2, v1, v0}, Lkotlin/text/RegexKt;->insert(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 111
    .line 112
    return-object v0

    .line 113
    :pswitch_3
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Lkotlinx/coroutines/StandaloneCoroutine;

    .line 116
    .line 117
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    .line 120
    .line 121
    check-cast v1, Landroidx/work/impl/constraints/ConstraintsState;

    .line 122
    .line 123
    invoke-virtual {v2, v14}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 130
    .line 131
    return-object v0

    .line 132
    :pswitch_4
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v2, Landroidx/paging/LoadStateAdapter;

    .line 135
    .line 136
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Landroidx/paging/LoadStateAdapter;

    .line 139
    .line 140
    check-cast v1, Landroidx/paging/CombinedLoadStates;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    iget-object v3, v1, Landroidx/paging/CombinedLoadStates;->prepend:Landroidx/paging/LoadState;

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v1, Landroidx/paging/CombinedLoadStates;->append:Landroidx/paging/LoadState;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 153
    .line 154
    .line 155
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 156
    .line 157
    return-object v0

    .line 158
    :pswitch_5
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v2, Landroidx/navigation/NavHostController;

    .line 161
    .line 162
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 165
    .line 166
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 167
    .line 168
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    iget-object v1, v2, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 175
    .line 176
    iget-object v2, v1, Landroidx/navigation/internal/NavControllerImpl;->lifecycleObserver:Landroidx/navigation/internal/NavControllerImpl$$ExternalSyntheticLambda1;

    .line 177
    .line 178
    iget-object v3, v1, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 179
    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_0

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_0
    iget-object v3, v1, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 188
    .line 189
    if-eqz v3, :cond_1

    .line 190
    .line 191
    invoke-interface {v3}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    if-eqz v3, :cond_1

    .line 196
    .line 197
    invoke-virtual {v3, v2}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 198
    .line 199
    .line 200
    :cond_1
    iput-object v0, v1, Landroidx/navigation/internal/NavControllerImpl;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 201
    .line 202
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 207
    .line 208
    .line 209
    :goto_0
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$48$lambda$47$$inlined$onDispose$1;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 212
    .line 213
    .line 214
    return-object v0

    .line 215
    :pswitch_6
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v2, Landroidx/compose/runtime/State;

    .line 218
    .line 219
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v0, Landroidx/navigation/compose/ComposeNavigator;

    .line 222
    .line 223
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 224
    .line 225
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 226
    .line 227
    const/16 v3, 0xb

    .line 228
    .line 229
    invoke-direct {v1, v3, v2, v0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    return-object v1

    .line 233
    :pswitch_7
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v2, Landroidx/compose/runtime/Recomposer;

    .line 236
    .line 237
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v0, Ljava/lang/Throwable;

    .line 240
    .line 241
    check-cast v1, Ljava/lang/Throwable;

    .line 242
    .line 243
    iget-object v3, v2, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 244
    .line 245
    monitor-enter v3

    .line 246
    if-eqz v0, :cond_4

    .line 247
    .line 248
    if-eqz v1, :cond_3

    .line 249
    .line 250
    :try_start_0
    instance-of v4, v1, Ljava/util/concurrent/CancellationException;

    .line 251
    .line 252
    if-nez v4, :cond_2

    .line 253
    .line 254
    move-object v14, v1

    .line 255
    :cond_2
    if-eqz v14, :cond_3

    .line 256
    .line 257
    invoke-static {v0, v14}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    goto :goto_1

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    goto :goto_2

    .line 263
    :cond_3
    :goto_1
    move-object v14, v0

    .line 264
    :cond_4
    iput-object v14, v2, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 265
    .line 266
    iget-object v0, v2, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 267
    .line 268
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .line 272
    .line 273
    monitor-exit v3

    .line 274
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 275
    .line 276
    return-object v0

    .line 277
    :goto_2
    monitor-exit v3

    .line 278
    throw v0

    .line 279
    :pswitch_8
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    .line 282
    .line 283
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 286
    .line 287
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/CompositionImpl;->recordWriteOf(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    if-eqz v0, :cond_5

    .line 291
    .line 292
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 296
    .line 297
    return-object v0

    .line 298
    :pswitch_9
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v2, Ljava/util/Set;

    .line 301
    .line 302
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 303
    .line 304
    check-cast v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 305
    .line 306
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_a

    .line 311
    .line 312
    iget-object v2, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->subscriptions:Landroidx/collection/MutableScatterMap;

    .line 313
    .line 314
    iget-object v0, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->toNotify:Landroidx/collection/MutableScatterSet;

    .line 315
    .line 316
    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    if-eqz v1, :cond_a

    .line 321
    .line 322
    instance-of v2, v1, Landroidx/collection/MutableScatterSet;

    .line 323
    .line 324
    if-eqz v2, :cond_9

    .line 325
    .line 326
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 327
    .line 328
    iget-object v2, v1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 329
    .line 330
    iget-object v1, v1, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 331
    .line 332
    array-length v3, v1

    .line 333
    add-int/lit8 v3, v3, -0x2

    .line 334
    .line 335
    if-ltz v3, :cond_a

    .line 336
    .line 337
    move v4, v13

    .line 338
    :goto_3
    aget-wide v5, v1, v4

    .line 339
    .line 340
    not-long v7, v5

    .line 341
    shl-long/2addr v7, v11

    .line 342
    and-long/2addr v7, v5

    .line 343
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    and-long/2addr v7, v9

    .line 349
    cmp-long v7, v7, v9

    .line 350
    .line 351
    if-eqz v7, :cond_8

    .line 352
    .line 353
    sub-int v7, v4, v3

    .line 354
    .line 355
    not-int v7, v7

    .line 356
    ushr-int/lit8 v7, v7, 0x1f

    .line 357
    .line 358
    rsub-int/lit8 v7, v7, 0x8

    .line 359
    .line 360
    move v8, v13

    .line 361
    :goto_4
    if-ge v8, v7, :cond_7

    .line 362
    .line 363
    const-wide/16 v9, 0xff

    .line 364
    .line 365
    and-long/2addr v9, v5

    .line 366
    const-wide/16 v14, 0x80

    .line 367
    .line 368
    cmp-long v9, v9, v14

    .line 369
    .line 370
    if-gez v9, :cond_6

    .line 371
    .line 372
    shl-int/lit8 v9, v4, 0x3

    .line 373
    .line 374
    add-int/2addr v9, v8

    .line 375
    aget-object v9, v2, v9

    .line 376
    .line 377
    check-cast v9, Lkotlinx/coroutines/channels/SendChannel;

    .line 378
    .line 379
    invoke-virtual {v0, v9}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    :cond_6
    shr-long/2addr v5, v12

    .line 383
    add-int/lit8 v8, v8, 0x1

    .line 384
    .line 385
    goto :goto_4

    .line 386
    :cond_7
    if-ne v7, v12, :cond_a

    .line 387
    .line 388
    :cond_8
    if-eq v4, v3, :cond_a

    .line 389
    .line 390
    add-int/lit8 v4, v4, 0x1

    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_9
    check-cast v1, Lkotlinx/coroutines/channels/SendChannel;

    .line 394
    .line 395
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 399
    .line 400
    return-object v0

    .line 401
    :pswitch_a
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v2, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 404
    .line 405
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    .line 408
    .line 409
    iget-object v2, v2, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->pendingChanges:Ljava/util/ArrayList;

    .line 410
    .line 411
    new-instance v3, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;

    .line 412
    .line 413
    invoke-direct {v3, v1, v0}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 420
    .line 421
    return-object v0

    .line 422
    :pswitch_b
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v2, Landroidx/compose/ui/graphics/ColorKt;

    .line 425
    .line 426
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v0, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    .line 429
    .line 430
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 431
    .line 432
    iget-object v0, v0, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;->function:Landroidx/compose/material3/TextFieldDefaults$Container$1;

    .line 433
    .line 434
    invoke-interface {v0}, Lkotlin/reflect/KProperty0;->get()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 439
    .line 440
    iget-wide v3, v0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 441
    .line 442
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ColorKt;J)V

    .line 443
    .line 444
    .line 445
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 446
    .line 447
    return-object v0

    .line 448
    :pswitch_c
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    .line 451
    .line 452
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast v0, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    .line 455
    .line 456
    check-cast v1, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 457
    .line 458
    iget-object v3, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 459
    .line 460
    invoke-interface {v3}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 461
    .line 462
    .line 463
    move-result-wide v3

    .line 464
    iget-object v5, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 465
    .line 466
    invoke-interface {v5}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-interface {v2, v3, v4, v5, v1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    new-instance v3, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 475
    .line 476
    invoke-direct {v3, v10, v2, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 477
    .line 478
    .line 479
    new-instance v0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 480
    .line 481
    invoke-direct {v0, v9, v3}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    return-object v0

    .line 489
    :pswitch_d
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 490
    .line 491
    check-cast v2, Landroidx/compose/runtime/State;

    .line 492
    .line 493
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 496
    .line 497
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 498
    .line 499
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    check-cast v2, Ljava/lang/Number;

    .line 504
    .line 505
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    iget-wide v3, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 510
    .line 511
    shr-long/2addr v3, v8

    .line 512
    long-to-int v3, v3

    .line 513
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 514
    .line 515
    .line 516
    move-result v3

    .line 517
    mul-float/2addr v3, v2

    .line 518
    iget-wide v4, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 519
    .line 520
    and-long/2addr v4, v6

    .line 521
    long-to-int v1, v4

    .line 522
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    mul-float/2addr v1, v2

    .line 527
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 532
    .line 533
    iget-wide v4, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 534
    .line 535
    shr-long/2addr v4, v8

    .line 536
    long-to-int v2, v4

    .line 537
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    cmpg-float v2, v2, v3

    .line 542
    .line 543
    if-nez v2, :cond_b

    .line 544
    .line 545
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 550
    .line 551
    iget-wide v4, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 552
    .line 553
    and-long/2addr v4, v6

    .line 554
    long-to-int v2, v4

    .line 555
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    cmpg-float v2, v2, v1

    .line 560
    .line 561
    if-nez v2, :cond_b

    .line 562
    .line 563
    goto :goto_5

    .line 564
    :cond_b
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    int-to-long v2, v2

    .line 569
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    int-to-long v4, v1

    .line 574
    shl-long v1, v2, v8

    .line 575
    .line 576
    and-long/2addr v4, v6

    .line 577
    or-long/2addr v1, v4

    .line 578
    new-instance v3, Landroidx/compose/ui/geometry/Size;

    .line 579
    .line 580
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 581
    .line 582
    .line 583
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 587
    .line 588
    return-object v0

    .line 589
    :pswitch_e
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 592
    .line 593
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast v0, Landroidx/compose/material3/TooltipStateImpl;

    .line 596
    .line 597
    check-cast v1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 598
    .line 599
    new-instance v3, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 600
    .line 601
    const/16 v4, 0x15

    .line 602
    .line 603
    invoke-direct {v3, v1, v0, v14, v4}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 604
    .line 605
    .line 606
    const/4 v0, 0x3

    .line 607
    invoke-static {v2, v14, v14, v3, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 608
    .line 609
    .line 610
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 611
    .line 612
    return-object v0

    .line 613
    :pswitch_f
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 614
    .line 615
    check-cast v2, Landroidx/compose/material3/internal/Listener;

    .line 616
    .line 617
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 618
    .line 619
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 620
    .line 621
    check-cast v1, Landroidx/lifecycle/Lifecycle$Event;

    .line 622
    .line 623
    sget-object v3, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 624
    .line 625
    if-ne v1, v3, :cond_c

    .line 626
    .line 627
    invoke-virtual {v2, v0}, Landroidx/compose/material3/internal/Listener;->register(Landroid/view/accessibility/AccessibilityManager;)V

    .line 628
    .line 629
    .line 630
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 631
    .line 632
    return-object v0

    .line 633
    :pswitch_10
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v2, Landroidx/compose/material3/internal/MutableWindowInsets;

    .line 636
    .line 637
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 638
    .line 639
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsets;

    .line 640
    .line 641
    check-cast v1, Landroidx/compose/foundation/layout/WindowInsets;

    .line 642
    .line 643
    new-instance v3, Landroidx/compose/foundation/layout/ExcludeInsets;

    .line 644
    .line 645
    invoke-direct {v3, v0, v1}, Landroidx/compose/foundation/layout/ExcludeInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 646
    .line 647
    .line 648
    iget-object v0, v2, Landroidx/compose/material3/internal/MutableWindowInsets;->insets$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 649
    .line 650
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 654
    .line 655
    return-object v0

    .line 656
    :pswitch_11
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 657
    .line 658
    move-object v4, v2

    .line 659
    check-cast v4, Landroidx/compose/ui/graphics/AndroidPath;

    .line 660
    .line 661
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 662
    .line 663
    check-cast v0, Landroidx/compose/material3/IndicatorLineNode;

    .line 664
    .line 665
    move-object v3, v1

    .line 666
    check-cast v3, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 667
    .line 668
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 669
    .line 670
    .line 671
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    .line 672
    .line 673
    iget-object v0, v0, Landroidx/compose/material3/IndicatorLineNode;->colorAnimatable:Landroidx/compose/animation/core/Animatable;

    .line 674
    .line 675
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 683
    .line 684
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 685
    .line 686
    invoke-direct {v5, v0, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 687
    .line 688
    .line 689
    const/4 v7, 0x0

    .line 690
    const/16 v8, 0x3c

    .line 691
    .line 692
    const/4 v6, 0x0

    .line 693
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/Modifier$-CC;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/AndroidPath;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;I)V

    .line 694
    .line 695
    .line 696
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 697
    .line 698
    return-object v0

    .line 699
    :pswitch_12
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v2, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 702
    .line 703
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 704
    .line 705
    check-cast v0, Landroid/content/Context;

    .line 706
    .line 707
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 708
    .line 709
    invoke-virtual {v1}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->separator()V

    .line 710
    .line 711
    .line 712
    iget-object v3, v1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    .line 713
    .line 714
    sget-object v4, Landroidx/compose/foundation/text/TextContextMenuItems;->Copy:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 715
    .line 716
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->isNonEmptySelection$foundation()Z

    .line 717
    .line 718
    .line 719
    move-result v6

    .line 720
    new-instance v7, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;

    .line 721
    .line 722
    invoke-direct {v7, v2, v5}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 726
    .line 727
    .line 728
    move-result-object v5

    .line 729
    new-instance v8, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;

    .line 730
    .line 731
    invoke-direct {v8, v7, v14, v13}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 732
    .line 733
    .line 734
    if-eqz v6, :cond_d

    .line 735
    .line 736
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextContextMenuItems;->getKey()Ljava/lang/Object;

    .line 737
    .line 738
    .line 739
    move-result-object v6

    .line 740
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextContextMenuItems;->getStringId-9Hzcbyc()I

    .line 741
    .line 742
    .line 743
    move-result v7

    .line 744
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v5

    .line 748
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextContextMenuItems;->getDrawableId-3I4p1mQ()I

    .line 749
    .line 750
    .line 751
    move-result v4

    .line 752
    new-instance v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 753
    .line 754
    invoke-direct {v7, v6, v5, v4, v8}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v3, v7}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 758
    .line 759
    .line 760
    :cond_d
    sget-object v4, Landroidx/compose/foundation/text/TextContextMenuItems;->SelectAll:Landroidx/compose/foundation/text/TextContextMenuItems;

    .line 761
    .line 762
    iget-object v5, v2, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 763
    .line 764
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 765
    .line 766
    .line 767
    move-result-object v6

    .line 768
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/ArrayList;

    .line 769
    .line 770
    .line 771
    move-result-object v6

    .line 772
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 773
    .line 774
    .line 775
    move-result v7

    .line 776
    if-eqz v7, :cond_e

    .line 777
    .line 778
    goto :goto_9

    .line 779
    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 780
    .line 781
    .line 782
    move-result v7

    .line 783
    move v8, v13

    .line 784
    :goto_6
    if-ge v8, v7, :cond_12

    .line 785
    .line 786
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v10

    .line 790
    check-cast v10, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 791
    .line 792
    invoke-virtual {v10}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 793
    .line 794
    .line 795
    move-result-object v12

    .line 796
    iget-object v14, v12, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 797
    .line 798
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    .line 799
    .line 800
    .line 801
    move-result v14

    .line 802
    if-nez v14, :cond_f

    .line 803
    .line 804
    goto :goto_7

    .line 805
    :cond_f
    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 806
    .line 807
    .line 808
    move-result-object v14

    .line 809
    iget-wide v9, v10, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 810
    .line 811
    invoke-virtual {v14, v9, v10}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v9

    .line 815
    check-cast v9, Landroidx/compose/foundation/text/selection/Selection;

    .line 816
    .line 817
    if-nez v9, :cond_10

    .line 818
    .line 819
    goto :goto_8

    .line 820
    :cond_10
    iget-object v10, v9, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 821
    .line 822
    iget v10, v10, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 823
    .line 824
    iget-object v9, v9, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 825
    .line 826
    iget v9, v9, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 827
    .line 828
    sub-int/2addr v10, v9

    .line 829
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    .line 830
    .line 831
    .line 832
    move-result v9

    .line 833
    iget-object v10, v12, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 834
    .line 835
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 836
    .line 837
    .line 838
    move-result v10

    .line 839
    if-ne v9, v10, :cond_11

    .line 840
    .line 841
    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 842
    .line 843
    const/4 v9, 0x6

    .line 844
    goto :goto_6

    .line 845
    :cond_11
    :goto_8
    move v15, v13

    .line 846
    :cond_12
    :goto_9
    new-instance v5, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;

    .line 847
    .line 848
    const/4 v6, 0x6

    .line 849
    invoke-direct {v5, v2, v6}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 850
    .line 851
    .line 852
    new-instance v6, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;

    .line 853
    .line 854
    invoke-direct {v6, v2, v11}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    new-instance v2, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;

    .line 862
    .line 863
    invoke-direct {v2, v6, v5, v13}, Landroidx/compose/foundation/text/selection/SelectionManager_androidKt$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 864
    .line 865
    .line 866
    if-nez v15, :cond_13

    .line 867
    .line 868
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextContextMenuItems;->getKey()Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v5

    .line 872
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextContextMenuItems;->getStringId-9Hzcbyc()I

    .line 873
    .line 874
    .line 875
    move-result v6

    .line 876
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v0

    .line 880
    invoke-virtual {v4}, Landroidx/compose/foundation/text/TextContextMenuItems;->getDrawableId-3I4p1mQ()I

    .line 881
    .line 882
    .line 883
    move-result v4

    .line 884
    new-instance v6, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 885
    .line 886
    invoke-direct {v6, v5, v0, v4, v2}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;-><init>(Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v3, v6}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 890
    .line 891
    .line 892
    :cond_13
    invoke-virtual {v1}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->separator()V

    .line 893
    .line 894
    .line 895
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 896
    .line 897
    return-object v0

    .line 898
    :pswitch_13
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 899
    .line 900
    check-cast v2, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 901
    .line 902
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 903
    .line 904
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 905
    .line 906
    check-cast v1, Landroidx/compose/foundation/text/selection/Selection;

    .line 907
    .line 908
    invoke-virtual {v2, v1}, Landroidx/compose/foundation/text/selection/SelectionManager;->setSelection(Landroidx/compose/foundation/text/selection/Selection;)V

    .line 909
    .line 910
    .line 911
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 915
    .line 916
    return-object v0

    .line 917
    :pswitch_14
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 918
    .line 919
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 920
    .line 921
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 922
    .line 923
    check-cast v0, Landroidx/compose/ui/platform/Clipboard;

    .line 924
    .line 925
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 926
    .line 927
    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 928
    .line 929
    new-instance v4, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 930
    .line 931
    invoke-direct {v4, v0, v1, v14, v10}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 932
    .line 933
    .line 934
    invoke-static {v2, v14, v3, v4, v15}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 935
    .line 936
    .line 937
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 938
    .line 939
    return-object v0

    .line 940
    :pswitch_15
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 941
    .line 942
    check-cast v2, Landroidx/collection/MutableLongObjectMap;

    .line 943
    .line 944
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 945
    .line 946
    check-cast v0, Landroidx/compose/foundation/text/selection/Selection;

    .line 947
    .line 948
    check-cast v1, Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 949
    .line 950
    iget-object v3, v1, Landroidx/compose/foundation/text/selection/SelectableInfo;->textLayoutResult:Landroidx/compose/ui/text/TextLayoutResult;

    .line 951
    .line 952
    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 953
    .line 954
    iget-object v3, v3, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 955
    .line 956
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 957
    .line 958
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 959
    .line 960
    .line 961
    move-result v3

    .line 962
    invoke-static {v2, v0, v1, v13, v3}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;->createAndPutSubSelection(Landroidx/collection/MutableLongObjectMap;Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;II)V

    .line 963
    .line 964
    .line 965
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 966
    .line 967
    return-object v0

    .line 968
    :pswitch_16
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 969
    .line 970
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 971
    .line 972
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 973
    .line 974
    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 975
    .line 976
    check-cast v1, Lkotlin/text/MatcherMatchResult;

    .line 977
    .line 978
    iget v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 979
    .line 980
    const/4 v4, -0x1

    .line 981
    if-ne v3, v4, :cond_14

    .line 982
    .line 983
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 984
    .line 985
    .line 986
    move-result-object v3

    .line 987
    iget v3, v3, Lkotlin/ranges/IntProgression;->first:I

    .line 988
    .line 989
    iput v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 990
    .line 991
    :cond_14
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    iget v1, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 996
    .line 997
    add-int/2addr v1, v15

    .line 998
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 999
    .line 1000
    const-string v0, ""

    .line 1001
    .line 1002
    return-object v0

    .line 1003
    :pswitch_17
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1004
    .line 1005
    check-cast v2, Ljava/util/List;

    .line 1006
    .line 1007
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1008
    .line 1009
    check-cast v0, Ljava/util/List;

    .line 1010
    .line 1011
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 1012
    .line 1013
    if-eqz v2, :cond_15

    .line 1014
    .line 1015
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 1016
    .line 1017
    .line 1018
    move-result v5

    .line 1019
    move v6, v13

    .line 1020
    :goto_a
    if-ge v6, v5, :cond_15

    .line 1021
    .line 1022
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v7

    .line 1026
    check-cast v7, Lkotlin/Pair;

    .line 1027
    .line 1028
    iget-object v8, v7, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1029
    .line 1030
    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 1031
    .line 1032
    iget-object v7, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1033
    .line 1034
    check-cast v7, Landroidx/compose/ui/unit/IntOffset;

    .line 1035
    .line 1036
    iget-wide v9, v7, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 1037
    .line 1038
    invoke-static {v1, v8, v9, v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 1039
    .line 1040
    .line 1041
    add-int/lit8 v6, v6, 0x1

    .line 1042
    .line 1043
    goto :goto_a

    .line 1044
    :cond_15
    if-eqz v0, :cond_17

    .line 1045
    .line 1046
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 1047
    .line 1048
    .line 1049
    move-result v2

    .line 1050
    :goto_b
    if-ge v13, v2, :cond_17

    .line 1051
    .line 1052
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v5

    .line 1056
    check-cast v5, Lkotlin/Pair;

    .line 1057
    .line 1058
    iget-object v6, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1059
    .line 1060
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 1061
    .line 1062
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1063
    .line 1064
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 1065
    .line 1066
    if-eqz v5, :cond_16

    .line 1067
    .line 1068
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v5

    .line 1072
    check-cast v5, Landroidx/compose/ui/unit/IntOffset;

    .line 1073
    .line 1074
    iget-wide v7, v5, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 1075
    .line 1076
    goto :goto_c

    .line 1077
    :cond_16
    move-wide v7, v3

    .line 1078
    :goto_c
    invoke-static {v1, v6, v7, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 1079
    .line 1080
    .line 1081
    add-int/lit8 v13, v13, 0x1

    .line 1082
    .line 1083
    goto :goto_b

    .line 1084
    :cond_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1085
    .line 1086
    return-object v0

    .line 1087
    :pswitch_18
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1088
    .line 1089
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1090
    .line 1091
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1092
    .line 1093
    check-cast v0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 1094
    .line 1095
    iget-object v0, v0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 1096
    .line 1097
    check-cast v1, Landroidx/compose/foundation/text/TextAnnotatorScope;

    .line 1098
    .line 1099
    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1100
    .line 1101
    check-cast v3, Landroidx/compose/ui/text/LinkAnnotation;

    .line 1102
    .line 1103
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v4

    .line 1107
    if-eqz v4, :cond_18

    .line 1108
    .line 1109
    iget-object v4, v4, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 1110
    .line 1111
    goto :goto_d

    .line 1112
    :cond_18
    move-object v4, v14

    .line 1113
    :goto_d
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1114
    .line 1115
    .line 1116
    move-result v6

    .line 1117
    and-int/2addr v6, v15

    .line 1118
    if-eqz v6, :cond_19

    .line 1119
    .line 1120
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v6

    .line 1124
    if-eqz v6, :cond_19

    .line 1125
    .line 1126
    iget-object v6, v6, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 1127
    .line 1128
    goto :goto_e

    .line 1129
    :cond_19
    move-object v6, v14

    .line 1130
    :goto_e
    if-eqz v4, :cond_1a

    .line 1131
    .line 1132
    invoke-virtual {v4, v6}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v6

    .line 1136
    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1137
    .line 1138
    .line 1139
    move-result v4

    .line 1140
    and-int/lit8 v4, v4, 0x2

    .line 1141
    .line 1142
    if-eqz v4, :cond_1b

    .line 1143
    .line 1144
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v4

    .line 1148
    if-eqz v4, :cond_1b

    .line 1149
    .line 1150
    iget-object v4, v4, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 1151
    .line 1152
    goto :goto_f

    .line 1153
    :cond_1b
    move-object v4, v14

    .line 1154
    :goto_f
    if-eqz v6, :cond_1c

    .line 1155
    .line 1156
    invoke-virtual {v6, v4}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v4

    .line 1160
    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1161
    .line 1162
    .line 1163
    move-result v0

    .line 1164
    and-int/lit8 v0, v0, 0x4

    .line 1165
    .line 1166
    if-eqz v0, :cond_1d

    .line 1167
    .line 1168
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    if-eqz v0, :cond_1d

    .line 1173
    .line 1174
    iget-object v14, v0, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 1175
    .line 1176
    :cond_1d
    if-eqz v4, :cond_1e

    .line 1177
    .line 1178
    invoke-virtual {v4, v14}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v14

    .line 1182
    :cond_1e
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1183
    .line 1184
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1185
    .line 1186
    .line 1187
    iget-object v3, v1, Landroidx/compose/foundation/text/TextAnnotatorScope;->initialText:Landroidx/compose/ui/text/AnnotatedString;

    .line 1188
    .line 1189
    new-instance v4, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;

    .line 1190
    .line 1191
    invoke-direct {v4, v0, v2, v14, v5}, Lcoil3/compose/internal/UtilsKt$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString;->mapAnnotations(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/AnnotatedString;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v0

    .line 1198
    iput-object v0, v1, Landroidx/compose/foundation/text/TextAnnotatorScope;->styledText:Landroidx/compose/ui/text/AnnotatedString;

    .line 1199
    .line 1200
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1201
    .line 1202
    return-object v0

    .line 1203
    :pswitch_19
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1204
    .line 1205
    check-cast v2, Landroidx/compose/foundation/text/TextLinkScope;

    .line 1206
    .line 1207
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1208
    .line 1209
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1210
    .line 1211
    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 1212
    .line 1213
    iget-object v3, v2, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 1214
    .line 1215
    iget-object v2, v2, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1216
    .line 1217
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v4

    .line 1221
    check-cast v4, Landroidx/compose/ui/text/TextLayoutResult;

    .line 1222
    .line 1223
    if-eqz v4, :cond_1f

    .line 1224
    .line 1225
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 1226
    .line 1227
    if-eqz v4, :cond_1f

    .line 1228
    .line 1229
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 1230
    .line 1231
    goto :goto_10

    .line 1232
    :cond_1f
    move-object v4, v14

    .line 1233
    :goto_10
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result v3

    .line 1237
    if-nez v3, :cond_21

    .line 1238
    .line 1239
    :cond_20
    :goto_11
    move-object v5, v14

    .line 1240
    goto :goto_13

    .line 1241
    :cond_21
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v2

    .line 1245
    check-cast v2, Landroidx/compose/ui/text/TextLayoutResult;

    .line 1246
    .line 1247
    if-eqz v2, :cond_20

    .line 1248
    .line 1249
    iget-object v3, v2, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 1250
    .line 1251
    invoke-static {v0, v2}, Landroidx/compose/foundation/text/TextLinkScope;->calculateVisibleLinkRange(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    if-nez v0, :cond_22

    .line 1256
    .line 1257
    goto :goto_11

    .line 1258
    :cond_22
    iget v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1259
    .line 1260
    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1261
    .line 1262
    invoke-virtual {v2, v0, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v5

    .line 1266
    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v9

    .line 1270
    sub-int/2addr v4, v15

    .line 1271
    invoke-virtual {v2, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v2

    .line 1275
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    .line 1276
    .line 1277
    .line 1278
    move-result v0

    .line 1279
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    .line 1280
    .line 1281
    .line 1282
    move-result v3

    .line 1283
    if-ne v0, v3, :cond_23

    .line 1284
    .line 1285
    iget v0, v2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 1286
    .line 1287
    iget v2, v9, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 1288
    .line 1289
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 1290
    .line 1291
    .line 1292
    move-result v0

    .line 1293
    goto :goto_12

    .line 1294
    :cond_23
    const/4 v0, 0x0

    .line 1295
    :goto_12
    iget v2, v9, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 1296
    .line 1297
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1298
    .line 1299
    .line 1300
    move-result v0

    .line 1301
    int-to-long v3, v0

    .line 1302
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1303
    .line 1304
    .line 1305
    move-result v0

    .line 1306
    int-to-long v9, v0

    .line 1307
    shl-long v2, v3, v8

    .line 1308
    .line 1309
    and-long/2addr v6, v9

    .line 1310
    or-long/2addr v2, v6

    .line 1311
    const-wide v6, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    xor-long/2addr v2, v6

    .line 1317
    invoke-virtual {v5, v2, v3}, Landroidx/compose/ui/graphics/AndroidPath;->translate-k-4lQ0M(J)V

    .line 1318
    .line 1319
    .line 1320
    :goto_13
    if-eqz v5, :cond_24

    .line 1321
    .line 1322
    new-instance v14, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;

    .line 1323
    .line 1324
    invoke-direct {v14, v5}, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;-><init>(Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 1325
    .line 1326
    .line 1327
    :cond_24
    if-eqz v14, :cond_25

    .line 1328
    .line 1329
    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v1, v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    .line 1333
    .line 1334
    .line 1335
    :cond_25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1336
    .line 1337
    return-object v0

    .line 1338
    :pswitch_1a
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1339
    .line 1340
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 1341
    .line 1342
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1343
    .line 1344
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1345
    .line 1346
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 1347
    .line 1348
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 1349
    .line 1350
    invoke-direct {v1, v12, v2, v0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1351
    .line 1352
    .line 1353
    return-object v1

    .line 1354
    :pswitch_1b
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1355
    .line 1356
    check-cast v2, Ljava/util/List;

    .line 1357
    .line 1358
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1359
    .line 1360
    check-cast v0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    .line 1361
    .line 1362
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 1363
    .line 1364
    iget-object v0, v0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;->shouldMeasureLinks:Lkotlin/jvm/functions/Function0;

    .line 1365
    .line 1366
    invoke-static {v2, v0}, Landroidx/compose/foundation/text/BasicTextKt;->measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v0

    .line 1370
    if-eqz v0, :cond_27

    .line 1371
    .line 1372
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1373
    .line 1374
    .line 1375
    move-result v2

    .line 1376
    :goto_14
    if-ge v13, v2, :cond_27

    .line 1377
    .line 1378
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1379
    .line 1380
    .line 1381
    move-result-object v5

    .line 1382
    check-cast v5, Lkotlin/Pair;

    .line 1383
    .line 1384
    iget-object v6, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1385
    .line 1386
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 1387
    .line 1388
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1389
    .line 1390
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 1391
    .line 1392
    if-eqz v5, :cond_26

    .line 1393
    .line 1394
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v5

    .line 1398
    check-cast v5, Landroidx/compose/ui/unit/IntOffset;

    .line 1399
    .line 1400
    iget-wide v7, v5, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 1401
    .line 1402
    goto :goto_15

    .line 1403
    :cond_26
    move-wide v7, v3

    .line 1404
    :goto_15
    invoke-static {v1, v6, v7, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 1405
    .line 1406
    .line 1407
    add-int/lit8 v13, v13, 0x1

    .line 1408
    .line 1409
    goto :goto_14

    .line 1410
    :cond_27
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1411
    .line 1412
    return-object v0

    .line 1413
    :pswitch_1c
    iget-object v2, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 1414
    .line 1415
    check-cast v2, Landroidx/navigation/NavDestination;

    .line 1416
    .line 1417
    iget-object v0, v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Object;

    .line 1418
    .line 1419
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 1420
    .line 1421
    iget-object v0, v0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 1422
    .line 1423
    check-cast v1, Landroidx/navigation/NavOptionsBuilder;

    .line 1424
    .line 1425
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1426
    .line 1427
    .line 1428
    iget-object v3, v1, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 1429
    .line 1430
    iput v13, v3, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    .line 1431
    .line 1432
    iput v13, v3, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    .line 1433
    .line 1434
    instance-of v3, v2, Landroidx/navigation/NavGraph;

    .line 1435
    .line 1436
    if-eqz v3, :cond_2b

    .line 1437
    .line 1438
    sget v3, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 1439
    .line 1440
    invoke-static {v2}, Lkotlin/text/UStringsKt;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v2

    .line 1444
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v2

    .line 1448
    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1449
    .line 1450
    .line 1451
    move-result v3

    .line 1452
    if-eqz v3, :cond_2a

    .line 1453
    .line 1454
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v3

    .line 1458
    check-cast v3, Landroidx/navigation/NavDestination;

    .line 1459
    .line 1460
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v4

    .line 1464
    if-eqz v4, :cond_29

    .line 1465
    .line 1466
    iget-object v4, v4, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 1467
    .line 1468
    goto :goto_16

    .line 1469
    :cond_29
    move-object v4, v14

    .line 1470
    :goto_16
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v3

    .line 1474
    if-eqz v3, :cond_28

    .line 1475
    .line 1476
    goto :goto_17

    .line 1477
    :cond_2a
    sget v2, Landroidx/navigation/NavGraph;->$r8$clinit:I

    .line 1478
    .line 1479
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    new-instance v2, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 1484
    .line 1485
    const/16 v3, 0x16

    .line 1486
    .line 1487
    invoke-direct {v2, v3}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1488
    .line 1489
    .line 1490
    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 1491
    .line 1492
    .line 1493
    move-result-object v0

    .line 1494
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->last(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v0

    .line 1498
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 1499
    .line 1500
    iget-object v0, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 1501
    .line 1502
    iget v0, v0, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 1503
    .line 1504
    iput v0, v1, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    .line 1505
    .line 1506
    iput-boolean v15, v1, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    .line 1507
    .line 1508
    :cond_2b
    :goto_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1509
    .line 1510
    return-object v0

    .line 1511
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
