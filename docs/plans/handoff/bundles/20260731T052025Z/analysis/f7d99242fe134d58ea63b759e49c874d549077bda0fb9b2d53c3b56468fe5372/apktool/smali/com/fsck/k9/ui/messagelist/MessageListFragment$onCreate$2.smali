.class public final Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic Z$0:Z

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 13
    iput p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->$r8$classId:I

    .line 14
    iput-object p2, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 9
    .line 10
    check-cast v1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 11
    .line 12
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 13
    .line 14
    invoke-direct {p1, v1, p0, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_0
    new-instance p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 19
    .line 20
    check-cast v1, Landroid/content/Context;

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    invoke-direct {p0, v1, p2, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_1
    new-instance p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 36
    .line 37
    check-cast v1, Landroidx/compose/material3/TooltipStateImpl;

    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-direct {p0, v1, p2, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 41
    .line 42
    .line 43
    check-cast p1, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 50
    .line 51
    return-object p0

    .line 52
    :pswitch_2
    new-instance p1, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 53
    .line 54
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 55
    .line 56
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 57
    .line 58
    invoke-direct {p1, p2, v1, p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;Z)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_3
    new-instance p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 63
    .line 64
    check-cast v1, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v1, p2, v0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 68
    .line 69
    .line 70
    check-cast p1, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 77
    .line 78
    return-object p0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 51
    .line 52
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 57
    .line 58
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v1

    .line 70
    :pswitch_3
    check-cast p1, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;

    .line 82
    .line 83
    invoke-virtual {p0, v1}, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    return-object v1

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$setExportingState(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    sget-object p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Success;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Success;

    .line 21
    .line 22
    invoke-static {p1, p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$showSnackbar(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Failure;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Failure;

    .line 29
    .line 30
    invoke-static {p1, p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$showSnackbar(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :goto_0
    const-string v0, "Failed to write log to URI"

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {p0, v0, v1}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p0, Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Failure;->INSTANCE:Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState$Failure;

    .line 43
    .line 44
    invoke-static {p1, p0}, Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;->access$showSnackbar(Lcom/fsck/k9/ui/settings/general/GeneralSettingsViewModel;Lcom/fsck/k9/ui/settings/general/GeneralSettingsUiState;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0

    .line 50
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 54
    .line 55
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Landroid/content/Context;

    .line 58
    .line 59
    const-class v0, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 60
    .line 61
    invoke-static {p0, v0, p1}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 62
    .line 63
    .line 64
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-boolean p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 71
    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 79
    .line 80
    .line 81
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0

    .line 84
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 90
    .line 91
    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 92
    .line 93
    invoke-virtual {p1}, Lkotlinx/atomicfu/AtomicBoolean;->getValue()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    const-string p0, "CXCP"

    .line 100
    .line 101
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_3

    .line 106
    .line 107
    const-string p0, "CXCP"

    .line 108
    .line 109
    const-string p1, "UseCaseCamera is closed before setActiveResumeMode, skipping setup."

    .line 110
    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 118
    .line 119
    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-boolean p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 126
    .line 127
    iget-object p1, p1, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->cameraController:Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 128
    .line 129
    iget-object v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter v0

    .line 132
    :try_start_1
    iput-boolean p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->_isForeground:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .line 134
    monitor-exit v0

    .line 135
    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p0

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    monitor-exit v0

    .line 140
    throw p0

    .line 141
    :pswitch_3
    iget-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->Z$0:Z

    .line 142
    .line 143
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment$onCreate$2;->this$0:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;

    .line 149
    .line 150
    iput-boolean v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->showingThreadedList:Z

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLocalSearch()Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iget-object v0, p0, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->sortType:Lnet/thunderbird/core/android/account/SortType;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getLegacyViewModel()Lcom/fsck/k9/ui/messagelist/MessageListViewModel;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    iget-object v1, v1, Lcom/fsck/k9/ui/messagelist/MessageListViewModel;->messageSortOverrides:Ljava/util/LinkedList;

    .line 163
    .line 164
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/List;)Ljava/util/Map;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/fsck/k9/ui/messagelist/MessageListFragment;->getAccountManager$2()Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    invoke-static {p1, p0}, Landroidx/room/util/SchemaInfoUtilKt;->getLegacyAccountsFromLocalSearch(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Lnet/thunderbird/app/common/account/data/DefaultLegacyAccountManager;)Ljava/util/ArrayList;

    .line 175
    .line 176
    .line 177
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p0

    .line 180
    nop

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
