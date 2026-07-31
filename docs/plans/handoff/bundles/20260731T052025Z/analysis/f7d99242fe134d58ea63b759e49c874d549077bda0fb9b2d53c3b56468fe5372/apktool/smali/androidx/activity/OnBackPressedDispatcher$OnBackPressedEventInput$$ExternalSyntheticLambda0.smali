.class public final synthetic Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/camera/core/impl/ImageReaderProxy$OnImageAvailableListener;
.implements Landroidx/camera/core/ImageAnalysis$Analyzer;
.implements Landroidx/camera/core/impl/utils/futures/AsyncFunction;
.implements Landroidx/arch/core/util/Function;
.implements Landroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;
.implements Lnet/openid/appauth/AuthorizationService$TokenResponseCallback;
.implements Lcoil3/EventListener$Factory;
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/fsck/k9/controller/MessagingController$MessageActor;
.implements Lcom/fsck/k9/mail/message/MessageHeaderCollector;
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 11
    iput p1, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/mikepenz/fastadapter/VerboseLogger;)V
    .locals 0

    .line 1
    const/16 p2, 0x1d

    .line 2
    .line 3
    iput p2, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method

.method private final attachCompleter$androidx$camera$core$CameraX$$ExternalSyntheticLambda1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/camera/core/CameraX;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraPresenceProvider:Landroidx/camera/core/impl/CameraPresenceProvider;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->shutdown()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mRotationProvider:Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->isInitialized()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mRotationProvider:Lkotlin/SynchronizedLazyImpl;

    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroidx/camera/core/RotationProvider;

    .line 25
    .line 26
    iget-object v1, v0, Landroidx/camera/core/RotationProvider;->lock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v2, v0, Landroidx/camera/core/RotationProvider;->orientationListener:Landroidx/camera/core/RotationProvider$1;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, Landroidx/camera/core/RotationProvider;->listeners:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 37
    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    iput v2, v0, Landroidx/camera/core/RotationProvider;->rotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    monitor-exit v1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    monitor-exit v1

    .line 46
    throw p0

    .line 47
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/camera/core/CameraX;->mCameraRepository:Landroidx/camera/core/impl/CameraRepository;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/camera/core/impl/CameraRepository;->deinit()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    invoke-direct {v1, v2, p0, p1}, Landroidx/camera/core/CameraX$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Landroidx/camera/core/CameraX;->mCameraExecutor:Ljava/util/concurrent/Executor;

    .line 60
    .line 61
    invoke-interface {v0, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 62
    .line 63
    .line 64
    const-string p0, "CameraX shutdownInternal"

    .line 65
    .line 66
    return-object p0
.end method

.method private final onImageAvailable$androidx$camera$camera2$adapter$ZslControlImpl$$ExternalSyntheticLambda3(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/camera/camera2/adapter/ZslControlImpl;

    .line 4
    .line 5
    const-string v0, "CXCP"

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/impl/ImageReaderProxy;->acquireLatestImage()Landroidx/camera/core/ImageProxy;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_6

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/camera/camera2/adapter/ZslControlImpl;->zslRingBuffer:Landroidx/core/view/MenuHostHelper;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    instance-of v2, v1, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    check-cast v1, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/camera/core/internal/CameraCaptureResultImageInfo;->mCameraCaptureResult:Landroidx/camera/core/impl/CameraCaptureResult;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v1, v3

    .line 36
    :goto_0
    if-nez v1, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sget-object v4, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->LOCKED_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 44
    .line 45
    if-eq v2, v4, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAfState()Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget-object v4, Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;->PASSIVE_FOCUSED:Landroidx/camera/core/impl/CameraCaptureMetaData$AfState;

    .line 52
    .line 53
    if-eq v2, v4, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAeState()Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v4, Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AeState;

    .line 61
    .line 62
    if-eq v2, v4, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-interface {v1}, Landroidx/camera/core/impl/CameraCaptureResult;->getAwbState()Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    sget-object v2, Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;->CONVERGED:Landroidx/camera/core/impl/CameraCaptureMetaData$AwbState;

    .line 70
    .line 71
    if-eq v1, v2, :cond_4

    .line 72
    .line 73
    :goto_1
    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;

    .line 76
    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-object v1, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 85
    .line 86
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    iget-object v2, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v2, Ljava/util/ArrayDeque;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v4, 0x3

    .line 96
    if-lt v2, v4, :cond_5

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/core/view/MenuHostHelper;->dequeue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    goto :goto_2

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    :goto_2
    iget-object v2, p0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v2, Ljava/util/ArrayDeque;

    .line 108
    .line 109
    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :try_start_2
    iget-object p0, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast p0, Landroidx/camera/camera2/adapter/ZslControlImpl$$ExternalSyntheticLambda1;

    .line 116
    .line 117
    if-eqz p0, :cond_6

    .line 118
    .line 119
    if-eqz v3, :cond_6

    .line 120
    .line 121
    check-cast v3, Landroidx/camera/core/ImageProxy;

    .line 122
    .line 123
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 129
    :catch_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isErrorEnabled()Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_6

    .line 134
    .line 135
    const-string p0, "Failed to acquire latest image"

    .line 136
    .line 137
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    :cond_6
    return-void
.end method


# virtual methods
.method public act(Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    iget v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v2, p0

    .line 9
    check-cast v2, Lcom/fsck/k9/controller/MessagingController;

    .line 10
    .line 11
    invoke-static {p1, p3}, Lcom/fsck/k9/controller/MessagingController;->suppressMessages(Lnet/thunderbird/core/android/account/LegacyAccountDto;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    const/4 v6, 0x4

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/Schedulers$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 21
    .line 22
    .line 23
    const-string p0, "deleteThreads"

    .line 24
    .line 25
    invoke-virtual {v2, p0, v1}, Lcom/fsck/k9/controller/MessagingController;->putBackground(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_0
    move-object v3, p1

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    check-cast p0, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3, v4, v5}, Lcom/fsck/k9/controller/ArchiveOperations$$ExternalSyntheticLambda2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public addRawHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/fsck/k9/mail/internet/MimeMessage;->mHeader:Lcom/fsck/k9/mailstore/LocalFolder$8;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/mailstore/LocalFolder$8;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/fsck/k9/mail/Part;

    .line 17
    .line 18
    invoke-interface {p0, p1, p2}, Lcom/fsck/k9/mail/Part;->addRawHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public align(ILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/ui/BiasAlignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public analyze(Landroidx/camera/core/SettableImageProxy;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lapp/k9mail/feature/migration/qrcode/domain/usecase/QrCodeAnalyzer;->analyze(Landroidx/camera/core/SettableImageProxy;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 10
    .line 11
    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;

    .line 12
    invoke-virtual {p0, p1}, Landroidx/datastore/core/SimpleActor$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    return-object p0
.end method

.method public attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/camera/core/impl/CameraRepository;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/core/impl/CameraRepository;->mCamerasLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iput-object p1, p0, Landroidx/camera/core/impl/CameraRepository;->mDeinitCompleter:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const-string p0, "CameraRepository-deinit"

    .line 17
    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p0

    .line 22
    :pswitch_1
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->attachCompleter$androidx$camera$core$CameraX$$ExternalSyntheticLambda1(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_2
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Lkotlinx/coroutines/JobSupport;

    .line 30
    .line 31
    const-string v0, "Job.asListenableFuture"

    .line 32
    .line 33
    new-instance v1, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-direct {v1, v2, p1}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public create(Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, p0

    .line 4
    check-cast v1, Landroid/content/Context;

    .line 5
    .line 6
    iget-object p0, p1, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->account:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v2, p0

    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    .line 11
    iget-object p0, p1, Lcom/fsck/k9/activity/MessageHomeActivity$LaunchData;->messageReference:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v3, p0

    .line 14
    check-cast v3, Lokio/PriorityQueue;

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    move v5, v4

    .line 31
    invoke-direct/range {v0 .. v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lokio/PriorityQueue;ZZ)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    const-string p0, "Must set a non-null database name to a configuration that uses the no backup directory."

    .line 36
    .line 37
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public create(Lcoil3/request/ImageRequest;)Lcoil3/EventListener;
    .locals 0

    .line 42
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcoil3/EventListener;

    invoke-static {p0, p1}, Lcoil3/ImageLoader$Builder;->$r8$lambda$8lNbUVi4LJ993sP2805tjtBDpuE(Lcoil3/EventListener;Lcoil3/request/ImageRequest;)Lcoil3/EventListener;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->minus(Ljava/util/List;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sput-object p0, Landroidx/compose/runtime/snapshots/SnapshotKt;->applyObservers:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0

    .line 20
    throw p0
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/fsck/k9/notification/NotificationStoreOperation;

    .line 30
    .line 31
    instance-of v5, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;

    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    const/4 v7, 0x2

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    check-cast v0, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;

    .line 41
    .line 42
    iget-object v5, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 43
    .line 44
    iget v8, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;->notificationId:I

    .line 45
    .line 46
    iget-wide v9, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$Add;->timestamp:J

    .line 47
    .line 48
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    iget-wide v9, v5, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 57
    .line 58
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    iget-object v5, v5, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 63
    .line 64
    const/4 v10, 0x4

    .line 65
    new-array v10, v10, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object v0, v10, v4

    .line 68
    .line 69
    aput-object v8, v10, v3

    .line 70
    .line 71
    aput-object v9, v10, v7

    .line 72
    .line 73
    aput-object v5, v10, v6

    .line 74
    .line 75
    const-string v0, "INSERT INTO notifications(message_id, notification_id, timestamp) SELECT id, ?, ? FROM messages WHERE folder_id = ? AND uid = ?"

    .line 76
    .line 77
    invoke-virtual {p1, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    instance-of v5, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToActive;

    .line 82
    .line 83
    if-eqz v5, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    check-cast v0, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToActive;

    .line 89
    .line 90
    iget-object v5, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToActive;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 91
    .line 92
    iget v0, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToActive;->notificationId:I

    .line 93
    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-wide v8, v5, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 99
    .line 100
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    iget-object v5, v5, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 105
    .line 106
    new-array v6, v6, [Ljava/lang/Object;

    .line 107
    .line 108
    aput-object v0, v6, v4

    .line 109
    .line 110
    aput-object v8, v6, v3

    .line 111
    .line 112
    aput-object v5, v6, v7

    .line 113
    .line 114
    const-string v0, "UPDATE notifications SET notification_id = ? WHERE message_id IN (SELECT id FROM messages WHERE folder_id = ? AND uid = ?)"

    .line 115
    .line 116
    invoke-virtual {p1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_1
    instance-of v5, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToInactive;

    .line 121
    .line 122
    if-eqz v5, :cond_2

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    check-cast v0, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToInactive;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$ChangeToInactive;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 130
    .line 131
    iget-wide v5, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 132
    .line 133
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    iget-object v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 138
    .line 139
    new-array v6, v7, [Ljava/lang/Object;

    .line 140
    .line 141
    aput-object v5, v6, v4

    .line 142
    .line 143
    aput-object v0, v6, v3

    .line 144
    .line 145
    const-string v0, "UPDATE notifications SET notification_id = NULL WHERE message_id IN (SELECT id FROM messages WHERE folder_id = ? AND uid = ?)"

    .line 146
    .line 147
    invoke-virtual {p1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_2
    instance-of v5, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;

    .line 153
    .line 154
    if-eqz v5, :cond_3

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    check-cast v0, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/fsck/k9/notification/NotificationStoreOperation$Remove;->messageReference:Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 162
    .line 163
    iget-wide v5, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->folderId:J

    .line 164
    .line 165
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    iget-object v0, v0, Lapp/k9mail/legacy/message/controller/MessageReference;->uid:Ljava/lang/String;

    .line 170
    .line 171
    new-array v6, v7, [Ljava/lang/Object;

    .line 172
    .line 173
    aput-object v5, v6, v4

    .line 174
    .line 175
    aput-object v0, v6, v3

    .line 176
    .line 177
    const-string v0, "DELETE FROM notifications WHERE message_id IN (SELECT id FROM messages WHERE folder_id = ? AND uid = ?)"

    .line 178
    .line 179
    invoke-virtual {p1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_3
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 185
    .line 186
    .line 187
    move-object v1, v2

    .line 188
    :cond_4
    return-object v1

    .line 189
    :pswitch_0
    check-cast p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;

    .line 190
    .line 191
    new-instance v0, Landroid/content/ContentValues;

    .line 192
    .line 193
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .line 195
    .line 196
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isInTopGroup:Z

    .line 197
    .line 198
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const-string v2, "top_group"

    .line 203
    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 205
    .line 206
    .line 207
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isIntegrate:Z

    .line 208
    .line 209
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const-string v2, "integrate"

    .line 214
    .line 215
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 216
    .line 217
    .line 218
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isSyncEnabled:Z

    .line 219
    .line 220
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-string v2, "sync_enabled"

    .line 225
    .line 226
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 227
    .line 228
    .line 229
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isVisible:Z

    .line 230
    .line 231
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    const-string/jumbo v2, "visible"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    .line 240
    .line 241
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isNotificationsEnabled:Z

    .line 242
    .line 243
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const-string v2, "notifications_enabled"

    .line 248
    .line 249
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 250
    .line 251
    .line 252
    iget-boolean v1, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->isPushEnabled:Z

    .line 253
    .line 254
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const-string v2, "push_enabled"

    .line 259
    .line 260
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 261
    .line 262
    .line 263
    iget-object p0, p0, Lnet/thunderbird/feature/mail/folder/api/FolderDetails;->folder:Lnet/thunderbird/feature/mail/folder/api/Folder;

    .line 264
    .line 265
    iget-wide v1, p0, Lnet/thunderbird/feature/mail/folder/api/Folder;->id:J

    .line 266
    .line 267
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    filled-new-array {p0}, [Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    const-string v1, "folders"

    .line 276
    .line 277
    const-string v2, "id = ?"

    .line 278
    .line 279
    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result p0

    .line 283
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    return-object p0

    .line 288
    :pswitch_1
    check-cast p0, Ljava/lang/String;

    .line 289
    .line 290
    const-string v0, "id"

    .line 291
    .line 292
    filled-new-array {v0}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    filled-new-array {p0}, [Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    const/4 v11, 0x0

    .line 301
    const/4 v12, 0x0

    .line 302
    const-string v6, "folders"

    .line 303
    .line 304
    const-string v8, "server_id = ?"

    .line 305
    .line 306
    const/4 v10, 0x0

    .line 307
    move-object v5, p1

    .line 308
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_5

    .line 317
    .line 318
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 319
    .line 320
    .line 321
    move-result-wide v0

    .line 322
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 323
    .line 324
    .line 325
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    goto :goto_1

    .line 327
    :catchall_0
    move-exception v0

    .line 328
    move-object p1, v0

    .line 329
    goto :goto_2

    .line 330
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 331
    .line 332
    .line 333
    return-object v2

    .line 334
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    :catchall_1
    move-exception v0

    .line 336
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :pswitch_2
    move-object v5, p1

    .line 341
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 342
    .line 343
    sget-object p1, Lcom/fsck/k9/mail/FolderType;->OUTBOX:Lcom/fsck/k9/mail/FolderType;

    .line 344
    .line 345
    invoke-static {p1}, Landroidx/room/util/SchemaInfoUtilKt;->toDatabaseFolderType(Lcom/fsck/k9/mail/FolderType;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    filled-new-array {p1}, [Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    const-string v0, "SELECT COUNT(1) FROM messages\nWHERE\n    empty = 0\n    AND deleted = 0\n    AND folder_id = (\n        SELECT id FROM folders WHERE\n            folders.type = ?\n            AND folders.local_only = 1\n    )"

    .line 354
    .line 355
    invoke-virtual {v5, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-eqz v0, :cond_7

    .line 364
    .line 365
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-lez v0, :cond_6

    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_6
    move v3, v4

    .line 373
    :goto_3
    iput-boolean v3, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 374
    .line 375
    goto :goto_4

    .line 376
    :catchall_2
    move-exception v0

    .line 377
    move-object p0, v0

    .line 378
    goto :goto_5

    .line 379
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    .line 380
    .line 381
    .line 382
    return-object v1

    .line 383
    :goto_5
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 384
    :catchall_3
    move-exception v0

    .line 385
    invoke-static {p1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 386
    .line 387
    .line 388
    throw v0

    .line 389
    :pswitch_3
    move-object v5, p1

    .line 390
    check-cast p0, Lcom/fsck/k9/mailstore/LocalStore;

    .line 391
    .line 392
    const-string p1, "SELECT subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header , notifications.notification_id, notifications.timestamp FROM notifications JOIN messages ON (messages.id = notifications.message_id) LEFT JOIN threads ON (threads.message_id = messages.id) LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN folders ON (folders.id = messages.folder_id) ORDER BY notifications.timestamp DESC"

    .line 393
    .line 394
    invoke-virtual {v5, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    .line 406
    .line 407
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_9

    .line 412
    .line 413
    const/16 v1, 0xd

    .line 414
    .line 415
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 416
    .line 417
    .line 418
    move-result-wide v3

    .line 419
    new-instance v1, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 420
    .line 421
    invoke-direct {v1, p0, v3, v4}, Lcom/fsck/k9/mailstore/LocalFolder;-><init>(Lcom/fsck/k9/mailstore/LocalStore;J)V

    .line 422
    .line 423
    .line 424
    new-instance v3, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 425
    .line 426
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 427
    .line 428
    invoke-direct {v3, p0, v2, v1, v4}, Lcom/fsck/k9/mailstore/LocalMessage;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, p1}, Lcom/fsck/k9/mailstore/LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V

    .line 432
    .line 433
    .line 434
    const/16 v1, 0x1a

    .line 435
    .line 436
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    if-eqz v4, :cond_8

    .line 441
    .line 442
    move-object v1, v2

    .line 443
    goto :goto_7

    .line 444
    :cond_8
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    :goto_7
    const/16 v4, 0x1b

    .line 453
    .line 454
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 455
    .line 456
    .line 457
    move-result-wide v4

    .line 458
    new-instance v6, Lcom/fsck/k9/mailstore/NotificationMessage;

    .line 459
    .line 460
    invoke-direct {v6, v3, v1, v4, v5}, Lcom/fsck/k9/mailstore/NotificationMessage;-><init>(Lcom/fsck/k9/mailstore/LocalMessage;Ljava/lang/Integer;J)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 464
    .line 465
    .line 466
    goto :goto_6

    .line 467
    :catchall_4
    move-exception v0

    .line 468
    move-object p0, v0

    .line 469
    goto :goto_8

    .line 470
    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 471
    .line 472
    .line 473
    return-object v0

    .line 474
    :goto_8
    if-eqz p1, :cond_a

    .line 475
    .line 476
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 477
    .line 478
    .line 479
    goto :goto_9

    .line 480
    :catchall_5
    move-exception v0

    .line 481
    move-object p1, v0

    .line 482
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 483
    .line 484
    .line 485
    :cond_a
    :goto_9
    throw p0

    .line 486
    nop

    .line 487
    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    .line 1
    iget v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/16 v1, 0x207

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lapp/k9mail/ui/utils/bottomsheet/ToolbarBottomSheetDialog;->setToolbarVisibilityCallback(I)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_0
    check-cast p0, Landroidx/core/view/insets/SystemBarStateMonitor;

    .line 33
    .line 34
    iget-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 35
    .line 36
    iget-object v0, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/16 v3, 0x40

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v2, v4}, Landroidx/core/graphics/Insets;->min(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v3}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Landroidx/core/graphics/Insets;->min(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsets:Landroidx/core/graphics/Insets;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 79
    .line 80
    :cond_0
    iput-object v2, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsets:Landroidx/core/graphics/Insets;

    .line 81
    .line 82
    iput-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    add-int/lit8 p0, p0, -0x1

    .line 89
    .line 90
    :goto_0
    if-ltz p0, :cond_1

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroidx/core/view/insets/ProtectionGroup;

    .line 97
    .line 98
    iput-object v2, v1, Landroidx/core/view/insets/ProtectionGroup;->mInsets:Landroidx/core/graphics/Insets;

    .line 99
    .line 100
    iput-object v0, v1, Landroidx/core/view/insets/ProtectionGroup;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroidx/core/view/insets/ProtectionGroup;->updateInsets()V

    .line 103
    .line 104
    .line 105
    add-int/lit8 p0, p0, -0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    return-object p2

    .line 109
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onCommitContent(Landroidx/fragment/app/Fragment$7;ILandroid/os/Bundle;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/appcompat/widget/AppCompatEditText;

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x19

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-lt v0, v1, :cond_1

    .line 12
    .line 13
    and-int/2addr p2, v3

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    :try_start_0
    iget-object p2, p1, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p2, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 19
    .line 20
    invoke-interface {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    iget-object p2, p1, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p2, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 26
    .line 27
    invoke-interface {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getInputContentInfo()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Landroid/os/Parcelable;

    .line 32
    .line 33
    if-nez p3, :cond_0

    .line 34
    .line 35
    new-instance p3, Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    move-object p3, v1

    .line 47
    :goto_0
    const-string v1, "androidx.core.view.extra.INPUT_CONTENT_INFO"

    .line 48
    .line 49
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception p0

    .line 54
    const-string p1, "InputConnectionCompat"

    .line 55
    .line 56
    const-string p2, "Can\'t insert content from IME; requestPermission() failed"

    .line 57
    .line 58
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .line 60
    .line 61
    return v2

    .line 62
    :cond_1
    :goto_1
    new-instance p2, Landroid/content/ClipData;

    .line 63
    .line 64
    iget-object p1, p1, Landroidx/fragment/app/Fragment$7;->this$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;

    .line 67
    .line 68
    invoke-interface {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getDescription()Landroid/content/ClipDescription;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v4, Landroid/content/ClipData$Item;

    .line 73
    .line 74
    invoke-interface {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getContentUri()Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, v1, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x1f

    .line 85
    .line 86
    const/4 v4, 0x2

    .line 87
    if-lt v0, v1, :cond_2

    .line 88
    .line 89
    new-instance v0, Landroidx/compose/ui/scrollcapture/ScrollCapture;

    .line 90
    .line 91
    invoke-direct {v0, p2, v4}, Landroidx/compose/ui/scrollcapture/ScrollCapture;-><init>(Landroid/content/ClipData;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    new-instance v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;

    .line 96
    .line 97
    invoke-direct {v0}, Landroidx/core/view/ContentInfoCompat$CompatImpl;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object p2, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Landroid/content/ClipData;

    .line 101
    .line 102
    iput v4, v0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mSource:I

    .line 103
    .line 104
    :goto_2
    invoke-interface {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat$InputContentInfoCompatImpl;->getLinkUri()Landroid/net/Uri;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-interface {v0, p1}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setLinkUri(Landroid/net/Uri;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, p3}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->setExtras(Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v0}, Landroidx/core/view/ContentInfoCompat$BuilderCompat;->build()Landroidx/core/view/ContentInfoCompat;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-nez p0, :cond_3

    .line 123
    .line 124
    return v3

    .line 125
    :cond_3
    return v2
.end method

.method public onImageAvailable(Landroidx/camera/core/impl/ImageReaderProxy;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/camera/core/MetadataImageReader;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/core/MetadataImageReader;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget v1, p0, Landroidx/camera/core/MetadataImageReader;->mUnAcquiredAvailableImageCount:I

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    iput v1, p0, Landroidx/camera/core/MetadataImageReader;->mUnAcquiredAvailableImageCount:I

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p0, p1}, Landroidx/camera/core/MetadataImageReader;->imageIncoming(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0

    .line 27
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->onImageAvailable$androidx$camera$camera2$adapter$ZslControlImpl$$ExternalSyntheticLambda3(Landroidx/camera/core/impl/ImageReaderProxy;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;

    .line 4
    .line 5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const v0, 0x7f090134

    .line 10
    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->viewHolder:Lcom/eygraber/uri/Uri$Builder;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Landroid/widget/EditText;

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->history:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->saveHistory()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/bytehamster/lib/preferencesearch/SearchPreferenceFragment;->updateSearchResults(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public onTokenRequestCompleted(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;

    .line 4
    .line 5
    iget-object v0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->authState:Lnet/openid/appauth/AuthState;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lnet/openid/appauth/AuthState;->update(Lnet/openid/appauth/TokenResponse;Lnet/openid/appauth/AuthorizationException;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->account:Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lnet/openid/appauth/AuthState;->jsonSerializeString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lnet/thunderbird/core/android/account/LegacyAccountDto;->setOAuthState(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 27
    .line 28
    sget-object v1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->INSTANCE:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    .line 29
    .line 30
    new-instance v2, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {v2, p0, p1, v4, v3}, Lapp/k9mail/feature/settings/import/ui/AuthViewModel$exchangeToken$1$1$1;-><init>(Lapp/k9mail/feature/settings/import/ui/AuthViewModel;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    invoke-static {v0, v1, v4, v2, p1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lapp/k9mail/feature/settings/import/ui/AuthViewModel;->_uiState:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    move-object v0, p1

    .line 50
    check-cast v0, Lapp/k9mail/feature/settings/import/ui/AuthFlowState;

    .line 51
    .line 52
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Failed;

    .line 53
    .line 54
    iget-object v1, p2, Lnet/openid/appauth/AuthorizationException;->error:Ljava/lang/String;

    .line 55
    .line 56
    iget-object v2, p2, Lnet/openid/appauth/AuthorizationException;->errorDescription:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v0, v1, v2}, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Failed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_0

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    move-object p2, p1

    .line 73
    check-cast p2, Lapp/k9mail/feature/settings/import/ui/AuthFlowState;

    .line 74
    .line 75
    sget-object p2, Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;->INSTANCE$4:Lapp/k9mail/feature/settings/import/ui/AuthFlowState$Idle;

    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    :goto_0
    return-void
.end method
