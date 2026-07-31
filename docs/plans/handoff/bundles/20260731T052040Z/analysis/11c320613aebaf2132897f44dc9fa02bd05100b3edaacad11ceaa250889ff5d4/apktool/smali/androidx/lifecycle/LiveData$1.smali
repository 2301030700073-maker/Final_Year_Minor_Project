.class public final Landroidx/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/lifecycle/LiveData$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final run$androidx$preference$PreferenceGroup$1()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Landroidx/preference/PreferenceGroup;

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v0
.end method

.method private final run$okhttp3$internal$concurrent$TaskRunner$runnable$1()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lokhttp3/internal/concurrent/TaskRunner;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget v1, v0, Lokhttp3/internal/concurrent/TaskRunner;->runCallCount:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    add-int/2addr v1, v2

    .line 10
    iput v1, v0, Lokhttp3/internal/concurrent/TaskRunner;->runCallCount:I

    .line 11
    .line 12
    invoke-virtual {v0}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 16
    monitor-exit v0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    const-wide/16 v4, -0x1

    .line 29
    .line 30
    :try_start_1
    iget-object v6, v1, Lokhttp3/internal/concurrent/Task;->name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v6, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v6, Lokhttp3/internal/concurrent/TaskRunner;

    .line 38
    .line 39
    iget-object v6, v6, Lokhttp3/internal/concurrent/TaskRunner;->logger$1:Ljava/util/logging/Logger;

    .line 40
    .line 41
    iget-object v7, v1, Lokhttp3/internal/concurrent/Task;->queue:Lokhttp3/internal/concurrent/TaskQueue;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 47
    .line 48
    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_1

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v9

    .line 58
    const-string/jumbo v11, "starting"

    .line 59
    .line 60
    .line 61
    invoke-static {v6, v1, v7, v11}, Landroidx/sqlite/SQLite;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v2

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    move-wide v9, v4

    .line 68
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Lokhttp3/internal/concurrent/Task;->runOnce()J

    .line 69
    .line 70
    .line 71
    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    if-eqz v8, :cond_2

    .line 73
    .line 74
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v13

    .line 78
    sub-long/2addr v13, v9

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v9, "finished run in "

    .line 85
    .line 86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-static {v13, v14}, Landroidx/sqlite/SQLite;->formatDuration(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-static {v6, v1, v7, v8}, Landroidx/sqlite/SQLite;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    iget-object v6, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v6, Lokhttp3/internal/concurrent/TaskRunner;

    .line 106
    .line 107
    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :try_start_4
    invoke-static {v6, v1, v11, v12, v2}, Lokhttp3/internal/concurrent/TaskRunner;->access$afterRun(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;JZ)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Lokhttp3/internal/concurrent/TaskRunner;->awaitTaskToRun()Lokhttp3/internal/concurrent/Task;

    .line 112
    .line 113
    .line 114
    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 116
    if-nez v7, :cond_3

    .line 117
    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_3
    move-object v1, v7

    .line 123
    goto :goto_0

    .line 124
    :catchall_1
    move-exception v2

    .line 125
    :try_start_6
    monitor-exit v6

    .line 126
    throw v2

    .line 127
    :catchall_2
    move-exception v2

    .line 128
    if-eqz v8, :cond_4

    .line 129
    .line 130
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 131
    .line 132
    .line 133
    move-result-wide v11

    .line 134
    sub-long/2addr v11, v9

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v9, "failed a run in "

    .line 141
    .line 142
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-static {v11, v12}, Landroidx/sqlite/SQLite;->formatDuration(J)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-static {v6, v1, v7, v8}, Landroidx/sqlite/SQLite;->access$log(Ljava/util/logging/Logger;Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 160
    :goto_2
    :try_start_7
    iget-object p0, p0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p0, Lokhttp3/internal/concurrent/TaskRunner;

    .line 163
    .line 164
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 165
    const/4 v6, 0x0

    .line 166
    :try_start_8
    invoke-static {p0, v1, v4, v5, v6}, Lokhttp3/internal/concurrent/TaskRunner;->access$afterRun(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/concurrent/Task;JZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 167
    .line 168
    .line 169
    :try_start_9
    monitor-exit p0

    .line 170
    instance-of p0, v2, Ljava/lang/InterruptedException;

    .line 171
    .line 172
    if-eqz p0, :cond_5

    .line 173
    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :catchall_3
    move-exception p0

    .line 186
    goto :goto_3

    .line 187
    :cond_5
    :try_start_a
    throw v2

    .line 188
    :catchall_4
    move-exception v1

    .line 189
    monitor-exit p0

    .line 190
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 191
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw p0

    .line 195
    :catchall_5
    move-exception p0

    .line 196
    monitor-exit v0

    .line 197
    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/lifecycle/LiveData$1;->$r8$classId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    const/4 v5, 0x0

    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-object v1, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->Companion:Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener$Companion;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;

    .line 17
    .line 18
    iput-boolean v5, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->isDoubleTapping:Z

    .line 19
    .line 20
    iget-object v0, v0, Lorg/schabi/newpipe/player/gesture/BasePlayerGestureListener;->doubleTapControls:Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;->onDoubleTapFinished()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_0
    invoke-direct {v0}, Landroidx/lifecycle/LiveData$1;->run$okhttp3$internal$concurrent$TaskRunner$runnable$1()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_1
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 35
    .line 36
    iget-object v1, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mDirectory:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/io/File;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    array-length v2, v1

    .line 48
    :goto_0
    if-ge v5, v2, :cond_2

    .line 49
    .line 50
    aget-object v3, v1, v5

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Lcom/livefront/bridge/disk/FileDiskHandler;->getBytesInternal(Ljava/lang/String;)[B

    .line 57
    .line 58
    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    return-void

    .line 63
    :pswitch_2
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lcom/livefront/bridge/BridgeDelegate;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/livefront/bridge/BridgeDelegate;->mDiskHandler:Lcom/livefront/bridge/disk/FileDiskHandler;

    .line 68
    .line 69
    iget-object v1, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mPendingLoadFuture:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v1, Ljava/util/concurrent/Future;

    .line 72
    .line 73
    invoke-interface {v1, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/livefront/bridge/disk/FileDiskHandler;->mKeyByteMap:Ljava/io/Serializable;

    .line 77
    .line 78
    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    .line 79
    .line 80
    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Lcom/livefront/bridge/disk/FileDiskHandler;->deleteFilesByKey(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_3
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/google/android/material/textfield/EndCompoundLayout;->endIconView:Lcom/google/android/material/internal/CheckableImageButton;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_4
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;

    .line 105
    .line 106
    iput-boolean v5, v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    .line 107
    .line 108
    iget-object v1, v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 111
    .line 112
    iget-object v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 113
    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    invoke-virtual {v3}, Landroidx/customview/widget/ViewDragHelper;->continueSettling()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-eqz v3, :cond_3

    .line 121
    .line 122
    iget v1, v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->continueSettlingToState(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    iget v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->state:I

    .line 129
    .line 130
    if-ne v3, v2, :cond_4

    .line 131
    .line 132
    iget v0, v0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_2
    return-void

    .line 138
    :pswitch_5
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 141
    .line 142
    invoke-virtual {v0, v5}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->populate()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_6
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Landroidx/preference/PreferenceGroupAdapter;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V

    .line 154
    .line 155
    .line 156
    return-void

    .line 157
    :pswitch_7
    invoke-direct {v0}, Landroidx/lifecycle/LiveData$1;->run$androidx$preference$PreferenceGroup$1()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_8
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Landroidx/preference/PreferenceFragmentCompat;

    .line 164
    .line 165
    iget-object v0, v0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 166
    .line 167
    invoke-virtual {v0, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :pswitch_9
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v0, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->scheduleShowSoftInputInner()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :pswitch_a
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 182
    .line 183
    iget-object v1, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->this$0:Landroidx/media/MediaBrowserServiceCompat;

    .line 184
    .line 185
    iget-object v1, v1, Landroidx/media/MediaBrowserServiceCompat;->mConnections:Landroidx/collection/ArrayMap;

    .line 186
    .line 187
    iget-object v0, v0, Landroidx/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Lcoil3/memory/MemoryCacheService;

    .line 188
    .line 189
    iget-object v0, v0, Lcoil3/memory/MemoryCacheService;->imageLoader:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v0, Landroid/os/Messenger;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_b
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;

    .line 204
    .line 205
    iget-object v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->this$0:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 206
    .line 207
    iget-object v2, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 208
    .line 209
    iget v2, v2, Landroidx/customview/widget/ViewDragHelper;->mEdgeSize:I

    .line 210
    .line 211
    iget v3, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    .line 212
    .line 213
    const/4 v6, 0x3

    .line 214
    if-ne v3, v6, :cond_5

    .line 215
    .line 216
    move v7, v4

    .line 217
    goto :goto_3

    .line 218
    :cond_5
    move v7, v5

    .line 219
    :goto_3
    const/4 v8, 0x5

    .line 220
    if-eqz v7, :cond_7

    .line 221
    .line 222
    invoke-virtual {v1, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    if-eqz v9, :cond_6

    .line 227
    .line 228
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    neg-int v10, v10

    .line 233
    goto :goto_4

    .line 234
    :cond_6
    move v10, v5

    .line 235
    :goto_4
    add-int/2addr v10, v2

    .line 236
    goto :goto_5

    .line 237
    :cond_7
    invoke-virtual {v1, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v9

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    sub-int/2addr v10, v2

    .line 246
    :goto_5
    if-eqz v9, :cond_d

    .line 247
    .line 248
    if-eqz v7, :cond_8

    .line 249
    .line 250
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-lt v2, v10, :cond_9

    .line 255
    .line 256
    :cond_8
    if-nez v7, :cond_d

    .line 257
    .line 258
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-le v2, v10, :cond_d

    .line 263
    .line 264
    :cond_9
    invoke-virtual {v1, v9}, Landroidx/drawerlayout/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-nez v2, :cond_d

    .line 269
    .line 270
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 275
    .line 276
    iget-object v0, v0, Landroidx/drawerlayout/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroidx/customview/widget/ViewDragHelper;

    .line 277
    .line 278
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    invoke-virtual {v0, v9, v10, v7}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 283
    .line 284
    .line 285
    iput-boolean v4, v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 288
    .line 289
    .line 290
    if-ne v3, v6, :cond_a

    .line 291
    .line 292
    move v6, v8

    .line 293
    :cond_a
    invoke-virtual {v1, v6}, Landroidx/drawerlayout/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    if-eqz v0, :cond_b

    .line 298
    .line 299
    invoke-virtual {v1, v0, v4}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    .line 300
    .line 301
    .line 302
    :cond_b
    iget-boolean v0, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 303
    .line 304
    if-nez v0, :cond_d

    .line 305
    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 307
    .line 308
    .line 309
    move-result-wide v6

    .line 310
    const/4 v12, 0x0

    .line 311
    const/4 v13, 0x0

    .line 312
    const/4 v10, 0x3

    .line 313
    const/4 v11, 0x0

    .line 314
    move-wide v8, v6

    .line 315
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    :goto_6
    if-ge v5, v2, :cond_c

    .line 324
    .line 325
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 330
    .line 331
    .line 332
    add-int/lit8 v5, v5, 0x1

    .line 333
    .line 334
    goto :goto_6

    .line 335
    :cond_c
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 336
    .line 337
    .line 338
    iput-boolean v4, v1, Landroidx/drawerlayout/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 339
    .line 340
    :cond_d
    return-void

    .line 341
    :pswitch_c
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast v0, Landroidx/customview/widget/ViewDragHelper;

    .line 344
    .line 345
    invoke-virtual {v0, v5}, Landroidx/customview/widget/ViewDragHelper;->setDragState(I)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :pswitch_d
    iget-object v1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v1, Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 352
    .line 353
    iget-object v2, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget$1:Landroidx/appcompat/widget/DropDownListView;

    .line 354
    .line 355
    iget-object v3, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 356
    .line 357
    iget-boolean v4, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 358
    .line 359
    if-nez v4, :cond_e

    .line 360
    .line 361
    goto/16 :goto_8

    .line 362
    .line 363
    :cond_e
    iget-boolean v4, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    .line 364
    .line 365
    if-eqz v4, :cond_f

    .line 366
    .line 367
    iput-boolean v5, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsReset:Z

    .line 368
    .line 369
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 370
    .line 371
    .line 372
    move-result-wide v6

    .line 373
    iput-wide v6, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    .line 374
    .line 375
    const-wide/16 v8, -0x1

    .line 376
    .line 377
    iput-wide v8, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 378
    .line 379
    iput-wide v6, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 380
    .line 381
    const/high16 v4, 0x3f000000    # 0.5f

    .line 382
    .line 383
    iput v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 384
    .line 385
    :cond_f
    iget-wide v6, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 386
    .line 387
    const-wide/16 v8, 0x0

    .line 388
    .line 389
    cmp-long v4, v6, v8

    .line 390
    .line 391
    if-lez v4, :cond_10

    .line 392
    .line 393
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 394
    .line 395
    .line 396
    move-result-wide v6

    .line 397
    iget-wide v10, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 398
    .line 399
    iget v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 400
    .line 401
    int-to-long v12, v4

    .line 402
    add-long/2addr v10, v12

    .line 403
    cmp-long v4, v6, v10

    .line 404
    .line 405
    if-lez v4, :cond_10

    .line 406
    .line 407
    goto :goto_7

    .line 408
    :cond_10
    invoke-virtual {v1}, Landroidx/core/widget/ListViewAutoScrollHelper;->shouldAnimate()Z

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    if-nez v4, :cond_11

    .line 413
    .line 414
    :goto_7
    iput-boolean v5, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mAnimating:Z

    .line 415
    .line 416
    goto :goto_8

    .line 417
    :cond_11
    iget-boolean v4, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    .line 418
    .line 419
    if-eqz v4, :cond_12

    .line 420
    .line 421
    iput-boolean v5, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mNeedsCancel:Z

    .line 422
    .line 423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 424
    .line 425
    .line 426
    move-result-wide v10

    .line 427
    const/16 v16, 0x0

    .line 428
    .line 429
    const/16 v17, 0x0

    .line 430
    .line 431
    const/4 v14, 0x3

    .line 432
    const/4 v15, 0x0

    .line 433
    move-wide v12, v10

    .line 434
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/DropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 439
    .line 440
    .line 441
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 442
    .line 443
    .line 444
    :cond_12
    iget-wide v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 445
    .line 446
    cmp-long v4, v4, v8

    .line 447
    .line 448
    if-eqz v4, :cond_13

    .line 449
    .line 450
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 451
    .line 452
    .line 453
    move-result-wide v4

    .line 454
    invoke-virtual {v3, v4, v5}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    .line 455
    .line 456
    .line 457
    move-result v6

    .line 458
    const/high16 v7, -0x3f800000    # -4.0f

    .line 459
    .line 460
    mul-float/2addr v7, v6

    .line 461
    mul-float/2addr v7, v6

    .line 462
    const/high16 v8, 0x40800000    # 4.0f

    .line 463
    .line 464
    mul-float/2addr v6, v8

    .line 465
    add-float/2addr v6, v7

    .line 466
    iget-wide v7, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 467
    .line 468
    sub-long v7, v4, v7

    .line 469
    .line 470
    iput-wide v4, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    .line 471
    .line 472
    long-to-float v4, v7

    .line 473
    mul-float/2addr v4, v6

    .line 474
    iget v3, v3, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    .line 475
    .line 476
    mul-float/2addr v4, v3

    .line 477
    float-to-int v3, v4

    .line 478
    iget-object v1, v1, Landroidx/core/widget/ListViewAutoScrollHelper;->mTarget:Landroidx/appcompat/widget/DropDownListView;

    .line 479
    .line 480
    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->scrollListBy(I)V

    .line 481
    .line 482
    .line 483
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 484
    .line 485
    invoke-virtual {v2, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 486
    .line 487
    .line 488
    goto :goto_8

    .line 489
    :cond_13
    const-string v0, "Cannot compute scroll delta before calling start()"

    .line 490
    .line 491
    invoke-static {v0}, Lorg/mozilla/javascript/Node$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    :goto_8
    return-void

    .line 495
    :pswitch_e
    iget-object v1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 496
    .line 497
    move-object v5, v1

    .line 498
    check-cast v5, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 499
    .line 500
    invoke-virtual {v5, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 501
    .line 502
    .line 503
    iget-object v6, v5, Landroidx/compose/ui/platform/AndroidComposeView;->previousMotionEvent:Landroid/view/MotionEvent;

    .line 504
    .line 505
    if-eqz v6, :cond_15

    .line 506
    .line 507
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    const/16 v1, 0xa

    .line 512
    .line 513
    if-eq v0, v1, :cond_15

    .line 514
    .line 515
    if-eq v0, v4, :cond_15

    .line 516
    .line 517
    const/4 v1, 0x7

    .line 518
    if-eq v0, v1, :cond_14

    .line 519
    .line 520
    const/16 v3, 0x9

    .line 521
    .line 522
    if-eq v0, v3, :cond_14

    .line 523
    .line 524
    move v7, v2

    .line 525
    goto :goto_9

    .line 526
    :cond_14
    move v7, v1

    .line 527
    :goto_9
    iget-wide v8, v5, Landroidx/compose/ui/platform/AndroidComposeView;->relayoutTime:J

    .line 528
    .line 529
    const/4 v10, 0x0

    .line 530
    invoke-virtual/range {v5 .. v10}, Landroidx/compose/ui/platform/AndroidComposeView;->sendSimulatedEvent(Landroid/view/MotionEvent;IJZ)V

    .line 531
    .line 532
    .line 533
    :cond_15
    return-void

    .line 534
    :pswitch_f
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 537
    .line 538
    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->showOverflowMenu()Z

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    :pswitch_10
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 545
    .line 546
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 547
    .line 548
    if-eqz v1, :cond_16

    .line 549
    .line 550
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    const-string v2, "input_method"

    .line 555
    .line 556
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 561
    .line 562
    invoke-virtual {v1, v0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 563
    .line 564
    .line 565
    iput-boolean v5, v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 566
    .line 567
    :cond_16
    return-void

    .line 568
    :pswitch_11
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 569
    .line 570
    check-cast v0, Landroidx/appcompat/widget/DropDownListView;

    .line 571
    .line 572
    iput-object v3, v0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/lifecycle/LiveData$1;

    .line 573
    .line 574
    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 575
    .line 576
    .line 577
    return-void

    .line 578
    :pswitch_12
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 579
    .line 580
    check-cast v0, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;

    .line 581
    .line 582
    invoke-virtual {v0, v4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->animate(Z)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 586
    .line 587
    .line 588
    return-void

    .line 589
    :pswitch_13
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v0, Landroidx/appcompat/app/ToolbarActionBar;

    .line 592
    .line 593
    iget-object v1, v0, Landroidx/appcompat/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 594
    .line 595
    invoke-virtual {v0}, Landroidx/appcompat/app/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    instance-of v2, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 600
    .line 601
    if-eqz v2, :cond_17

    .line 602
    .line 603
    move-object v2, v0

    .line 604
    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 605
    .line 606
    goto :goto_a

    .line 607
    :cond_17
    move-object v2, v3

    .line 608
    :goto_a
    if-eqz v2, :cond_18

    .line 609
    .line 610
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 611
    .line 612
    .line 613
    :cond_18
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 614
    .line 615
    .line 616
    invoke-interface {v1, v5, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 617
    .line 618
    .line 619
    move-result v4

    .line 620
    if-eqz v4, :cond_19

    .line 621
    .line 622
    invoke-interface {v1, v5, v3, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    if-nez v1, :cond_1a

    .line 627
    .line 628
    goto :goto_b

    .line 629
    :catchall_0
    move-exception v0

    .line 630
    goto :goto_c

    .line 631
    :cond_19
    :goto_b
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    .line 633
    .line 634
    :cond_1a
    if-eqz v2, :cond_1b

    .line 635
    .line 636
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 637
    .line 638
    .line 639
    :cond_1b
    return-void

    .line 640
    :goto_c
    if-eqz v2, :cond_1c

    .line 641
    .line 642
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 643
    .line 644
    .line 645
    :cond_1c
    throw v0

    .line 646
    :pswitch_14
    iget-object v1, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 649
    .line 650
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    .line 651
    .line 652
    monitor-enter v1

    .line 653
    :try_start_1
    iget-object v2, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 654
    .line 655
    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 656
    .line 657
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 658
    .line 659
    iget-object v3, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v3, Landroidx/lifecycle/LiveData;

    .line 662
    .line 663
    sget-object v4, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    .line 664
    .line 665
    iput-object v4, v3, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 666
    .line 667
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 668
    iget-object v0, v0, Landroidx/lifecycle/LiveData$1;->this$0:Ljava/lang/Object;

    .line 669
    .line 670
    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 671
    .line 672
    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 673
    .line 674
    .line 675
    return-void

    .line 676
    :catchall_1
    move-exception v0

    .line 677
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 678
    throw v0

    .line 679
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
