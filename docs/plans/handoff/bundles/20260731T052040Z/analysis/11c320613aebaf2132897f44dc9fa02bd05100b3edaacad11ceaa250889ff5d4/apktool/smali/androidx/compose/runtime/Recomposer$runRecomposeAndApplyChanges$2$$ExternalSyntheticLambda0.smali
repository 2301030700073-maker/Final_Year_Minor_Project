.class public final synthetic Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/Recomposer;

.field public final synthetic f$1:Landroidx/collection/MutableScatterSet;

.field public final synthetic f$2:Landroidx/collection/MutableScatterSet;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Landroidx/collection/MutableScatterSet;

.field public final synthetic f$6:Ljava/util/List;

.field public final synthetic f$7:Landroidx/collection/MutableScatterSet;

.field public final synthetic f$8:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/Recomposer;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$1:Landroidx/collection/MutableScatterSet;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$2:Landroidx/collection/MutableScatterSet;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$5:Landroidx/collection/MutableScatterSet;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$6:Ljava/util/List;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$7:Landroidx/collection/MutableScatterSet;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$8:Ljava/util/Set;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/runtime/Recomposer;

    .line 4
    .line 5
    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$1:Landroidx/collection/MutableScatterSet;

    .line 6
    .line 7
    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$2:Landroidx/collection/MutableScatterSet;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    .line 10
    .line 11
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$4:Ljava/util/List;

    .line 12
    .line 13
    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$5:Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    iget-object v4, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$6:Ljava/util/List;

    .line 16
    .line 17
    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$7:Landroidx/collection/MutableScatterSet;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$$ExternalSyntheticLambda0;->f$8:Ljava/util/Set;

    .line 20
    .line 21
    move-object/from16 v9, p1

    .line 22
    .line 23
    check-cast v9, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 26
    .line 27
    .line 28
    move-result-wide v9

    .line 29
    invoke-static {v1}, Landroidx/compose/runtime/Recomposer;->access$getHasBroadcastFrameClockAwaiters(Landroidx/compose/runtime/Recomposer;)Z

    .line 30
    .line 31
    .line 32
    move-result v11

    .line 33
    const/4 v12, 0x1

    .line 34
    if-eqz v11, :cond_0

    .line 35
    .line 36
    const-string v11, "Recomposer:animation"

    .line 37
    .line 38
    invoke-static {v11}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    iget-object v11, v1, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    .line 42
    .line 43
    iget-object v11, v11, Landroidx/compose/runtime/BroadcastFrameClock;->queue:Lcoil3/ComponentRegistry$Builder;

    .line 44
    .line 45
    new-instance v13, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;

    .line 46
    .line 47
    invoke-direct {v13, v9, v10, v12}, Landroidx/work/impl/model/WorkSpecDao_Impl$$ExternalSyntheticLambda26;-><init>(JI)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v11, v13}, Lcoil3/ComponentRegistry$Builder;->flushAndDispatchAwaiters(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->sendApplyNotifications()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_0
    :goto_0
    const-string v9, "Recomposer:recompose"

    .line 66
    .line 67
    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :try_start_1
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->recordComposerModifications()Z

    .line 71
    .line 72
    .line 73
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    .line 76
    :try_start_2
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 77
    .line 78
    iget-object v11, v10, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 79
    .line 80
    iget v10, v10, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 81
    .line 82
    const/4 v13, 0x0

    .line 83
    move v14, v13

    .line 84
    :goto_1
    if-ge v14, v10, :cond_1

    .line 85
    .line 86
    aget-object v15, v11, v14

    .line 87
    .line 88
    check-cast v15, Landroidx/compose/runtime/CompositionImpl;

    .line 89
    .line 90
    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    add-int/lit8 v14, v14, 0x1

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    goto/16 :goto_28

    .line 98
    .line 99
    :cond_1
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 100
    .line 101
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/MutableVector;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    .line 103
    .line 104
    :try_start_3
    monitor-exit v9

    .line 105
    invoke-virtual {v7}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 109
    .line 110
    .line 111
    :goto_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    const/4 v10, 0x0

    .line 116
    if-eqz v9, :cond_13

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-nez v9, :cond_2

    .line 123
    .line 124
    goto/16 :goto_1b

    .line 125
    .line 126
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    instance-of v9, v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 131
    .line 132
    if-eqz v9, :cond_3

    .line 133
    .line 134
    new-instance v14, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    .line 135
    .line 136
    move-object v15, v0

    .line 137
    check-cast v15, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 138
    .line 139
    const/16 v18, 0x1

    .line 140
    .line 141
    const/16 v19, 0x0

    .line 142
    .line 143
    const/16 v16, 0x0

    .line 144
    .line 145
    const/16 v17, 0x0

    .line 146
    .line 147
    invoke-direct/range {v14 .. v19}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZ)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_3
    new-instance v14, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;

    .line 152
    .line 153
    invoke-direct {v14, v0, v10, v12, v13}, Landroidx/compose/runtime/snapshots/TransparentObserverSnapshot;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_12

    .line 154
    .line 155
    .line 156
    :goto_3
    :try_start_4
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 157
    .line 158
    .line 159
    move-result-object v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 160
    :try_start_5
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 164
    if-nez v0, :cond_6

    .line 165
    .line 166
    :try_start_6
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    move v11, v13

    .line 171
    :goto_4
    if-ge v11, v0, :cond_4

    .line 172
    .line 173
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    check-cast v12, Landroidx/compose/runtime/CompositionImpl;

    .line 178
    .line 179
    invoke-virtual {v6, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    add-int/lit8 v11, v11, 0x1

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :catchall_2
    move-exception v0

    .line 186
    goto :goto_6

    .line 187
    :cond_4
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    move v11, v13

    .line 192
    :goto_5
    if-ge v11, v0, :cond_5

    .line 193
    .line 194
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v12

    .line 198
    check-cast v12, Landroidx/compose/runtime/CompositionImpl;

    .line 199
    .line 200
    invoke-virtual {v12}, Landroidx/compose/runtime/CompositionImpl;->applyChanges()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 201
    .line 202
    .line 203
    add-int/lit8 v11, v11, 0x1

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_5
    :try_start_7
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 207
    .line 208
    .line 209
    goto :goto_7

    .line 210
    :catchall_3
    move-exception v0

    .line 211
    goto/16 :goto_19

    .line 212
    .line 213
    :goto_6
    :try_start_8
    invoke-virtual {v1, v0, v10}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 214
    .line 215
    .line 216
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 217
    .line 218
    .line 219
    :try_start_9
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 220
    .line 221
    .line 222
    :try_start_a
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 223
    .line 224
    .line 225
    goto/16 :goto_15

    .line 226
    .line 227
    :catchall_4
    move-exception v0

    .line 228
    goto/16 :goto_1a

    .line 229
    .line 230
    :catchall_5
    move-exception v0

    .line 231
    :try_start_b
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 232
    .line 233
    .line 234
    throw v0

    .line 235
    :cond_6
    :goto_7
    invoke-virtual {v5}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 236
    .line 237
    .line 238
    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 239
    const/16 v17, 0x7

    .line 240
    .line 241
    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    const-wide/16 p0, 0x80

    .line 247
    .line 248
    if-eqz v0, :cond_c

    .line 249
    .line 250
    :try_start_c
    invoke-virtual {v6, v5}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/ScatterSet;)V

    .line 251
    .line 252
    .line 253
    iget-object v0, v5, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 254
    .line 255
    iget-object v12, v5, Landroidx/collection/ScatterSet;->metadata:[J

    .line 256
    .line 257
    array-length v13, v12

    .line 258
    add-int/lit8 v13, v13, -0x2

    .line 259
    .line 260
    if-ltz v13, :cond_a

    .line 261
    .line 262
    const/4 v15, 0x0

    .line 263
    const-wide/16 v20, 0xff

    .line 264
    .line 265
    :goto_8
    const/16 v22, 0x8

    .line 266
    .line 267
    aget-wide v10, v12, v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 268
    .line 269
    move-object/from16 v23, v2

    .line 270
    .line 271
    move-object/from16 v24, v3

    .line 272
    .line 273
    not-long v2, v10

    .line 274
    shl-long v2, v2, v17

    .line 275
    .line 276
    and-long/2addr v2, v10

    .line 277
    and-long v2, v2, v18

    .line 278
    .line 279
    cmp-long v2, v2, v18

    .line 280
    .line 281
    if-eqz v2, :cond_9

    .line 282
    .line 283
    sub-int v2, v15, v13

    .line 284
    .line 285
    not-int v2, v2

    .line 286
    ushr-int/lit8 v2, v2, 0x1f

    .line 287
    .line 288
    rsub-int/lit8 v2, v2, 0x8

    .line 289
    .line 290
    const/4 v3, 0x0

    .line 291
    :goto_9
    if-ge v3, v2, :cond_8

    .line 292
    .line 293
    and-long v25, v10, v20

    .line 294
    .line 295
    cmp-long v25, v25, p0

    .line 296
    .line 297
    if-gez v25, :cond_7

    .line 298
    .line 299
    shl-int/lit8 v25, v15, 0x3

    .line 300
    .line 301
    add-int v25, v25, v3

    .line 302
    .line 303
    :try_start_d
    aget-object v25, v0, v25

    .line 304
    .line 305
    check-cast v25, Landroidx/compose/runtime/CompositionImpl;

    .line 306
    .line 307
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/CompositionImpl;->applyLateChanges()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 308
    .line 309
    .line 310
    goto :goto_b

    .line 311
    :catchall_6
    move-exception v0

    .line 312
    :goto_a
    const/4 v2, 0x0

    .line 313
    goto :goto_c

    .line 314
    :cond_7
    :goto_b
    shr-long v10, v10, v22

    .line 315
    .line 316
    add-int/lit8 v3, v3, 0x1

    .line 317
    .line 318
    goto :goto_9

    .line 319
    :cond_8
    move/from16 v3, v22

    .line 320
    .line 321
    if-ne v2, v3, :cond_b

    .line 322
    .line 323
    :cond_9
    if-eq v15, v13, :cond_b

    .line 324
    .line 325
    add-int/lit8 v15, v15, 0x1

    .line 326
    .line 327
    move-object/from16 v2, v23

    .line 328
    .line 329
    move-object/from16 v3, v24

    .line 330
    .line 331
    goto :goto_8

    .line 332
    :catchall_7
    move-exception v0

    .line 333
    move-object/from16 v23, v2

    .line 334
    .line 335
    move-object/from16 v24, v3

    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_a
    move-object/from16 v23, v2

    .line 339
    .line 340
    move-object/from16 v24, v3

    .line 341
    .line 342
    const-wide/16 v20, 0xff

    .line 343
    .line 344
    :cond_b
    :try_start_e
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 345
    .line 346
    .line 347
    move-object/from16 v2, v23

    .line 348
    .line 349
    move-object/from16 v3, v24

    .line 350
    .line 351
    goto :goto_d

    .line 352
    :goto_c
    :try_start_f
    invoke-virtual {v1, v0, v2}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 353
    .line 354
    .line 355
    move-object/from16 v2, v23

    .line 356
    .line 357
    move-object/from16 v3, v24

    .line 358
    .line 359
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 360
    .line 361
    .line 362
    :try_start_10
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 363
    .line 364
    .line 365
    :try_start_11
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 366
    .line 367
    .line 368
    goto/16 :goto_15

    .line 369
    .line 370
    :catchall_8
    move-exception v0

    .line 371
    :try_start_12
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 372
    .line 373
    .line 374
    throw v0

    .line 375
    :cond_c
    const-wide/16 v20, 0xff

    .line 376
    .line 377
    :goto_d
    invoke-virtual {v6}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 378
    .line 379
    .line 380
    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 381
    if-eqz v0, :cond_11

    .line 382
    .line 383
    :try_start_13
    iget-object v0, v6, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 384
    .line 385
    iget-object v10, v6, Landroidx/collection/ScatterSet;->metadata:[J

    .line 386
    .line 387
    array-length v11, v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    .line 388
    add-int/lit8 v11, v11, -0x2

    .line 389
    .line 390
    if-ltz v11, :cond_10

    .line 391
    .line 392
    move-object/from16 v23, v2

    .line 393
    .line 394
    move-object/from16 v24, v3

    .line 395
    .line 396
    const/4 v12, 0x0

    .line 397
    :goto_e
    :try_start_14
    aget-wide v2, v10, v12
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 398
    .line 399
    move-object v15, v4

    .line 400
    move-object v13, v5

    .line 401
    not-long v4, v2

    .line 402
    shl-long v4, v4, v17

    .line 403
    .line 404
    and-long/2addr v4, v2

    .line 405
    and-long v4, v4, v18

    .line 406
    .line 407
    cmp-long v4, v4, v18

    .line 408
    .line 409
    if-eqz v4, :cond_f

    .line 410
    .line 411
    sub-int v4, v12, v11

    .line 412
    .line 413
    not-int v4, v4

    .line 414
    ushr-int/lit8 v4, v4, 0x1f

    .line 415
    .line 416
    const/16 v22, 0x8

    .line 417
    .line 418
    rsub-int/lit8 v4, v4, 0x8

    .line 419
    .line 420
    const/4 v5, 0x0

    .line 421
    :goto_f
    if-ge v5, v4, :cond_e

    .line 422
    .line 423
    and-long v25, v2, v20

    .line 424
    .line 425
    cmp-long v25, v25, p0

    .line 426
    .line 427
    if-gez v25, :cond_d

    .line 428
    .line 429
    shl-int/lit8 v25, v12, 0x3

    .line 430
    .line 431
    add-int v25, v25, v5

    .line 432
    .line 433
    :try_start_15
    aget-object v25, v0, v25

    .line 434
    .line 435
    check-cast v25, Landroidx/compose/runtime/CompositionImpl;

    .line 436
    .line 437
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/CompositionImpl;->changesApplied()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 438
    .line 439
    .line 440
    :cond_d
    move-object/from16 v25, v0

    .line 441
    .line 442
    const/16 v0, 0x8

    .line 443
    .line 444
    goto :goto_11

    .line 445
    :catchall_9
    move-exception v0

    .line 446
    :goto_10
    const/4 v2, 0x0

    .line 447
    goto :goto_14

    .line 448
    :goto_11
    shr-long/2addr v2, v0

    .line 449
    add-int/lit8 v5, v5, 0x1

    .line 450
    .line 451
    move-object/from16 v0, v25

    .line 452
    .line 453
    goto :goto_f

    .line 454
    :cond_e
    move-object/from16 v25, v0

    .line 455
    .line 456
    const/16 v0, 0x8

    .line 457
    .line 458
    if-ne v4, v0, :cond_10

    .line 459
    .line 460
    goto :goto_12

    .line 461
    :cond_f
    move-object/from16 v25, v0

    .line 462
    .line 463
    const/16 v0, 0x8

    .line 464
    .line 465
    :goto_12
    if-eq v12, v11, :cond_10

    .line 466
    .line 467
    add-int/lit8 v12, v12, 0x1

    .line 468
    .line 469
    move-object v5, v13

    .line 470
    move-object v4, v15

    .line 471
    move-object/from16 v0, v25

    .line 472
    .line 473
    goto :goto_e

    .line 474
    :catchall_a
    move-exception v0

    .line 475
    :goto_13
    move-object v15, v4

    .line 476
    move-object v13, v5

    .line 477
    goto :goto_10

    .line 478
    :cond_10
    :try_start_16
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 479
    .line 480
    .line 481
    goto :goto_16

    .line 482
    :catchall_b
    move-exception v0

    .line 483
    move-object/from16 v23, v2

    .line 484
    .line 485
    move-object/from16 v24, v3

    .line 486
    .line 487
    goto :goto_13

    .line 488
    :goto_14
    :try_start_17
    invoke-virtual {v1, v0, v2}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 489
    .line 490
    .line 491
    move-object v5, v13

    .line 492
    move-object v4, v15

    .line 493
    move-object/from16 v2, v23

    .line 494
    .line 495
    move-object/from16 v3, v24

    .line 496
    .line 497
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    .line 498
    .line 499
    .line 500
    :try_start_18
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 501
    .line 502
    .line 503
    :try_start_19
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 504
    .line 505
    .line 506
    :goto_15
    :try_start_1a
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_12

    .line 507
    .line 508
    .line 509
    goto :goto_18

    .line 510
    :catchall_c
    move-exception v0

    .line 511
    :try_start_1b
    invoke-virtual {v6}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 512
    .line 513
    .line 514
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 515
    :cond_11
    :goto_16
    :try_start_1c
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 516
    .line 517
    .line 518
    :try_start_1d
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 519
    .line 520
    .line 521
    iget-object v2, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 522
    .line 523
    monitor-enter v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    .line 524
    :try_start_1e
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    if-nez v0, :cond_12

    .line 529
    .line 530
    goto :goto_17

    .line 531
    :cond_12
    const-string/jumbo v0, "unexpected to get continuation here"

    .line 532
    .line 533
    .line 534
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    .line 535
    .line 536
    .line 537
    :goto_17
    :try_start_1f
    monitor-exit v2

    .line 538
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->notifyObjectsInitialized$runtime()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v7}, Landroidx/collection/MutableScatterSet;->clear()V

    .line 549
    .line 550
    .line 551
    const/4 v2, 0x0

    .line 552
    iput-object v2, v1, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Landroidx/collection/MutableScatterSet;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    .line 553
    .line 554
    :goto_18
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 555
    .line 556
    .line 557
    goto/16 :goto_27

    .line 558
    .line 559
    :catchall_d
    move-exception v0

    .line 560
    :try_start_20
    monitor-exit v2

    .line 561
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    .line 562
    :goto_19
    :try_start_21
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 563
    .line 564
    .line 565
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 566
    :goto_1a
    :try_start_22
    invoke-virtual {v14}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 567
    .line 568
    .line 569
    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    .line 570
    :cond_13
    :goto_1b
    :try_start_23
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 571
    .line 572
    .line 573
    move-result v9

    .line 574
    const/4 v10, 0x0

    .line 575
    :goto_1c
    if-ge v10, v9, :cond_15

    .line 576
    .line 577
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    move-result-object v11

    .line 581
    check-cast v11, Landroidx/compose/runtime/CompositionImpl;

    .line 582
    .line 583
    invoke-virtual {v1, v11, v7}, Landroidx/compose/runtime/Recomposer;->performRecompose(Landroidx/compose/runtime/CompositionImpl;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/CompositionImpl;

    .line 584
    .line 585
    .line 586
    move-result-object v13

    .line 587
    if-eqz v13, :cond_14

    .line 588
    .line 589
    invoke-interface {v4, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    goto :goto_1d

    .line 593
    :catchall_e
    move-exception v0

    .line 594
    const/4 v14, 0x0

    .line 595
    goto/16 :goto_26

    .line 596
    .line 597
    :cond_14
    :goto_1d
    invoke-virtual {v8, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 598
    .line 599
    .line 600
    add-int/lit8 v10, v10, 0x1

    .line 601
    .line 602
    goto :goto_1c

    .line 603
    :cond_15
    :try_start_24
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {v7}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 607
    .line 608
    .line 609
    move-result v9

    .line 610
    if-nez v9, :cond_16

    .line 611
    .line 612
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 613
    .line 614
    iget v9, v9, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 615
    .line 616
    if-eqz v9, :cond_1c

    .line 617
    .line 618
    :cond_16
    iget-object v9, v1, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 619
    .line 620
    monitor-enter v9
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_12

    .line 621
    :try_start_25
    invoke-virtual {v1}, Landroidx/compose/runtime/Recomposer;->knownCompositionsLocked()Ljava/util/List;

    .line 622
    .line 623
    .line 624
    move-result-object v10

    .line 625
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 626
    .line 627
    .line 628
    move-result v11

    .line 629
    const/4 v13, 0x0

    .line 630
    :goto_1e
    if-ge v13, v11, :cond_18

    .line 631
    .line 632
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v14

    .line 636
    check-cast v14, Landroidx/compose/runtime/CompositionImpl;

    .line 637
    .line 638
    invoke-virtual {v8, v14}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v15

    .line 642
    if-nez v15, :cond_17

    .line 643
    .line 644
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/CompositionImpl;->observesAnyOf(Ljava/util/Set;)Z

    .line 645
    .line 646
    .line 647
    move-result v15

    .line 648
    if-eqz v15, :cond_17

    .line 649
    .line 650
    invoke-interface {v2, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    goto :goto_1f

    .line 654
    :catchall_f
    move-exception v0

    .line 655
    goto/16 :goto_25

    .line 656
    .line 657
    :cond_17
    :goto_1f
    add-int/lit8 v13, v13, 0x1

    .line 658
    .line 659
    goto :goto_1e

    .line 660
    :cond_18
    iget-object v10, v1, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    .line 661
    .line 662
    iget v11, v10, Landroidx/compose/runtime/collection/MutableVector;->size:I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    .line 663
    .line 664
    const/4 v13, 0x0

    .line 665
    const/4 v14, 0x0

    .line 666
    :goto_20
    iget-object v15, v10, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 667
    .line 668
    if-ge v13, v11, :cond_1b

    .line 669
    .line 670
    :try_start_26
    aget-object v15, v15, v13

    .line 671
    .line 672
    check-cast v15, Landroidx/compose/runtime/CompositionImpl;

    .line 673
    .line 674
    invoke-virtual {v8, v15}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result v17

    .line 678
    if-nez v17, :cond_19

    .line 679
    .line 680
    invoke-interface {v2, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v17

    .line 684
    if-nez v17, :cond_19

    .line 685
    .line 686
    invoke-interface {v2, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    add-int/lit8 v14, v14, 0x1

    .line 690
    .line 691
    goto :goto_21

    .line 692
    :cond_19
    if-lez v14, :cond_1a

    .line 693
    .line 694
    iget-object v15, v10, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 695
    .line 696
    sub-int v17, v13, v14

    .line 697
    .line 698
    aget-object v18, v15, v13

    .line 699
    .line 700
    aput-object v18, v15, v17

    .line 701
    .line 702
    :cond_1a
    :goto_21
    add-int/lit8 v13, v13, 0x1

    .line 703
    .line 704
    goto :goto_20

    .line 705
    :cond_1b
    sub-int v13, v11, v14

    .line 706
    .line 707
    const/4 v14, 0x0

    .line 708
    invoke-static {v15, v13, v11, v14}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 709
    .line 710
    .line 711
    iput v13, v10, Landroidx/compose/runtime/collection/MutableVector;->size:I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    .line 712
    .line 713
    :try_start_27
    monitor-exit v9

    .line 714
    :cond_1c
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 715
    .line 716
    .line 717
    move-result v9
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_12

    .line 718
    if-eqz v9, :cond_1e

    .line 719
    .line 720
    :try_start_28
    invoke-static {v3, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    .line 721
    .line 722
    .line 723
    :goto_22
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 724
    .line 725
    .line 726
    move-result v9

    .line 727
    if-nez v9, :cond_1e

    .line 728
    .line 729
    invoke-virtual {v1, v3, v7}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    .line 730
    .line 731
    .line 732
    move-result-object v9

    .line 733
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 734
    .line 735
    .line 736
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 737
    .line 738
    .line 739
    move-result-object v9

    .line 740
    :goto_23
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 741
    .line 742
    .line 743
    move-result v10

    .line 744
    if-eqz v10, :cond_1d

    .line 745
    .line 746
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v10

    .line 750
    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 751
    .line 752
    .line 753
    goto :goto_23

    .line 754
    :cond_1d
    invoke-static {v3, v1}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    .line 755
    .line 756
    .line 757
    goto :goto_22

    .line 758
    :catchall_10
    move-exception v0

    .line 759
    const/4 v14, 0x0

    .line 760
    goto :goto_24

    .line 761
    :cond_1e
    const/4 v13, 0x0

    .line 762
    goto/16 :goto_2

    .line 763
    .line 764
    :goto_24
    :try_start_29
    invoke-virtual {v1, v0, v14}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 765
    .line 766
    .line 767
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    .line 768
    .line 769
    .line 770
    goto/16 :goto_18

    .line 771
    .line 772
    :goto_25
    monitor-exit v9

    .line 773
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    .line 774
    :goto_26
    :try_start_2a
    invoke-virtual {v1, v0, v14}, Landroidx/compose/runtime/Recomposer;->processCompositionError(Ljava/lang/Throwable;Landroidx/compose/runtime/CompositionImpl;)V

    .line 775
    .line 776
    .line 777
    invoke-static/range {v1 .. v8}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    .line 778
    .line 779
    .line 780
    :try_start_2b
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    .line 781
    .line 782
    .line 783
    goto/16 :goto_18

    .line 784
    .line 785
    :goto_27
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 786
    .line 787
    return-object v0

    .line 788
    :catchall_11
    move-exception v0

    .line 789
    :try_start_2c
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 790
    .line 791
    .line 792
    throw v0

    .line 793
    :goto_28
    monitor-exit v9

    .line 794
    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    .line 795
    :catchall_12
    move-exception v0

    .line 796
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 797
    .line 798
    .line 799
    throw v0
.end method
