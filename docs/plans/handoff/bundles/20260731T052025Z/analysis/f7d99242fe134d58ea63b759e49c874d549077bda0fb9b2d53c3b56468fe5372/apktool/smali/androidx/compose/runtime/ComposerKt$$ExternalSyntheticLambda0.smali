.class public final synthetic Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 9
    iput p1, p0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final invoke$androidx$compose$runtime$Recomposer$recompositionRunner$2$$ExternalSyntheticLambda0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

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
    iget-object v2, v0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

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
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    const-wide v3, 0xffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    const/16 v7, 0x9

    .line 15
    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x3

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x0

    .line 20
    const/4 v12, 0x1

    .line 21
    packed-switch v2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;

    .line 27
    .line 28
    move-object/from16 v2, p1

    .line 29
    .line 30
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 31
    .line 32
    check-cast v1, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v0, v2, v1}, Lcom/fsck/k9/ui/settings/notificationactions/NotificationListItemKt;->NotificationActionsList(Lcom/fsck/k9/ui/settings/notificationactions/NotificationActionsReorderController;Landroidx/compose/runtime/Composer;I)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_0
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;

    .line 50
    .line 51
    move-object/from16 v2, p1

    .line 52
    .line 53
    check-cast v2, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    check-cast v1, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0}, Lcom/fsck/k9/ui/settings/export/SettingsExportFragment;->getViewModel()Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v10, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->savedSelection:Lcom/fsck/k9/ui/settings/export/SavedListItemSelection;

    .line 70
    .line 71
    iget-object v3, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModel:Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;

    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-object v4, v3, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->settingsList:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Lcom/fsck/k9/ui/settings/export/SettingsListItem;

    .line 83
    .line 84
    iput-boolean v1, v2, Lcom/fsck/k9/ui/settings/export/SettingsListItem;->selected:Z

    .line 85
    .line 86
    sget-object v1, Lcom/fsck/k9/ui/settings/export/StatusText;->HIDDEN:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 87
    .line 88
    iput-object v1, v3, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->statusText:Lcom/fsck/k9/ui/settings/export/StatusText;

    .line 89
    .line 90
    iput-boolean v11, v3, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->isShareButtonVisible:Z

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/fsck/k9/ui/settings/export/SettingsExportUiModel;->updateExportButtonFromSelection()V

    .line 93
    .line 94
    .line 95
    iget-object v0, v0, Lcom/fsck/k9/ui/settings/export/SettingsExportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 101
    .line 102
    return-object v0

    .line 103
    :pswitch_1
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v0, Lkotlinx/collections/immutable/ImmutableList;

    .line 106
    .line 107
    move-object/from16 v2, p1

    .line 108
    .line 109
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 110
    .line 111
    check-cast v1, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-static {v0, v2, v1}, Landroidx/core/util/DebugUtils;->LibraryList(Lkotlinx/collections/immutable/ImmutableList;Landroidx/compose/runtime/Composer;I)V

    .line 121
    .line 122
    .line 123
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 124
    .line 125
    return-object v0

    .line 126
    :pswitch_2
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;

    .line 129
    .line 130
    move-object/from16 v2, p1

    .line 131
    .line 132
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 133
    .line 134
    check-cast v1, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    sget v3, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->$r8$clinit:I

    .line 141
    .line 142
    and-int/lit8 v3, v1, 0x3

    .line 143
    .line 144
    if-eq v3, v8, :cond_0

    .line 145
    .line 146
    move v3, v12

    .line 147
    goto :goto_0

    .line 148
    :cond_0
    move v3, v11

    .line 149
    :goto_0
    and-int/2addr v1, v12

    .line 150
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 151
    .line 152
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_4

    .line 157
    .line 158
    new-array v1, v11, [Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 165
    .line 166
    if-ne v3, v4, :cond_1

    .line 167
    .line 168
    new-instance v3, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;

    .line 169
    .line 170
    const/16 v5, 0xa

    .line 171
    .line 172
    invoke-direct {v3, v5}, Lcom/fsck/k9/job/SyncDebugWorker$$ExternalSyntheticLambda0;-><init>(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_1
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 179
    .line 180
    const/16 v5, 0x30

    .line 181
    .line 182
    invoke-static {v1, v3, v2, v5}, Landroidx/compose/runtime/saveable/SaverKt;->rememberSaveable([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    move-object/from16 v17, v1

    .line 187
    .line 188
    check-cast v17, Landroidx/compose/runtime/MutableState;

    .line 189
    .line 190
    iget-object v1, v0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->viewModel$delegate:Lkotlin/Lazy;

    .line 191
    .line 192
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    move-object v14, v1

    .line 197
    check-cast v14, Lcom/fsck/k9/activity/setup/AccountSetupCompositionViewModel;

    .line 198
    .line 199
    iget-object v1, v14, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->state:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 200
    .line 201
    invoke-static {v1, v2}, Landroidx/appcompat/app/ActionBar;->collectAsStateWithLifecycle(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    if-nez v3, :cond_2

    .line 214
    .line 215
    if-ne v5, v4, :cond_3

    .line 216
    .line 217
    :cond_2
    new-instance v5, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    .line 218
    .line 219
    invoke-direct {v5, v6, v14}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>(ILjava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_3
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 226
    .line 227
    iget-object v3, v14, Lnet/thunderbird/core/ui/contract/mvi/BaseViewModel;->effect:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 228
    .line 229
    new-instance v13, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 230
    .line 231
    const/4 v15, 0x0

    .line 232
    const/16 v18, 0x14

    .line 233
    .line 234
    move-object/from16 v16, v0

    .line 235
    .line 236
    invoke-direct/range {v13 .. v18}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Lnet/thunderbird/core/ui/contract/mvi/UnidirectionalViewModel;Lkotlin/coroutines/Continuation;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 237
    .line 238
    .line 239
    move-object/from16 v4, v17

    .line 240
    .line 241
    invoke-static {v2, v3, v13}, Landroidx/compose/runtime/Updater;->LaunchedEffect(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    iget-object v0, v0, Lcom/fsck/k9/activity/setup/AccountSetupComposition;->themeProvider$delegate:Lkotlin/Lazy;

    .line 251
    .line 252
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Lnet/thunderbird/core/ui/theme/api/FeatureThemeProvider;

    .line 257
    .line 258
    new-instance v3, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 259
    .line 260
    const/16 v6, 0x12

    .line 261
    .line 262
    invoke-direct {v3, v1, v5, v4, v6}, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 263
    .line 264
    .line 265
    const v1, -0x3a4f98c4

    .line 266
    .line 267
    .line 268
    invoke-static {v1, v3, v2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->rememberComposableLambda(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    const/4 v3, 0x6

    .line 273
    check-cast v0, Lapp/k9mail/provider/K9FeatureThemeProvider;

    .line 274
    .line 275
    invoke-virtual {v0, v1, v2, v3}, Lapp/k9mail/provider/K9FeatureThemeProvider;->WithTheme(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 280
    .line 281
    .line 282
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 283
    .line 284
    return-object v0

    .line 285
    :pswitch_3
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v0, Lcom/fsck/k9/activity/MessageHomeActivity;

    .line 288
    .line 289
    move-object/from16 v2, p1

    .line 290
    .line 291
    check-cast v2, Ljava/lang/String;

    .line 292
    .line 293
    check-cast v1, Ljava/lang/Long;

    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 296
    .line 297
    .line 298
    move-result-wide v3

    .line 299
    sget-object v1, Lcom/fsck/k9/activity/MessageHomeActivity;->coreResourceProvider$delegate:Lkotlin/Lazy;

    .line 300
    .line 301
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 302
    .line 303
    .line 304
    iget-object v1, v0, Lcom/fsck/k9/activity/MessageHomeActivity;->displayMode:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 305
    .line 306
    sget-object v5, Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;->SPLIT_VIEW:Lcom/fsck/k9/activity/MessageHomeActivity$DisplayMode;

    .line 307
    .line 308
    if-ne v1, v5, :cond_5

    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->removeMessageViewContainerFragment()V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageHomeActivity;->showMessageViewPlaceHolder()V

    .line 314
    .line 315
    .line 316
    :cond_5
    new-instance v1, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 317
    .line 318
    invoke-direct {v1}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v2}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAccountUuid(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v3, v4}, Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;->addAllowedFolder(J)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageHomeActivity;->performSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;)V

    .line 328
    .line 329
    .line 330
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 331
    .line 332
    return-object v0

    .line 333
    :pswitch_4
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;

    .line 336
    .line 337
    move-object/from16 v2, p1

    .line 338
    .line 339
    check-cast v2, Ljava/lang/String;

    .line 340
    .line 341
    check-cast v1, Landroid/os/Bundle;

    .line 342
    .line 343
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    const-string v2, "packageName"

    .line 350
    .line 351
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    if-eqz v1, :cond_6

    .line 356
    .line 357
    invoke-virtual {v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    .line 363
    .line 364
    iget-object v2, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2}, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->showLoadingProgress()V

    .line 370
    .line 371
    .line 372
    iget-object v3, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 373
    .line 374
    invoke-virtual {v3, v2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    const-string v3, "content://"

    .line 380
    .line 381
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v1, ".settings/"

    .line 388
    .line 389
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    iput-object v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->contentUri:Landroid/net/Uri;

    .line 401
    .line 402
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    new-instance v3, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;

    .line 407
    .line 408
    invoke-direct {v3, v0, v1, v10}, Landroidx/compose/foundation/gestures/ScrollableKt$semanticsScrollBy$2;-><init>(Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    .line 409
    .line 410
    .line 411
    invoke-static {v2, v10, v10, v3, v9}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 412
    .line 413
    .line 414
    goto :goto_2

    .line 415
    :cond_6
    invoke-virtual {v0}, Lapp/k9mail/feature/settings/import/ui/SettingsImportFragment;->getViewModel()Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    iget-object v1, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModel:Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;

    .line 420
    .line 421
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    .line 423
    .line 424
    iput-boolean v12, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickDocumentButtonEnabled:Z

    .line 425
    .line 426
    iput-boolean v12, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isScanQrCodeButtonEnabled:Z

    .line 427
    .line 428
    iget-boolean v2, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonPermanentlyDisabled:Z

    .line 429
    .line 430
    if-nez v2, :cond_7

    .line 431
    .line 432
    iput-boolean v12, v1, Lapp/k9mail/feature/settings/import/ui/SettingsImportUiModel;->isPickAppButtonEnabled:Z

    .line 433
    .line 434
    :cond_7
    iget-object v0, v0, Lapp/k9mail/feature/settings/import/ui/SettingsImportViewModel;->uiModelLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 435
    .line 436
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 440
    .line 441
    return-object v0

    .line 442
    :pswitch_5
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 443
    .line 444
    move-object v13, v0

    .line 445
    check-cast v13, Landroidx/navigation/NavHostController;

    .line 446
    .line 447
    move-object/from16 v0, p1

    .line 448
    .line 449
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 450
    .line 451
    check-cast v1, Ljava/lang/Integer;

    .line 452
    .line 453
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    and-int/lit8 v2, v1, 0x3

    .line 458
    .line 459
    if-eq v2, v8, :cond_8

    .line 460
    .line 461
    move v2, v12

    .line 462
    goto :goto_3

    .line 463
    :cond_8
    move v2, v11

    .line 464
    :goto_3
    and-int/2addr v1, v12

    .line 465
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 466
    .line 467
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 468
    .line 469
    .line 470
    move-result v1

    .line 471
    if-eqz v1, :cond_b

    .line 472
    .line 473
    sget-object v1, Landroidx/activity/compose/LocalActivityKt;->LocalActivity:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 474
    .line 475
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 480
    .line 481
    .line 482
    check-cast v1, Landroidx/activity/ComponentActivity;

    .line 483
    .line 484
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->changedInstance(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->rememberedValue()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    if-nez v2, :cond_9

    .line 493
    .line 494
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 495
    .line 496
    if-ne v3, v2, :cond_a

    .line 497
    .line 498
    :cond_9
    new-instance v3, Lapp/k9mail/feature/launcher/ui/FeatureLauncherAppKt$$ExternalSyntheticLambda3;

    .line 499
    .line 500
    invoke-direct {v3, v1, v11}, Lapp/k9mail/feature/launcher/ui/FeatureLauncherAppKt$$ExternalSyntheticLambda3;-><init>(Landroidx/activity/ComponentActivity;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    :cond_a
    move-object v14, v3

    .line 507
    check-cast v14, Lkotlin/jvm/functions/Function0;

    .line 508
    .line 509
    const/16 v24, 0x0

    .line 510
    .line 511
    const/16 v26, 0x0

    .line 512
    .line 513
    const/4 v15, 0x0

    .line 514
    const/16 v16, 0x0

    .line 515
    .line 516
    const/16 v17, 0x0

    .line 517
    .line 518
    const/16 v18, 0x0

    .line 519
    .line 520
    const/16 v19, 0x0

    .line 521
    .line 522
    const/16 v20, 0x0

    .line 523
    .line 524
    const/16 v21, 0x0

    .line 525
    .line 526
    const/16 v22, 0x0

    .line 527
    .line 528
    const/16 v23, 0x0

    .line 529
    .line 530
    move-object/from16 v25, v0

    .line 531
    .line 532
    invoke-static/range {v13 .. v26}, Landroidx/work/Operation$State;->FeatureLauncherNavHost(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lnet/thunderbird/app/common/feature/MessageListLauncher;Lapp/k9mail/feature/account/edit/navigation/DefaultAccountEditNavigation;Lnet/thunderbird/feature/account/settings/impl/DefaultAccountSettingsNavigation;Lapp/k9mail/feature/account/setup/navigation/DefaultAccountSetupNavigation;Lapp/k9mail/feature/onboarding/main/navigation/DefaultOnboardingNavigation;Lnet/thunderbird/feature/funding/noop/NoOpFundingNavigation;Lnet/thunderbird/feature/debug/settings/navigation/NoOpSecretDebugSettingsNavigation;Lnet/thunderbird/feature/thundermail/internal/common/navigation/DefaultThundermailNavigation;Lnet/thunderbird/feature/changelog/internal/DefaultChangelogNavigation;Landroidx/compose/runtime/Composer;I)V

    .line 533
    .line 534
    .line 535
    goto :goto_4

    .line 536
    :cond_b
    move-object/from16 v25, v0

    .line 537
    .line 538
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 539
    .line 540
    .line 541
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 542
    .line 543
    return-object v0

    .line 544
    :pswitch_6
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v0, Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;

    .line 547
    .line 548
    move-object/from16 v2, p1

    .line 549
    .line 550
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 551
    .line 552
    check-cast v1, Ljava/lang/Integer;

    .line 553
    .line 554
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    invoke-static {v7}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    invoke-static {v0, v2, v1}, Landroidx/work/OperationKt;->CertificateErrorOverview(Lapp/k9mail/feature/account/server/certificate/ui/ServerCertificateErrorContract$State;Landroidx/compose/runtime/Composer;I)V

    .line 562
    .line 563
    .line 564
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 565
    .line 566
    return-object v0

    .line 567
    :pswitch_7
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 568
    .line 569
    check-cast v0, Landroidx/navigation/compose/DialogNavigator;

    .line 570
    .line 571
    move-object/from16 v2, p1

    .line 572
    .line 573
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 574
    .line 575
    check-cast v1, Ljava/lang/Integer;

    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    invoke-static {v0, v2, v1}, Landroidx/core/util/DebugUtils;->DialogHost(Landroidx/navigation/compose/DialogNavigator;Landroidx/compose/runtime/Composer;I)V

    .line 585
    .line 586
    .line 587
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 588
    .line 589
    return-object v0

    .line 590
    :pswitch_8
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast v0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;

    .line 593
    .line 594
    move-object/from16 v2, p1

    .line 595
    .line 596
    check-cast v2, Landroid/graphics/RectF;

    .line 597
    .line 598
    check-cast v1, Landroid/graphics/RectF;

    .line 599
    .line 600
    invoke-static {v2}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-static {v1}, Landroidx/compose/ui/graphics/ColorKt;->toComposeRect(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;

    .line 605
    .line 606
    .line 607
    move-result-object v1

    .line 608
    iget v0, v0, Landroidx/core/view/DifferentialMotionFlingController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 609
    .line 610
    packed-switch v0, :pswitch_data_1

    .line 611
    .line 612
    .line 613
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 614
    .line 615
    .line 616
    move-result-wide v2

    .line 617
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/geometry/Rect;->contains-k-4lQ0M(J)Z

    .line 618
    .line 619
    .line 620
    move-result v0

    .line 621
    goto :goto_5

    .line 622
    :pswitch_9
    invoke-virtual {v2, v1}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    return-object v0

    .line 631
    :pswitch_a
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 632
    .line 633
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 634
    .line 635
    move-object/from16 v2, p1

    .line 636
    .line 637
    check-cast v2, Ljava/util/Set;

    .line 638
    .line 639
    check-cast v1, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 640
    .line 641
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->pendingChanges:Ljava/util/concurrent/atomic/AtomicReference;

    .line 642
    .line 643
    :goto_6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v3

    .line 647
    if-nez v3, :cond_c

    .line 648
    .line 649
    move-object v4, v2

    .line 650
    check-cast v4, Ljava/util/Collection;

    .line 651
    .line 652
    goto :goto_7

    .line 653
    :cond_c
    instance-of v4, v3, Ljava/util/Set;

    .line 654
    .line 655
    if-eqz v4, :cond_d

    .line 656
    .line 657
    new-array v4, v8, [Ljava/util/Set;

    .line 658
    .line 659
    aput-object v3, v4, v11

    .line 660
    .line 661
    aput-object v2, v4, v12

    .line 662
    .line 663
    invoke-static {v4}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    goto :goto_7

    .line 668
    :cond_d
    instance-of v4, v3, Ljava/util/List;

    .line 669
    .line 670
    if-eqz v4, :cond_11

    .line 671
    .line 672
    move-object v4, v3

    .line 673
    check-cast v4, Ljava/util/Collection;

    .line 674
    .line 675
    invoke-static {v2}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    :cond_e
    :goto_7
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    move-result v5

    .line 687
    if-eqz v5, :cond_10

    .line 688
    .line 689
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->drainChanges()Z

    .line 690
    .line 691
    .line 692
    move-result v1

    .line 693
    if-eqz v1, :cond_f

    .line 694
    .line 695
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->onChangedExecutor:Lkotlin/jvm/functions/Function1;

    .line 696
    .line 697
    new-instance v2, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;

    .line 698
    .line 699
    invoke-direct {v2, v7, v0}, Lcoil3/ImageLoader$Builder$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 700
    .line 701
    .line 702
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    :cond_f
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 706
    .line 707
    goto :goto_8

    .line 708
    :cond_10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v5

    .line 712
    if-eq v5, v3, :cond_e

    .line 713
    .line 714
    goto :goto_6

    .line 715
    :cond_11
    const-string v0, "Unexpected notification"

    .line 716
    .line 717
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 718
    .line 719
    .line 720
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 721
    .line 722
    .line 723
    :goto_8
    return-object v10

    .line 724
    :pswitch_b
    invoke-direct/range {p0 .. p2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->invoke$androidx$compose$runtime$SingleSubscriptionSnapshotFlowManager$$ExternalSyntheticLambda1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    return-object v0

    .line 729
    :pswitch_c
    invoke-direct/range {p0 .. p2}, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->invoke$androidx$compose$runtime$Recomposer$recompositionRunner$2$$ExternalSyntheticLambda0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    return-object v0

    .line 734
    :pswitch_d
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 735
    .line 736
    check-cast v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;

    .line 737
    .line 738
    move-object/from16 v2, p1

    .line 739
    .line 740
    check-cast v2, Ljava/util/Set;

    .line 741
    .line 742
    check-cast v1, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 743
    .line 744
    iget-object v1, v0, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Ljava/lang/Object;

    .line 745
    .line 746
    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v3, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->subscriptions:Landroidx/collection/MutableScatterMap;

    .line 748
    .line 749
    new-instance v4, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;

    .line 750
    .line 751
    const/16 v7, 0x18

    .line 752
    .line 753
    invoke-direct {v4, v7, v2, v0}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    invoke-static {v12, v4}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 757
    .line 758
    .line 759
    iget-object v2, v3, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 760
    .line 761
    iget-object v3, v3, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 762
    .line 763
    array-length v7, v3

    .line 764
    sub-int/2addr v7, v8

    .line 765
    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    if-ltz v7, :cond_15

    .line 771
    .line 772
    move v5, v11

    .line 773
    const-wide/16 p0, 0x80

    .line 774
    .line 775
    const/16 v16, 0x7

    .line 776
    .line 777
    :goto_9
    aget-wide v9, v3, v5

    .line 778
    .line 779
    const-wide/16 v17, 0xff

    .line 780
    .line 781
    not-long v12, v9

    .line 782
    shl-long v12, v12, v16

    .line 783
    .line 784
    and-long/2addr v12, v9

    .line 785
    and-long/2addr v12, v14

    .line 786
    cmp-long v12, v12, v14

    .line 787
    .line 788
    if-eqz v12, :cond_14

    .line 789
    .line 790
    sub-int v12, v5, v7

    .line 791
    .line 792
    not-int v12, v12

    .line 793
    ushr-int/lit8 v12, v12, 0x1f

    .line 794
    .line 795
    rsub-int/lit8 v12, v12, 0x8

    .line 796
    .line 797
    move v13, v11

    .line 798
    :goto_a
    if-ge v13, v12, :cond_13

    .line 799
    .line 800
    and-long v19, v9, v17

    .line 801
    .line 802
    cmp-long v19, v19, p0

    .line 803
    .line 804
    if-gez v19, :cond_12

    .line 805
    .line 806
    shl-int/lit8 v19, v5, 0x3

    .line 807
    .line 808
    add-int v19, v19, v13

    .line 809
    .line 810
    move-wide/from16 v20, v14

    .line 811
    .line 812
    aget-object v14, v2, v19

    .line 813
    .line 814
    invoke-virtual {v4, v14}, Landroidx/navigation/Navigator$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    goto :goto_b

    .line 818
    :cond_12
    move-wide/from16 v20, v14

    .line 819
    .line 820
    :goto_b
    shr-long/2addr v9, v6

    .line 821
    add-int/lit8 v13, v13, 0x1

    .line 822
    .line 823
    move-wide/from16 v14, v20

    .line 824
    .line 825
    goto :goto_a

    .line 826
    :cond_13
    move-wide/from16 v20, v14

    .line 827
    .line 828
    if-ne v12, v6, :cond_16

    .line 829
    .line 830
    goto :goto_c

    .line 831
    :cond_14
    move-wide/from16 v20, v14

    .line 832
    .line 833
    :goto_c
    if-eq v5, v7, :cond_16

    .line 834
    .line 835
    add-int/lit8 v5, v5, 0x1

    .line 836
    .line 837
    move-wide/from16 v14, v20

    .line 838
    .line 839
    goto :goto_9

    .line 840
    :cond_15
    move-wide/from16 v20, v14

    .line 841
    .line 842
    const-wide/16 p0, 0x80

    .line 843
    .line 844
    const/16 v16, 0x7

    .line 845
    .line 846
    const-wide/16 v17, 0xff

    .line 847
    .line 848
    :cond_16
    iget-object v2, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->toNotify:Landroidx/collection/MutableScatterSet;

    .line 849
    .line 850
    iget-object v3, v2, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    .line 851
    .line 852
    iget-object v2, v2, Landroidx/collection/MutableScatterSet;->metadata:[J

    .line 853
    .line 854
    array-length v4, v2

    .line 855
    sub-int/2addr v4, v8

    .line 856
    if-ltz v4, :cond_1a

    .line 857
    .line 858
    move v5, v11

    .line 859
    :goto_d
    aget-wide v7, v2, v5

    .line 860
    .line 861
    not-long v9, v7

    .line 862
    shl-long v9, v9, v16

    .line 863
    .line 864
    and-long/2addr v9, v7

    .line 865
    and-long v9, v9, v20

    .line 866
    .line 867
    cmp-long v9, v9, v20

    .line 868
    .line 869
    if-eqz v9, :cond_19

    .line 870
    .line 871
    sub-int v9, v5, v4

    .line 872
    .line 873
    not-int v9, v9

    .line 874
    ushr-int/lit8 v9, v9, 0x1f

    .line 875
    .line 876
    rsub-int/lit8 v9, v9, 0x8

    .line 877
    .line 878
    move v10, v11

    .line 879
    :goto_e
    if-ge v10, v9, :cond_18

    .line 880
    .line 881
    and-long v12, v7, v17

    .line 882
    .line 883
    cmp-long v12, v12, p0

    .line 884
    .line 885
    if-gez v12, :cond_17

    .line 886
    .line 887
    shl-int/lit8 v12, v5, 0x3

    .line 888
    .line 889
    add-int/2addr v12, v10

    .line 890
    aget-object v12, v3, v12

    .line 891
    .line 892
    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    .line 893
    .line 894
    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 895
    .line 896
    invoke-interface {v12, v13}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    goto :goto_f

    .line 900
    :catchall_0
    move-exception v0

    .line 901
    goto :goto_10

    .line 902
    :cond_17
    :goto_f
    shr-long/2addr v7, v6

    .line 903
    add-int/lit8 v10, v10, 0x1

    .line 904
    .line 905
    goto :goto_e

    .line 906
    :cond_18
    if-ne v9, v6, :cond_1a

    .line 907
    .line 908
    :cond_19
    if-eq v5, v4, :cond_1a

    .line 909
    .line 910
    add-int/lit8 v5, v5, 0x1

    .line 911
    .line 912
    goto :goto_d

    .line 913
    :cond_1a
    iget-object v0, v0, Landroidx/compose/runtime/MultiSubscriptionSnapshotFlowManager;->toNotify:Landroidx/collection/MutableScatterSet;

    .line 914
    .line 915
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    .line 917
    .line 918
    monitor-exit v1

    .line 919
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 920
    .line 921
    return-object v0

    .line 922
    :goto_10
    monitor-exit v1

    .line 923
    throw v0

    .line 924
    :pswitch_e
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 925
    .line 926
    check-cast v0, Landroidx/compose/runtime/MovableContent;

    .line 927
    .line 928
    move-object/from16 v2, p1

    .line 929
    .line 930
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 931
    .line 932
    check-cast v1, Ljava/lang/Integer;

    .line 933
    .line 934
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 935
    .line 936
    .line 937
    move-result v1

    .line 938
    and-int/lit8 v3, v1, 0x3

    .line 939
    .line 940
    if-eq v3, v8, :cond_1b

    .line 941
    .line 942
    move v3, v12

    .line 943
    goto :goto_11

    .line 944
    :cond_1b
    move v3, v11

    .line 945
    :goto_11
    and-int/2addr v1, v12

    .line 946
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 947
    .line 948
    invoke-virtual {v2, v1, v3}, Landroidx/compose/runtime/GapComposer;->shouldExecute(IZ)Z

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    if-eqz v1, :cond_1c

    .line 953
    .line 954
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    invoke-virtual {v2, v0, v1, v10, v11}, Landroidx/compose/runtime/GapComposer;->invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/lang/Object;Z)V

    .line 959
    .line 960
    .line 961
    goto :goto_12

    .line 962
    :cond_1c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->skipToGroupEnd()V

    .line 963
    .line 964
    .line 965
    :goto_12
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 966
    .line 967
    return-object v0

    .line 968
    :pswitch_f
    const/16 v16, 0x7

    .line 969
    .line 970
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 971
    .line 972
    check-cast v0, Landroidx/compose/material3/SegmentedButtonDefaults;

    .line 973
    .line 974
    move-object/from16 v2, p1

    .line 975
    .line 976
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 977
    .line 978
    check-cast v1, Ljava/lang/Integer;

    .line 979
    .line 980
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 981
    .line 982
    .line 983
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 984
    .line 985
    .line 986
    move-result v1

    .line 987
    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/SegmentedButtonDefaults;->ActiveIcon(Landroidx/compose/runtime/Composer;I)V

    .line 988
    .line 989
    .line 990
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 991
    .line 992
    return-object v0

    .line 993
    :pswitch_10
    sget-object v2, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    .line 994
    .line 995
    sget-object v5, Landroidx/compose/material3/SheetValue;->Expanded:Landroidx/compose/material3/SheetValue;

    .line 996
    .line 997
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v0, Landroidx/compose/material3/SheetState;

    .line 1000
    .line 1001
    move-object/from16 v6, p1

    .line 1002
    .line 1003
    check-cast v6, Landroidx/compose/ui/unit/IntSize;

    .line 1004
    .line 1005
    check-cast v1, Landroidx/compose/ui/unit/Constraints;

    .line 1006
    .line 1007
    iget-wide v13, v1, Landroidx/compose/ui/unit/Constraints;->value:J

    .line 1008
    .line 1009
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 1010
    .line 1011
    .line 1012
    move-result v1

    .line 1013
    int-to-float v1, v1

    .line 1014
    new-instance v7, Landroidx/compose/material3/internal/MapDraggableAnchors;

    .line 1015
    .line 1016
    new-instance v9, Ljava/util/LinkedHashMap;

    .line 1017
    .line 1018
    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1019
    .line 1020
    .line 1021
    sget-object v11, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    .line 1022
    .line 1023
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v13

    .line 1027
    invoke-interface {v9, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    iget-wide v13, v6, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 1031
    .line 1032
    and-long/2addr v13, v3

    .line 1033
    long-to-int v13, v13

    .line 1034
    int-to-float v13, v13

    .line 1035
    const/high16 v14, 0x40000000    # 2.0f

    .line 1036
    .line 1037
    div-float v14, v1, v14

    .line 1038
    .line 1039
    cmpl-float v13, v13, v14

    .line 1040
    .line 1041
    if-lez v13, :cond_1d

    .line 1042
    .line 1043
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v13

    .line 1047
    invoke-interface {v9, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    :cond_1d
    iget-wide v13, v6, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 1051
    .line 1052
    and-long/2addr v3, v13

    .line 1053
    long-to-int v3, v3

    .line 1054
    if-eqz v3, :cond_1e

    .line 1055
    .line 1056
    int-to-float v3, v3

    .line 1057
    sub-float/2addr v1, v3

    .line 1058
    const/4 v3, 0x0

    .line 1059
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    .line 1060
    .line 1061
    .line 1062
    move-result v1

    .line 1063
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v1

    .line 1067
    invoke-interface {v9, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    .line 1069
    .line 1070
    :cond_1e
    invoke-direct {v7, v9}, Landroidx/compose/material3/internal/MapDraggableAnchors;-><init>(Ljava/util/Map;)V

    .line 1071
    .line 1072
    .line 1073
    iget-object v0, v0, Landroidx/compose/material3/SheetState;->anchoredDraggableState:Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 1074
    .line 1075
    iget-object v0, v0, Landroidx/compose/material3/internal/AnchoredDraggableState;->targetValue$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 1076
    .line 1077
    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    check-cast v0, Landroidx/compose/material3/SheetValue;

    .line 1082
    .line 1083
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 1084
    .line 1085
    .line 1086
    move-result v0

    .line 1087
    if-eqz v0, :cond_23

    .line 1088
    .line 1089
    if-eq v0, v12, :cond_22

    .line 1090
    .line 1091
    if-ne v0, v8, :cond_21

    .line 1092
    .line 1093
    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result v0

    .line 1097
    if-eqz v0, :cond_1f

    .line 1098
    .line 1099
    goto :goto_13

    .line 1100
    :cond_1f
    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-eqz v0, :cond_20

    .line 1105
    .line 1106
    move-object v2, v5

    .line 1107
    goto :goto_13

    .line 1108
    :cond_20
    move-object v2, v11

    .line 1109
    :goto_13
    move-object v5, v2

    .line 1110
    goto :goto_14

    .line 1111
    :cond_21
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1112
    .line 1113
    .line 1114
    goto :goto_15

    .line 1115
    :cond_22
    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1116
    .line 1117
    .line 1118
    move-result v0

    .line 1119
    if-eqz v0, :cond_23

    .line 1120
    .line 1121
    goto :goto_14

    .line 1122
    :cond_23
    move-object v5, v11

    .line 1123
    :goto_14
    new-instance v10, Lkotlin/Pair;

    .line 1124
    .line 1125
    invoke-direct {v10, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1126
    .line 1127
    .line 1128
    :goto_15
    return-object v10

    .line 1129
    :pswitch_11
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1130
    .line 1131
    check-cast v0, Landroidx/compose/material3/ModalBottomSheetDialogLayout;

    .line 1132
    .line 1133
    move-object/from16 v2, p1

    .line 1134
    .line 1135
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1136
    .line 1137
    check-cast v1, Ljava/lang/Integer;

    .line 1138
    .line 1139
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1140
    .line 1141
    .line 1142
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1143
    .line 1144
    .line 1145
    move-result v1

    .line 1146
    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/ModalBottomSheetDialogLayout;->Content(Landroidx/compose/runtime/Composer;I)V

    .line 1147
    .line 1148
    .line 1149
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1150
    .line 1151
    return-object v0

    .line 1152
    :pswitch_12
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1153
    .line 1154
    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    .line 1155
    .line 1156
    move-object/from16 v2, p1

    .line 1157
    .line 1158
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1159
    .line 1160
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 1161
    .line 1162
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 1163
    .line 1164
    .line 1165
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1166
    .line 1167
    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1168
    .line 1169
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1170
    .line 1171
    return-object v0

    .line 1172
    :pswitch_13
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1173
    .line 1174
    check-cast v0, Landroid/app/RemoteAction;

    .line 1175
    .line 1176
    move-object/from16 v2, p1

    .line 1177
    .line 1178
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1179
    .line 1180
    check-cast v1, Ljava/lang/Integer;

    .line 1181
    .line 1182
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1183
    .line 1184
    .line 1185
    invoke-static {v0, v2}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->$r8$lambda$_S5HhoGNhMDALAgDAsR1MPDcOVo(Landroid/app/RemoteAction;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v0

    .line 1189
    return-object v0

    .line 1190
    :pswitch_14
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1191
    .line 1192
    check-cast v0, Landroid/view/textclassifier/TextClassification;

    .line 1193
    .line 1194
    move-object/from16 v2, p1

    .line 1195
    .line 1196
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1197
    .line 1198
    check-cast v1, Ljava/lang/Integer;

    .line 1199
    .line 1200
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1201
    .line 1202
    .line 1203
    invoke-static {v0, v2}, Landroidx/compose/foundation/text/contextmenu/internal/TextContextMenuHelperApi28;->$r8$lambda$Iiu63PSqqXu4q6mJEOSuHqNC9JA(Landroid/view/textclassifier/TextClassification;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    return-object v0

    .line 1208
    :pswitch_15
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1209
    .line 1210
    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    .line 1211
    .line 1212
    move-object/from16 v2, p1

    .line 1213
    .line 1214
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1215
    .line 1216
    check-cast v1, Ljava/lang/Integer;

    .line 1217
    .line 1218
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1219
    .line 1220
    .line 1221
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 1222
    .line 1223
    const v1, 0x27b3a34e

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 1227
    .line 1228
    .line 1229
    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->label:Ljava/lang/String;

    .line 1230
    .line 1231
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 1232
    .line 1233
    .line 1234
    return-object v0

    .line 1235
    :pswitch_16
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1236
    .line 1237
    check-cast v0, Landroidx/compose/foundation/text/TextLinkScope;

    .line 1238
    .line 1239
    move-object/from16 v2, p1

    .line 1240
    .line 1241
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1242
    .line 1243
    check-cast v1, Ljava/lang/Integer;

    .line 1244
    .line 1245
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1246
    .line 1247
    .line 1248
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1249
    .line 1250
    .line 1251
    move-result v1

    .line 1252
    invoke-virtual {v0, v2, v1}, Landroidx/compose/foundation/text/TextLinkScope;->LinksComposables(Landroidx/compose/runtime/Composer;I)V

    .line 1253
    .line 1254
    .line 1255
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1256
    .line 1257
    return-object v0

    .line 1258
    :pswitch_17
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1259
    .line 1260
    check-cast v0, Landroidx/compose/foundation/text/TextDragObserver;

    .line 1261
    .line 1262
    move-object/from16 v2, p1

    .line 1263
    .line 1264
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1265
    .line 1266
    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    .line 1267
    .line 1268
    iget-wide v1, v1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    .line 1269
    .line 1270
    invoke-interface {v0, v1, v2}, Landroidx/compose/foundation/text/TextDragObserver;->onDrag-k-4lQ0M(J)V

    .line 1271
    .line 1272
    .line 1273
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1274
    .line 1275
    return-object v0

    .line 1276
    :pswitch_18
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1277
    .line 1278
    check-cast v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1279
    .line 1280
    move-object/from16 v2, p1

    .line 1281
    .line 1282
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1283
    .line 1284
    check-cast v1, Ljava/lang/Integer;

    .line 1285
    .line 1286
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1287
    .line 1288
    .line 1289
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1290
    .line 1291
    .line 1292
    move-result v1

    .line 1293
    invoke-static {v0, v2, v1}, Landroidx/compose/foundation/text/BasicTextKt;->TextFieldCursorHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    .line 1294
    .line 1295
    .line 1296
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1297
    .line 1298
    return-object v0

    .line 1299
    :pswitch_19
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1300
    .line 1301
    check-cast v0, Landroidx/compose/ui/Alignment;

    .line 1302
    .line 1303
    move-object/from16 v2, p1

    .line 1304
    .line 1305
    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    .line 1306
    .line 1307
    move-object v6, v1

    .line 1308
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1309
    .line 1310
    const-wide/16 v3, 0x0

    .line 1311
    .line 1312
    iget-wide v1, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 1313
    .line 1314
    move-wide/from16 v27, v3

    .line 1315
    .line 1316
    move-wide v4, v1

    .line 1317
    move-wide/from16 v2, v27

    .line 1318
    .line 1319
    move-object v1, v0

    .line 1320
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 1321
    .line 1322
    .line 1323
    move-result-wide v0

    .line 1324
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 1325
    .line 1326
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 1327
    .line 1328
    .line 1329
    return-object v2

    .line 1330
    :pswitch_1a
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1331
    .line 1332
    check-cast v0, Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 1333
    .line 1334
    move-object/from16 v2, p1

    .line 1335
    .line 1336
    check-cast v2, Landroidx/compose/ui/unit/IntSize;

    .line 1337
    .line 1338
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 1339
    .line 1340
    iget-wide v1, v2, Landroidx/compose/ui/unit/IntSize;->packedValue:J

    .line 1341
    .line 1342
    and-long/2addr v1, v3

    .line 1343
    long-to-int v1, v1

    .line 1344
    invoke-virtual {v0, v11, v1}, Landroidx/compose/ui/BiasAlignment$Vertical;->align(II)I

    .line 1345
    .line 1346
    .line 1347
    move-result v0

    .line 1348
    int-to-long v0, v0

    .line 1349
    and-long/2addr v0, v3

    .line 1350
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 1351
    .line 1352
    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 1353
    .line 1354
    .line 1355
    return-object v2

    .line 1356
    :pswitch_1b
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1357
    .line 1358
    check-cast v0, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 1359
    .line 1360
    move-object/from16 v2, p1

    .line 1361
    .line 1362
    check-cast v2, Ljava/lang/Float;

    .line 1363
    .line 1364
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 1365
    .line 1366
    .line 1367
    move-result v2

    .line 1368
    check-cast v1, Ljava/lang/Float;

    .line 1369
    .line 1370
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 1371
    .line 1372
    .line 1373
    move-result v1

    .line 1374
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v3

    .line 1378
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$1$1;

    .line 1379
    .line 1380
    invoke-direct {v4, v0, v2, v1, v10}, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;FFLkotlin/coroutines/Continuation;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-static {v3, v10, v10, v4, v9}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1384
    .line 1385
    .line 1386
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1387
    .line 1388
    return-object v0

    .line 1389
    :pswitch_1c
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1390
    .line 1391
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition;

    .line 1392
    .line 1393
    move-object/from16 v2, p1

    .line 1394
    .line 1395
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 1396
    .line 1397
    check-cast v1, Ljava/lang/Integer;

    .line 1398
    .line 1399
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1400
    .line 1401
    .line 1402
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->updateChangedFlags(I)I

    .line 1403
    .line 1404
    .line 1405
    move-result v1

    .line 1406
    invoke-virtual {v0, v2, v1}, Landroidx/compose/animation/core/InfiniteTransition;->run$animation_core(Landroidx/compose/runtime/Composer;I)V

    .line 1407
    .line 1408
    .line 1409
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1410
    .line 1411
    return-object v0

    .line 1412
    :pswitch_1d
    iget-object v0, v0, Landroidx/compose/runtime/ComposerKt$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 1413
    .line 1414
    check-cast v0, Lnet/openid/appauth/AuthorizationRequest$Builder;

    .line 1415
    .line 1416
    move-object/from16 v2, p1

    .line 1417
    .line 1418
    check-cast v2, Ljava/lang/Integer;

    .line 1419
    .line 1420
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1421
    .line 1422
    .line 1423
    instance-of v2, v1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1424
    .line 1425
    if-eqz v2, :cond_25

    .line 1426
    .line 1427
    move-object v2, v1

    .line 1428
    check-cast v2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 1429
    .line 1430
    iget-object v3, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/Object;

    .line 1431
    .line 1432
    check-cast v3, Landroidx/collection/MutableScatterSet;

    .line 1433
    .line 1434
    if-nez v3, :cond_24

    .line 1435
    .line 1436
    sget-object v3, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 1437
    .line 1438
    new-instance v3, Landroidx/collection/MutableScatterSet;

    .line 1439
    .line 1440
    invoke-direct {v3}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 1441
    .line 1442
    .line 1443
    iput-object v3, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mCodeVerifier:Ljava/lang/Object;

    .line 1444
    .line 1445
    :cond_24
    invoke-virtual {v3, v2}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 1446
    .line 1447
    .line 1448
    iget-object v3, v0, Lnet/openid/appauth/AuthorizationRequest$Builder;->mState:Ljava/lang/Object;

    .line 1449
    .line 1450
    check-cast v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 1451
    .line 1452
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 1453
    .line 1454
    .line 1455
    :cond_25
    instance-of v2, v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1456
    .line 1457
    if-eqz v2, :cond_26

    .line 1458
    .line 1459
    move-object v2, v1

    .line 1460
    check-cast v2, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 1461
    .line 1462
    invoke-virtual {v0, v2}, Lnet/openid/appauth/AuthorizationRequest$Builder;->forgetting(Landroidx/compose/runtime/GapRememberObserverHolder;)V

    .line 1463
    .line 1464
    .line 1465
    :cond_26
    instance-of v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1466
    .line 1467
    if-eqz v0, :cond_27

    .line 1468
    .line 1469
    move-object v0, v1

    .line 1470
    check-cast v0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 1471
    .line 1472
    invoke-virtual {v0}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    .line 1473
    .line 1474
    .line 1475
    :cond_27
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1476
    .line 1477
    return-object v0

    .line 1478
    nop

    .line 1479
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

    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
    .end packed-switch
.end method
