.class public final synthetic Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p2, p0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p3, p0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    iput p1, p0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method private final invoke$androidx$compose$runtime$Recomposer$recompositionRunner$2$$ExternalSyntheticLambda0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/MutableScatterSet;

    .line 44
    .line 45
    iget-object v4, v1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/collection/MutableScatterSet;->metadata:[J

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
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    iget-object v2, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

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
    iget-object v4, v3, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v3, v3, Landroidx/collection/MutableScatterSet;->metadata:[J

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
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    const-wide v3, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/16 v5, 0x20

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, 0x2

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x1

    .line 19
    packed-switch v2, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lorg/wikipedia/donate/donationreminder/OptionItem;

    .line 25
    .line 26
    move-object/from16 v2, p1

    .line 27
    .line 28
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    check-cast v1, Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    and-int/lit8 v3, v1, 0x3

    .line 37
    .line 38
    if-eq v3, v7, :cond_0

    .line 39
    .line 40
    move v9, v10

    .line 41
    :cond_0
    and-int/2addr v1, v10

    .line 42
    invoke-virtual {v2, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v11, v0, Lorg/wikipedia/donate/donationreminder/OptionItem;->displayText:Ljava/lang/String;

    .line 49
    .line 50
    sget-object v0, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Landroidx/compose/material3/Typography;

    .line 57
    .line 58
    iget-object v0, v0, Landroidx/compose/material3/Typography;->bodyLarge:Landroidx/compose/ui/text/TextStyle;

    .line 59
    .line 60
    sget-object v1, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 67
    .line 68
    iget-wide v13, v1, Lorg/wikipedia/compose/theme/WikipediaColor;->primaryColor:J

    .line 69
    .line 70
    const/16 v33, 0x0

    .line 71
    .line 72
    const v34, 0x1fffa

    .line 73
    .line 74
    .line 75
    const/4 v12, 0x0

    .line 76
    const/4 v15, 0x0

    .line 77
    const-wide/16 v16, 0x0

    .line 78
    .line 79
    const/16 v18, 0x0

    .line 80
    .line 81
    const/16 v19, 0x0

    .line 82
    .line 83
    const-wide/16 v20, 0x0

    .line 84
    .line 85
    const/16 v22, 0x0

    .line 86
    .line 87
    const-wide/16 v23, 0x0

    .line 88
    .line 89
    const/16 v25, 0x0

    .line 90
    .line 91
    const/16 v26, 0x0

    .line 92
    .line 93
    const/16 v27, 0x0

    .line 94
    .line 95
    const/16 v28, 0x0

    .line 96
    .line 97
    const/16 v29, 0x0

    .line 98
    .line 99
    const/16 v32, 0x0

    .line 100
    .line 101
    move-object/from16 v30, v0

    .line 102
    .line 103
    move-object/from16 v31, v2

    .line 104
    .line 105
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    move-object/from16 v31, v2

    .line 110
    .line 111
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 112
    .line 113
    .line 114
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 115
    .line 116
    return-object v0

    .line 117
    :pswitch_0
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Lorg/wikipedia/util/UiState;

    .line 120
    .line 121
    move-object/from16 v2, p1

    .line 122
    .line 123
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 124
    .line 125
    check-cast v1, Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    and-int/lit8 v3, v1, 0x3

    .line 132
    .line 133
    if-eq v3, v7, :cond_2

    .line 134
    .line 135
    move v3, v10

    .line 136
    goto :goto_1

    .line 137
    :cond_2
    move v3, v9

    .line 138
    :goto_1
    and-int/2addr v1, v10

    .line 139
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    sget-object v1, Lorg/wikipedia/util/UiState$Loading;->INSTANCE:Lorg/wikipedia/util/UiState$Loading;

    .line 146
    .line 147
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_3

    .line 152
    .line 153
    const v0, 0x70b5b45a

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 157
    .line 158
    .line 159
    invoke-static {v6, v2, v9, v10}, Lorg/wikipedia/activitytab/ImpactModuleKt;->ActivityTabShimmerView-kHDZbjc(FLandroidx/compose/runtime/GapComposer;II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_5

    .line 166
    .line 167
    :cond_3
    instance-of v1, v0, Lorg/wikipedia/util/UiState$Success;

    .line 168
    .line 169
    if-eqz v1, :cond_6

    .line 170
    .line 171
    const v1, 0x70b76353

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 175
    .line 176
    .line 177
    check-cast v0, Lorg/wikipedia/util/UiState$Success;

    .line 178
    .line 179
    iget-object v0, v0, Lorg/wikipedia/util/UiState$Success;->data:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Ljava/lang/String;

    .line 182
    .line 183
    if-nez v0, :cond_4

    .line 184
    .line 185
    const v0, -0x2de98df2

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 189
    .line 190
    .line 191
    const v0, 0x7f120043

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v2}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    :goto_2
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_4
    const v1, -0x2de98fe2

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :goto_3
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    .line 210
    .line 211
    const/high16 v3, 0x41800000    # 16.0f

    .line 212
    .line 213
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/OffsetKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    sget-object v6, Landroidx/compose/foundation/layout/OffsetKt;->Top:Landroidx/compose/foundation/layout/Arrangement$End$1;

    .line 218
    .line 219
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->Start:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 220
    .line 221
    invoke-static {v6, v7, v2, v9}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    iget-wide v7, v2, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 226
    .line 227
    ushr-long v11, v7, v5

    .line 228
    .line 229
    xor-long/2addr v7, v11

    .line 230
    long-to-int v5, v7

    .line 231
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-static {v2, v4}, Landroidx/compose/ui/AbsoluteAlignment;->materializeModifier(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 240
    .line 241
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    .line 245
    .line 246
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->startReusableNode()V

    .line 247
    .line 248
    .line 249
    iget-boolean v11, v2, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 250
    .line 251
    if-eqz v11, :cond_5

    .line 252
    .line 253
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 254
    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->useNode()V

    .line 258
    .line 259
    .line 260
    :goto_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 261
    .line 262
    invoke-static {v2, v6, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 263
    .line 264
    .line 265
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 266
    .line 267
    invoke-static {v2, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 268
    .line 269
    .line 270
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 275
    .line 276
    invoke-static {v2, v5, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->ApplyOnDeactivatedNodeAssertion:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    .line 280
    .line 281
    invoke-static {v2, v5}, Landroidx/compose/runtime/Updater;->reconcile-impl(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    .line 282
    .line 283
    .line 284
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    .line 285
    .line 286
    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/GapComposer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 287
    .line 288
    .line 289
    const v4, 0x7f0802cc

    .line 290
    .line 291
    .line 292
    invoke-static {v4, v9, v2}, Lkotlin/UnsignedKt;->painterResource(IILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 293
    .line 294
    .line 295
    move-result-object v12

    .line 296
    const v4, 0x7f120042

    .line 297
    .line 298
    .line 299
    invoke-static {v4, v2}, Lcoil3/util/UtilsKt;->stringResource(ILandroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    const v18, 0x36040

    .line 304
    .line 305
    .line 306
    const/16 v19, 0x9

    .line 307
    .line 308
    const/4 v11, 0x0

    .line 309
    const/4 v14, 0x0

    .line 310
    const/4 v15, 0x1

    .line 311
    const/16 v16, 0x1

    .line 312
    .line 313
    move-object/from16 v17, v2

    .line 314
    .line 315
    invoke-static/range {v11 .. v19}, Lorg/wikipedia/activitytab/ImpactModuleKt;->CommonCardHeader(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/runtime/GapComposer;II)V

    .line 316
    .line 317
    .line 318
    const/4 v15, 0x0

    .line 319
    const/16 v16, 0xd

    .line 320
    .line 321
    const/4 v12, 0x0

    .line 322
    const/4 v14, 0x0

    .line 323
    move-object v11, v1

    .line 324
    move v13, v3

    .line 325
    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/OffsetKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 326
    .line 327
    .line 328
    move-result-object v12

    .line 329
    sget-object v1, Landroidx/compose/material3/TypographyKt;->LocalTypography:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 330
    .line 331
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    check-cast v1, Landroidx/compose/material3/Typography;

    .line 336
    .line 337
    iget-object v1, v1, Landroidx/compose/material3/Typography;->titleLarge:Landroidx/compose/ui/text/TextStyle;

    .line 338
    .line 339
    sget-object v3, Lorg/wikipedia/compose/theme/WikipediaColorKt;->LocalWikipediaColor:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 340
    .line 341
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    check-cast v3, Lorg/wikipedia/compose/theme/WikipediaColor;

    .line 346
    .line 347
    iget-wide v13, v3, Lorg/wikipedia/compose/theme/WikipediaColor;->progressiveColor:J

    .line 348
    .line 349
    sget-object v18, Landroidx/compose/ui/text/font/FontWeight;->Medium:Landroidx/compose/ui/text/font/FontWeight;

    .line 350
    .line 351
    const/16 v33, 0x0

    .line 352
    .line 353
    const v34, 0x1ffb8

    .line 354
    .line 355
    .line 356
    const/4 v15, 0x0

    .line 357
    const-wide/16 v16, 0x0

    .line 358
    .line 359
    const/16 v19, 0x0

    .line 360
    .line 361
    const-wide/16 v20, 0x0

    .line 362
    .line 363
    const/16 v22, 0x0

    .line 364
    .line 365
    const-wide/16 v23, 0x0

    .line 366
    .line 367
    const/16 v25, 0x0

    .line 368
    .line 369
    const/16 v26, 0x0

    .line 370
    .line 371
    const/16 v27, 0x0

    .line 372
    .line 373
    const/16 v28, 0x0

    .line 374
    .line 375
    const/16 v29, 0x0

    .line 376
    .line 377
    const v32, 0x180030

    .line 378
    .line 379
    .line 380
    move-object v11, v0

    .line 381
    move-object/from16 v30, v1

    .line 382
    .line 383
    move-object/from16 v31, v2

    .line 384
    .line 385
    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/TextKt;->Text-Nvy7gAk(Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/text/AutoSizeStepBased;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/GapComposer;III)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 392
    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_6
    const v0, 0x70c3ecea

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 402
    .line 403
    .line 404
    goto :goto_5

    .line 405
    :cond_7
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 406
    .line 407
    .line 408
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 409
    .line 410
    return-object v0

    .line 411
    :pswitch_1
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 412
    .line 413
    check-cast v0, Lkotlinx/coroutines/flow/internal/SafeCollector;

    .line 414
    .line 415
    move-object/from16 v2, p1

    .line 416
    .line 417
    check-cast v2, Ljava/lang/Integer;

    .line 418
    .line 419
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    check-cast v1, Lkotlin/coroutines/CoroutineContext$Element;

    .line 424
    .line 425
    invoke-interface {v1}, Lkotlin/coroutines/CoroutineContext$Element;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/SafeCollector;->collectContext:Lkotlin/coroutines/CoroutineContext;

    .line 430
    .line 431
    invoke-interface {v0, v3}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    sget-object v4, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 436
    .line 437
    if-eq v3, v4, :cond_9

    .line 438
    .line 439
    if-eq v1, v0, :cond_8

    .line 440
    .line 441
    const/high16 v2, -0x80000000

    .line 442
    .line 443
    goto :goto_9

    .line 444
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 445
    .line 446
    goto :goto_9

    .line 447
    :cond_9
    move-object v3, v0

    .line 448
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 449
    .line 450
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 451
    .line 452
    :goto_6
    if-nez v1, :cond_a

    .line 453
    .line 454
    goto :goto_8

    .line 455
    :cond_a
    if-ne v1, v3, :cond_b

    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_b
    instance-of v0, v1, Lkotlinx/coroutines/internal/ScopeCoroutine;

    .line 459
    .line 460
    if-nez v0, :cond_d

    .line 461
    .line 462
    :goto_7
    move-object v8, v1

    .line 463
    :goto_8
    if-ne v8, v3, :cond_c

    .line 464
    .line 465
    if-nez v3, :cond_8

    .line 466
    .line 467
    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    return-object v0

    .line 472
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 473
    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    const-string v2, "Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of "

    .line 477
    .line 478
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    const-string v2, ", expected child of "

    .line 485
    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string v2, ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use \'channelFlow\' builder instead of \'flow\'"

    .line 493
    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw v0

    .line 509
    :cond_d
    check-cast v1, Lkotlinx/coroutines/internal/ScopeCoroutine;

    .line 510
    .line 511
    sget-object v0, L_COROUTINE/ArtificialStackFramesUnsafe;->unsafe:Lsun/misc/Unsafe;

    .line 512
    .line 513
    sget-wide v4, Lkotlinx/coroutines/JobSupport;->_parentHandle$volatile$FU$offset:J

    .line 514
    .line 515
    invoke-virtual {v0, v1, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    .line 520
    .line 521
    if-eqz v0, :cond_e

    .line 522
    .line 523
    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->getParent()Lkotlinx/coroutines/Job;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    move-object v1, v0

    .line 528
    goto :goto_6

    .line 529
    :cond_e
    move-object v1, v8

    .line 530
    goto :goto_6

    .line 531
    :pswitch_2
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v0, [C

    .line 534
    .line 535
    move-object/from16 v2, p1

    .line 536
    .line 537
    check-cast v2, Ljava/lang/CharSequence;

    .line 538
    .line 539
    check-cast v1, Ljava/lang/Integer;

    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 542
    .line 543
    .line 544
    move-result v1

    .line 545
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    .line 547
    .line 548
    invoke-static {v2, v0, v1, v9}, Lkotlin/text/StringsKt;->indexOfAny(Ljava/lang/CharSequence;[CIZ)I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-gez v0, :cond_f

    .line 553
    .line 554
    goto :goto_a

    .line 555
    :cond_f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    new-instance v8, Lkotlin/Pair;

    .line 564
    .line 565
    invoke-direct {v8, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    :goto_a
    return-object v8

    .line 569
    :pswitch_3
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v0, Landroidx/navigation/compose/DialogNavigator;

    .line 572
    .line 573
    move-object/from16 v2, p1

    .line 574
    .line 575
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 576
    .line 577
    check-cast v1, Ljava/lang/Integer;

    .line 578
    .line 579
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    .line 581
    .line 582
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 583
    .line 584
    .line 585
    move-result v1

    .line 586
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/unit/DpKt;->DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/GapComposer;I)V

    .line 587
    .line 588
    .line 589
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 590
    .line 591
    return-object v0

    .line 592
    :pswitch_4
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v0, Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;

    .line 595
    .line 596
    move-object/from16 v2, p1

    .line 597
    .line 598
    check-cast v2, Landroid/graphics/RectF;

    .line 599
    .line 600
    check-cast v1, Landroid/graphics/RectF;

    .line 601
    .line 602
    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    iget v0, v0, Landroidx/compose/ui/text/input/VisualTransformation$Companion$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 611
    .line 612
    packed-switch v0, :pswitch_data_1

    .line 613
    .line 614
    .line 615
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 616
    .line 617
    .line 618
    move-result-wide v2

    .line 619
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/geometry/Rect;->contains-k-4lQ0M(J)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    goto :goto_b

    .line 624
    :pswitch_5
    invoke-virtual {v2, v1}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    return-object v0

    .line 633
    :pswitch_6
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v0, Landroidx/preference/PreferenceManager;

    .line 636
    .line 637
    move-object/from16 v2, p1

    .line 638
    .line 639
    check-cast v2, Ljava/util/Set;

    .line 640
    .line 641
    check-cast v1, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 642
    .line 643
    iget-object v1, v0, Landroidx/preference/PreferenceManager;->mSharedPreferences:Ljava/lang/Object;

    .line 644
    .line 645
    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 646
    .line 647
    :goto_c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    if-nez v3, :cond_10

    .line 652
    .line 653
    move-object v4, v2

    .line 654
    check-cast v4, Ljava/util/Collection;

    .line 655
    .line 656
    goto :goto_d

    .line 657
    :cond_10
    instance-of v4, v3, Ljava/util/Set;

    .line 658
    .line 659
    if-eqz v4, :cond_11

    .line 660
    .line 661
    new-array v4, v7, [Ljava/util/Set;

    .line 662
    .line 663
    aput-object v3, v4, v9

    .line 664
    .line 665
    aput-object v2, v4, v10

    .line 666
    .line 667
    invoke-static {v4}, Landroidx/room/Room;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 668
    .line 669
    .line 670
    move-result-object v4

    .line 671
    goto :goto_d

    .line 672
    :cond_11
    instance-of v4, v3, Ljava/util/List;

    .line 673
    .line 674
    if-eqz v4, :cond_15

    .line 675
    .line 676
    move-object v4, v3

    .line 677
    check-cast v4, Ljava/util/Collection;

    .line 678
    .line 679
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 680
    .line 681
    .line 682
    move-result-object v5

    .line 683
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 684
    .line 685
    .line 686
    move-result-object v4

    .line 687
    :cond_12
    :goto_d
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 688
    .line 689
    .line 690
    move-result v5

    .line 691
    if-eqz v5, :cond_14

    .line 692
    .line 693
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->drainChanges()Z

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    if-eqz v1, :cond_13

    .line 698
    .line 699
    iget-object v1, v0, Landroidx/preference/PreferenceManager;->mContext:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 702
    .line 703
    new-instance v2, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;

    .line 704
    .line 705
    const/16 v3, 0x1a

    .line 706
    .line 707
    invoke-direct {v2, v3, v0}, Landroidx/navigation/NavBackStackEntry$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    :cond_13
    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 714
    .line 715
    goto :goto_e

    .line 716
    :cond_14
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v5

    .line 720
    if-eq v5, v3, :cond_12

    .line 721
    .line 722
    goto :goto_c

    .line 723
    :cond_15
    const-string v0, "Unexpected notification"

    .line 724
    .line 725
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 726
    .line 727
    .line 728
    invoke-static {}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$1()V

    .line 729
    .line 730
    .line 731
    :goto_e
    return-object v8

    .line 732
    :pswitch_7
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 733
    .line 734
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 735
    .line 736
    move-object/from16 v2, p1

    .line 737
    .line 738
    check-cast v2, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 739
    .line 740
    invoke-interface {v0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    check-cast v0, Ljava/util/List;

    .line 745
    .line 746
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    :goto_f
    if-ge v9, v1, :cond_18

    .line 751
    .line 752
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    if-eqz v3, :cond_17

    .line 757
    .line 758
    iget-object v4, v2, Landroidx/compose/runtime/saveable/SaveableHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 759
    .line 760
    if-eqz v4, :cond_17

    .line 761
    .line 762
    invoke-interface {v4, v3}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->canBeSaved(Ljava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v4

    .line 766
    if-eqz v4, :cond_16

    .line 767
    .line 768
    goto :goto_10

    .line 769
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 770
    .line 771
    const-string v1, "item at index "

    .line 772
    .line 773
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    .line 778
    .line 779
    const-string v1, " can\'t be saved: "

    .line 780
    .line 781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 792
    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v0

    .line 797
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 798
    .line 799
    .line 800
    throw v1

    .line 801
    :cond_17
    :goto_10
    add-int/lit8 v9, v9, 0x1

    .line 802
    .line 803
    goto :goto_f

    .line 804
    :cond_18
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    if-nez v1, :cond_19

    .line 809
    .line 810
    new-instance v8, Ljava/util/ArrayList;

    .line 811
    .line 812
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 813
    .line 814
    .line 815
    :cond_19
    return-object v8

    .line 816
    :pswitch_8
    invoke-direct/range {p0 .. p2}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->invoke$androidx$compose$runtime$SingleSubscriptionSnapshotFlowManager$$ExternalSyntheticLambda1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    return-object v0

    .line 821
    :pswitch_9
    invoke-direct/range {p0 .. p2}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->invoke$androidx$compose$runtime$Recomposer$recompositionRunner$2$$ExternalSyntheticLambda0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    return-object v0

    .line 826
    :pswitch_a
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 827
    .line 828
    check-cast v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 829
    .line 830
    move-object/from16 v2, p1

    .line 831
    .line 832
    check-cast v2, Ljava/util/Set;

    .line 833
    .line 834
    check-cast v1, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 835
    .line 836
    iget-object v1, v0, Lorg/wikipedia/settings/BasePreferenceLoader;->fragment:Ljava/lang/Object;

    .line 837
    .line 838
    monitor-enter v1

    .line 839
    :try_start_0
    iget-object v3, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->subscriptions:Landroidx/collection/MutableScatterMap;

    .line 840
    .line 841
    new-instance v4, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 842
    .line 843
    const/16 v5, 0x13

    .line 844
    .line 845
    invoke-direct {v4, v5, v2, v0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 846
    .line 847
    .line 848
    invoke-static {v10, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)Ljava/lang/Object;

    .line 849
    .line 850
    .line 851
    iget-object v2, v3, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 852
    .line 853
    iget-object v3, v3, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 854
    .line 855
    array-length v5, v3

    .line 856
    sub-int/2addr v5, v7

    .line 857
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    const/16 v8, 0x8

    .line 863
    .line 864
    if-ltz v5, :cond_1d

    .line 865
    .line 866
    move v6, v9

    .line 867
    const/16 p0, 0x7

    .line 868
    .line 869
    const-wide/16 p1, 0x80

    .line 870
    .line 871
    :goto_11
    aget-wide v10, v3, v6

    .line 872
    .line 873
    const-wide/16 v16, 0xff

    .line 874
    .line 875
    not-long v12, v10

    .line 876
    shl-long v12, v12, p0

    .line 877
    .line 878
    and-long/2addr v12, v10

    .line 879
    and-long/2addr v12, v14

    .line 880
    cmp-long v12, v12, v14

    .line 881
    .line 882
    if-eqz v12, :cond_1c

    .line 883
    .line 884
    sub-int v12, v6, v5

    .line 885
    .line 886
    not-int v12, v12

    .line 887
    ushr-int/lit8 v12, v12, 0x1f

    .line 888
    .line 889
    rsub-int/lit8 v12, v12, 0x8

    .line 890
    .line 891
    move v13, v9

    .line 892
    :goto_12
    if-ge v13, v12, :cond_1b

    .line 893
    .line 894
    and-long v18, v10, v16

    .line 895
    .line 896
    cmp-long v18, v18, p1

    .line 897
    .line 898
    if-gez v18, :cond_1a

    .line 899
    .line 900
    shl-int/lit8 v18, v6, 0x3

    .line 901
    .line 902
    add-int v18, v18, v13

    .line 903
    .line 904
    move-wide/from16 v19, v14

    .line 905
    .line 906
    aget-object v14, v2, v18

    .line 907
    .line 908
    invoke-virtual {v4, v14}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    .line 910
    .line 911
    goto :goto_13

    .line 912
    :cond_1a
    move-wide/from16 v19, v14

    .line 913
    .line 914
    :goto_13
    shr-long/2addr v10, v8

    .line 915
    add-int/lit8 v13, v13, 0x1

    .line 916
    .line 917
    move-wide/from16 v14, v19

    .line 918
    .line 919
    goto :goto_12

    .line 920
    :cond_1b
    move-wide/from16 v19, v14

    .line 921
    .line 922
    if-ne v12, v8, :cond_1e

    .line 923
    .line 924
    goto :goto_14

    .line 925
    :cond_1c
    move-wide/from16 v19, v14

    .line 926
    .line 927
    :goto_14
    if-eq v6, v5, :cond_1e

    .line 928
    .line 929
    add-int/lit8 v6, v6, 0x1

    .line 930
    .line 931
    move-wide/from16 v14, v19

    .line 932
    .line 933
    goto :goto_11

    .line 934
    :cond_1d
    move-wide/from16 v19, v14

    .line 935
    .line 936
    const/16 p0, 0x7

    .line 937
    .line 938
    const-wide/16 p1, 0x80

    .line 939
    .line 940
    const-wide/16 v16, 0xff

    .line 941
    .line 942
    :cond_1e
    iget-object v2, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->toNotify:Landroidx/collection/MutableScatterSet;

    .line 943
    .line 944
    iget-object v3, v2, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 945
    .line 946
    iget-object v2, v2, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 947
    .line 948
    array-length v4, v2

    .line 949
    sub-int/2addr v4, v7

    .line 950
    if-ltz v4, :cond_22

    .line 951
    .line 952
    move v5, v9

    .line 953
    :goto_15
    aget-wide v6, v2, v5

    .line 954
    .line 955
    not-long v10, v6

    .line 956
    shl-long v10, v10, p0

    .line 957
    .line 958
    and-long/2addr v10, v6

    .line 959
    and-long v10, v10, v19

    .line 960
    .line 961
    cmp-long v10, v10, v19

    .line 962
    .line 963
    if-eqz v10, :cond_21

    .line 964
    .line 965
    sub-int v10, v5, v4

    .line 966
    .line 967
    not-int v10, v10

    .line 968
    ushr-int/lit8 v10, v10, 0x1f

    .line 969
    .line 970
    rsub-int/lit8 v10, v10, 0x8

    .line 971
    .line 972
    move v11, v9

    .line 973
    :goto_16
    if-ge v11, v10, :cond_20

    .line 974
    .line 975
    and-long v12, v6, v16

    .line 976
    .line 977
    cmp-long v12, v12, p1

    .line 978
    .line 979
    if-gez v12, :cond_1f

    .line 980
    .line 981
    shl-int/lit8 v12, v5, 0x3

    .line 982
    .line 983
    add-int/2addr v12, v11

    .line 984
    aget-object v12, v3, v12

    .line 985
    .line 986
    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    .line 987
    .line 988
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 989
    .line 990
    invoke-interface {v12, v13}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    goto :goto_17

    .line 994
    :catchall_0
    move-exception v0

    .line 995
    goto :goto_18

    .line 996
    :cond_1f
    :goto_17
    shr-long/2addr v6, v8

    .line 997
    add-int/lit8 v11, v11, 0x1

    .line 998
    .line 999
    goto :goto_16

    .line 1000
    :cond_20
    if-ne v10, v8, :cond_22

    .line 1001
    .line 1002
    :cond_21
    if-eq v5, v4, :cond_22

    .line 1003
    .line 1004
    add-int/lit8 v5, v5, 0x1

    .line 1005
    .line 1006
    goto :goto_15

    .line 1007
    :cond_22
    iget-object v0, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->toNotify:Landroidx/collection/MutableScatterSet;

    .line 1008
    .line 1009
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    .line 1011
    .line 1012
    monitor-exit v1

    .line 1013
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1014
    .line 1015
    return-object v0

    .line 1016
    :goto_18
    monitor-exit v1

    .line 1017
    throw v0

    .line 1018
    :pswitch_b
    move-object/from16 v0, p1

    .line 1019
    .line 1020
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1021
    .line 1022
    check-cast v1, Ljava/lang/Integer;

    .line 1023
    .line 1024
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1025
    .line 1026
    .line 1027
    move-result v1

    .line 1028
    and-int/lit8 v2, v1, 0x3

    .line 1029
    .line 1030
    if-eq v2, v7, :cond_23

    .line 1031
    .line 1032
    move v9, v10

    .line 1033
    :cond_23
    and-int/2addr v1, v10

    .line 1034
    invoke-virtual {v0, v1, v9}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 1035
    .line 1036
    .line 1037
    move-result v1

    .line 1038
    if-nez v1, :cond_24

    .line 1039
    .line 1040
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 1041
    .line 1042
    .line 1043
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1044
    .line 1045
    return-object v0

    .line 1046
    :cond_24
    throw v8

    .line 1047
    :pswitch_c
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1048
    .line 1049
    check-cast v0, Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 1050
    .line 1051
    move-object/from16 v2, p1

    .line 1052
    .line 1053
    check-cast v2, Ljava/lang/Integer;

    .line 1054
    .line 1055
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1056
    .line 1057
    .line 1058
    instance-of v2, v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1059
    .line 1060
    if-eqz v2, :cond_26

    .line 1061
    .line 1062
    move-object v2, v1

    .line 1063
    check-cast v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1064
    .line 1065
    iget-object v3, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 1066
    .line 1067
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 1068
    .line 1069
    if-nez v3, :cond_25

    .line 1070
    .line 1071
    sget-object v3, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 1072
    .line 1073
    new-instance v3, Landroidx/collection/MutableScatterSet;

    .line 1074
    .line 1075
    invoke-direct {v3}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 1076
    .line 1077
    .line 1078
    iput-object v3, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginPrimaryContainer:Ljava/lang/Object;

    .line 1079
    .line 1080
    :cond_25
    invoke-virtual {v3, v2}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 1081
    .line 1082
    .line 1083
    iget-object v3, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 1084
    .line 1085
    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 1086
    .line 1087
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1088
    .line 1089
    .line 1090
    :cond_26
    instance-of v2, v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1091
    .line 1092
    if-eqz v2, :cond_27

    .line 1093
    .line 1094
    move-object v2, v1

    .line 1095
    check-cast v2, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1096
    .line 1097
    invoke-virtual {v0, v2}, Lorg/wikipedia/databinding/ActivityLoginBinding;->forgetting(Landroidx/compose/runtime/GapRememberObserverHolder;)V

    .line 1098
    .line 1099
    .line 1100
    :cond_27
    instance-of v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1101
    .line 1102
    if-eqz v0, :cond_28

    .line 1103
    .line 1104
    move-object v0, v1

    .line 1105
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1106
    .line 1107
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 1108
    .line 1109
    .line 1110
    :cond_28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1111
    .line 1112
    return-object v0

    .line 1113
    :pswitch_d
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1114
    .line 1115
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 1116
    .line 1117
    move-object/from16 v2, p1

    .line 1118
    .line 1119
    check-cast v2, Landroidx/compose/ui/unit/IntRect;

    .line 1120
    .line 1121
    check-cast v1, Landroidx/compose/ui/unit/IntRect;

    .line 1122
    .line 1123
    iget v3, v1, Landroidx/compose/ui/unit/IntRect;->left:I

    .line 1124
    .line 1125
    iget v4, v1, Landroidx/compose/ui/unit/IntRect;->bottom:I

    .line 1126
    .line 1127
    iget v5, v1, Landroidx/compose/ui/unit/IntRect;->right:I

    .line 1128
    .line 1129
    iget v8, v1, Landroidx/compose/ui/unit/IntRect;->top:I

    .line 1130
    .line 1131
    iget v9, v2, Landroidx/compose/ui/unit/IntRect;->right:I

    .line 1132
    .line 1133
    iget v10, v2, Landroidx/compose/ui/unit/IntRect;->top:I

    .line 1134
    .line 1135
    iget v11, v2, Landroidx/compose/ui/unit/IntRect;->bottom:I

    .line 1136
    .line 1137
    iget v12, v2, Landroidx/compose/ui/unit/IntRect;->left:I

    .line 1138
    .line 1139
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1140
    .line 1141
    if-lt v3, v9, :cond_29

    .line 1142
    .line 1143
    :goto_19
    move v2, v6

    .line 1144
    goto :goto_1a

    .line 1145
    :cond_29
    if-gt v5, v12, :cond_2a

    .line 1146
    .line 1147
    move v2, v13

    .line 1148
    goto :goto_1a

    .line 1149
    :cond_2a
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    .line 1150
    .line 1151
    .line 1152
    move-result v9

    .line 1153
    if-nez v9, :cond_2b

    .line 1154
    .line 1155
    goto :goto_19

    .line 1156
    :cond_2b
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    .line 1157
    .line 1158
    .line 1159
    move-result v9

    .line 1160
    iget v2, v2, Landroidx/compose/ui/unit/IntRect;->right:I

    .line 1161
    .line 1162
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 1163
    .line 1164
    .line 1165
    move-result v2

    .line 1166
    add-int/2addr v2, v9

    .line 1167
    div-int/2addr v2, v7

    .line 1168
    sub-int/2addr v2, v3

    .line 1169
    int-to-float v2, v2

    .line 1170
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    .line 1171
    .line 1172
    .line 1173
    move-result v3

    .line 1174
    int-to-float v3, v3

    .line 1175
    div-float/2addr v2, v3

    .line 1176
    :goto_1a
    if-lt v8, v11, :cond_2c

    .line 1177
    .line 1178
    goto :goto_1b

    .line 1179
    :cond_2c
    if-gt v4, v10, :cond_2d

    .line 1180
    .line 1181
    move v6, v13

    .line 1182
    goto :goto_1b

    .line 1183
    :cond_2d
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    .line 1184
    .line 1185
    .line 1186
    move-result v3

    .line 1187
    if-nez v3, :cond_2e

    .line 1188
    .line 1189
    goto :goto_1b

    .line 1190
    :cond_2e
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    .line 1191
    .line 1192
    .line 1193
    move-result v3

    .line 1194
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    .line 1195
    .line 1196
    .line 1197
    move-result v4

    .line 1198
    add-int/2addr v4, v3

    .line 1199
    div-int/2addr v4, v7

    .line 1200
    sub-int/2addr v4, v8

    .line 1201
    int-to-float v3, v4

    .line 1202
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    .line 1203
    .line 1204
    .line 1205
    move-result v1

    .line 1206
    int-to-float v1, v1

    .line 1207
    div-float v6, v3, v1

    .line 1208
    .line 1209
    :goto_1b
    invoke-static {v2, v6}, Landroidx/compose/ui/graphics/ColorKt;->TransformOrigin(FF)J

    .line 1210
    .line 1211
    .line 1212
    move-result-wide v1

    .line 1213
    new-instance v3, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 1214
    .line 1215
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 1216
    .line 1217
    .line 1218
    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 1219
    .line 1220
    .line 1221
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1222
    .line 1223
    return-object v0

    .line 1224
    :pswitch_e
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1225
    .line 1226
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1227
    .line 1228
    move-object/from16 v2, p1

    .line 1229
    .line 1230
    check-cast v2, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 1231
    .line 1232
    check-cast v1, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 1233
    .line 1234
    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1235
    .line 1236
    .line 1237
    move-result-object v2

    .line 1238
    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v1

    .line 1242
    const-wide/16 v7, 0x0

    .line 1243
    .line 1244
    if-eqz v2, :cond_2f

    .line 1245
    .line 1246
    invoke-interface {v0, v2, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 1247
    .line 1248
    .line 1249
    move-result-wide v11

    .line 1250
    shr-long v13, v11, v5

    .line 1251
    .line 1252
    long-to-int v13, v13

    .line 1253
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1254
    .line 1255
    .line 1256
    move-result v13

    .line 1257
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 1258
    .line 1259
    .line 1260
    move-result-wide v14

    .line 1261
    shr-long/2addr v14, v5

    .line 1262
    long-to-int v14, v14

    .line 1263
    int-to-float v14, v14

    .line 1264
    add-float/2addr v13, v14

    .line 1265
    and-long v14, v11, v3

    .line 1266
    .line 1267
    long-to-int v14, v14

    .line 1268
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1269
    .line 1270
    .line 1271
    move-result v14

    .line 1272
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 1273
    .line 1274
    .line 1275
    move-result-wide v15

    .line 1276
    move-wide/from16 v17, v3

    .line 1277
    .line 1278
    and-long v3, v15, v17

    .line 1279
    .line 1280
    long-to-int v2, v3

    .line 1281
    int-to-float v2, v2

    .line 1282
    add-float/2addr v14, v2

    .line 1283
    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1284
    .line 1285
    .line 1286
    move-result v2

    .line 1287
    int-to-long v2, v2

    .line 1288
    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1289
    .line 1290
    .line 1291
    move-result v4

    .line 1292
    int-to-long v13, v4

    .line 1293
    shl-long/2addr v2, v5

    .line 1294
    and-long v13, v13, v17

    .line 1295
    .line 1296
    or-long/2addr v2, v13

    .line 1297
    goto :goto_1c

    .line 1298
    :cond_2f
    move-wide/from16 v17, v3

    .line 1299
    .line 1300
    move-wide v2, v7

    .line 1301
    move-wide v11, v2

    .line 1302
    :goto_1c
    if-eqz v1, :cond_30

    .line 1303
    .line 1304
    invoke-interface {v0, v1, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 1305
    .line 1306
    .line 1307
    move-result-wide v7

    .line 1308
    shr-long v13, v7, v5

    .line 1309
    .line 1310
    long-to-int v0, v13

    .line 1311
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1312
    .line 1313
    .line 1314
    move-result v0

    .line 1315
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 1316
    .line 1317
    .line 1318
    move-result-wide v13

    .line 1319
    shr-long/2addr v13, v5

    .line 1320
    long-to-int v4, v13

    .line 1321
    int-to-float v4, v4

    .line 1322
    add-float/2addr v0, v4

    .line 1323
    and-long v13, v7, v17

    .line 1324
    .line 1325
    long-to-int v4, v13

    .line 1326
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1327
    .line 1328
    .line 1329
    move-result v4

    .line 1330
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 1331
    .line 1332
    .line 1333
    move-result-wide v13

    .line 1334
    and-long v13, v13, v17

    .line 1335
    .line 1336
    long-to-int v1, v13

    .line 1337
    int-to-float v1, v1

    .line 1338
    add-float/2addr v4, v1

    .line 1339
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1340
    .line 1341
    .line 1342
    move-result v0

    .line 1343
    int-to-long v0, v0

    .line 1344
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 1345
    .line 1346
    .line 1347
    move-result v4

    .line 1348
    int-to-long v13, v4

    .line 1349
    shl-long/2addr v0, v5

    .line 1350
    and-long v13, v13, v17

    .line 1351
    .line 1352
    or-long/2addr v0, v13

    .line 1353
    goto :goto_1d

    .line 1354
    :cond_30
    move-wide v0, v7

    .line 1355
    :goto_1d
    and-long v13, v2, v17

    .line 1356
    .line 1357
    long-to-int v4, v13

    .line 1358
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1359
    .line 1360
    .line 1361
    move-result v13

    .line 1362
    and-long v14, v11, v17

    .line 1363
    .line 1364
    long-to-int v14, v14

    .line 1365
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1366
    .line 1367
    .line 1368
    move-result v15

    .line 1369
    sub-float/2addr v13, v15

    .line 1370
    shr-long/2addr v2, v5

    .line 1371
    long-to-int v2, v2

    .line 1372
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1373
    .line 1374
    .line 1375
    move-result v3

    .line 1376
    shr-long/2addr v11, v5

    .line 1377
    long-to-int v11, v11

    .line 1378
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1379
    .line 1380
    .line 1381
    move-result v12

    .line 1382
    sub-float/2addr v3, v12

    .line 1383
    move v12, v10

    .line 1384
    move v15, v11

    .line 1385
    and-long v10, v0, v17

    .line 1386
    .line 1387
    long-to-int v10, v10

    .line 1388
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1389
    .line 1390
    .line 1391
    move-result v11

    .line 1392
    move/from16 v16, v12

    .line 1393
    .line 1394
    move/from16 p0, v13

    .line 1395
    .line 1396
    and-long v12, v7, v17

    .line 1397
    .line 1398
    long-to-int v12, v12

    .line 1399
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1400
    .line 1401
    .line 1402
    move-result v13

    .line 1403
    sub-float/2addr v11, v13

    .line 1404
    shr-long/2addr v0, v5

    .line 1405
    long-to-int v0, v0

    .line 1406
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1407
    .line 1408
    .line 1409
    move-result v1

    .line 1410
    shr-long/2addr v7, v5

    .line 1411
    long-to-int v5, v7

    .line 1412
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1413
    .line 1414
    .line 1415
    move-result v7

    .line 1416
    sub-float/2addr v1, v7

    .line 1417
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1418
    .line 1419
    .line 1420
    move-result v7

    .line 1421
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1422
    .line 1423
    .line 1424
    move-result v8

    .line 1425
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    .line 1426
    .line 1427
    .line 1428
    move-result v7

    .line 1429
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1430
    .line 1431
    .line 1432
    move-result v4

    .line 1433
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1434
    .line 1435
    .line 1436
    move-result v8

    .line 1437
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    .line 1438
    .line 1439
    .line 1440
    move-result v4

    .line 1441
    sub-float/2addr v4, v7

    .line 1442
    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    .line 1443
    .line 1444
    .line 1445
    move-result v4

    .line 1446
    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1447
    .line 1448
    .line 1449
    move-result v7

    .line 1450
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1451
    .line 1452
    .line 1453
    move-result v8

    .line 1454
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    .line 1455
    .line 1456
    .line 1457
    move-result v7

    .line 1458
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1459
    .line 1460
    .line 1461
    move-result v2

    .line 1462
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1463
    .line 1464
    .line 1465
    move-result v0

    .line 1466
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 1467
    .line 1468
    .line 1469
    move-result v0

    .line 1470
    sub-float/2addr v0, v7

    .line 1471
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    .line 1472
    .line 1473
    .line 1474
    move-result v0

    .line 1475
    const/high16 v2, 0x3f000000    # 0.5f

    .line 1476
    .line 1477
    mul-float v13, p0, v2

    .line 1478
    .line 1479
    cmpl-float v6, v4, v13

    .line 1480
    .line 1481
    if-gez v6, :cond_32

    .line 1482
    .line 1483
    mul-float/2addr v11, v2

    .line 1484
    cmpl-float v4, v4, v11

    .line 1485
    .line 1486
    if-ltz v4, :cond_31

    .line 1487
    .line 1488
    goto :goto_1e

    .line 1489
    :cond_31
    move v4, v9

    .line 1490
    goto :goto_1f

    .line 1491
    :cond_32
    :goto_1e
    move/from16 v4, v16

    .line 1492
    .line 1493
    :goto_1f
    mul-float/2addr v3, v2

    .line 1494
    cmpg-float v3, v0, v3

    .line 1495
    .line 1496
    if-gez v3, :cond_33

    .line 1497
    .line 1498
    mul-float/2addr v1, v2

    .line 1499
    cmpg-float v0, v0, v1

    .line 1500
    .line 1501
    if-gez v0, :cond_33

    .line 1502
    .line 1503
    move/from16 v9, v16

    .line 1504
    .line 1505
    :cond_33
    if-eqz v4, :cond_34

    .line 1506
    .line 1507
    if-eqz v9, :cond_34

    .line 1508
    .line 1509
    invoke-static {v15}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1510
    .line 1511
    .line 1512
    move-result v0

    .line 1513
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v0

    .line 1517
    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1518
    .line 1519
    .line 1520
    move-result v1

    .line 1521
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v1

    .line 1525
    invoke-static {v0, v1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 1526
    .line 1527
    .line 1528
    move-result v0

    .line 1529
    goto :goto_20

    .line 1530
    :cond_34
    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1531
    .line 1532
    .line 1533
    move-result v0

    .line 1534
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1535
    .line 1536
    .line 1537
    move-result-object v0

    .line 1538
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 1539
    .line 1540
    .line 1541
    move-result v1

    .line 1542
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v1

    .line 1546
    invoke-static {v0, v1}, Landroidx/work/Operation$State;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 1547
    .line 1548
    .line 1549
    move-result v0

    .line 1550
    :goto_20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v0

    .line 1554
    return-object v0

    .line 1555
    :pswitch_f
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1556
    .line 1557
    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 1558
    .line 1559
    move-object/from16 v1, p1

    .line 1560
    .line 1561
    check-cast v1, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 1562
    .line 1563
    move-object/from16 v2, p2

    .line 1564
    .line 1565
    check-cast v2, Landroid/content/Context;

    .line 1566
    .line 1567
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContextTextAndSelection$foundation()Lkotlin/Pair;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v3

    .line 1571
    if-eqz v3, :cond_35

    .line 1572
    .line 1573
    iget-object v4, v3, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 1574
    .line 1575
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString;

    .line 1576
    .line 1577
    goto :goto_21

    .line 1578
    :cond_35
    move-object v4, v8

    .line 1579
    :goto_21
    if-eqz v3, :cond_36

    .line 1580
    .line 1581
    iget-object v3, v3, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 1582
    .line 1583
    move-object v8, v3

    .line 1584
    check-cast v8, Landroidx/compose/ui/text/TextRange;

    .line 1585
    .line 1586
    :cond_36
    move-object v5, v8

    .line 1587
    iget-object v6, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 1588
    .line 1589
    new-instance v7, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;

    .line 1590
    .line 1591
    const/16 v3, 0xa

    .line 1592
    .line 1593
    invoke-direct {v7, v3, v0, v2}, Landroidx/navigation/NavController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1594
    .line 1595
    .line 1596
    const/4 v3, 0x0

    .line 1597
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->addPlatformTextContextMenuItems-71BSaZU(Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;Landroid/content/Context;ZLjava/lang/CharSequence;Landroidx/compose/ui/text/TextRange;Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;Lkotlin/jvm/functions/Function1;)V

    .line 1598
    .line 1599
    .line 1600
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1601
    .line 1602
    return-object v0

    .line 1603
    :pswitch_10
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1604
    .line 1605
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 1606
    .line 1607
    move-object/from16 v1, p1

    .line 1608
    .line 1609
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1610
    .line 1611
    move-object/from16 v2, p2

    .line 1612
    .line 1613
    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    .line 1614
    .line 1615
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 1616
    .line 1617
    .line 1618
    iget-wide v1, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1619
    .line 1620
    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1621
    .line 1622
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1623
    .line 1624
    return-object v0

    .line 1625
    :pswitch_11
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1626
    .line 1627
    check-cast v0, Landroid/app/RemoteAction;

    .line 1628
    .line 1629
    move-object/from16 v1, p1

    .line 1630
    .line 1631
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1632
    .line 1633
    move-object/from16 v2, p2

    .line 1634
    .line 1635
    check-cast v2, Ljava/lang/Integer;

    .line 1636
    .line 1637
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1638
    .line 1639
    .line 1640
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->textClassificationItem$lambda$3(Landroid/app/RemoteAction;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1641
    .line 1642
    .line 1643
    move-result-object v0

    .line 1644
    return-object v0

    .line 1645
    :pswitch_12
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1646
    .line 1647
    check-cast v0, Landroid/view/textclassifier/TextClassification;

    .line 1648
    .line 1649
    move-object/from16 v1, p1

    .line 1650
    .line 1651
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1652
    .line 1653
    move-object/from16 v2, p2

    .line 1654
    .line 1655
    check-cast v2, Ljava/lang/Integer;

    .line 1656
    .line 1657
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1658
    .line 1659
    .line 1660
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->textClassificationItem$lambda$0(Landroid/view/textclassifier/TextClassification;Landroidx/compose/runtime/GapComposer;)Ljava/lang/String;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v0

    .line 1664
    return-object v0

    .line 1665
    :pswitch_13
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1666
    .line 1667
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 1668
    .line 1669
    move-object/from16 v1, p1

    .line 1670
    .line 1671
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1672
    .line 1673
    move-object/from16 v2, p2

    .line 1674
    .line 1675
    check-cast v2, Ljava/lang/Integer;

    .line 1676
    .line 1677
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1678
    .line 1679
    .line 1680
    const v2, 0x27b3a34e

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1684
    .line 1685
    .line 1686
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->label:Ljava/lang/String;

    .line 1687
    .line 1688
    invoke-virtual {v1, v9}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1689
    .line 1690
    .line 1691
    return-object v0

    .line 1692
    :pswitch_14
    move/from16 v16, v10

    .line 1693
    .line 1694
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1695
    .line 1696
    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    .line 1697
    .line 1698
    move-object/from16 v1, p1

    .line 1699
    .line 1700
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1701
    .line 1702
    move-object/from16 v2, p2

    .line 1703
    .line 1704
    check-cast v2, Ljava/lang/Integer;

    .line 1705
    .line 1706
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1707
    .line 1708
    .line 1709
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1710
    .line 1711
    .line 1712
    move-result v2

    .line 1713
    invoke-virtual {v0, v2, v1}, Landroidx/compose/foundation/text/TextLinkScope;->LinksComposables(ILandroidx/compose/runtime/GapComposer;)V

    .line 1714
    .line 1715
    .line 1716
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1717
    .line 1718
    return-object v0

    .line 1719
    :pswitch_15
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1720
    .line 1721
    check-cast v0, Landroidx/compose/foundation/text/TextDragObserver;

    .line 1722
    .line 1723
    move-object/from16 v1, p1

    .line 1724
    .line 1725
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1726
    .line 1727
    move-object/from16 v1, p2

    .line 1728
    .line 1729
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 1730
    .line 1731
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1732
    .line 1733
    invoke-interface {v0, v1, v2}, Landroidx/compose/foundation/text/TextDragObserver;->onDrag-k-4lQ0M(J)V

    .line 1734
    .line 1735
    .line 1736
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1737
    .line 1738
    return-object v0

    .line 1739
    :pswitch_16
    move/from16 v16, v10

    .line 1740
    .line 1741
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1742
    .line 1743
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1744
    .line 1745
    move-object/from16 v1, p1

    .line 1746
    .line 1747
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1748
    .line 1749
    move-object/from16 v2, p2

    .line 1750
    .line 1751
    check-cast v2, Ljava/lang/Integer;

    .line 1752
    .line 1753
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1754
    .line 1755
    .line 1756
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1757
    .line 1758
    .line 1759
    move-result v2

    .line 1760
    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/BasicTextKt;->TextFieldCursorHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/GapComposer;I)V

    .line 1761
    .line 1762
    .line 1763
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1764
    .line 1765
    return-object v0

    .line 1766
    :pswitch_17
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1767
    .line 1768
    check-cast v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 1769
    .line 1770
    move-object/from16 v1, p1

    .line 1771
    .line 1772
    check-cast v1, Landroidx/compose/runtime/saveable/SaveableHolder;

    .line 1773
    .line 1774
    move-object/from16 v1, p2

    .line 1775
    .line 1776
    check-cast v1, Ljava/lang/Long;

    .line 1777
    .line 1778
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 1779
    .line 1780
    .line 1781
    move-result-wide v2

    .line 1782
    invoke-static {v0, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;J)Z

    .line 1783
    .line 1784
    .line 1785
    move-result v0

    .line 1786
    if-eqz v0, :cond_37

    .line 1787
    .line 1788
    move-object v8, v1

    .line 1789
    :cond_37
    return-object v8

    .line 1790
    :pswitch_18
    move/from16 v16, v10

    .line 1791
    .line 1792
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1793
    .line 1794
    move-object v1, v0

    .line 1795
    check-cast v1, Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 1796
    .line 1797
    move-object/from16 v2, p1

    .line 1798
    .line 1799
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 1800
    .line 1801
    move-object/from16 v0, p2

    .line 1802
    .line 1803
    check-cast v0, Landroidx/compose/ui/unit/Constraints;

    .line 1804
    .line 1805
    iget-wide v3, v0, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1806
    .line 1807
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1808
    .line 1809
    .line 1810
    move-result v3

    .line 1811
    const v4, 0x7fffffff

    .line 1812
    .line 1813
    .line 1814
    if-eq v3, v4, :cond_38

    .line 1815
    .line 1816
    goto :goto_22

    .line 1817
    :cond_38
    const-string v3, "LazyVerticalGrid\'s width should be bound by parent."

    .line 1818
    .line 1819
    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1820
    .line 1821
    .line 1822
    :goto_22
    iget-wide v3, v0, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1823
    .line 1824
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 1825
    .line 1826
    .line 1827
    move-result v3

    .line 1828
    invoke-interface {v1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    .line 1829
    .line 1830
    .line 1831
    move-result v0

    .line 1832
    invoke-interface {v2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 1833
    .line 1834
    .line 1835
    move-result v0

    .line 1836
    sub-int v0, v3, v0

    .line 1837
    .line 1838
    div-int/lit8 v4, v0, 0x2

    .line 1839
    .line 1840
    rem-int/2addr v0, v7

    .line 1841
    new-instance v5, Ljava/util/ArrayList;

    .line 1842
    .line 1843
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1844
    .line 1845
    .line 1846
    move v6, v9

    .line 1847
    :goto_23
    if-ge v6, v7, :cond_3a

    .line 1848
    .line 1849
    if-ge v6, v0, :cond_39

    .line 1850
    .line 1851
    move/from16 v8, v16

    .line 1852
    .line 1853
    goto :goto_24

    .line 1854
    :cond_39
    move v8, v9

    .line 1855
    :goto_24
    add-int/2addr v8, v4

    .line 1856
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v8

    .line 1860
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    .line 1862
    .line 1863
    add-int/lit8 v6, v6, 0x1

    .line 1864
    .line 1865
    goto :goto_23

    .line 1866
    :cond_3a
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/List;)[I

    .line 1867
    .line 1868
    .line 1869
    move-result-object v4

    .line 1870
    array-length v0, v4

    .line 1871
    new-array v6, v0, [I

    .line 1872
    .line 1873
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1874
    .line 1875
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 1876
    .line 1877
    .line 1878
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 1879
    .line 1880
    invoke-direct {v0, v4, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;-><init>([I[I)V

    .line 1881
    .line 1882
    .line 1883
    return-object v0

    .line 1884
    :pswitch_19
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1885
    .line 1886
    move-object v1, v0

    .line 1887
    check-cast v1, Landroidx/compose/ui/BiasAlignment;

    .line 1888
    .line 1889
    move-object/from16 v0, p1

    .line 1890
    .line 1891
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 1892
    .line 1893
    move-object/from16 v6, p2

    .line 1894
    .line 1895
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1896
    .line 1897
    const-wide/16 v2, 0x0

    .line 1898
    .line 1899
    iget-wide v4, v0, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 1900
    .line 1901
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/BiasAlignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 1902
    .line 1903
    .line 1904
    move-result-wide v0

    .line 1905
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 1906
    .line 1907
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 1908
    .line 1909
    .line 1910
    return-object v2

    .line 1911
    :pswitch_1a
    move-wide/from16 v17, v3

    .line 1912
    .line 1913
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1914
    .line 1915
    check-cast v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 1916
    .line 1917
    move-object/from16 v1, p1

    .line 1918
    .line 1919
    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    .line 1920
    .line 1921
    move-object/from16 v2, p2

    .line 1922
    .line 1923
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1924
    .line 1925
    iget-wide v1, v1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 1926
    .line 1927
    and-long v1, v1, v17

    .line 1928
    .line 1929
    long-to-int v1, v1

    .line 1930
    invoke-virtual {v0, v9, v1}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    .line 1931
    .line 1932
    .line 1933
    move-result v0

    .line 1934
    int-to-long v0, v0

    .line 1935
    and-long v0, v0, v17

    .line 1936
    .line 1937
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 1938
    .line 1939
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 1940
    .line 1941
    .line 1942
    return-object v2

    .line 1943
    :pswitch_1b
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1944
    .line 1945
    check-cast v0, Landroidx/compose/ui/Alignment$Horizontal;

    .line 1946
    .line 1947
    move-object/from16 v1, p1

    .line 1948
    .line 1949
    check-cast v1, Landroidx/compose/ui/unit/IntSize;

    .line 1950
    .line 1951
    move-object/from16 v2, p2

    .line 1952
    .line 1953
    check-cast v2, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1954
    .line 1955
    iget-wide v3, v1, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 1956
    .line 1957
    shr-long/2addr v3, v5

    .line 1958
    long-to-int v1, v3

    .line 1959
    invoke-interface {v0, v9, v1, v2}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 1960
    .line 1961
    .line 1962
    move-result v0

    .line 1963
    int-to-long v0, v0

    .line 1964
    shl-long/2addr v0, v5

    .line 1965
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 1966
    .line 1967
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 1968
    .line 1969
    .line 1970
    return-object v2

    .line 1971
    :pswitch_1c
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1972
    .line 1973
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 1974
    .line 1975
    move-object/from16 v1, p1

    .line 1976
    .line 1977
    check-cast v1, Ljava/lang/Float;

    .line 1978
    .line 1979
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 1980
    .line 1981
    .line 1982
    move-result v1

    .line 1983
    move-object/from16 v2, p2

    .line 1984
    .line 1985
    check-cast v2, Ljava/lang/Float;

    .line 1986
    .line 1987
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1988
    .line 1989
    .line 1990
    move-result v2

    .line 1991
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 1992
    .line 1993
    .line 1994
    move-result-object v3

    .line 1995
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$1$1;

    .line 1996
    .line 1997
    invoke-direct {v4, v0, v1, v2, v8}, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;FFLkotlin/coroutines/Continuation;)V

    .line 1998
    .line 1999
    .line 2000
    const/4 v0, 0x3

    .line 2001
    invoke-static {v3, v8, v8, v4, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 2002
    .line 2003
    .line 2004
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2005
    .line 2006
    return-object v0

    .line 2007
    :pswitch_1d
    iget-object v0, v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2008
    .line 2009
    check-cast v0, Landroidx/paging/ViewportHint;

    .line 2010
    .line 2011
    move-object/from16 v1, p1

    .line 2012
    .line 2013
    check-cast v1, Landroidx/paging/HintHandler$HintFlow;

    .line 2014
    .line 2015
    move-object/from16 v2, p2

    .line 2016
    .line 2017
    check-cast v2, Landroidx/paging/HintHandler$HintFlow;

    .line 2018
    .line 2019
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2020
    .line 2021
    .line 2022
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2023
    .line 2024
    .line 2025
    iget-object v3, v1, Landroidx/paging/HintHandler$HintFlow;->value:Landroidx/paging/ViewportHint;

    .line 2026
    .line 2027
    sget-object v4, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 2028
    .line 2029
    invoke-static {v0, v3, v4}, Landroidx/paging/FlowExtKt;->shouldPrioritizeOver(Landroidx/paging/ViewportHint;Landroidx/paging/ViewportHint;Landroidx/paging/LoadType;)Z

    .line 2030
    .line 2031
    .line 2032
    move-result v3

    .line 2033
    if-eqz v3, :cond_3b

    .line 2034
    .line 2035
    iput-object v0, v1, Landroidx/paging/HintHandler$HintFlow;->value:Landroidx/paging/ViewportHint;

    .line 2036
    .line 2037
    iget-object v1, v1, Landroidx/paging/HintHandler$HintFlow;->_flow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 2038
    .line 2039
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    .line 2040
    .line 2041
    .line 2042
    :cond_3b
    iget-object v1, v2, Landroidx/paging/HintHandler$HintFlow;->value:Landroidx/paging/ViewportHint;

    .line 2043
    .line 2044
    sget-object v3, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 2045
    .line 2046
    invoke-static {v0, v1, v3}, Landroidx/paging/FlowExtKt;->shouldPrioritizeOver(Landroidx/paging/ViewportHint;Landroidx/paging/ViewportHint;Landroidx/paging/LoadType;)Z

    .line 2047
    .line 2048
    .line 2049
    move-result v1

    .line 2050
    if-eqz v1, :cond_3c

    .line 2051
    .line 2052
    iput-object v0, v2, Landroidx/paging/HintHandler$HintFlow;->value:Landroidx/paging/ViewportHint;

    .line 2053
    .line 2054
    iget-object v1, v2, Landroidx/paging/HintHandler$HintFlow;->_flow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 2055
    .line 2056
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    .line 2057
    .line 2058
    .line 2059
    :cond_3c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2060
    .line 2061
    return-object v0

    .line 2062
    nop

    .line 2063
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
