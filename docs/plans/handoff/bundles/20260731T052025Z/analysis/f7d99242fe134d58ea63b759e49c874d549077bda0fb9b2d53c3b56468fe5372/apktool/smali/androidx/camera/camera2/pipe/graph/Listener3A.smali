.class public final Landroidx/camera/camera2/pipe/graph/Listener3A;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;
.implements Landroidx/camera/camera2/pipe/graph/GraphLoop$Listener;


# instance fields
.field public final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final synthetic onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onGraphShutdown()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->onStopRepeating()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final onGraphStopped()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->onStopRepeating()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequestNumber-my6kx4g()J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    invoke-virtual {p0, p1, p2, p4}, Landroidx/camera/camera2/pipe/graph/Listener3A;->updateListeners-voP-kFw(JLandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    .line 24
    .line 25
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequestNumber-my6kx4g()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v3, v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->initialRequestNumber:Landroidx/camera/camera2/pipe/RequestNumber;

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    new-instance v3, Landroidx/camera/camera2/pipe/RequestNumber;

    .line 35
    .line 36
    invoke-direct {v3, v1, v2}, Landroidx/camera/camera2/pipe/RequestNumber;-><init>(J)V

    .line 37
    .line 38
    .line 39
    iput-object v3, v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->initialRequestNumber:Landroidx/camera/camera2/pipe/RequestNumber;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    :goto_1
    monitor-exit v0

    .line 45
    goto :goto_0

    .line 46
    :goto_2
    monitor-exit v0

    .line 47
    throw p0

    .line 48
    :cond_1
    return-void
.end method

.method public final onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onStopRepeating()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->onStopRepeating()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method public final onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroidx/camera/camera2/pipe/RequestMetadata;->getRequestNumber-my6kx4g()J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    iget-object p3, p4, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/UnsafeWrapper;

    .line 6
    .line 7
    check-cast p3, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/camera2/pipe/graph/Listener3A;->updateListeners-voP-kFw(JLandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final updateListeners-voP-kFw(JLandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_9

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 29
    .line 30
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_8

    .line 35
    .line 36
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 37
    .line 38
    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_0
    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->initialRequestNumber:Landroidx/camera/camera2/pipe/RequestNumber;

    .line 48
    .line 49
    if-eqz v2, :cond_7

    .line 50
    .line 51
    iget-wide v2, v2, Landroidx/camera/camera2/pipe/RequestNumber;->value:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    cmp-long v2, p1, v2

    .line 54
    .line 55
    if-gez v2, :cond_1

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_1
    monitor-exit v1

    .line 60
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v3, p3, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;->captureResult:Landroid/hardware/camera2/CaptureResult;

    .line 66
    .line 67
    invoke-virtual {v3, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/Long;

    .line 72
    .line 73
    iget-object v3, p3, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;->captureResult:Landroid/hardware/camera2/CaptureResult;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    iget-object v5, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timestampOfFirstUpdateNs:Ljava/lang/Long;

    .line 82
    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    iput-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timestampOfFirstUpdateNs:Ljava/lang/Long;

    .line 86
    .line 87
    :cond_2
    iget-object v5, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timestampOfFirstUpdateNs:Ljava/lang/Long;

    .line 88
    .line 89
    iget-object v6, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timeLimitNs:Ljava/lang/Long;

    .line 90
    .line 91
    if-eqz v6, :cond_3

    .line 92
    .line 93
    if-eqz v5, :cond_3

    .line 94
    .line 95
    if-eqz v2, :cond_3

    .line 96
    .line 97
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 102
    .line 103
    .line 104
    move-result-wide v8

    .line 105
    sub-long/2addr v6, v8

    .line 106
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->timeLimitNs:Ljava/lang/Long;

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    cmp-long v2, v6, v8

    .line 113
    .line 114
    if-lez v2, :cond_3

    .line 115
    .line 116
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 117
    .line 118
    new-instance v3, Landroidx/camera/camera2/pipe/Result3A;

    .line 119
    .line 120
    const/4 v4, 0x2

    .line 121
    invoke-direct {v3, v4, p3}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_3
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameNumberOfFirstUpdate:Landroidx/camera/camera2/pipe/FrameNumber;

    .line 129
    .line 130
    if-nez v2, :cond_4

    .line 131
    .line 132
    new-instance v2, Landroidx/camera/camera2/pipe/FrameNumber;

    .line 133
    .line 134
    invoke-direct {v2, v3, v4}, Landroidx/camera/camera2/pipe/FrameNumber;-><init>(J)V

    .line 135
    .line 136
    .line 137
    iput-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameNumberOfFirstUpdate:Landroidx/camera/camera2/pipe/FrameNumber;

    .line 138
    .line 139
    :cond_4
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameNumberOfFirstUpdate:Landroidx/camera/camera2/pipe/FrameNumber;

    .line 140
    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    iget-object v5, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->frameLimit:Ljava/lang/Integer;

    .line 144
    .line 145
    if-eqz v5, :cond_5

    .line 146
    .line 147
    iget-wide v6, v2, Landroidx/camera/camera2/pipe/FrameNumber;->value:J

    .line 148
    .line 149
    sub-long/2addr v3, v6

    .line 150
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    int-to-long v5, v2

    .line 155
    cmp-long v2, v3, v5

    .line 156
    .line 157
    if-lez v2, :cond_5

    .line 158
    .line 159
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 160
    .line 161
    new-instance v3, Landroidx/camera/camera2/pipe/Result3A;

    .line 162
    .line 163
    const/4 v4, 0x1

    .line 164
    invoke-direct {v3, v4, p3}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_5
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->exitCondition:Lkotlin/jvm/functions/Function1;

    .line 172
    .line 173
    invoke-interface {v2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Ljava/lang/Boolean;

    .line 178
    .line 179
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-nez v2, :cond_6

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_6
    iget-object v2, v1, Landroidx/camera/camera2/pipe/graph/Result3AStateListenerImpl;->_result:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 188
    .line 189
    new-instance v3, Landroidx/camera/camera2/pipe/Result3A;

    .line 190
    .line 191
    const/4 v4, 0x0

    .line 192
    invoke-direct {v3, v4, p3}, Landroidx/camera/camera2/pipe/Result3A;-><init>(ILandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2, v3}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    goto :goto_2

    .line 201
    :cond_7
    :goto_1
    monitor-exit v1

    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :goto_2
    monitor-exit v1

    .line 205
    throw p0

    .line 206
    :cond_8
    :goto_3
    iget-object v2, p0, Landroidx/camera/camera2/pipe/graph/Listener3A;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :cond_9
    return-void
.end method
