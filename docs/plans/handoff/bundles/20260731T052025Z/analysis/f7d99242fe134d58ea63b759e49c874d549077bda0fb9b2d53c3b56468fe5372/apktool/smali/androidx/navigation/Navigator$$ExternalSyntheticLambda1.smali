.class public final synthetic Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput p1, p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V
    .locals 0

    .line 1
    const/16 p1, 0xd

    .line 2
    .line 3
    iput p1, p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p5, p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p6, p0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const/16 v5, 0x20

    .line 10
    .line 11
    const/4 v6, 0x6

    .line 12
    const/16 v7, 0x8

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const-wide v9, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    const/4 v11, 0x7

    .line 21
    const/4 v12, 0x2

    .line 22
    const/4 v13, 0x0

    .line 23
    const/4 v14, 0x1

    .line 24
    const/4 v15, 0x0

    .line 25
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Landroidx/compose/runtime/State;

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroidx/navigation/compose/ComposeNavigator;

    .line 35
    .line 36
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 37
    .line 38
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 39
    .line 40
    const/16 v3, 0xc

    .line 41
    .line 42
    invoke-direct {v1, v3, v2, v0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :pswitch_0
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Landroidx/navigation/NavHostController;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    .line 53
    .line 54
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroidx/navigation/NavHostController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Landroidx/navigation/compose/NavHostKt$NavHost$lambda$48$lambda$47$$inlined$onDispose$1;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_1
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Landroidx/navigation/NavDestination;

    .line 68
    .line 69
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 72
    .line 73
    iget-object v0, v0, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    .line 74
    .line 75
    check-cast v1, Landroidx/navigation/NavOptionsBuilder;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iget-object v3, v1, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    .line 81
    .line 82
    iput v13, v3, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    .line 83
    .line 84
    iput v13, v3, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    .line 85
    .line 86
    instance-of v3, v2, Landroidx/navigation/NavGraph;

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    sget v3, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 91
    .line 92
    invoke-static {v2}, Landroidx/work/OperationKt;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_2

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroidx/navigation/NavDestination;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getCurrentDestination$navigation_runtime_release()Landroidx/navigation/NavDestination;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    if-eqz v4, :cond_1

    .line 117
    .line 118
    iget-object v4, v4, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    move-object v4, v15

    .line 122
    :goto_0
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_0

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_2
    sget v2, Landroidx/navigation/NavGraph;->$r8$clinit:I

    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iget-object v0, v0, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 140
    .line 141
    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 142
    .line 143
    iput v0, v1, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    .line 144
    .line 145
    iput-boolean v13, v1, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    .line 146
    .line 147
    iput-boolean v14, v1, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    .line 148
    .line 149
    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 150
    .line 151
    return-object v0

    .line 152
    :pswitch_2
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v2, Landroidx/compose/runtime/Recomposer;

    .line 155
    .line 156
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v0, Ljava/lang/Throwable;

    .line 159
    .line 160
    check-cast v1, Ljava/lang/Throwable;

    .line 161
    .line 162
    iget-object v3, v2, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 163
    .line 164
    monitor-enter v3

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    if-eqz v1, :cond_6

    .line 168
    .line 169
    :try_start_0
    instance-of v4, v1, Ljava/util/concurrent/CancellationException;

    .line 170
    .line 171
    if-nez v4, :cond_4

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    move-object v1, v15

    .line 175
    :goto_2
    if-eqz v1, :cond_6

    .line 176
    .line 177
    invoke-static {v0, v1}, Lkotlin/ResultKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    goto :goto_4

    .line 183
    :cond_5
    move-object v0, v15

    .line 184
    :cond_6
    :goto_3
    iput-object v0, v2, Landroidx/compose/runtime/Recomposer;->closeCause:Ljava/lang/Throwable;

    .line 185
    .line 186
    iget-object v0, v2, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 187
    .line 188
    sget-object v1, Landroidx/compose/runtime/Recomposer$State;->ShutDown:Landroidx/compose/runtime/Recomposer$State;

    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v15, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .line 195
    .line 196
    monitor-exit v3

    .line 197
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 198
    .line 199
    return-object v0

    .line 200
    :goto_4
    monitor-exit v3

    .line 201
    throw v0

    .line 202
    :pswitch_3
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v2, Landroidx/compose/runtime/CompositionImpl;

    .line 205
    .line 206
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 209
    .line 210
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/CompositionImpl;->recordWriteOf(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    if-eqz v0, :cond_7

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 219
    .line 220
    return-object v0

    .line 221
    :pswitch_4
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v2, Ljava/util/Set;

    .line 224
    .line 225
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 228
    .line 229
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_c

    .line 234
    .line 235
    iget-object v2, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->subscriptions:Landroidx/collection/MutableScatterMap;

    .line 236
    .line 237
    iget-object v0, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->toNotify:Landroidx/collection/MutableScatterSet;

    .line 238
    .line 239
    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-eqz v1, :cond_c

    .line 244
    .line 245
    instance-of v2, v1, Landroidx/collection/MutableScatterSet;

    .line 246
    .line 247
    if-eqz v2, :cond_b

    .line 248
    .line 249
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 250
    .line 251
    iget-object v2, v1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 252
    .line 253
    iget-object v1, v1, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 254
    .line 255
    array-length v3, v1

    .line 256
    sub-int/2addr v3, v12

    .line 257
    if-ltz v3, :cond_c

    .line 258
    .line 259
    move v4, v13

    .line 260
    :goto_5
    aget-wide v5, v1, v4

    .line 261
    .line 262
    not-long v8, v5

    .line 263
    shl-long/2addr v8, v11

    .line 264
    and-long/2addr v8, v5

    .line 265
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    and-long/2addr v8, v14

    .line 271
    cmp-long v8, v8, v14

    .line 272
    .line 273
    if-eqz v8, :cond_a

    .line 274
    .line 275
    sub-int v8, v4, v3

    .line 276
    .line 277
    not-int v8, v8

    .line 278
    ushr-int/lit8 v8, v8, 0x1f

    .line 279
    .line 280
    rsub-int/lit8 v8, v8, 0x8

    .line 281
    .line 282
    move v9, v13

    .line 283
    :goto_6
    if-ge v9, v8, :cond_9

    .line 284
    .line 285
    const-wide/16 v14, 0xff

    .line 286
    .line 287
    and-long/2addr v14, v5

    .line 288
    const-wide/16 v16, 0x80

    .line 289
    .line 290
    cmp-long v10, v14, v16

    .line 291
    .line 292
    if-gez v10, :cond_8

    .line 293
    .line 294
    shl-int/lit8 v10, v4, 0x3

    .line 295
    .line 296
    add-int/2addr v10, v9

    .line 297
    aget-object v10, v2, v10

    .line 298
    .line 299
    check-cast v10, Lkotlinx/coroutines/channels/SendChannel;

    .line 300
    .line 301
    invoke-virtual {v0, v10}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    :cond_8
    shr-long/2addr v5, v7

    .line 305
    add-int/lit8 v9, v9, 0x1

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_9
    if-ne v8, v7, :cond_c

    .line 309
    .line 310
    :cond_a
    if-eq v4, v3, :cond_c

    .line 311
    .line 312
    add-int/lit8 v4, v4, 0x1

    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_b
    check-cast v1, Lkotlinx/coroutines/channels/SendChannel;

    .line 316
    .line 317
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 321
    .line 322
    return-object v0

    .line 323
    :pswitch_5
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 324
    .line 325
    check-cast v2, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 326
    .line 327
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    .line 330
    .line 331
    iget-object v2, v2, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->pendingChanges:Ljava/util/ArrayList;

    .line 332
    .line 333
    new-instance v3, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;

    .line 334
    .line 335
    invoke-direct {v3, v1, v0}, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager$Add;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/channels/SendChannel;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 342
    .line 343
    return-object v0

    .line 344
    :pswitch_6
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v2, Landroidx/compose/ui/graphics/ColorKt;

    .line 347
    .line 348
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    .line 351
    .line 352
    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 353
    .line 354
    invoke-virtual {v0}, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;->invoke-0d7_KjU()J

    .line 355
    .line 356
    .line 357
    move-result-wide v3

    .line 358
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ColorKt;J)V

    .line 359
    .line 360
    .line 361
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 362
    .line 363
    return-object v0

    .line 364
    :pswitch_7
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 365
    .line 366
    check-cast v2, Landroidx/compose/ui/graphics/Shape;

    .line 367
    .line 368
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v0, Landroidx/compose/material3/TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0;

    .line 371
    .line 372
    check-cast v1, Landroidx/compose/ui/draw/CacheDrawScope;

    .line 373
    .line 374
    iget-object v3, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 375
    .line 376
    invoke-interface {v3}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getSize-NH-jbRc()J

    .line 377
    .line 378
    .line 379
    move-result-wide v3

    .line 380
    iget-object v5, v1, Landroidx/compose/ui/draw/CacheDrawScope;->cacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 381
    .line 382
    invoke-interface {v5}, Landroidx/compose/ui/draw/BuildDrawCacheParams;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-interface {v2, v3, v4, v5, v1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/ColorKt;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    new-instance v3, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 391
    .line 392
    const/16 v4, 0x16

    .line 393
    .line 394
    invoke-direct {v3, v4, v2, v0}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    new-instance v0, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;

    .line 398
    .line 399
    invoke-direct {v0, v6, v3}, Landroidx/compose/ui/node/NodeChainKt$fillVector$1;-><init>(ILjava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/CacheDrawScope;->onDrawWithContent(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/DrawResult;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    return-object v0

    .line 407
    :pswitch_8
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v2, Landroidx/compose/runtime/State;

    .line 410
    .line 411
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 414
    .line 415
    check-cast v1, Landroidx/compose/ui/geometry/Size;

    .line 416
    .line 417
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    check-cast v2, Ljava/lang/Number;

    .line 422
    .line 423
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    iget-wide v3, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 428
    .line 429
    shr-long/2addr v3, v5

    .line 430
    long-to-int v3, v3

    .line 431
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    mul-float/2addr v3, v2

    .line 436
    iget-wide v6, v1, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 437
    .line 438
    and-long/2addr v6, v9

    .line 439
    long-to-int v1, v6

    .line 440
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    mul-float/2addr v1, v2

    .line 445
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 450
    .line 451
    iget-wide v6, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 452
    .line 453
    shr-long/2addr v6, v5

    .line 454
    long-to-int v2, v6

    .line 455
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    cmpg-float v2, v2, v3

    .line 460
    .line 461
    if-nez v2, :cond_d

    .line 462
    .line 463
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v2

    .line 467
    check-cast v2, Landroidx/compose/ui/geometry/Size;

    .line 468
    .line 469
    iget-wide v6, v2, Landroidx/compose/ui/geometry/Size;->packedValue:J

    .line 470
    .line 471
    and-long/2addr v6, v9

    .line 472
    long-to-int v2, v6

    .line 473
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 474
    .line 475
    .line 476
    move-result v2

    .line 477
    cmpg-float v2, v2, v1

    .line 478
    .line 479
    if-nez v2, :cond_d

    .line 480
    .line 481
    goto :goto_7

    .line 482
    :cond_d
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    int-to-long v2, v2

    .line 487
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    int-to-long v6, v1

    .line 492
    shl-long v1, v2, v5

    .line 493
    .line 494
    and-long v3, v6, v9

    .line 495
    .line 496
    or-long/2addr v1, v3

    .line 497
    new-instance v3, Landroidx/compose/ui/geometry/Size;

    .line 498
    .line 499
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 500
    .line 501
    .line 502
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 503
    .line 504
    .line 505
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 506
    .line 507
    return-object v0

    .line 508
    :pswitch_9
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 509
    .line 510
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 511
    .line 512
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 513
    .line 514
    check-cast v0, Landroidx/compose/material3/TooltipStateImpl;

    .line 515
    .line 516
    check-cast v1, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 517
    .line 518
    new-instance v3, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 519
    .line 520
    const/16 v4, 0x1c

    .line 521
    .line 522
    invoke-direct {v3, v1, v0, v15, v4}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 523
    .line 524
    .line 525
    const/4 v0, 0x3

    .line 526
    invoke-static {v2, v15, v15, v3, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 527
    .line 528
    .line 529
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 530
    .line 531
    return-object v0

    .line 532
    :pswitch_a
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 533
    .line 534
    check-cast v2, Landroidx/compose/material3/internal/MutableWindowInsets;

    .line 535
    .line 536
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsets;

    .line 539
    .line 540
    check-cast v1, Landroidx/compose/foundation/layout/WindowInsets;

    .line 541
    .line 542
    new-instance v3, Landroidx/compose/foundation/layout/ExcludeInsets;

    .line 543
    .line 544
    invoke-direct {v3, v0, v1}, Landroidx/compose/foundation/layout/ExcludeInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/layout/WindowInsets;)V

    .line 545
    .line 546
    .line 547
    iget-object v0, v2, Landroidx/compose/material3/internal/MutableWindowInsets;->insets$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 548
    .line 549
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 553
    .line 554
    return-object v0

    .line 555
    :pswitch_b
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v2, Landroidx/compose/runtime/State;

    .line 558
    .line 559
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast v0, Landroidx/compose/runtime/State;

    .line 562
    .line 563
    move-object v9, v1

    .line 564
    check-cast v9, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 565
    .line 566
    const/high16 v1, 0x40000000    # 2.0f

    .line 567
    .line 568
    invoke-interface {v9, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 569
    .line 570
    .line 571
    move-result v11

    .line 572
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 577
    .line 578
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->value:J

    .line 579
    .line 580
    sget v5, Landroidx/compose/material3/tokens/ListTokens;->IconSize$1:F

    .line 581
    .line 582
    div-float/2addr v5, v1

    .line 583
    invoke-interface {v9, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 584
    .line 585
    .line 586
    move-result v5

    .line 587
    div-float v1, v11, v1

    .line 588
    .line 589
    sub-float/2addr v5, v1

    .line 590
    new-instance v15, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 591
    .line 592
    const/4 v14, 0x0

    .line 593
    move-object v10, v15

    .line 594
    const/16 v15, 0x1e

    .line 595
    .line 596
    const/4 v12, 0x0

    .line 597
    const/4 v13, 0x0

    .line 598
    invoke-direct/range {v10 .. v15}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIII)V

    .line 599
    .line 600
    .line 601
    const/16 v16, 0x6c

    .line 602
    .line 603
    const-wide/16 v13, 0x0

    .line 604
    .line 605
    move v12, v5

    .line 606
    move-object v15, v10

    .line 607
    move-wide v10, v3

    .line 608
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/Modifier$-CC;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 609
    .line 610
    .line 611
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v3

    .line 615
    check-cast v3, Landroidx/compose/ui/unit/Dp;

    .line 616
    .line 617
    iget v3, v3, Landroidx/compose/ui/unit/Dp;->value:F

    .line 618
    .line 619
    invoke-static {v3, v8}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    .line 620
    .line 621
    .line 622
    move-result v3

    .line 623
    if-lez v3, :cond_e

    .line 624
    .line 625
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 630
    .line 631
    iget-wide v10, v2, Landroidx/compose/ui/graphics/Color;->value:J

    .line 632
    .line 633
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 638
    .line 639
    iget v0, v0, Landroidx/compose/ui/unit/Dp;->value:F

    .line 640
    .line 641
    invoke-interface {v9, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    sub-float v12, v0, v1

    .line 646
    .line 647
    sget-object v15, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 648
    .line 649
    const/16 v16, 0x6c

    .line 650
    .line 651
    const-wide/16 v13, 0x0

    .line 652
    .line 653
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/Modifier$-CC;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 654
    .line 655
    .line 656
    :cond_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 657
    .line 658
    return-object v0

    .line 659
    :pswitch_c
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v2, Landroidx/compose/material3/SheetState;

    .line 662
    .line 663
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 666
    .line 667
    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 668
    .line 669
    iget-object v2, v2, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 670
    .line 671
    iget-object v2, v2, Landroidx/compose/material3/internal/AnchoredDraggableState;->offset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 672
    .line 673
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    iget-wide v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    .line 678
    .line 679
    and-long/2addr v3, v9

    .line 680
    long-to-int v3, v3

    .line 681
    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 682
    .line 683
    .line 684
    move-result v3

    .line 685
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    if-nez v4, :cond_10

    .line 690
    .line 691
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 692
    .line 693
    .line 694
    move-result v4

    .line 695
    if-nez v4, :cond_10

    .line 696
    .line 697
    cmpg-float v4, v3, v8

    .line 698
    .line 699
    if-nez v4, :cond_f

    .line 700
    .line 701
    goto :goto_8

    .line 702
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    check-cast v0, Ljava/lang/Number;

    .line 707
    .line 708
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    invoke-static {v1, v0}, Landroidx/compose/material3/ModalBottomSheetKt;->calculatePredictiveBackScaleX(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;F)F

    .line 713
    .line 714
    .line 715
    move-result v4

    .line 716
    invoke-virtual {v1, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    .line 717
    .line 718
    .line 719
    invoke-static {v1, v0}, Landroidx/compose/material3/ModalBottomSheetKt;->calculatePredictiveBackScaleY(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;F)F

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    .line 724
    .line 725
    .line 726
    add-float/2addr v2, v3

    .line 727
    div-float/2addr v2, v3

    .line 728
    const/high16 v0, 0x3f000000    # 0.5f

    .line 729
    .line 730
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/ColorKt;->TransformOrigin(FF)J

    .line 731
    .line 732
    .line 733
    move-result-wide v2

    .line 734
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    .line 735
    .line 736
    .line 737
    :cond_10
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 738
    .line 739
    return-object v0

    .line 740
    :pswitch_d
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 741
    .line 742
    check-cast v2, Ljava/lang/String;

    .line 743
    .line 744
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 745
    .line 746
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 747
    .line 748
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 749
    .line 750
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 751
    .line 752
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 753
    .line 754
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 755
    .line 756
    const/16 v5, 0xb

    .line 757
    .line 758
    aget-object v4, v4, v5

    .line 759
    .line 760
    const/high16 v4, 0x3f800000    # 1.0f

    .line 761
    .line 762
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 763
    .line 764
    .line 765
    move-result-object v4

    .line 766
    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 767
    .line 768
    .line 769
    invoke-static {v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    new-instance v2, Lokhttp3/Handshake$$ExternalSyntheticLambda0;

    .line 773
    .line 774
    invoke-direct {v2, v12, v0}, Lokhttp3/Handshake$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    .line 775
    .line 776
    .line 777
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 778
    .line 779
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 780
    .line 781
    invoke-direct {v3, v15, v2}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 782
    .line 783
    .line 784
    invoke-interface {v1, v0, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 785
    .line 786
    .line 787
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 788
    .line 789
    return-object v0

    .line 790
    :pswitch_e
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 791
    .line 792
    check-cast v2, Landroid/view/View;

    .line 793
    .line 794
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 795
    .line 796
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 797
    .line 798
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 799
    .line 800
    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1;

    .line 801
    .line 802
    invoke-direct {v1, v2, v0}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 803
    .line 804
    .line 805
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;

    .line 806
    .line 807
    const/16 v2, 0x9

    .line 808
    .line 809
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1;-><init>(ILjava/lang/Object;)V

    .line 810
    .line 811
    .line 812
    return-object v0

    .line 813
    :pswitch_f
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 814
    .line 815
    check-cast v2, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;

    .line 816
    .line 817
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 818
    .line 819
    check-cast v0, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    .line 820
    .line 821
    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 822
    .line 823
    invoke-static {v1, v6}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setRole-kuIjeqM(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    .line 824
    .line 825
    .line 826
    new-instance v3, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    .line 827
    .line 828
    invoke-direct {v3, v2, v0}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2;Landroidx/compose/ui/platform/SoftwareKeyboardController;)V

    .line 829
    .line 830
    .line 831
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->OnClick:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 832
    .line 833
    new-instance v2, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 834
    .line 835
    invoke-direct {v2, v15, v3}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 836
    .line 837
    .line 838
    invoke-interface {v1, v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 839
    .line 840
    .line 841
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 842
    .line 843
    return-object v0

    .line 844
    :pswitch_10
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 845
    .line 846
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 847
    .line 848
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 849
    .line 850
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 851
    .line 852
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    .line 853
    .line 854
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    if-eqz v0, :cond_11

    .line 858
    .line 859
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 860
    .line 861
    .line 862
    move-result-object v0

    .line 863
    check-cast v0, Ljava/lang/Boolean;

    .line 864
    .line 865
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 866
    .line 867
    .line 868
    move-result v14

    .line 869
    :cond_11
    if-eqz v14, :cond_12

    .line 870
    .line 871
    invoke-interface {v1}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;->close()V

    .line 872
    .line 873
    .line 874
    :cond_12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 875
    .line 876
    return-object v0

    .line 877
    :pswitch_11
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 878
    .line 879
    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 880
    .line 881
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 882
    .line 883
    check-cast v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 884
    .line 885
    check-cast v1, Lkotlin/text/MatcherMatchResult;

    .line 886
    .line 887
    iget v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 888
    .line 889
    const/4 v4, -0x1

    .line 890
    if-ne v3, v4, :cond_13

    .line 891
    .line 892
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 893
    .line 894
    .line 895
    move-result-object v3

    .line 896
    iget v3, v3, Lkotlin/ranges/IntProgression;->first:I

    .line 897
    .line 898
    iput v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 899
    .line 900
    :cond_13
    invoke-virtual {v1}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    iget v1, v1, Lkotlin/ranges/IntProgression;->last:I

    .line 905
    .line 906
    add-int/2addr v1, v14

    .line 907
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 908
    .line 909
    const-string v0, ""

    .line 910
    .line 911
    return-object v0

    .line 912
    :pswitch_12
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 913
    .line 914
    check-cast v2, Ljava/util/List;

    .line 915
    .line 916
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 917
    .line 918
    check-cast v0, Ljava/util/List;

    .line 919
    .line 920
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 921
    .line 922
    if-eqz v2, :cond_14

    .line 923
    .line 924
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 925
    .line 926
    .line 927
    move-result v5

    .line 928
    move v6, v13

    .line 929
    :goto_9
    if-ge v6, v5, :cond_14

    .line 930
    .line 931
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v7

    .line 935
    check-cast v7, Lkotlin/Pair;

    .line 936
    .line 937
    iget-object v8, v7, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 938
    .line 939
    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 940
    .line 941
    iget-object v7, v7, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 942
    .line 943
    check-cast v7, Landroidx/compose/ui/unit/IntOffset;

    .line 944
    .line 945
    iget-wide v9, v7, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 946
    .line 947
    invoke-static {v1, v8, v9, v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 948
    .line 949
    .line 950
    add-int/lit8 v6, v6, 0x1

    .line 951
    .line 952
    goto :goto_9

    .line 953
    :cond_14
    if-eqz v0, :cond_16

    .line 954
    .line 955
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 956
    .line 957
    .line 958
    move-result v2

    .line 959
    :goto_a
    if-ge v13, v2, :cond_16

    .line 960
    .line 961
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v5

    .line 965
    check-cast v5, Lkotlin/Pair;

    .line 966
    .line 967
    iget-object v6, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 968
    .line 969
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 970
    .line 971
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 972
    .line 973
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 974
    .line 975
    if-eqz v5, :cond_15

    .line 976
    .line 977
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v5

    .line 981
    check-cast v5, Landroidx/compose/ui/unit/IntOffset;

    .line 982
    .line 983
    iget-wide v7, v5, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 984
    .line 985
    goto :goto_b

    .line 986
    :cond_15
    move-wide v7, v3

    .line 987
    :goto_b
    invoke-static {v1, v6, v7, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 988
    .line 989
    .line 990
    add-int/lit8 v13, v13, 0x1

    .line 991
    .line 992
    goto :goto_a

    .line 993
    :cond_16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 994
    .line 995
    return-object v0

    .line 996
    :pswitch_13
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 997
    .line 998
    check-cast v2, Landroidx/compose/foundation/text/TextLinkScope;

    .line 999
    .line 1000
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1001
    .line 1002
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1003
    .line 1004
    check-cast v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 1005
    .line 1006
    iget-object v3, v2, Landroidx/compose/foundation/text/TextLinkScope;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 1007
    .line 1008
    iget-object v2, v2, Landroidx/compose/foundation/text/TextLinkScope;->textLayoutResult$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1009
    .line 1010
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v4

    .line 1014
    check-cast v4, Landroidx/compose/ui/text/TextLayoutResult;

    .line 1015
    .line 1016
    if-eqz v4, :cond_17

    .line 1017
    .line 1018
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 1019
    .line 1020
    if-eqz v4, :cond_17

    .line 1021
    .line 1022
    iget-object v4, v4, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 1023
    .line 1024
    goto :goto_c

    .line 1025
    :cond_17
    move-object v4, v15

    .line 1026
    :goto_c
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v3

    .line 1030
    if-nez v3, :cond_19

    .line 1031
    .line 1032
    :cond_18
    :goto_d
    move-object v6, v15

    .line 1033
    goto :goto_e

    .line 1034
    :cond_19
    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v2

    .line 1038
    check-cast v2, Landroidx/compose/ui/text/TextLayoutResult;

    .line 1039
    .line 1040
    if-eqz v2, :cond_18

    .line 1041
    .line 1042
    iget-object v3, v2, Landroidx/compose/ui/text/TextLayoutResult;->multiParagraph:Landroidx/compose/ui/text/MultiParagraph;

    .line 1043
    .line 1044
    invoke-static {v0, v2}, Landroidx/compose/foundation/text/TextLinkScope;->calculateVisibleLinkRange(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    if-nez v0, :cond_1a

    .line 1049
    .line 1050
    goto :goto_d

    .line 1051
    :cond_1a
    iget v4, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 1052
    .line 1053
    iget v0, v0, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 1054
    .line 1055
    invoke-virtual {v2, v0, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/AndroidPath;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v6

    .line 1059
    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v7

    .line 1063
    sub-int/2addr v4, v14

    .line 1064
    invoke-virtual {v2, v4}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v2

    .line 1068
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    .line 1069
    .line 1070
    .line 1071
    move-result v0

    .line 1072
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/MultiParagraph;->getLineForOffset(I)I

    .line 1073
    .line 1074
    .line 1075
    move-result v3

    .line 1076
    if-ne v0, v3, :cond_1b

    .line 1077
    .line 1078
    iget v0, v2, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 1079
    .line 1080
    iget v2, v7, Landroidx/compose/ui/geometry/Rect;->left:F

    .line 1081
    .line 1082
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 1083
    .line 1084
    .line 1085
    move-result v8

    .line 1086
    :cond_1b
    iget v0, v7, Landroidx/compose/ui/geometry/Rect;->top:F

    .line 1087
    .line 1088
    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1089
    .line 1090
    .line 1091
    move-result v2

    .line 1092
    int-to-long v2, v2

    .line 1093
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    int-to-long v7, v0

    .line 1098
    shl-long/2addr v2, v5

    .line 1099
    and-long v4, v7, v9

    .line 1100
    .line 1101
    or-long/2addr v2, v4

    .line 1102
    const-wide v4, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    xor-long/2addr v2, v4

    .line 1108
    invoke-virtual {v6, v2, v3}, Landroidx/compose/ui/graphics/AndroidPath;->translate-k-4lQ0M(J)V

    .line 1109
    .line 1110
    .line 1111
    :goto_e
    if-eqz v6, :cond_1c

    .line 1112
    .line 1113
    new-instance v15, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;

    .line 1114
    .line 1115
    invoke-direct {v15, v6}, Landroidx/compose/foundation/text/TextLinkScope$shapeForRange$1$1;-><init>(Landroidx/compose/ui/graphics/AndroidPath;)V

    .line 1116
    .line 1117
    .line 1118
    :cond_1c
    if-eqz v15, :cond_1d

    .line 1119
    .line 1120
    invoke-virtual {v1, v15}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v1, v14}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    .line 1124
    .line 1125
    .line 1126
    :cond_1d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1127
    .line 1128
    return-object v0

    .line 1129
    :pswitch_14
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1130
    .line 1131
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 1132
    .line 1133
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1134
    .line 1135
    check-cast v0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 1136
    .line 1137
    iget-object v0, v0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionState:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 1138
    .line 1139
    check-cast v1, Landroidx/compose/foundation/text/TextAnnotatorScope;

    .line 1140
    .line 1141
    iget-object v3, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 1142
    .line 1143
    check-cast v3, Landroidx/compose/ui/text/LinkAnnotation;

    .line 1144
    .line 1145
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v4

    .line 1149
    if-eqz v4, :cond_1e

    .line 1150
    .line 1151
    iget-object v4, v4, Landroidx/compose/ui/text/TextLinkStyles;->style:Landroidx/compose/ui/text/SpanStyle;

    .line 1152
    .line 1153
    goto :goto_f

    .line 1154
    :cond_1e
    move-object v4, v15

    .line 1155
    :goto_f
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1156
    .line 1157
    .line 1158
    move-result v5

    .line 1159
    and-int/2addr v5, v14

    .line 1160
    if-eqz v5, :cond_1f

    .line 1161
    .line 1162
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v5

    .line 1166
    if-eqz v5, :cond_1f

    .line 1167
    .line 1168
    iget-object v5, v5, Landroidx/compose/ui/text/TextLinkStyles;->focusedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 1169
    .line 1170
    goto :goto_10

    .line 1171
    :cond_1f
    move-object v5, v15

    .line 1172
    :goto_10
    if-eqz v4, :cond_20

    .line 1173
    .line 1174
    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 1175
    .line 1176
    .line 1177
    move-result-object v5

    .line 1178
    :cond_20
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1179
    .line 1180
    .line 1181
    move-result v4

    .line 1182
    and-int/2addr v4, v12

    .line 1183
    if-eqz v4, :cond_21

    .line 1184
    .line 1185
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v4

    .line 1189
    if-eqz v4, :cond_21

    .line 1190
    .line 1191
    iget-object v4, v4, Landroidx/compose/ui/text/TextLinkStyles;->hoveredStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 1192
    .line 1193
    goto :goto_11

    .line 1194
    :cond_21
    move-object v4, v15

    .line 1195
    :goto_11
    if-eqz v5, :cond_22

    .line 1196
    .line 1197
    invoke-virtual {v5, v4}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v4

    .line 1201
    :cond_22
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 1202
    .line 1203
    .line 1204
    move-result v0

    .line 1205
    and-int/lit8 v0, v0, 0x4

    .line 1206
    .line 1207
    if-eqz v0, :cond_23

    .line 1208
    .line 1209
    invoke-virtual {v3}, Landroidx/compose/ui/text/LinkAnnotation;->getStyles()Landroidx/compose/ui/text/TextLinkStyles;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v0

    .line 1213
    if-eqz v0, :cond_23

    .line 1214
    .line 1215
    iget-object v15, v0, Landroidx/compose/ui/text/TextLinkStyles;->pressedStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 1216
    .line 1217
    :cond_23
    if-eqz v4, :cond_24

    .line 1218
    .line 1219
    invoke-virtual {v4, v15}, Landroidx/compose/ui/text/SpanStyle;->merge(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v15

    .line 1223
    :cond_24
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1224
    .line 1225
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1226
    .line 1227
    .line 1228
    iget-object v3, v1, Landroidx/compose/foundation/text/TextAnnotatorScope;->initialText:Landroidx/compose/ui/text/AnnotatedString;

    .line 1229
    .line 1230
    new-instance v4, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 1231
    .line 1232
    invoke-direct {v4, v0, v2, v15, v11}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString;->mapAnnotations(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/AnnotatedString;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    iput-object v0, v1, Landroidx/compose/foundation/text/TextAnnotatorScope;->styledText:Landroidx/compose/ui/text/AnnotatedString;

    .line 1240
    .line 1241
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1242
    .line 1243
    return-object v0

    .line 1244
    :pswitch_15
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1245
    .line 1246
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 1247
    .line 1248
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1249
    .line 1250
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1251
    .line 1252
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 1253
    .line 1254
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 1255
    .line 1256
    invoke-direct {v1, v7, v2, v0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1257
    .line 1258
    .line 1259
    return-object v1

    .line 1260
    :pswitch_16
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1261
    .line 1262
    check-cast v2, Ljava/util/List;

    .line 1263
    .line 1264
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1265
    .line 1266
    check-cast v0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;

    .line 1267
    .line 1268
    check-cast v1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 1269
    .line 1270
    iget-object v0, v0, Landroidx/compose/foundation/text/LinksTextMeasurePolicy;->shouldMeasureLinks:Lkotlin/jvm/functions/Function0;

    .line 1271
    .line 1272
    invoke-static {v2, v0}, Landroidx/compose/foundation/text/BasicTextKt;->access$measureWithTextRangeMeasureConstraints(Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/util/ArrayList;

    .line 1273
    .line 1274
    .line 1275
    move-result-object v0

    .line 1276
    if-eqz v0, :cond_26

    .line 1277
    .line 1278
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 1279
    .line 1280
    .line 1281
    move-result v2

    .line 1282
    :goto_12
    if-ge v13, v2, :cond_26

    .line 1283
    .line 1284
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v5

    .line 1288
    check-cast v5, Lkotlin/Pair;

    .line 1289
    .line 1290
    iget-object v6, v5, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1291
    .line 1292
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 1293
    .line 1294
    iget-object v5, v5, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1295
    .line 1296
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 1297
    .line 1298
    if-eqz v5, :cond_25

    .line 1299
    .line 1300
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v5

    .line 1304
    check-cast v5, Landroidx/compose/ui/unit/IntOffset;

    .line 1305
    .line 1306
    iget-wide v7, v5, Landroidx/compose/ui/unit/IntOffset;->packedValue:J

    .line 1307
    .line 1308
    goto :goto_13

    .line 1309
    :cond_25
    move-wide v7, v3

    .line 1310
    :goto_13
    invoke-static {v1, v6, v7, v8}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    .line 1311
    .line 1312
    .line 1313
    add-int/lit8 v13, v13, 0x1

    .line 1314
    .line 1315
    goto :goto_12

    .line 1316
    :cond_26
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1317
    .line 1318
    return-object v0

    .line 1319
    :pswitch_17
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1320
    .line 1321
    check-cast v2, Landroidx/compose/foundation/text/LegacyTextFieldState;

    .line 1322
    .line 1323
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1324
    .line 1325
    move-object v4, v0

    .line 1326
    check-cast v4, Landroidx/compose/ui/graphics/Brush;

    .line 1327
    .line 1328
    move-object v3, v1

    .line 1329
    check-cast v3, Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 1330
    .line 1331
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawContent()V

    .line 1332
    .line 1333
    .line 1334
    iget-object v0, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->autofillHighlightOn$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1335
    .line 1336
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    check-cast v0, Ljava/lang/Boolean;

    .line 1341
    .line 1342
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1343
    .line 1344
    .line 1345
    move-result v0

    .line 1346
    if-nez v0, :cond_27

    .line 1347
    .line 1348
    iget-object v0, v2, Landroidx/compose/foundation/text/LegacyTextFieldState;->justAutofilled$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1349
    .line 1350
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    check-cast v0, Ljava/lang/Boolean;

    .line 1355
    .line 1356
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1357
    .line 1358
    .line 1359
    move-result v0

    .line 1360
    if-eqz v0, :cond_28

    .line 1361
    .line 1362
    :cond_27
    const/4 v10, 0x0

    .line 1363
    const/16 v11, 0x7e

    .line 1364
    .line 1365
    const-wide/16 v5, 0x0

    .line 1366
    .line 1367
    const-wide/16 v7, 0x0

    .line 1368
    .line 1369
    const/4 v9, 0x0

    .line 1370
    invoke-static/range {v3 .. v11}, Landroidx/compose/ui/Modifier$-CC;->drawRect-AsUm42w$default(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    .line 1371
    .line 1372
    .line 1373
    :cond_28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1374
    .line 1375
    return-object v0

    .line 1376
    :pswitch_18
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1377
    .line 1378
    check-cast v2, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1379
    .line 1380
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1381
    .line 1382
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1383
    .line 1384
    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1385
    .line 1386
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1387
    .line 1388
    .line 1389
    move-result v2

    .line 1390
    if-nez v2, :cond_29

    .line 1391
    .line 1392
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    .line 1394
    .line 1395
    :cond_29
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1396
    .line 1397
    return-object v0

    .line 1398
    :pswitch_19
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1399
    .line 1400
    check-cast v2, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 1401
    .line 1402
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1403
    .line 1404
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 1405
    .line 1406
    check-cast v1, Ljava/util/Map;

    .line 1407
    .line 1408
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 1409
    .line 1410
    invoke-direct {v3, v2, v1, v0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;-><init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;Ljava/util/Map;Landroidx/compose/runtime/saveable/SaveableStateHolder;)V

    .line 1411
    .line 1412
    .line 1413
    return-object v3

    .line 1414
    :pswitch_1a
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1415
    .line 1416
    check-cast v2, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 1417
    .line 1418
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1419
    .line 1420
    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 1421
    .line 1422
    iget-object v1, v2, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->previouslyComposedKeys:Landroidx/collection/MutableScatterSet;

    .line 1423
    .line 1424
    invoke-virtual {v1, v0}, Landroidx/collection/MutableScatterSet;->minusAssign(Ljava/lang/Object;)V

    .line 1425
    .line 1426
    .line 1427
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;

    .line 1428
    .line 1429
    invoke-direct {v1, v11, v2, v0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$lambda$4$0$$inlined$onDispose$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1430
    .line 1431
    .line 1432
    return-object v1

    .line 1433
    :pswitch_1b
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1434
    .line 1435
    check-cast v2, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    .line 1436
    .line 1437
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1438
    .line 1439
    check-cast v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 1440
    .line 1441
    check-cast v1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    .line 1442
    .line 1443
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1444
    .line 1445
    iget-object v3, v2, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 1446
    .line 1447
    if-eqz v3, :cond_2a

    .line 1448
    .line 1449
    invoke-virtual {v3}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->unregister()V

    .line 1450
    .line 1451
    .line 1452
    :cond_2a
    iput-object v15, v2, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->handle:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    .line 1453
    .line 1454
    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->lock:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1455
    .line 1456
    if-eqz v2, :cond_2b

    .line 1457
    .line 1458
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 1459
    .line 1460
    .line 1461
    :cond_2b
    iput-object v15, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->lock:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1462
    .line 1463
    return-object v1

    .line 1464
    :pswitch_1c
    iget-object v2, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 1465
    .line 1466
    check-cast v2, Landroidx/navigation/Navigator;

    .line 1467
    .line 1468
    iget-object v0, v0, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 1469
    .line 1470
    check-cast v0, Landroidx/navigation/NavOptions;

    .line 1471
    .line 1472
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 1473
    .line 1474
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1475
    .line 1476
    .line 1477
    iget-object v3, v1, Landroidx/navigation/NavBackStackEntry;->impl:Landroidx/navigation/internal/NavBackStackEntryImpl;

    .line 1478
    .line 1479
    iget-object v4, v1, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    .line 1480
    .line 1481
    if-eqz v4, :cond_2c

    .line 1482
    .line 1483
    goto :goto_14

    .line 1484
    :cond_2c
    move-object v4, v15

    .line 1485
    :goto_14
    if-nez v4, :cond_2d

    .line 1486
    .line 1487
    goto :goto_15

    .line 1488
    :cond_2d
    invoke-virtual {v3}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v5

    .line 1492
    invoke-virtual {v2, v4, v5, v0}, Landroidx/navigation/Navigator;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;)Landroidx/navigation/NavDestination;

    .line 1493
    .line 1494
    .line 1495
    move-result-object v0

    .line 1496
    if-nez v0, :cond_2e

    .line 1497
    .line 1498
    goto :goto_15

    .line 1499
    :cond_2e
    invoke-virtual {v0, v4}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 1500
    .line 1501
    .line 1502
    move-result v4

    .line 1503
    if-eqz v4, :cond_2f

    .line 1504
    .line 1505
    move-object v15, v1

    .line 1506
    goto :goto_15

    .line 1507
    :cond_2f
    invoke-virtual {v2}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v1

    .line 1511
    invoke-virtual {v3}, Landroidx/navigation/internal/NavBackStackEntryImpl;->getArguments$navigation_common_release()Landroid/os/Bundle;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v2

    .line 1515
    invoke-virtual {v0, v2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v2

    .line 1519
    invoke-virtual {v1, v0, v2}, Landroidx/navigation/NavController$NavControllerNavigatorState;->createBackStackEntry(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v15

    .line 1523
    :goto_15
    return-object v15

    .line 1524
    nop

    .line 1525
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
