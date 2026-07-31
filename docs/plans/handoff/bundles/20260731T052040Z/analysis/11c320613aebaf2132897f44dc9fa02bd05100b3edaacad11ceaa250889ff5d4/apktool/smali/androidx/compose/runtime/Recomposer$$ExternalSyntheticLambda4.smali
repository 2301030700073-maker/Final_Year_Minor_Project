.class public final synthetic Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x7

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x3

    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Landroidx/lifecycle/Lifecycle;

    .line 20
    .line 21
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 22
    .line 23
    sget-object p1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$ProviderMarkerKey;->INSTANCE:Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$ProviderMarkerKey;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->getStateHolder()Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v1, v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->entries:Landroidx/collection/MutableScatterMap;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    new-instance v2, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 38
    .line 39
    invoke-direct {v2, p1}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    check-cast v2, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 46
    .line 47
    iget v1, v2, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->refCount:I

    .line 48
    .line 49
    add-int/2addr v1, v7

    .line 50
    iput v1, v2, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->refCount:I

    .line 51
    .line 52
    new-instance v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    invoke-direct {v1, v2, v0, p1}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 58
    .line 59
    invoke-direct {p1, v5, v1, p0, v0}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_0
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;

    .line 66
    .line 67
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;->getStateHolder()Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p1, p1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$StateHolder;->entries:Landroidx/collection/MutableScatterMap;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-nez v1, :cond_1

    .line 82
    .line 83
    new-instance v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 84
    .line 85
    invoke-direct {v1, p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;-><init>(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p0, v1}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    check-cast v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;

    .line 92
    .line 93
    iget p1, v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->refCount:I

    .line 94
    .line 95
    add-int/2addr p1, v7

    .line 96
    iput p1, v1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;->refCount:I

    .line 97
    .line 98
    new-instance p1, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$$ExternalSyntheticLambda1;

    .line 99
    .line 100
    invoke-direct {p1, v1, v0, p0}, Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/viewmodel/ViewModelStoreProvider$Entry;Landroidx/lifecycle/viewmodel/ViewModelStoreProvider;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    new-instance p0, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;

    .line 104
    .line 105
    invoke-direct {p0, p1, v2}, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 112
    .line 113
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Landroidx/lifecycle/compose/ComposeLifecycleOwner;

    .line 116
    .line 117
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 118
    .line 119
    new-instance p1, Landroidx/lifecycle/compose/RememberLifecycleOwnerKt$$ExternalSyntheticLambda0;

    .line 120
    .line 121
    invoke-direct {p1, p0, v6}, Landroidx/lifecycle/compose/RememberLifecycleOwnerKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 122
    .line 123
    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-eqz v1, :cond_2

    .line 131
    .line 132
    invoke-virtual {v1, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 133
    .line 134
    .line 135
    :cond_2
    if-nez v0, :cond_3

    .line 136
    .line 137
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, p0, Landroidx/lifecycle/compose/ComposeLifecycleOwner;->parentLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 147
    .line 148
    invoke-virtual {p0}, Landroidx/lifecycle/compose/ComposeLifecycleOwner;->updateLifecycleState()V

    .line 149
    .line 150
    .line 151
    :cond_3
    new-instance v1, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;

    .line 152
    .line 153
    invoke-direct {v1, v4, v0, p1, p0}, Landroidx/compose/animation/AnimatedContentKt$AnimatedContent$6$1$5$1$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    return-object v1

    .line 157
    :pswitch_2
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 160
    .line 161
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p0, Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 164
    .line 165
    check-cast p1, Landroid/os/Bundle;

    .line 166
    .line 167
    check-cast v0, Lkotlinx/serialization/KSerializer;

    .line 168
    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v1, Landroidx/savedstate/serialization/SavedStateDecoder;

    .line 179
    .line 180
    invoke-direct {v1, p1, p0}, Landroidx/savedstate/serialization/SavedStateDecoder;-><init>(Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v0}, Landroidx/savedstate/serialization/SavedStateDecoder;->decodeSerializableValue(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :pswitch_3
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v0, Landroidx/compose/runtime/Recomposer;

    .line 191
    .line 192
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p0, Ljava/lang/Throwable;

    .line 195
    .line 196
    check-cast p1, Ljava/lang/Throwable;

    .line 197
    .line 198
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 199
    .line 200
    monitor-enter v1

    .line 201
    if-eqz p0, :cond_5

    .line 202
    .line 203
    if-eqz p1, :cond_6

    .line 204
    .line 205
    :try_start_0
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    .line 206
    .line 207
    if-nez v2, :cond_4

    .line 208
    .line 209
    goto :goto_0

    .line 210
    :cond_4
    move-object p1, v3

    .line 211
    :goto_0
    if-eqz p1, :cond_6

    .line 212
    .line 213
    invoke-static {p0, p1}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :catchall_0
    move-exception p0

    .line 218
    goto :goto_2

    .line 219
    :cond_5
    move-object p0, v3

    .line 220
    :cond_6
    :goto_1
    iput-object p0, v0, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 221
    .line 222
    iget-object p0, v0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 223
    .line 224
    sget-object p1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v3, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .line 231
    .line 232
    monitor-exit v1

    .line 233
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 234
    .line 235
    return-object p0

    .line 236
    :goto_2
    monitor-exit v1

    .line 237
    throw p0

    .line 238
    :pswitch_4
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v0, Ljava/util/Set;

    .line 241
    .line 242
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 245
    .line 246
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_b

    .line 251
    .line 252
    iget-object v0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->subscriptions:Landroidx/collection/MutableScatterMap;

    .line 253
    .line 254
    iget-object p0, p0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->toNotify:Landroidx/collection/MutableScatterSet;

    .line 255
    .line 256
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    if-eqz p1, :cond_b

    .line 261
    .line 262
    instance-of v0, p1, Landroidx/collection/MutableScatterSet;

    .line 263
    .line 264
    if-eqz v0, :cond_a

    .line 265
    .line 266
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 267
    .line 268
    iget-object v0, p1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 269
    .line 270
    iget-object p1, p1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 271
    .line 272
    array-length v1, p1

    .line 273
    sub-int/2addr v1, v4

    .line 274
    if-ltz v1, :cond_b

    .line 275
    .line 276
    move v3, v6

    .line 277
    :goto_3
    aget-wide v4, p1, v3

    .line 278
    .line 279
    not-long v7, v4

    .line 280
    shl-long/2addr v7, v2

    .line 281
    and-long/2addr v7, v4

    .line 282
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    and-long/2addr v7, v9

    .line 288
    cmp-long v7, v7, v9

    .line 289
    .line 290
    if-eqz v7, :cond_9

    .line 291
    .line 292
    sub-int v7, v3, v1

    .line 293
    .line 294
    not-int v7, v7

    .line 295
    ushr-int/lit8 v7, v7, 0x1f

    .line 296
    .line 297
    const/16 v8, 0x8

    .line 298
    .line 299
    rsub-int/lit8 v7, v7, 0x8

    .line 300
    .line 301
    move v9, v6

    .line 302
    :goto_4
    if-ge v9, v7, :cond_8

    .line 303
    .line 304
    const-wide/16 v10, 0xff

    .line 305
    .line 306
    and-long/2addr v10, v4

    .line 307
    const-wide/16 v12, 0x80

    .line 308
    .line 309
    cmp-long v10, v10, v12

    .line 310
    .line 311
    if-gez v10, :cond_7

    .line 312
    .line 313
    shl-int/lit8 v10, v3, 0x3

    .line 314
    .line 315
    add-int/2addr v10, v9

    .line 316
    aget-object v10, v0, v10

    .line 317
    .line 318
    check-cast v10, Lkotlinx/coroutines/channels/SendChannel;

    .line 319
    .line 320
    invoke-virtual {p0, v10}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    :cond_7
    shr-long/2addr v4, v8

    .line 324
    add-int/lit8 v9, v9, 0x1

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_8
    if-ne v7, v8, :cond_b

    .line 328
    .line 329
    :cond_9
    if-eq v3, v1, :cond_b

    .line 330
    .line 331
    add-int/lit8 v3, v3, 0x1

    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_a
    check-cast p1, Lkotlinx/coroutines/channels/SendChannel;

    .line 335
    .line 336
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 340
    .line 341
    return-object p0

    .line 342
    :pswitch_5
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 345
    .line 346
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    .line 349
    .line 350
    iget-object v0, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->pendingChanges:Ljava/util/ArrayList;

    .line 351
    .line 352
    new-instance v1, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;

    .line 353
    .line 354
    invoke-direct {v1, p1, p0}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 361
    .line 362
    return-object p0

    .line 363
    :pswitch_6
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Landroidx/compose/material3/internal/MutableWindowInsets;

    .line 366
    .line 367
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 368
    .line 369
    check-cast p0, Landroidx/compose/foundation/layout/WindowInsets;

    .line 370
    .line 371
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsets;

    .line 372
    .line 373
    new-instance v1, Landroidx/compose/foundation/layout/ExcludeInsets;

    .line 374
    .line 375
    invoke-direct {v1, p0, p1}, Landroidx/compose/foundation/layout/ExcludeInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 376
    .line 377
    .line 378
    iget-object p0, v0, Landroidx/compose/material3/internal/MutableWindowInsets;->insets$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 379
    .line 380
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 384
    .line 385
    return-object p0

    .line 386
    :pswitch_7
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    .line 389
    .line 390
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 391
    .line 392
    check-cast p0, Landroidx/compose/material3/internal/FloatProducer;

    .line 393
    .line 394
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 395
    .line 396
    invoke-interface {p0}, Landroidx/compose/material3/internal/FloatProducer;->invoke()F

    .line 397
    .line 398
    .line 399
    move-result p0

    .line 400
    invoke-virtual {p1, v0, v6, v6, p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 401
    .line 402
    .line 403
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 404
    .line 405
    return-object p0

    .line 406
    :pswitch_8
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 409
    .line 410
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast p0, Ljava/util/ArrayList;

    .line 413
    .line 414
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 415
    .line 416
    new-instance v1, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;

    .line 417
    .line 418
    invoke-direct {v1, v6, p0}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;-><init>(ILjava/util/ArrayList;)V

    .line 419
    .line 420
    .line 421
    iput-boolean v7, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 422
    .line 423
    invoke-virtual {v1, p1}, Landroidx/compose/foundation/pager/PagerMeasureKt$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    iput-boolean v6, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    .line 427
    .line 428
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 432
    .line 433
    return-object p0

    .line 434
    :pswitch_9
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 437
    .line 438
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 439
    .line 440
    check-cast p0, Lorg/acra/util/ProcessFinisher;

    .line 441
    .line 442
    check-cast p1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;

    .line 443
    .line 444
    iget p1, p1, Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;->index:I

    .line 445
    .line 446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {p0}, Lorg/acra/util/ProcessFinisher;->getLayoutInfo()Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    .line 455
    .line 456
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object p0

    .line 460
    invoke-interface {v0, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 464
    .line 465
    return-object p0

    .line 466
    :pswitch_a
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 469
    .line 470
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 473
    .line 474
    check-cast p1, Ljava/util/Map;

    .line 475
    .line 476
    new-instance v1, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 477
    .line 478
    invoke-direct {v1, v0, p1, p0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 479
    .line 480
    .line 481
    return-object v1

    .line 482
    :pswitch_b
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 483
    .line 484
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 485
    .line 486
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 487
    .line 488
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 489
    .line 490
    iget-object p1, v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->previouslyComposedKeys:Landroidx/collection/MutableScatterSet;

    .line 491
    .line 492
    invoke-virtual {p1, p0}, Landroidx/collection/MutableScatterSet;->minusAssign(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;

    .line 496
    .line 497
    const/4 v1, 0x4

    .line 498
    invoke-direct {p1, v0, p0, v1}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 499
    .line 500
    .line 501
    return-object p1

    .line 502
    :pswitch_c
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 503
    .line 504
    check-cast v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    .line 505
    .line 506
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 509
    .line 510
    check-cast p1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    .line 511
    .line 512
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 513
    .line 514
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 515
    .line 516
    if-eqz v1, :cond_c

    .line 517
    .line 518
    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->unregister()V

    .line 519
    .line 520
    .line 521
    :cond_c
    iput-object v3, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 522
    .line 523
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->lock:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 524
    .line 525
    if-eqz v0, :cond_d

    .line 526
    .line 527
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    :cond_d
    iput-object v3, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->lock:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 531
    .line 532
    return-object p1

    .line 533
    :pswitch_d
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    .line 536
    .line 537
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 538
    .line 539
    check-cast p0, Landroid/view/View;

    .line 540
    .line 541
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 542
    .line 543
    iget-object p1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->insetsListener:Landroidx/compose/foundation/layout/InsetsListener;

    .line 544
    .line 545
    iget v1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    .line 546
    .line 547
    if-nez v1, :cond_f

    .line 548
    .line 549
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 550
    .line 551
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-eqz v1, :cond_e

    .line 559
    .line 560
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 561
    .line 562
    .line 563
    :cond_e
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 564
    .line 565
    .line 566
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Lcom/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    .line 567
    .line 568
    .line 569
    :cond_f
    iget p1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    .line 570
    .line 571
    add-int/2addr p1, v7

    .line 572
    iput p1, v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    .line 573
    .line 574
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;

    .line 575
    .line 576
    invoke-direct {p1, v0, p0, v5}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 577
    .line 578
    .line 579
    return-object p1

    .line 580
    :pswitch_e
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v0, Landroidx/compose/foundation/layout/PaddingNode;

    .line 583
    .line 584
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    .line 587
    .line 588
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 589
    .line 590
    iget-boolean v2, v0, Landroidx/compose/foundation/layout/PaddingNode;->rtlAware:Z

    .line 591
    .line 592
    iget v3, v0, Landroidx/compose/foundation/layout/PaddingNode;->start:F

    .line 593
    .line 594
    if-eqz v2, :cond_10

    .line 595
    .line 596
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 597
    .line 598
    .line 599
    invoke-static {p1, v3}, Landroidx/compose/ui/node/Owner$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    .line 604
    .line 605
    invoke-static {p1, v0}, Landroidx/compose/ui/node/Owner$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 606
    .line 607
    .line 608
    move-result v0

    .line 609
    invoke-static {p1, p0, v1, v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V

    .line 610
    .line 611
    .line 612
    goto :goto_5

    .line 613
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    .line 615
    .line 616
    invoke-static {p1, v3}, Landroidx/compose/ui/node/Owner$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    iget v0, v0, Landroidx/compose/foundation/layout/PaddingNode;->top:F

    .line 621
    .line 622
    invoke-static {p1, v0}, Landroidx/compose/ui/node/Owner$-CC;->$default$roundToPx-0680j_4(Landroidx/compose/ui/unit/Density;F)I

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    invoke-virtual {p1, p0, v2, v0, v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place(Landroidx/compose/ui/layout/Placeable;IIF)V

    .line 627
    .line 628
    .line 629
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 630
    .line 631
    return-object p0

    .line 632
    :pswitch_f
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 633
    .line 634
    check-cast v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;

    .line 635
    .line 636
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 637
    .line 638
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 639
    .line 640
    check-cast p1, Ljava/lang/Long;

    .line 641
    .line 642
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    iget p1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 646
    .line 647
    iput v1, v0, Landroidx/compose/foundation/gestures/UpdatableAnimationState;->value:F

    .line 648
    .line 649
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 657
    .line 658
    return-object p0

    .line 659
    :pswitch_10
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 662
    .line 663
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 666
    .line 667
    check-cast p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 668
    .line 669
    iget-boolean v1, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->isIndirectPointerEvent:Z

    .line 670
    .line 671
    if-eqz v1, :cond_11

    .line 672
    .line 673
    const/high16 v1, -0x40800000    # -1.0f

    .line 674
    .line 675
    goto :goto_6

    .line 676
    :cond_11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 677
    .line 678
    :goto_6
    iget-wide v2, p1, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;->delta:J

    .line 679
    .line 680
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 681
    .line 682
    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 683
    .line 684
    if-ne p0, p1, :cond_12

    .line 685
    .line 686
    invoke-static {v7, v2, v3}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(IJ)J

    .line 687
    .line 688
    .line 689
    move-result-wide p0

    .line 690
    goto :goto_7

    .line 691
    :cond_12
    invoke-static {v4, v2, v3}, Landroidx/compose/ui/geometry/Offset;->copy-dBAh8RU$default(IJ)J

    .line 692
    .line 693
    .line 694
    move-result-wide p0

    .line 695
    :goto_7
    invoke-static {p0, p1, v1}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    .line 696
    .line 697
    .line 698
    move-result-wide p0

    .line 699
    invoke-virtual {v0, v7, p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->scrollByWithOverscroll-OzD1aCk(IJ)J

    .line 700
    .line 701
    .line 702
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 703
    .line 704
    return-object p0

    .line 705
    :pswitch_11
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 706
    .line 707
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 708
    .line 709
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 710
    .line 711
    check-cast p0, Landroidx/compose/foundation/gestures/ContentInViewNode$Request;

    .line 712
    .line 713
    check-cast p1, Ljava/lang/Throwable;

    .line 714
    .line 715
    iget-object p1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->beyondBoundsItems:Landroidx/compose/runtime/collection/MutableVector;

    .line 716
    .line 717
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 718
    .line 719
    .line 720
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 721
    .line 722
    return-object p0

    .line 723
    :pswitch_12
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 726
    .line 727
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 728
    .line 729
    check-cast p0, Landroidx/compose/foundation/interaction/Interaction;

    .line 730
    .line 731
    check-cast p1, Ljava/lang/Throwable;

    .line 732
    .line 733
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 734
    .line 735
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 736
    .line 737
    .line 738
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 739
    .line 740
    return-object p0

    .line 741
    :pswitch_13
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 744
    .line 745
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 746
    .line 747
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 748
    .line 749
    check-cast p1, Landroidx/compose/foundation/GestureConnection;

    .line 750
    .line 751
    invoke-interface {p1, v0}, Landroidx/compose/foundation/GestureConnection;->isInterested(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 752
    .line 753
    .line 754
    move-result p1

    .line 755
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 756
    .line 757
    if-nez v0, :cond_13

    .line 758
    .line 759
    if-eqz p1, :cond_14

    .line 760
    .line 761
    :cond_13
    move v6, v7

    .line 762
    :cond_14
    iput-boolean v6, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 763
    .line 764
    xor-int/lit8 p0, v6, 0x1

    .line 765
    .line 766
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 767
    .line 768
    .line 769
    move-result-object p0

    .line 770
    return-object p0

    .line 771
    :pswitch_14
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 772
    .line 773
    check-cast v0, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 774
    .line 775
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 776
    .line 777
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 778
    .line 779
    check-cast p1, Landroidx/compose/foundation/GestureConnection;

    .line 780
    .line 781
    invoke-interface {p1, v0}, Landroidx/compose/foundation/GestureConnection;->isInterested(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 782
    .line 783
    .line 784
    move-result p1

    .line 785
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 786
    .line 787
    if-nez v0, :cond_15

    .line 788
    .line 789
    if-eqz p1, :cond_16

    .line 790
    .line 791
    :cond_15
    move v6, v7

    .line 792
    :cond_16
    iput-boolean v6, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 793
    .line 794
    xor-int/lit8 p0, v6, 0x1

    .line 795
    .line 796
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 797
    .line 798
    .line 799
    move-result-object p0

    .line 800
    return-object p0

    .line 801
    :pswitch_15
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 802
    .line 803
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 804
    .line 805
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast p0, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    .line 808
    .line 809
    check-cast p1, Ljava/lang/Throwable;

    .line 810
    .line 811
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 812
    .line 813
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 814
    .line 815
    .line 816
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 817
    .line 818
    return-object p0

    .line 819
    :pswitch_16
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 820
    .line 821
    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 822
    .line 823
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 824
    .line 825
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 826
    .line 827
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 828
    .line 829
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 830
    .line 831
    .line 832
    move-result-object p1

    .line 833
    new-instance v1, Landroidx/preference/PreferenceManager;

    .line 834
    .line 835
    new-instance v2, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 836
    .line 837
    invoke-direct {v2, p1, p0, v5}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 838
    .line 839
    .line 840
    invoke-direct {v1, v2}, Landroidx/preference/PreferenceManager;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v0, v1}, Landroidx/compose/animation/core/SeekableTransitionState;->setSnapshotStateObserver$animation_core(Landroidx/preference/PreferenceManager;)V

    .line 844
    .line 845
    .line 846
    new-instance p0, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;

    .line 847
    .line 848
    invoke-direct {p0, v0, v7}, Lnet/newpipe/app/ComposeActivity$onCreate$lambda$0$1$0$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;I)V

    .line 849
    .line 850
    .line 851
    return-object p0

    .line 852
    :pswitch_17
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 853
    .line 854
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 855
    .line 856
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 857
    .line 858
    check-cast p0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 859
    .line 860
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 861
    .line 862
    iget-object p1, v0, Landroidx/compose/animation/core/Transition;->_animations:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 863
    .line 864
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;

    .line 868
    .line 869
    invoke-direct {p1, v0, p0, v4}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 870
    .line 871
    .line 872
    return-object p1

    .line 873
    :pswitch_18
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 874
    .line 875
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 876
    .line 877
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 880
    .line 881
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 882
    .line 883
    iget-object p1, v0, Landroidx/compose/animation/core/Transition;->_transitions:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 884
    .line 885
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->add(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;

    .line 889
    .line 890
    invoke-direct {p1, v0, p0, v7}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 891
    .line 892
    .line 893
    return-object p1

    .line 894
    :pswitch_19
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 895
    .line 896
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 897
    .line 898
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 899
    .line 900
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 901
    .line 902
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 903
    .line 904
    .line 905
    move-result-object v1

    .line 906
    if-ne v0, v1, :cond_17

    .line 907
    .line 908
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    goto :goto_8

    .line 912
    :cond_17
    new-instance v0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1;

    .line 913
    .line 914
    invoke-direct {v0, p1, v3}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$1$1$snapshotStateObserver$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 915
    .line 916
    .line 917
    invoke-static {p0, v3, v3, v0, v5}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 918
    .line 919
    .line 920
    :goto_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 921
    .line 922
    return-object p0

    .line 923
    :pswitch_1a
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 924
    .line 925
    check-cast v0, Landroidx/compose/animation/core/Transition;

    .line 926
    .line 927
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 928
    .line 929
    check-cast p0, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 930
    .line 931
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 932
    .line 933
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;

    .line 934
    .line 935
    invoke-direct {p1, v0, p0, v6}, Landroidx/compose/animation/core/TransitionKt$createDeferredAnimation$lambda$1$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 936
    .line 937
    .line 938
    return-object p1

    .line 939
    :pswitch_1b
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 940
    .line 941
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 942
    .line 943
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 944
    .line 945
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 946
    .line 947
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 948
    .line 949
    sget-object p1, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    .line 950
    .line 951
    new-instance v1, Landroidx/compose/animation/core/Transition$animateTo$1$1$1;

    .line 952
    .line 953
    invoke-direct {v1, p0, v3}, Landroidx/compose/animation/core/Transition$animateTo$1$1$1;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 954
    .line 955
    .line 956
    invoke-static {v0, v3, p1, v1, v7}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 957
    .line 958
    .line 959
    new-instance p0, Landroidx/compose/animation/core/Transition$animateTo$lambda$2$0$$inlined$onDispose$1;

    .line 960
    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    .line 963
    .line 964
    return-object p0

    .line 965
    :pswitch_1c
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 966
    .line 967
    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    .line 968
    .line 969
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast p0, Landroidx/collection/MutableScatterSet;

    .line 972
    .line 973
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/CompositionImpl;->recordWriteOf(Ljava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    if-eqz p0, :cond_18

    .line 977
    .line 978
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 979
    .line 980
    .line 981
    :cond_18
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 982
    .line 983
    return-object p0

    .line 984
    nop

    .line 985
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
