.class public final Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/camera/camera2/pipe/Request$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $signal:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final onBufferLost-iiEMlm4$androidx$camera$camera2$compat$EvCompImpl$applyAsync$3(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 1
    return-void
.end method

.method private final onBufferLost-iiEMlm4$androidx$camera$camera2$impl$UseCaseCameraState$RequestListener(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onComplete-CcXjc1I$androidx$camera$camera2$impl$UseCaseCameraState$RequestListener(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onFailed-CcXjc1I$androidx$camera$camera2$compat$EvCompImpl$applyAsync$3(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final synthetic onTotalCaptureResult-CcXjc1I$androidx$camera$camera2$compat$EvCompImpl$applyAsync$3(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onAborted(Landroidx/camera/camera2/pipe/Request;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBufferLost-DlC0U5Y(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onBufferLost-iiEMlm4(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    return-void
.end method

.method public final onCaptureProgress(Landroidx/camera/camera2/pipe/RequestMetadata;I)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p4, Landroidx/camera/camera2/pipe/compat/AndroidFrameInfo;->result:Landroidx/camera/camera2/pipe/UnsafeWrapper;

    .line 17
    .line 18
    check-cast p2, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;

    .line 19
    .line 20
    sget-object p3, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 21
    .line 22
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object p4, p2, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;->captureResult:Landroid/hardware/camera2/CaptureResult;

    .line 29
    .line 30
    invoke-virtual {p4, p3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    check-cast p3, Ljava/lang/Integer;

    .line 35
    .line 36
    sget-object p4, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 37
    .line 38
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object p2, p2, Landroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;->captureResult:Landroid/hardware/camera2/CaptureResult;

    .line 45
    .line 46
    invoke-virtual {p2, p4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Ljava/lang/Integer;

    .line 51
    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    if-eqz p2, :cond_1

    .line 55
    .line 56
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    const/4 p4, 0x2

    .line 61
    if-eq p3, p4, :cond_0

    .line 62
    .line 63
    const/4 p4, 0x3

    .line 64
    if-eq p3, p4, :cond_0

    .line 65
    .line 66
    const/4 p4, 0x4

    .line 67
    if-eq p3, p4, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    if-eqz p2, :cond_2

    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onFailed-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V
    .locals 3

    .line 1
    iget p2, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p2, "Failed in framework level"

    .line 7
    .line 8
    iget-object p3, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p3, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 11
    .line 12
    iget-object p3, p3, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    .line 13
    .line 14
    iget p3, p3, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const-string p3, " with CaptureFailure.reason = "

    .line 20
    .line 21
    sget-object v0, Landroidx/camera/camera2/impl/TagsKt;->USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Landroidx/camera/camera2/pipe/Metadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget-object v1, v0, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, v0, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    .line 43
    .line 44
    invoke-interface {p4}, Landroidx/camera/camera2/pipe/RequestFailure;->getReason()I

    .line 45
    .line 46
    .line 47
    move-result p4

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    new-instance p3, Ljava/lang/Throwable;

    .line 65
    .line 66
    invoke-direct {p3, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_1

    .line 74
    .line 75
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    .line 80
    .line 81
    iget p2, p2, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    .line 82
    .line 83
    if-gt p2, p1, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    .line 90
    .line 91
    iget-object p2, p2, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 92
    .line 93
    invoke-virtual {p2, p3}, Lkotlinx/coroutines/CompletableDeferredImpl;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p2, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 102
    .line 103
    iget-object p2, p2, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    .line 104
    .line 105
    invoke-virtual {p2}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    monitor-exit v1

    .line 110
    goto :goto_1

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v1

    .line 113
    throw p0

    .line 114
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPartialCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameMetadata;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onReadoutStarted-mP9r-9w(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRequestSequenceAborted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRequestSequenceCompleted-RuT0dZU(Landroidx/camera/camera2/pipe/RequestMetadata;J)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRequestSequenceCreated(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onRequestSequenceSubmitted(Landroidx/camera/camera2/pipe/RequestMetadata;)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStarted-uGKBvU4(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V
    .locals 0

    .line 1
    iget p0, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTotalCaptureResult-CcXjc1I(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/compat/AndroidFrameInfo;)V
    .locals 1

    .line 1
    iget p2, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p2, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p2, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 9
    .line 10
    iget-object p2, p2, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    .line 11
    .line 12
    iget p2, p2, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 13
    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-object p2, Landroidx/camera/camera2/impl/TagsKt;->USE_CASE_CAMERA_STATE_CUSTOM_TAG:Landroidx/camera/camera2/pipe/Metadata$Key;

    .line 18
    .line 19
    invoke-interface {p1, p2}, Landroidx/camera/camera2/pipe/Metadata;->get(Landroidx/camera/camera2/pipe/Metadata$Key;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Integer;

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p2, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p2, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object p3, p2, Landroidx/camera/camera2/impl/UseCaseCameraState;->lock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter p3

    .line 38
    :try_start_0
    iget-object p2, p2, Landroidx/camera/camera2/impl/UseCaseCameraState;->updateSignals:Lkotlin/collections/ArrayDeque;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p4

    .line 44
    if-nez p4, :cond_1

    .line 45
    .line 46
    invoke-virtual {p2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    check-cast p4, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    .line 51
    .line 52
    iget p4, p4, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->requestNo:I

    .line 53
    .line 54
    if-gt p4, p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {p2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    check-cast p4, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;

    .line 61
    .line 62
    iget-object p4, p4, Landroidx/camera/camera2/impl/UseCaseCameraState$RequestSignal;->signal:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 63
    .line 64
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    invoke-virtual {p4, v0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object p4, p0, Landroidx/camera/camera2/compat/EvCompImpl$applyAsync$3;->$signal:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p4, Landroidx/camera/camera2/impl/UseCaseCameraState;

    .line 75
    .line 76
    iget-object p4, p4, Landroidx/camera/camera2/impl/UseCaseCameraState;->pendingSignalCount:Lkotlinx/atomicfu/AtomicInt;

    .line 77
    .line 78
    invoke-virtual {p4}, Lkotlinx/atomicfu/AtomicInt;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    monitor-exit p3

    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    monitor-exit p3

    .line 86
    throw p0

    .line 87
    :cond_2
    :goto_1
    :pswitch_0
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
