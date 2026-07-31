.class public final synthetic Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p1, 0x7

    .line 2
    iput p1, p0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 11
    iput p3, p0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final invoke$androidx$compose$runtime$Recomposer$recompositionRunner$2$$ExternalSyntheticLambda0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/Recomposer;

    .line 6
    .line 7
    move-object/from16 v1, p1

    .line 8
    .line 9
    check-cast v1, Ljava/util/Set;

    .line 10
    .line 11
    move-object/from16 v2, p2

    .line 12
    .line 13
    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 14
    .line 15
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 19
    .line 20
    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Landroidx/compose/runtime/Recomposer$State;

    .line 25
    .line 26
    sget-object v4, Landroidx/compose/runtime/Recomposer$State;->Idle:Landroidx/compose/runtime/Recomposer$State;

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ltz v3, :cond_7

    .line 33
    .line 34
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer;->snapshotInvalidations:Landroidx/collection/MutableScatterSet;

    .line 35
    .line 36
    instance-of v4, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v4, :cond_4

    .line 40
    .line 41
    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    .line 42
    .line 43
    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/ScatterSet;

    .line 44
    .line 45
    iget-object v4, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 48
    .line 49
    array-length v6, v1

    .line 50
    add-int/lit8 v6, v6, -0x2

    .line 51
    .line 52
    if-ltz v6, :cond_6

    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    move v8, v7

    .line 56
    :goto_0
    aget-wide v9, v1, v8

    .line 57
    .line 58
    not-long v11, v9

    .line 59
    const/4 v13, 0x7

    .line 60
    shl-long/2addr v11, v13

    .line 61
    and-long/2addr v11, v9

    .line 62
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    and-long/2addr v11, v13

    .line 68
    cmp-long v11, v11, v13

    .line 69
    .line 70
    if-eqz v11, :cond_3

    .line 71
    .line 72
    sub-int v11, v8, v6

    .line 73
    .line 74
    not-int v11, v11

    .line 75
    ushr-int/lit8 v11, v11, 0x1f

    .line 76
    .line 77
    const/16 v12, 0x8

    .line 78
    .line 79
    rsub-int/lit8 v11, v11, 0x8

    .line 80
    .line 81
    move v13, v7

    .line 82
    :goto_1
    if-ge v13, v11, :cond_2

    .line 83
    .line 84
    const-wide/16 v14, 0xff

    .line 85
    .line 86
    and-long/2addr v14, v9

    .line 87
    const-wide/16 v16, 0x80

    .line 88
    .line 89
    cmp-long v14, v14, v16

    .line 90
    .line 91
    if-gez v14, :cond_1

    .line 92
    .line 93
    shl-int/lit8 v14, v8, 0x3

    .line 94
    .line 95
    add-int/2addr v14, v13

    .line 96
    aget-object v14, v4, v14

    .line 97
    .line 98
    instance-of v15, v14, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 99
    .line 100
    if-eqz v15, :cond_0

    .line 101
    .line 102
    move-object v15, v14

    .line 103
    check-cast v15, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 104
    .line 105
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime(I)Z

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    if-nez v15, :cond_0

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    goto :goto_5

    .line 114
    :cond_0
    invoke-virtual {v3, v14}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_2
    shr-long/2addr v9, v12

    .line 118
    add-int/lit8 v13, v13, 0x1

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    if-ne v11, v12, :cond_6

    .line 122
    .line 123
    :cond_3
    if-eq v8, v6, :cond_6

    .line 124
    .line 125
    add-int/lit8 v8, v8, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_4
    check-cast v1, Ljava/lang/Iterable;

    .line 129
    .line 130
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    if-eqz v4, :cond_6

    .line 139
    .line 140
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    instance-of v6, v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 145
    .line 146
    if-eqz v6, :cond_5

    .line 147
    .line 148
    move-object v6, v4

    .line 149
    check-cast v6, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime(I)Z

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_5

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;

    .line 163
    .line 164
    .line 165
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    goto :goto_4

    .line 167
    :cond_7
    const/4 v0, 0x0

    .line 168
    :goto_4
    monitor-exit v2

    .line 169
    if-eqz v0, :cond_8

    .line 170
    .line 171
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 172
    .line 173
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 179
    .line 180
    return-object v0

    .line 181
    :goto_5
    monitor-exit v2

    .line 182
    throw v0
.end method

.method private final invoke$androidx$compose$runtime$SingleSubscriptionSnapshotFlowManager$$ExternalSyntheticLambda1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;

    .line 6
    .line 7
    move-object/from16 v1, p1

    .line 8
    .line 9
    check-cast v1, Ljava/util/Set;

    .line 10
    .line 11
    move-object/from16 v2, p2

    .line 12
    .line 13
    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 14
    .line 15
    iget-object v2, v0, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->watchSet:Landroidx/collection/MutableScatterSet;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Iterable;

    .line 23
    .line 24
    iget-object v3, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->soleWatchedObject:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->subscribedChannel:Lkotlinx/coroutines/channels/SendChannel;

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_3

    .line 37
    :cond_0
    iget-object v4, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/collection/ScatterSet;->metadata:[J

    .line 40
    .line 41
    array-length v5, v3

    .line 42
    add-int/lit8 v5, v5, -0x2

    .line 43
    .line 44
    if-ltz v5, :cond_4

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    move v7, v6

    .line 48
    :goto_0
    aget-wide v8, v3, v7

    .line 49
    .line 50
    not-long v10, v8

    .line 51
    const/4 v12, 0x7

    .line 52
    shl-long/2addr v10, v12

    .line 53
    and-long/2addr v10, v8

    .line 54
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    and-long/2addr v10, v12

    .line 60
    cmp-long v10, v10, v12

    .line 61
    .line 62
    if-eqz v10, :cond_3

    .line 63
    .line 64
    sub-int v10, v7, v5

    .line 65
    .line 66
    not-int v10, v10

    .line 67
    ushr-int/lit8 v10, v10, 0x1f

    .line 68
    .line 69
    const/16 v11, 0x8

    .line 70
    .line 71
    rsub-int/lit8 v10, v10, 0x8

    .line 72
    .line 73
    move v12, v6

    .line 74
    :goto_1
    if-ge v12, v10, :cond_2

    .line 75
    .line 76
    const-wide/16 v13, 0xff

    .line 77
    .line 78
    and-long/2addr v13, v8

    .line 79
    const-wide/16 v15, 0x80

    .line 80
    .line 81
    cmp-long v13, v13, v15

    .line 82
    .line 83
    if-gez v13, :cond_1

    .line 84
    .line 85
    shl-int/lit8 v13, v7, 0x3

    .line 86
    .line 87
    add-int/2addr v13, v12

    .line 88
    aget-object v13, v4, v13

    .line 89
    .line 90
    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v13

    .line 94
    if-eqz v13, :cond_1

    .line 95
    .line 96
    iget-object v0, v0, Landroidx/compose/runtime/SingleSubscriptionSnapshotFlowManager;->subscribedChannel:Lkotlinx/coroutines/channels/SendChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    shr-long/2addr v8, v11

    .line 100
    add-int/lit8 v12, v12, 0x1

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    if-ne v10, v11, :cond_4

    .line 104
    .line 105
    :cond_3
    if-eq v7, v5, :cond_4

    .line 106
    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_4
    const/4 v0, 0x0

    .line 111
    :goto_2
    monitor-exit v2

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    .line 121
    return-object v0

    .line 122
    :goto_3
    monitor-exit v2

    .line 123
    throw v0
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 8
    .line 9
    const/16 v4, 0x8

    .line 10
    .line 11
    const/4 v5, 0x7

    .line 12
    const/16 v6, 0x20

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x2

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x1

    .line 18
    packed-switch v3, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 26
    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    and-int/lit8 v3, v2, 0x3

    .line 34
    .line 35
    if-eq v3, v8, :cond_0

    .line 36
    .line 37
    move v9, v10

    .line 38
    :cond_0
    and-int/2addr v2, v10

    .line 39
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->FillWholeMaxWidth:Landroidx/compose/foundation/layout/FillElement;

    .line 48
    .line 49
    invoke-static {v2}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    .line 52
    move-result-object v19

    .line 53
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 58
    .line 59
    if-ne v2, v3, :cond_1

    .line 60
    .line 61
    new-instance v2, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    invoke-direct {v2, v0, v5}, Lkotlinx/coroutines/rx3/RxAwaitKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    move-object/from16 v20, v2

    .line 70
    .line 71
    check-cast v20, Lkotlin/jvm/functions/Function1;

    .line 72
    .line 73
    const v10, 0x30000006

    .line 74
    .line 75
    .line 76
    const/16 v11, 0x1fe

    .line 77
    .line 78
    const/4 v12, 0x0

    .line 79
    const/4 v13, 0x0

    .line 80
    const/4 v14, 0x0

    .line 81
    const/4 v15, 0x0

    .line 82
    const/16 v16, 0x0

    .line 83
    .line 84
    const/16 v18, 0x0

    .line 85
    .line 86
    const/16 v21, 0x0

    .line 87
    .line 88
    move-object/from16 v17, v1

    .line 89
    .line 90
    invoke-static/range {v10 .. v21}, Landroidx/sqlite/SQLite;->LazyColumn(IILandroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move-object/from16 v17, v1

    .line 95
    .line 96
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 97
    .line 98
    .line 99
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 100
    .line 101
    return-object v0

    .line 102
    :pswitch_0
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lnet/newpipe/app/model/License;

    .line 105
    .line 106
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 107
    .line 108
    check-cast v2, Ljava/lang/Integer;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    and-int/lit8 v3, v2, 0x3

    .line 115
    .line 116
    if-eq v3, v8, :cond_3

    .line 117
    .line 118
    move v9, v10

    .line 119
    :cond_3
    and-int/2addr v2, v10

    .line 120
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 121
    .line 122
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    iget-object v10, v0, Lnet/newpipe/app/model/License;->name:Ljava/lang/String;

    .line 129
    .line 130
    const/16 v27, 0x0

    .line 131
    .line 132
    const v28, 0x3fffe

    .line 133
    .line 134
    .line 135
    const/4 v11, 0x0

    .line 136
    const-wide/16 v12, 0x0

    .line 137
    .line 138
    const-wide/16 v14, 0x0

    .line 139
    .line 140
    const-wide/16 v16, 0x0

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    const-wide/16 v19, 0x0

    .line 145
    .line 146
    const/16 v21, 0x0

    .line 147
    .line 148
    const/16 v22, 0x0

    .line 149
    .line 150
    const/16 v23, 0x0

    .line 151
    .line 152
    const/16 v24, 0x0

    .line 153
    .line 154
    const/16 v25, 0x0

    .line 155
    .line 156
    move-object/from16 v26, v1

    .line 157
    .line 158
    invoke-static/range {v10 .. v28}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJJLandroidx/compose/ui/text/style/TextAlign;JIZIILandroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    move-object/from16 v26, v1

    .line 163
    .line 164
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 165
    .line 166
    .line 167
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 168
    .line 169
    return-object v0

    .line 170
    :pswitch_1
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 171
    .line 172
    check-cast v0, Lnet/newpipe/app/navigation/Navigator;

    .line 173
    .line 174
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 175
    .line 176
    check-cast v2, Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    invoke-static {v0, v1, v2}, Lnet/newpipe/app/screen/about/AboutPageKt;->AboutScreen(Lnet/newpipe/app/navigation/Navigator;Landroidx/compose/runtime/Composer;I)V

    .line 186
    .line 187
    .line 188
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 189
    .line 190
    return-object v0

    .line 191
    :pswitch_2
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v0, Lnet/newpipe/app/platform/ShareHandler;

    .line 194
    .line 195
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 196
    .line 197
    check-cast v2, Ljava/lang/Integer;

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-static {v0, v1, v2}, Lnet/newpipe/app/screen/about/AboutPageKt;->AboutPage(Lnet/newpipe/app/platform/ShareHandler;Landroidx/compose/runtime/Composer;I)V

    .line 207
    .line 208
    .line 209
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 210
    .line 211
    return-object v0

    .line 212
    :pswitch_3
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v0, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 215
    .line 216
    check-cast v1, Ljava/lang/Integer;

    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    move-object v1, v2

    .line 223
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 224
    .line 225
    invoke-interface {v1}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContext:Lkotlin/coroutines/CoroutineContext;

    .line 230
    .line 231
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    sget-object v4, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 236
    .line 237
    if-eq v2, v4, :cond_6

    .line 238
    .line 239
    if-eq v1, v0, :cond_5

    .line 240
    .line 241
    const/high16 v3, -0x80000000

    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_6
    move-object v4, v0

    .line 248
    check-cast v4, Lkotlinx/coroutines/Job;

    .line 249
    .line 250
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 251
    .line 252
    :goto_2
    if-nez v1, :cond_7

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_7
    if-ne v1, v4, :cond_8

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_8
    instance-of v0, v1, Lkotlinx/coroutines/internal/ScopeCoroutine;

    .line 259
    .line 260
    if-nez v0, :cond_a

    .line 261
    .line 262
    :goto_3
    move-object v7, v1

    .line 263
    :goto_4
    if-ne v7, v4, :cond_9

    .line 264
    .line 265
    if-nez v4, :cond_5

    .line 266
    .line 267
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    return-object v0

    .line 272
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 273
    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v2, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    .line 277
    .line 278
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v2, ", expected child of "

    .line 285
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    .line 293
    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :cond_a
    check-cast v1, Lkotlinx/coroutines/internal/ScopeCoroutine;

    .line 310
    .line 311
    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/ChildHandle;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    if-eqz v0, :cond_b

    .line 316
    .line 317
    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->getParent()Lkotlinx/coroutines/Job;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    move-object v1, v0

    .line 322
    goto :goto_2

    .line 323
    :cond_b
    move-object v1, v7

    .line 324
    goto :goto_2

    .line 325
    :pswitch_4
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v0, [C

    .line 328
    .line 329
    check-cast v1, Ljava/lang/CharSequence;

    .line 330
    .line 331
    check-cast v2, Ljava/lang/Integer;

    .line 332
    .line 333
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    invoke-static {v1, v0, v2, v9}, Lkotlin/text/StringsKt;->indexOfAny(Ljava/lang/CharSequence;[CIZ)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-gez v0, :cond_c

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    new-instance v7, Lkotlin/Pair;

    .line 356
    .line 357
    invoke-direct {v7, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    :goto_6
    return-object v7

    .line 361
    :pswitch_5
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Ljava/util/List;

    .line 364
    .line 365
    move-object v3, v1

    .line 366
    check-cast v3, Ljava/lang/CharSequence;

    .line 367
    .line 368
    move-object v1, v2

    .line 369
    check-cast v1, Ljava/lang/Integer;

    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 379
    .line 380
    .line 381
    move-result v2

    .line 382
    if-ne v2, v10, :cond_11

    .line 383
    .line 384
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_10

    .line 389
    .line 390
    if-ne v2, v10, :cond_f

    .line 391
    .line 392
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Ljava/lang/String;

    .line 397
    .line 398
    const/4 v2, 0x4

    .line 399
    invoke-static {v3, v0, v1, v2}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;II)I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    if-gez v1, :cond_e

    .line 404
    .line 405
    :cond_d
    move-object v2, v7

    .line 406
    goto/16 :goto_b

    .line 407
    .line 408
    :cond_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    new-instance v2, Lkotlin/Pair;

    .line 413
    .line 414
    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    goto/16 :goto_b

    .line 418
    .line 419
    :cond_f
    const-string v0, "List has more than one element."

    .line 420
    .line 421
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_c

    .line 425
    .line 426
    :cond_10
    const-string v0, "List is empty."

    .line 427
    .line 428
    invoke-static {v0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_c

    .line 432
    .line 433
    :cond_11
    new-instance v2, Lkotlin/ranges/IntRange;

    .line 434
    .line 435
    if-gez v1, :cond_12

    .line 436
    .line 437
    move v1, v9

    .line 438
    :cond_12
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    invoke-direct {v2, v1, v4, v10}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 443
    .line 444
    .line 445
    iget v8, v2, Lkotlin/ranges/IntProgression;->step:I

    .line 446
    .line 447
    iget v10, v2, Lkotlin/ranges/IntProgression;->last:I

    .line 448
    .line 449
    instance-of v2, v3, Ljava/lang/String;

    .line 450
    .line 451
    if-eqz v2, :cond_18

    .line 452
    .line 453
    if-lez v8, :cond_13

    .line 454
    .line 455
    if-le v1, v10, :cond_14

    .line 456
    .line 457
    :cond_13
    if-gez v8, :cond_d

    .line 458
    .line 459
    if-gt v10, v1, :cond_d

    .line 460
    .line 461
    :cond_14
    :goto_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    if-eqz v4, :cond_16

    .line 470
    .line 471
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    move-object v5, v4

    .line 476
    check-cast v5, Ljava/lang/String;

    .line 477
    .line 478
    move-object v6, v3

    .line 479
    check-cast v6, Ljava/lang/String;

    .line 480
    .line 481
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    invoke-virtual {v5, v9, v6, v1, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    .line 486
    .line 487
    .line 488
    move-result v5

    .line 489
    if-eqz v5, :cond_15

    .line 490
    .line 491
    goto :goto_8

    .line 492
    :cond_16
    move-object v4, v7

    .line 493
    :goto_8
    check-cast v4, Ljava/lang/String;

    .line 494
    .line 495
    if-eqz v4, :cond_17

    .line 496
    .line 497
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    new-instance v2, Lkotlin/Pair;

    .line 502
    .line 503
    invoke-direct {v2, v0, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_17
    if-eq v1, v10, :cond_d

    .line 508
    .line 509
    add-int/2addr v1, v8

    .line 510
    goto :goto_7

    .line 511
    :cond_18
    if-lez v8, :cond_19

    .line 512
    .line 513
    if-le v1, v10, :cond_1a

    .line 514
    .line 515
    :cond_19
    if-gez v8, :cond_d

    .line 516
    .line 517
    if-gt v10, v1, :cond_d

    .line 518
    .line 519
    :cond_1a
    move v4, v1

    .line 520
    :goto_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 521
    .line 522
    .line 523
    move-result-object v9

    .line 524
    :cond_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    if-eqz v1, :cond_1c

    .line 529
    .line 530
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v11

    .line 534
    move-object v1, v11

    .line 535
    check-cast v1, Ljava/lang/String;

    .line 536
    .line 537
    const/4 v2, 0x0

    .line 538
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 539
    .line 540
    .line 541
    move-result v5

    .line 542
    const/4 v6, 0x0

    .line 543
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->regionMatchesImpl(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-eqz v1, :cond_1b

    .line 548
    .line 549
    goto :goto_a

    .line 550
    :cond_1c
    move-object v11, v7

    .line 551
    :goto_a
    check-cast v11, Ljava/lang/String;

    .line 552
    .line 553
    if-eqz v11, :cond_1d

    .line 554
    .line 555
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    new-instance v2, Lkotlin/Pair;

    .line 560
    .line 561
    invoke-direct {v2, v0, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    goto :goto_b

    .line 565
    :cond_1d
    if-eq v4, v10, :cond_d

    .line 566
    .line 567
    add-int/2addr v4, v8

    .line 568
    goto :goto_9

    .line 569
    :goto_b
    if-eqz v2, :cond_1e

    .line 570
    .line 571
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    check-cast v1, Ljava/lang/String;

    .line 580
    .line 581
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    new-instance v7, Lkotlin/Pair;

    .line 590
    .line 591
    invoke-direct {v7, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 592
    .line 593
    .line 594
    :cond_1e
    :goto_c
    return-object v7

    .line 595
    :pswitch_6
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v0, Landroidx/navigation3/scene/Scene;

    .line 598
    .line 599
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 600
    .line 601
    check-cast v2, Ljava/lang/Integer;

    .line 602
    .line 603
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    and-int/lit8 v3, v2, 0x3

    .line 608
    .line 609
    if-eq v3, v8, :cond_1f

    .line 610
    .line 611
    move v3, v10

    .line 612
    goto :goto_d

    .line 613
    :cond_1f
    move v3, v9

    .line 614
    :goto_d
    and-int/2addr v2, v10

    .line 615
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 616
    .line 617
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    if-eqz v2, :cond_20

    .line 622
    .line 623
    invoke-interface {v0}, Landroidx/navigation3/scene/Scene;->getContent()Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 628
    .line 629
    .line 630
    move-result-object v2

    .line 631
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    goto :goto_e

    .line 635
    :cond_20
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 636
    .line 637
    .line 638
    :goto_e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 639
    .line 640
    return-object v0

    .line 641
    :pswitch_7
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast v0, Landroidx/navigation3/scene/SinglePaneScene;

    .line 644
    .line 645
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 646
    .line 647
    check-cast v2, Ljava/lang/Integer;

    .line 648
    .line 649
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 650
    .line 651
    .line 652
    move-result v2

    .line 653
    and-int/lit8 v3, v2, 0x3

    .line 654
    .line 655
    if-eq v3, v8, :cond_21

    .line 656
    .line 657
    move v3, v10

    .line 658
    goto :goto_f

    .line 659
    :cond_21
    move v3, v9

    .line 660
    :goto_f
    and-int/2addr v2, v10

    .line 661
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 662
    .line 663
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    if-eqz v2, :cond_22

    .line 668
    .line 669
    iget-object v0, v0, Landroidx/navigation3/scene/SinglePaneScene;->entry:Landroidx/navigation3/runtime/NavEntry;

    .line 670
    .line 671
    invoke-virtual {v0, v1, v9}, Landroidx/navigation3/runtime/NavEntry;->Content(Landroidx/compose/runtime/Composer;I)V

    .line 672
    .line 673
    .line 674
    goto :goto_10

    .line 675
    :cond_22
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 676
    .line 677
    .line 678
    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 679
    .line 680
    return-object v0

    .line 681
    :pswitch_8
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 682
    .line 683
    check-cast v0, Landroidx/preference/PreferenceManager;

    .line 684
    .line 685
    check-cast v1, Ljava/util/Set;

    .line 686
    .line 687
    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 688
    .line 689
    iget-object v2, v0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 692
    .line 693
    :goto_11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    if-nez v3, :cond_23

    .line 698
    .line 699
    move-object v5, v1

    .line 700
    check-cast v5, Ljava/util/Collection;

    .line 701
    .line 702
    goto :goto_12

    .line 703
    :cond_23
    instance-of v5, v3, Ljava/util/Set;

    .line 704
    .line 705
    if-eqz v5, :cond_24

    .line 706
    .line 707
    new-array v5, v8, [Ljava/util/Set;

    .line 708
    .line 709
    aput-object v3, v5, v9

    .line 710
    .line 711
    aput-object v1, v5, v10

    .line 712
    .line 713
    invoke-static {v5}, Lorg/jsoup/Jsoup;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 714
    .line 715
    .line 716
    move-result-object v5

    .line 717
    goto :goto_12

    .line 718
    :cond_24
    instance-of v5, v3, Ljava/util/List;

    .line 719
    .line 720
    if-eqz v5, :cond_28

    .line 721
    .line 722
    move-object v5, v3

    .line 723
    check-cast v5, Ljava/util/Collection;

    .line 724
    .line 725
    invoke-static {v1}, Lorg/jsoup/Jsoup;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 726
    .line 727
    .line 728
    move-result-object v6

    .line 729
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 730
    .line 731
    .line 732
    move-result-object v5

    .line 733
    :cond_25
    :goto_12
    invoke-virtual {v2, v3, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v6

    .line 737
    if-eqz v6, :cond_27

    .line 738
    .line 739
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->drainChanges()Z

    .line 740
    .line 741
    .line 742
    move-result v1

    .line 743
    if-eqz v1, :cond_26

    .line 744
    .line 745
    iget-object v1, v0, Landroidx/preference/PreferenceManager;->mContext:Ljava/lang/Object;

    .line 746
    .line 747
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 748
    .line 749
    new-instance v2, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    .line 750
    .line 751
    invoke-direct {v2, v0, v4}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 752
    .line 753
    .line 754
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    :cond_26
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 758
    .line 759
    goto :goto_13

    .line 760
    :cond_27
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object v6

    .line 764
    if-eq v6, v3, :cond_25

    .line 765
    .line 766
    goto :goto_11

    .line 767
    :cond_28
    const-string v0, "Unexpected notification"

    .line 768
    .line 769
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 770
    .line 771
    .line 772
    invoke-static {}, Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticBUOutline0;->m()V

    .line 773
    .line 774
    .line 775
    :goto_13
    return-object v7

    .line 776
    :pswitch_9
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v0, Landroidx/cardview/widget/CardView$1;

    .line 779
    .line 780
    check-cast v1, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 781
    .line 782
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 783
    .line 784
    instance-of v3, v2, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 785
    .line 786
    if-eqz v3, :cond_29

    .line 787
    .line 788
    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotMutableState;

    .line 789
    .line 790
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v3

    .line 794
    iget-object v0, v0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 795
    .line 796
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 797
    .line 798
    invoke-interface {v0, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v0

    .line 802
    if-eqz v0, :cond_2a

    .line 803
    .line 804
    invoke-interface {v2}, Landroidx/compose/runtime/snapshots/SnapshotMutableState;->getPolicy()Landroidx/compose/runtime/NeverEqualPolicy;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 809
    .line 810
    .line 811
    new-instance v7, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 812
    .line 813
    invoke-direct {v7, v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 814
    .line 815
    .line 816
    goto :goto_14

    .line 817
    :cond_29
    const-string v0, "If you use a custom MutableState implementation you have to write a custom Saver and pass it as a saver param to rememberSaveable()"

    .line 818
    .line 819
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1(Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    :cond_2a
    :goto_14
    return-object v7

    .line 823
    :pswitch_a
    invoke-direct/range {p0 .. p2}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->invoke$androidx$compose$runtime$SingleSubscriptionSnapshotFlowManager$$ExternalSyntheticLambda1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    return-object v0

    .line 828
    :pswitch_b
    invoke-direct/range {p0 .. p2}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->invoke$androidx$compose$runtime$Recomposer$recompositionRunner$2$$ExternalSyntheticLambda0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    return-object v0

    .line 833
    :pswitch_c
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 834
    .line 835
    check-cast v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 836
    .line 837
    check-cast v1, Ljava/util/Set;

    .line 838
    .line 839
    check-cast v2, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 840
    .line 841
    iget-object v2, v0, Lkotlin/properties/ObservableProperty;->value:Ljava/lang/Object;

    .line 842
    .line 843
    monitor-enter v2

    .line 844
    :try_start_0
    iget-object v3, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->subscriptions:Landroidx/collection/MutableScatterMap;

    .line 845
    .line 846
    new-instance v6, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;

    .line 847
    .line 848
    const/16 v7, 0x18

    .line 849
    .line 850
    invoke-direct {v6, v1, v0, v7}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 851
    .line 852
    .line 853
    invoke-static {v10, v6}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 854
    .line 855
    .line 856
    iget-object v1, v3, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 857
    .line 858
    iget-object v3, v3, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 859
    .line 860
    array-length v7, v3

    .line 861
    sub-int/2addr v7, v8

    .line 862
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    move/from16 v16, v5

    .line 868
    .line 869
    if-ltz v7, :cond_2e

    .line 870
    .line 871
    move v5, v9

    .line 872
    const-wide/16 p0, 0x80

    .line 873
    .line 874
    :goto_15
    aget-wide v10, v3, v5

    .line 875
    .line 876
    const-wide/16 v17, 0xff

    .line 877
    .line 878
    not-long v12, v10

    .line 879
    shl-long v12, v12, v16

    .line 880
    .line 881
    and-long/2addr v12, v10

    .line 882
    and-long/2addr v12, v14

    .line 883
    cmp-long v12, v12, v14

    .line 884
    .line 885
    if-eqz v12, :cond_2d

    .line 886
    .line 887
    sub-int v12, v5, v7

    .line 888
    .line 889
    not-int v12, v12

    .line 890
    ushr-int/lit8 v12, v12, 0x1f

    .line 891
    .line 892
    rsub-int/lit8 v12, v12, 0x8

    .line 893
    .line 894
    move v13, v9

    .line 895
    :goto_16
    if-ge v13, v12, :cond_2c

    .line 896
    .line 897
    and-long v19, v10, v17

    .line 898
    .line 899
    cmp-long v19, v19, p0

    .line 900
    .line 901
    if-gez v19, :cond_2b

    .line 902
    .line 903
    shl-int/lit8 v19, v5, 0x3

    .line 904
    .line 905
    add-int v19, v19, v13

    .line 906
    .line 907
    move-wide/from16 v20, v14

    .line 908
    .line 909
    aget-object v14, v1, v19

    .line 910
    .line 911
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .line 913
    .line 914
    goto :goto_17

    .line 915
    :cond_2b
    move-wide/from16 v20, v14

    .line 916
    .line 917
    :goto_17
    shr-long/2addr v10, v4

    .line 918
    add-int/lit8 v13, v13, 0x1

    .line 919
    .line 920
    move-wide/from16 v14, v20

    .line 921
    .line 922
    goto :goto_16

    .line 923
    :cond_2c
    move-wide/from16 v20, v14

    .line 924
    .line 925
    if-ne v12, v4, :cond_2f

    .line 926
    .line 927
    goto :goto_18

    .line 928
    :cond_2d
    move-wide/from16 v20, v14

    .line 929
    .line 930
    :goto_18
    if-eq v5, v7, :cond_2f

    .line 931
    .line 932
    add-int/lit8 v5, v5, 0x1

    .line 933
    .line 934
    move-wide/from16 v14, v20

    .line 935
    .line 936
    goto :goto_15

    .line 937
    :cond_2e
    move-wide/from16 v20, v14

    .line 938
    .line 939
    const-wide/16 p0, 0x80

    .line 940
    .line 941
    const-wide/16 v17, 0xff

    .line 942
    .line 943
    :cond_2f
    iget-object v1, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->toNotify:Landroidx/collection/MutableScatterSet;

    .line 944
    .line 945
    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 946
    .line 947
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 948
    .line 949
    array-length v5, v1

    .line 950
    sub-int/2addr v5, v8

    .line 951
    if-ltz v5, :cond_33

    .line 952
    .line 953
    move v6, v9

    .line 954
    :goto_19
    aget-wide v7, v1, v6

    .line 955
    .line 956
    not-long v10, v7

    .line 957
    shl-long v10, v10, v16

    .line 958
    .line 959
    and-long/2addr v10, v7

    .line 960
    and-long v10, v10, v20

    .line 961
    .line 962
    cmp-long v10, v10, v20

    .line 963
    .line 964
    if-eqz v10, :cond_32

    .line 965
    .line 966
    sub-int v10, v6, v5

    .line 967
    .line 968
    not-int v10, v10

    .line 969
    ushr-int/lit8 v10, v10, 0x1f

    .line 970
    .line 971
    rsub-int/lit8 v10, v10, 0x8

    .line 972
    .line 973
    move v11, v9

    .line 974
    :goto_1a
    if-ge v11, v10, :cond_31

    .line 975
    .line 976
    and-long v12, v7, v17

    .line 977
    .line 978
    cmp-long v12, v12, p0

    .line 979
    .line 980
    if-gez v12, :cond_30

    .line 981
    .line 982
    shl-int/lit8 v12, v6, 0x3

    .line 983
    .line 984
    add-int/2addr v12, v11

    .line 985
    aget-object v12, v3, v12

    .line 986
    .line 987
    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    .line 988
    .line 989
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 990
    .line 991
    invoke-interface {v12, v13}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    goto :goto_1b

    .line 995
    :catchall_0
    move-exception v0

    .line 996
    goto :goto_1c

    .line 997
    :cond_30
    :goto_1b
    shr-long/2addr v7, v4

    .line 998
    add-int/lit8 v11, v11, 0x1

    .line 999
    .line 1000
    goto :goto_1a

    .line 1001
    :cond_31
    if-ne v10, v4, :cond_33

    .line 1002
    .line 1003
    :cond_32
    if-eq v6, v5, :cond_33

    .line 1004
    .line 1005
    add-int/lit8 v6, v6, 0x1

    .line 1006
    .line 1007
    goto :goto_19

    .line 1008
    :cond_33
    iget-object v0, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->toNotify:Landroidx/collection/MutableScatterSet;

    .line 1009
    .line 1010
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    .line 1012
    .line 1013
    monitor-exit v2

    .line 1014
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1015
    .line 1016
    return-object v0

    .line 1017
    :goto_1c
    monitor-exit v2

    .line 1018
    throw v0

    .line 1019
    :pswitch_d
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1020
    .line 1021
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1022
    .line 1023
    check-cast v2, Ljava/lang/Integer;

    .line 1024
    .line 1025
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1026
    .line 1027
    .line 1028
    move-result v2

    .line 1029
    and-int/lit8 v3, v2, 0x3

    .line 1030
    .line 1031
    if-eq v3, v8, :cond_34

    .line 1032
    .line 1033
    move v3, v10

    .line 1034
    goto :goto_1d

    .line 1035
    :cond_34
    move v3, v9

    .line 1036
    :goto_1d
    and-int/2addr v2, v10

    .line 1037
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1038
    .line 1039
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1040
    .line 1041
    .line 1042
    move-result v2

    .line 1043
    if-eqz v2, :cond_35

    .line 1044
    .line 1045
    sget-object v2, Landroidx/navigation3/scene/SceneStateKt;->lambda$-51699941:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1046
    .line 1047
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    invoke-virtual {v2, v0, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    goto :goto_1e

    .line 1055
    :cond_35
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1056
    .line 1057
    .line 1058
    :goto_1e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1059
    .line 1060
    return-object v0

    .line 1061
    :pswitch_e
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1062
    .line 1063
    check-cast v0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;

    .line 1064
    .line 1065
    check-cast v1, Ljava/lang/Integer;

    .line 1066
    .line 1067
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1068
    .line 1069
    .line 1070
    instance-of v1, v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1071
    .line 1072
    if-eqz v1, :cond_37

    .line 1073
    .line 1074
    move-object v1, v2

    .line 1075
    check-cast v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1076
    .line 1077
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportCopyButton:Ljava/lang/Object;

    .line 1078
    .line 1079
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 1080
    .line 1081
    if-nez v3, :cond_36

    .line 1082
    .line 1083
    sget-object v3, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 1084
    .line 1085
    new-instance v3, Landroidx/collection/MutableScatterSet;

    .line 1086
    .line 1087
    invoke-direct {v3}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 1088
    .line 1089
    .line 1090
    iput-object v3, v0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorReportCopyButton:Ljava/lang/Object;

    .line 1091
    .line 1092
    :cond_36
    invoke-virtual {v3, v1}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 1093
    .line 1094
    .line 1095
    iget-object v3, v0, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->errorSorryView:Ljava/lang/Object;

    .line 1096
    .line 1097
    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 1098
    .line 1099
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1100
    .line 1101
    .line 1102
    :cond_37
    instance-of v1, v2, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1103
    .line 1104
    if-eqz v1, :cond_38

    .line 1105
    .line 1106
    move-object v1, v2

    .line 1107
    check-cast v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1108
    .line 1109
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/databinding/ActivityErrorBinding;->forgetting(Landroidx/compose/runtime/GapRememberObserverHolder;)V

    .line 1110
    .line 1111
    .line 1112
    :cond_38
    instance-of v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1113
    .line 1114
    if-eqz v0, :cond_39

    .line 1115
    .line 1116
    move-object v0, v2

    .line 1117
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1118
    .line 1119
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 1120
    .line 1121
    .line 1122
    :cond_39
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1123
    .line 1124
    return-object v0

    .line 1125
    :pswitch_f
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1126
    .line 1127
    check-cast v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;

    .line 1128
    .line 1129
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1130
    .line 1131
    check-cast v2, Ljava/lang/Integer;

    .line 1132
    .line 1133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    and-int/lit8 v3, v2, 0x3

    .line 1138
    .line 1139
    if-eq v3, v8, :cond_3a

    .line 1140
    .line 1141
    move v9, v10

    .line 1142
    :cond_3a
    and-int/2addr v2, v10

    .line 1143
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1144
    .line 1145
    invoke-virtual {v1, v2, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v2

    .line 1149
    if-eqz v2, :cond_3c

    .line 1150
    .line 1151
    sget-object v2, Landroidx/compose/foundation/layout/SpacerKt;->End:Landroidx/compose/foundation/layout/FlowRowOverflow;

    .line 1152
    .line 1153
    iget-object v0, v0, Landroidx/compose/material3/SingleRowTopAppBarOverrideScope;->actions:Lkotlin/jvm/functions/Function3;

    .line 1154
    .line 1155
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 1156
    .line 1157
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/runtime/GapComposer;)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v2

    .line 1161
    iget-wide v4, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1162
    .line 1163
    ushr-long v6, v4, v6

    .line 1164
    .line 1165
    xor-long/2addr v4, v6

    .line 1166
    long-to-int v4, v4

    .line 1167
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v5

    .line 1171
    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v3

    .line 1175
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1176
    .line 1177
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1178
    .line 1179
    .line 1180
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1181
    .line 1182
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1183
    .line 1184
    .line 1185
    iget-boolean v7, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1186
    .line 1187
    if-eqz v7, :cond_3b

    .line 1188
    .line 1189
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1190
    .line 1191
    .line 1192
    goto :goto_1f

    .line 1193
    :cond_3b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1194
    .line 1195
    .line 1196
    :goto_1f
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1197
    .line 1198
    invoke-static {v1, v2, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1199
    .line 1200
    .line 1201
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1202
    .line 1203
    invoke-static {v1, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1204
    .line 1205
    .line 1206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v2

    .line 1210
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1211
    .line 1212
    invoke-static {v1, v2, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1213
    .line 1214
    .line 1215
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1216
    .line 1217
    invoke-static {v1, v2}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1218
    .line 1219
    .line 1220
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1221
    .line 1222
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1223
    .line 1224
    .line 1225
    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 1226
    .line 1227
    const/4 v3, 0x6

    .line 1228
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    invoke-interface {v0, v2, v1, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1236
    .line 1237
    .line 1238
    goto :goto_20

    .line 1239
    :cond_3c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1240
    .line 1241
    .line 1242
    :goto_20
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1243
    .line 1244
    return-object v0

    .line 1245
    :pswitch_10
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1246
    .line 1247
    check-cast v0, Lorg/acra/util/ProcessFinisher;

    .line 1248
    .line 1249
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1250
    .line 1251
    check-cast v2, Ljava/lang/Integer;

    .line 1252
    .line 1253
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1254
    .line 1255
    .line 1256
    move-result v2

    .line 1257
    and-int/lit8 v3, v2, 0x3

    .line 1258
    .line 1259
    if-eq v3, v8, :cond_3d

    .line 1260
    .line 1261
    move v3, v10

    .line 1262
    goto :goto_21

    .line 1263
    :cond_3d
    move v3, v9

    .line 1264
    :goto_21
    and-int/2addr v2, v10

    .line 1265
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1266
    .line 1267
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v2

    .line 1271
    if-eqz v2, :cond_41

    .line 1272
    .line 1273
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1274
    .line 1275
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1276
    .line 1277
    .line 1278
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalResources:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1279
    .line 1280
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v2

    .line 1284
    check-cast v2, Landroid/content/res/Resources;

    .line 1285
    .line 1286
    const v3, 0x7f13028b

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v2

    .line 1293
    sget-object v3, Landroidx/compose/material3/AlertDialogKt;->DialogPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 1294
    .line 1295
    invoke-static {}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default()Landroidx/compose/ui/Modifier;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v3

    .line 1299
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 1300
    .line 1301
    .line 1302
    move-result v4

    .line 1303
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v5

    .line 1307
    if-nez v4, :cond_3e

    .line 1308
    .line 1309
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 1310
    .line 1311
    if-ne v5, v4, :cond_3f

    .line 1312
    .line 1313
    :cond_3e
    new-instance v5, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    .line 1314
    .line 1315
    invoke-direct {v5, v2, v10}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1319
    .line 1320
    .line 1321
    :cond_3f
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1322
    .line 1323
    new-instance v2, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    .line 1324
    .line 1325
    invoke-direct {v2, v5, v9}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    .line 1326
    .line 1327
    .line 1328
    check-cast v3, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 1329
    .line 1330
    invoke-static {v3, v2}, Landroidx/compose/ui/Modifier$-CC;->$default$then(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v2

    .line 1334
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    .line 1335
    .line 1336
    invoke-static {v3, v10}, Landroidx/compose/foundation/layout/BoxKt;->maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v3

    .line 1340
    iget-wide v4, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 1341
    .line 1342
    ushr-long v6, v4, v6

    .line 1343
    .line 1344
    xor-long/2addr v4, v6

    .line 1345
    long-to-int v4, v4

    .line 1346
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v5

    .line 1350
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v2

    .line 1354
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1355
    .line 1356
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1357
    .line 1358
    .line 1359
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 1360
    .line 1361
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 1362
    .line 1363
    .line 1364
    iget-boolean v7, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1365
    .line 1366
    if-eqz v7, :cond_40

    .line 1367
    .line 1368
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 1369
    .line 1370
    .line 1371
    goto :goto_22

    .line 1372
    :cond_40
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 1373
    .line 1374
    .line 1375
    :goto_22
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1376
    .line 1377
    invoke-static {v1, v3, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1378
    .line 1379
    .line 1380
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1381
    .line 1382
    invoke-static {v1, v5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1383
    .line 1384
    .line 1385
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1386
    .line 1387
    .line 1388
    move-result-object v3

    .line 1389
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1390
    .line 1391
    invoke-static {v1, v3, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1392
    .line 1393
    .line 1394
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 1395
    .line 1396
    invoke-static {v1, v3}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    .line 1397
    .line 1398
    .line 1399
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 1400
    .line 1401
    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1402
    .line 1403
    .line 1404
    iget-object v0, v0, Lorg/acra/util/ProcessFinisher;->lastActivityManager:Ljava/lang/Object;

    .line 1405
    .line 1406
    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1407
    .line 1408
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1409
    .line 1410
    .line 1411
    move-result-object v2

    .line 1412
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1416
    .line 1417
    .line 1418
    goto :goto_23

    .line 1419
    :cond_41
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1420
    .line 1421
    .line 1422
    :goto_23
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1423
    .line 1424
    return-object v0

    .line 1425
    :pswitch_11
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1426
    .line 1427
    check-cast v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 1428
    .line 1429
    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    .line 1430
    .line 1431
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1432
    .line 1433
    iget-wide v3, v1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 1434
    .line 1435
    shr-long/2addr v3, v6

    .line 1436
    long-to-int v1, v3

    .line 1437
    invoke-virtual {v0, v9, v1, v2}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 1438
    .line 1439
    .line 1440
    move-result v0

    .line 1441
    int-to-long v0, v0

    .line 1442
    shl-long/2addr v0, v6

    .line 1443
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 1444
    .line 1445
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 1446
    .line 1447
    .line 1448
    return-object v2

    .line 1449
    :pswitch_12
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1450
    .line 1451
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1452
    .line 1453
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1454
    .line 1455
    check-cast v2, Ljava/lang/Integer;

    .line 1456
    .line 1457
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1458
    .line 1459
    .line 1460
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1461
    .line 1462
    .line 1463
    move-result v2

    .line 1464
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 1465
    .line 1466
    .line 1467
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1468
    .line 1469
    return-object v0

    .line 1470
    :pswitch_13
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1471
    .line 1472
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 1473
    .line 1474
    check-cast v1, Ljava/lang/Float;

    .line 1475
    .line 1476
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 1477
    .line 1478
    .line 1479
    move-result v1

    .line 1480
    check-cast v2, Ljava/lang/Float;

    .line 1481
    .line 1482
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1483
    .line 1484
    .line 1485
    move-result v2

    .line 1486
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v3

    .line 1490
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$1$1;

    .line 1491
    .line 1492
    invoke-direct {v4, v0, v1, v2, v7}, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;FFLkotlin/coroutines/Continuation;)V

    .line 1493
    .line 1494
    .line 1495
    const/4 v0, 0x3

    .line 1496
    invoke-static {v3, v7, v7, v4, v0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1497
    .line 1498
    .line 1499
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1500
    .line 1501
    return-object v0

    .line 1502
    :pswitch_14
    iget-object v0, v0, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1503
    .line 1504
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1505
    .line 1506
    check-cast v2, Lkotlin/Unit;

    .line 1507
    .line 1508
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    .line 1510
    .line 1511
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1512
    .line 1513
    return-object v0

    .line 1514
    nop

    .line 1515
    :pswitch_data_0
    .packed-switch 0x0
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
