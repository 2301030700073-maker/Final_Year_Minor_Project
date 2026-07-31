.class public final Landroidx/compose/material/ripple/RippleNode$onAttach$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->$r8$classId:I

    .line 14
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lcom/eygraber/uri/Uri$Builder;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    iput v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->$r8$classId:I

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 15
    iput p4, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 16
    iput p3, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private final invokeSuspend$androidx$camera$camera2$pipe$compat$Camera2DeviceCache$createCameraIdListFlow$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 27
    .line 28
    new-instance v1, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 33
    .line 34
    invoke-direct {v1, v3, p1}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;-><init>(Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v3, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 40
    .line 41
    iget-object v3, v3, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->cameraManager:Ljavax/inject/Provider;

    .line 42
    .line 43
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/hardware/camera2/CameraManager;

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 52
    .line 53
    iget-object v4, v4, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v1, v4}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 65
    .line 66
    iget-object v5, v4, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->lock:Ljava/lang/Object;

    .line 67
    .line 68
    monitor-enter v5

    .line 69
    :try_start_0
    iget-object v4, v4, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->openableCameras:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    monitor-exit v5

    .line 72
    iget-object v5, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v5, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    invoke-static {p1, v4}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->sendCameraIdList(Lkotlinx/coroutines/channels/ProducerScope;Ljava/util/ArrayList;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v5}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->readCameraIds()Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    if-eqz v4, :cond_3

    .line 87
    .line 88
    invoke-static {p1, v4}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->sendCameraIdList(Lkotlinx/coroutines/channels/ProducerScope;Ljava/util/ArrayList;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    new-instance v4, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 92
    .line 93
    const/4 v5, 0x7

    .line 94
    invoke-direct {v4, v5, v3, v1}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iput v2, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 98
    .line 99
    invoke-static {p1, v4, p0}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v0, :cond_4

    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 107
    .line 108
    return-object p0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    monitor-exit v5

    .line 111
    throw p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 9
    .line 10
    check-cast v1, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 11
    .line 12
    const/16 v0, 0x1d

    .line 13
    .line 14
    invoke-direct {p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 25
    .line 26
    check-cast v1, Landroidx/compose/material3/TooltipStateImpl;

    .line 27
    .line 28
    const/16 v0, 0x1c

    .line 29
    .line 30
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :pswitch_1
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 39
    .line 40
    check-cast v1, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 41
    .line 42
    const/16 v0, 0x1b

    .line 43
    .line 44
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_2
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Landroidx/compose/material/ripple/StateLayer;

    .line 53
    .line 54
    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    .line 55
    .line 56
    const/16 v0, 0x1a

    .line 57
    .line 58
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :pswitch_3
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 63
    .line 64
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Landroid/view/textclassifier/TextClassifier;

    .line 67
    .line 68
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 69
    .line 70
    const/16 v0, 0x19

    .line 71
    .line 72
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_4
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 77
    .line 78
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p0, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 81
    .line 82
    check-cast v1, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 83
    .line 84
    const/16 v0, 0x18

    .line 85
    .line 86
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 87
    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_5
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 91
    .line 92
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 95
    .line 96
    check-cast v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 97
    .line 98
    const/16 v0, 0x17

    .line 99
    .line 100
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :pswitch_6
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 105
    .line 106
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p0, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 109
    .line 110
    check-cast v1, Landroidx/cardview/widget/CardView$1;

    .line 111
    .line 112
    const/16 v0, 0x16

    .line 113
    .line 114
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :pswitch_7
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 119
    .line 120
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 123
    .line 124
    check-cast v1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 125
    .line 126
    const/16 v0, 0x15

    .line 127
    .line 128
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 129
    .line 130
    .line 131
    return-object p1

    .line 132
    :pswitch_8
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 133
    .line 134
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast p0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 137
    .line 138
    check-cast v1, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 139
    .line 140
    const/16 v0, 0x14

    .line 141
    .line 142
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :pswitch_9
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 147
    .line 148
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 151
    .line 152
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 153
    .line 154
    const/16 v0, 0x13

    .line 155
    .line 156
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 157
    .line 158
    .line 159
    return-object p1

    .line 160
    :pswitch_a
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 161
    .line 162
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 165
    .line 166
    check-cast v1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 167
    .line 168
    const/16 v0, 0x12

    .line 169
    .line 170
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 171
    .line 172
    .line 173
    return-object p1

    .line 174
    :pswitch_b
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 175
    .line 176
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast p0, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 179
    .line 180
    check-cast v1, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 181
    .line 182
    const/16 v0, 0x11

    .line 183
    .line 184
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 185
    .line 186
    .line 187
    return-object p1

    .line 188
    :pswitch_c
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 189
    .line 190
    check-cast v1, Lkotlinx/coroutines/channels/Channel;

    .line 191
    .line 192
    const/16 v0, 0x10

    .line 193
    .line 194
    invoke-direct {p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 195
    .line 196
    .line 197
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 198
    .line 199
    return-object p0

    .line 200
    :pswitch_d
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 201
    .line 202
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;

    .line 205
    .line 206
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 207
    .line 208
    const/16 v0, 0xf

    .line 209
    .line 210
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 211
    .line 212
    .line 213
    return-object p1

    .line 214
    :pswitch_e
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 215
    .line 216
    check-cast v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 217
    .line 218
    const/16 v0, 0xe

    .line 219
    .line 220
    invoke-direct {p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 221
    .line 222
    .line 223
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 224
    .line 225
    return-object p0

    .line 226
    :pswitch_f
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 227
    .line 228
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 229
    .line 230
    check-cast p0, Landroidx/core/view/MenuHostHelper;

    .line 231
    .line 232
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 233
    .line 234
    const/16 v0, 0xd

    .line 235
    .line 236
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 237
    .line 238
    .line 239
    return-object p1

    .line 240
    :pswitch_10
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 241
    .line 242
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 245
    .line 246
    check-cast v1, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 247
    .line 248
    const/16 v0, 0xc

    .line 249
    .line 250
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 251
    .line 252
    .line 253
    return-object p1

    .line 254
    :pswitch_11
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 255
    .line 256
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p0, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 259
    .line 260
    check-cast v1, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 261
    .line 262
    const/16 v0, 0xb

    .line 263
    .line 264
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 265
    .line 266
    .line 267
    return-object p1

    .line 268
    :pswitch_12
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 269
    .line 270
    check-cast v1, Lcom/eygraber/uri/Uri$Builder;

    .line 271
    .line 272
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 273
    .line 274
    invoke-direct {p1, v1, p0, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Lcom/eygraber/uri/Uri$Builder;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 275
    .line 276
    .line 277
    return-object p1

    .line 278
    :pswitch_13
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 279
    .line 280
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast p0, Lkotlinx/coroutines/flow/Flow;

    .line 283
    .line 284
    check-cast v1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 285
    .line 286
    const/16 v0, 0x9

    .line 287
    .line 288
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 289
    .line 290
    .line 291
    return-object p1

    .line 292
    :pswitch_14
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 293
    .line 294
    check-cast v1, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 295
    .line 296
    const/16 v0, 0x8

    .line 297
    .line 298
    invoke-direct {p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 299
    .line 300
    .line 301
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 302
    .line 303
    return-object p0

    .line 304
    :pswitch_15
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 305
    .line 306
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 307
    .line 308
    const/4 v0, 0x7

    .line 309
    invoke-direct {p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 310
    .line 311
    .line 312
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 313
    .line 314
    return-object p0

    .line 315
    :pswitch_16
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 316
    .line 317
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 318
    .line 319
    const/4 v0, 0x6

    .line 320
    invoke-direct {p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 321
    .line 322
    .line 323
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 324
    .line 325
    return-object p0

    .line 326
    :pswitch_17
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 327
    .line 328
    check-cast v1, Lokhttp3/Dispatcher;

    .line 329
    .line 330
    const/4 v0, 0x5

    .line 331
    invoke-direct {p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 332
    .line 333
    .line 334
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 335
    .line 336
    return-object p0

    .line 337
    :pswitch_18
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 338
    .line 339
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 342
    .line 343
    check-cast v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 344
    .line 345
    const/4 v0, 0x4

    .line 346
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 347
    .line 348
    .line 349
    return-object p1

    .line 350
    :pswitch_19
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 351
    .line 352
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast p0, Landroidx/core/view/MenuHostHelper;

    .line 355
    .line 356
    check-cast v1, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    .line 357
    .line 358
    const/4 v0, 0x3

    .line 359
    invoke-direct {p1, p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 360
    .line 361
    .line 362
    return-object p1

    .line 363
    :pswitch_1a
    new-instance p1, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 364
    .line 365
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    .line 368
    .line 369
    check-cast v1, Ljava/util/List;

    .line 370
    .line 371
    invoke-direct {p1, p0, p2, v1}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;Lkotlin/coroutines/Continuation;Ljava/util/List;)V

    .line 372
    .line 373
    .line 374
    return-object p1

    .line 375
    :pswitch_1b
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 376
    .line 377
    check-cast v1, Landroidx/activity/compose/ComposePredictiveBackHandler;

    .line 378
    .line 379
    const/4 p1, 0x1

    .line 380
    invoke-direct {p0, v1, p2, p1}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 381
    .line 382
    .line 383
    return-object p0

    .line 384
    :pswitch_1c
    new-instance p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 385
    .line 386
    check-cast v1, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 387
    .line 388
    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, v1, p2, v0}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 390
    .line 391
    .line 392
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 393
    .line 394
    return-object p0

    .line 395
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

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 11
    .line 12
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 25
    .line 26
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 40
    .line 41
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 48
    .line 49
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 55
    .line 56
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 57
    .line 58
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 70
    .line 71
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 72
    .line 73
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 85
    .line 86
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 93
    .line 94
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    return-object v1

    .line 98
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 107
    .line 108
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    return-object v1

    .line 112
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 113
    .line 114
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 115
    .line 116
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 121
    .line 122
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    return-object p0

    .line 127
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 128
    .line 129
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 130
    .line 131
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 136
    .line 137
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 143
    .line 144
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 145
    .line 146
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 151
    .line 152
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :pswitch_9
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 158
    .line 159
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 160
    .line 161
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 166
    .line 167
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :pswitch_a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 173
    .line 174
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 175
    .line 176
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 181
    .line 182
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    return-object p0

    .line 187
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 188
    .line 189
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 190
    .line 191
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 196
    .line 197
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 203
    .line 204
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 205
    .line 206
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 211
    .line 212
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    return-object p0

    .line 217
    :pswitch_d
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 218
    .line 219
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 220
    .line 221
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 226
    .line 227
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object p0

    .line 231
    return-object p0

    .line 232
    :pswitch_e
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 233
    .line 234
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 235
    .line 236
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 241
    .line 242
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    return-object p0

    .line 247
    :pswitch_f
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 248
    .line 249
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 250
    .line 251
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 256
    .line 257
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    return-object p0

    .line 262
    :pswitch_10
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 263
    .line 264
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 265
    .line 266
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 271
    .line 272
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    return-object p0

    .line 277
    :pswitch_11
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 278
    .line 279
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 280
    .line 281
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 286
    .line 287
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    return-object p0

    .line 292
    :pswitch_12
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 293
    .line 294
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 295
    .line 296
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 301
    .line 302
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    return-object p0

    .line 307
    :pswitch_13
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 308
    .line 309
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 310
    .line 311
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 316
    .line 317
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    return-object p0

    .line 322
    :pswitch_14
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 323
    .line 324
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 325
    .line 326
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 331
    .line 332
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    return-object p0

    .line 337
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 338
    .line 339
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 340
    .line 341
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 346
    .line 347
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    return-object p0

    .line 352
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 353
    .line 354
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 355
    .line 356
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 361
    .line 362
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    return-object p0

    .line 367
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 368
    .line 369
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 370
    .line 371
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 376
    .line 377
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    return-object p0

    .line 382
    :pswitch_18
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 383
    .line 384
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 385
    .line 386
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 391
    .line 392
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    return-object p0

    .line 397
    :pswitch_19
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 398
    .line 399
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 400
    .line 401
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 406
    .line 407
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    return-object p0

    .line 412
    :pswitch_1a
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 413
    .line 414
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 415
    .line 416
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 421
    .line 422
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object p0

    .line 426
    return-object p0

    .line 427
    :pswitch_1b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 428
    .line 429
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 430
    .line 431
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 432
    .line 433
    .line 434
    move-result-object p0

    .line 435
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 436
    .line 437
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    return-object p0

    .line 442
    :pswitch_1c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 443
    .line 444
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 445
    .line 446
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    check-cast p0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 451
    .line 452
    invoke-virtual {p0, v2}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object p0

    .line 456
    return-object p0

    .line 457
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

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    iget v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->$r8$classId:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x3

    .line 9
    const/high16 v7, 0x3f800000    # 1.0f

    .line 10
    .line 11
    const/4 v5, 0x6

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v8, 0x2

    .line 14
    const/4 v9, 0x1

    .line 15
    const/4 v10, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    if-eq v1, v9, :cond_0

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Landroidx/compose/ui/platform/InputMethodSession;

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Landroidx/compose/ui/platform/InputMethodSession;

    .line 47
    .line 48
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;

    .line 51
    .line 52
    iput-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 55
    .line 56
    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 57
    .line 58
    invoke-static {v4}, Lkotlinx/atomicfu/AtomicFU;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-direct {v3, v9, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 66
    .line 67
    .line 68
    iget-object v4, v2, Landroidx/compose/ui/platform/AndroidPlatformTextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 69
    .line 70
    iget-object v6, v4, Landroidx/compose/ui/text/input/TextInputService;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 71
    .line 72
    invoke-interface {v6}, Landroidx/compose/ui/text/input/PlatformTextInputService;->startInput()V

    .line 73
    .line 74
    .line 75
    new-instance v7, Landroidx/compose/ui/text/input/TextInputSession;

    .line 76
    .line 77
    invoke-direct {v7, v4, v6}, Landroidx/compose/ui/text/input/TextInputSession;-><init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v4, Landroidx/compose/ui/text/input/TextInputService;->_currentInputSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    .line 82
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    new-instance v4, Landroidx/compose/ui/ZIndexNode$measure$1;

    .line 86
    .line 87
    invoke-direct {v4, v5, v1, v2}, Landroidx/compose/ui/ZIndexNode$measure$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-ne v1, v0, :cond_2

    .line 98
    .line 99
    move-object v10, v0

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    :goto_0
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m()V

    .line 102
    .line 103
    .line 104
    :goto_1
    return-object v10

    .line 105
    :pswitch_0
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Landroidx/compose/ui/focus/FocusStateImpl;

    .line 108
    .line 109
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v1, Landroidx/compose/material3/TooltipStateImpl;

    .line 112
    .line 113
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 114
    .line 115
    iget v3, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 116
    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    if-ne v3, v9, :cond_3

    .line 120
    .line 121
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 126
    .line 127
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    sget-object v3, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    .line 141
    .line 142
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 143
    .line 144
    invoke-virtual {v1, v3, v4}, Landroidx/compose/material3/TooltipStateImpl;->show(Landroidx/compose/foundation/MutatePriority;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-ne v3, v2, :cond_5

    .line 149
    .line 150
    move-object v10, v2

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    :goto_2
    invoke-virtual {v1}, Landroidx/compose/material3/TooltipStateImpl;->isVisible()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_6

    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->isFocused()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_6

    .line 163
    .line 164
    invoke-virtual {v1}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 165
    .line 166
    .line 167
    :cond_6
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 168
    .line 169
    :goto_3
    return-object v10

    .line 170
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 171
    .line 172
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 173
    .line 174
    if-eqz v1, :cond_8

    .line 175
    .line 176
    if-ne v1, v9, :cond_7

    .line 177
    .line 178
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_7
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 185
    .line 186
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_8
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 196
    .line 197
    iget-object v1, v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 198
    .line 199
    new-instance v2, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 200
    .line 201
    iget-object v3, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v3, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 204
    .line 205
    invoke-direct {v2, v8, v3}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 209
    .line 210
    invoke-virtual {v1, v2, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-object v10, v0

    .line 214
    :goto_4
    return-object v10

    .line 215
    :pswitch_2
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 216
    .line 217
    iget v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 218
    .line 219
    if-eqz v0, :cond_a

    .line 220
    .line 221
    if-ne v0, v9, :cond_9

    .line 222
    .line 223
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_9
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 228
    .line 229
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 237
    .line 238
    check-cast v0, Landroidx/compose/material/ripple/StateLayer;

    .line 239
    .line 240
    iget-object v0, v0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 243
    .line 244
    new-instance v1, Ljava/lang/Float;

    .line 245
    .line 246
    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 247
    .line 248
    .line 249
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v2, Landroidx/compose/animation/core/AnimationSpec;

    .line 252
    .line 253
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 254
    .line 255
    const/4 v3, 0x0

    .line 256
    const/16 v5, 0xc

    .line 257
    .line 258
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-ne v0, v6, :cond_b

    .line 263
    .line 264
    move-object v10, v6

    .line 265
    goto :goto_6

    .line 266
    :cond_b
    :goto_5
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 267
    .line 268
    :goto_6
    return-object v10

    .line 269
    :pswitch_3
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 270
    .line 271
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 272
    .line 273
    if-eqz v1, :cond_d

    .line 274
    .line 275
    if-ne v1, v9, :cond_c

    .line 276
    .line 277
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    move-object/from16 v10, p1

    .line 281
    .line 282
    goto :goto_7

    .line 283
    :cond_c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 284
    .line 285
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    .line 295
    .line 296
    if-eqz v1, :cond_f

    .line 297
    .line 298
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 299
    .line 300
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 301
    .line 302
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 303
    .line 304
    invoke-interface {v2, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    if-ne v1, v0, :cond_e

    .line 309
    .line 310
    move-object v10, v0

    .line 311
    goto :goto_7

    .line 312
    :cond_e
    move-object v10, v1

    .line 313
    :cond_f
    :goto_7
    return-object v10

    .line 314
    :pswitch_4
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 315
    .line 316
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 317
    .line 318
    if-eqz v1, :cond_11

    .line 319
    .line 320
    if-eq v1, v9, :cond_10

    .line 321
    .line 322
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 323
    .line 324
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    goto :goto_8

    .line 328
    :cond_10
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    throw v0

    .line 333
    :cond_11
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v1, Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;

    .line 339
    .line 340
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v2, Landroidx/navigation/compose/NavHostKt$NavHost$29$1;

    .line 343
    .line 344
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 345
    .line 346
    invoke-static {v1, v2, v4}, Landroidx/compose/ui/platform/PlatformTextInputModifierNodeKt;->establishTextInputSession(Landroidx/compose/foundation/text/input/internal/LegacyAdaptingPlatformTextInputModifierNode;Landroidx/navigation/compose/NavHostKt$NavHost$29$1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 347
    .line 348
    .line 349
    move-object v10, v0

    .line 350
    :goto_8
    return-object v10

    .line 351
    :pswitch_5
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 352
    .line 353
    move-object v1, v0

    .line 354
    check-cast v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 355
    .line 356
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 357
    .line 358
    iget v5, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 359
    .line 360
    const-wide/16 v11, 0x1f4

    .line 361
    .line 362
    const/4 v6, 0x4

    .line 363
    if-eqz v5, :cond_16

    .line 364
    .line 365
    if-eq v5, v9, :cond_15

    .line 366
    .line 367
    if-eq v5, v8, :cond_14

    .line 368
    .line 369
    if-eq v5, v3, :cond_13

    .line 370
    .line 371
    if-ne v5, v6, :cond_12

    .line 372
    .line 373
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .line 375
    .line 376
    goto :goto_f

    .line 377
    :catchall_0
    move-exception v0

    .line 378
    goto :goto_10

    .line 379
    :cond_12
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 380
    .line 381
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto :goto_e

    .line 385
    :cond_13
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    new-instance v0, Lorg/jsoup/SerializationException;

    .line 393
    .line 394
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 395
    .line 396
    .line 397
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    :cond_15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 399
    .line 400
    .line 401
    goto :goto_9

    .line 402
    :cond_16
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    iget-object v5, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v5, Lkotlinx/coroutines/Job;

    .line 408
    .line 409
    if-eqz v5, :cond_17

    .line 410
    .line 411
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 412
    .line 413
    invoke-static {v5, v4}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    if-ne v5, v0, :cond_17

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :cond_17
    :goto_9
    :try_start_2
    iget-object v5, v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cursorAlpha$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 421
    .line 422
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 423
    .line 424
    .line 425
    iget-boolean v5, v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->animate:Z

    .line 426
    .line 427
    if-nez v5, :cond_18

    .line 428
    .line 429
    iput v8, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 430
    .line 431
    invoke-static {v4}, Lkotlinx/coroutines/JobKt;->awaitCancellation(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 432
    .line 433
    .line 434
    :goto_a
    move-object v10, v0

    .line 435
    goto :goto_e

    .line 436
    :cond_18
    :goto_b
    iput v3, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 437
    .line 438
    invoke-static {v11, v12, v4}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    if-ne v5, v0, :cond_19

    .line 443
    .line 444
    goto :goto_d

    .line 445
    :cond_19
    :goto_c
    iget-object v5, v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cursorAlpha$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 446
    .line 447
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 448
    .line 449
    .line 450
    iput v6, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 451
    .line 452
    invoke-static {v11, v12, v4}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    if-ne v5, v0, :cond_1a

    .line 457
    .line 458
    :goto_d
    goto :goto_a

    .line 459
    :goto_e
    return-object v10

    .line 460
    :cond_1a
    :goto_f
    iget-object v5, v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cursorAlpha$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 461
    .line 462
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 463
    .line 464
    .line 465
    goto :goto_b

    .line 466
    :goto_10
    iget-object v1, v1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->cursorAlpha$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 467
    .line 468
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->setFloatValue(F)V

    .line 469
    .line 470
    .line 471
    throw v0

    .line 472
    :pswitch_6
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 473
    .line 474
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 475
    .line 476
    if-eqz v1, :cond_1d

    .line 477
    .line 478
    if-eq v1, v9, :cond_1c

    .line 479
    .line 480
    if-eq v1, v8, :cond_1b

    .line 481
    .line 482
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 483
    .line 484
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    goto :goto_13

    .line 488
    :cond_1b
    invoke-static/range {p1 .. p1}, Landroidx/camera/core/impl/Config$-CC;->m(Ljava/lang/Object;)Lorg/jsoup/SerializationException;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    throw v0

    .line 493
    :cond_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 494
    .line 495
    .line 496
    goto :goto_12

    .line 497
    :cond_1d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    new-instance v1, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 501
    .line 502
    invoke-direct {v1, v9}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 503
    .line 504
    .line 505
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 506
    .line 507
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/BroadcastFrameClock;

    .line 512
    .line 513
    .line 514
    move-result-object v2

    .line 515
    new-instance v3, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;

    .line 516
    .line 517
    invoke-direct {v3, v6, v1}, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/BroadcastFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    if-ne v1, v0, :cond_1e

    .line 525
    .line 526
    :goto_11
    move-object v10, v0

    .line 527
    goto :goto_13

    .line 528
    :cond_1e
    :goto_12
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 529
    .line 530
    check-cast v1, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;

    .line 531
    .line 532
    invoke-virtual {v1}, Landroidx/compose/foundation/text/input/internal/AndroidLegacyPlatformTextInputServiceAdapter;->getStylusHandwritingTrigger()Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    if-eqz v1, :cond_1f

    .line 537
    .line 538
    new-instance v2, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;

    .line 539
    .line 540
    iget-object v3, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 541
    .line 542
    check-cast v3, Landroidx/cardview/widget/CardView$1;

    .line 543
    .line 544
    invoke-direct {v2, v9, v3}, Lcom/skydoves/landscapist/ImageLoadKt$ImageLoad$1$1$1;-><init>(ILjava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    iput v8, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 548
    .line 549
    check-cast v1, Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 550
    .line 551
    invoke-static {v1, v2, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect$suspendImpl(Lkotlinx/coroutines/flow/SharedFlowImpl;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 552
    .line 553
    .line 554
    goto :goto_11

    .line 555
    :cond_1f
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 556
    .line 557
    :goto_13
    return-object v10

    .line 558
    :pswitch_7
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 559
    .line 560
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 561
    .line 562
    if-eqz v1, :cond_21

    .line 563
    .line 564
    if-ne v1, v9, :cond_20

    .line 565
    .line 566
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    goto :goto_14

    .line 570
    :cond_20
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 571
    .line 572
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    goto :goto_15

    .line 576
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 580
    .line 581
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 582
    .line 583
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 584
    .line 585
    check-cast v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 586
    .line 587
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;

    .line 588
    .line 589
    invoke-direct {v3, v2, v9}, Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 590
    .line 591
    .line 592
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 593
    .line 594
    invoke-static {v1, v3, v4}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    if-ne v1, v0, :cond_22

    .line 599
    .line 600
    move-object v10, v0

    .line 601
    goto :goto_15

    .line 602
    :cond_22
    :goto_14
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 603
    .line 604
    :goto_15
    return-object v10

    .line 605
    :pswitch_8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 606
    .line 607
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 608
    .line 609
    if-eqz v1, :cond_24

    .line 610
    .line 611
    if-ne v1, v9, :cond_23

    .line 612
    .line 613
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 614
    .line 615
    .line 616
    goto :goto_16

    .line 617
    :cond_23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 618
    .line 619
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    goto :goto_17

    .line 623
    :cond_24
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 624
    .line 625
    .line 626
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 627
    .line 628
    check-cast v1, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 629
    .line 630
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 631
    .line 632
    check-cast v2, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 633
    .line 634
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 635
    .line 636
    invoke-static {v1, v2, v4}, Landroidx/work/Data$Companion;->bringIntoView(Landroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    if-ne v1, v0, :cond_25

    .line 641
    .line 642
    move-object v10, v0

    .line 643
    goto :goto_17

    .line 644
    :cond_25
    :goto_16
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 645
    .line 646
    :goto_17
    return-object v10

    .line 647
    :pswitch_9
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 648
    .line 649
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 650
    .line 651
    if-eqz v1, :cond_27

    .line 652
    .line 653
    if-ne v1, v9, :cond_26

    .line 654
    .line 655
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 656
    .line 657
    .line 658
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 659
    .line 660
    goto :goto_18

    .line 661
    :cond_26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 662
    .line 663
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    goto :goto_18

    .line 667
    :cond_27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 668
    .line 669
    .line 670
    new-instance v1, Ljava/util/ArrayList;

    .line 671
    .line 672
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .line 674
    .line 675
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 678
    .line 679
    iget-object v2, v2, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 680
    .line 681
    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 682
    .line 683
    iget-object v6, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 684
    .line 685
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 686
    .line 687
    invoke-direct {v5, v3, v1, v6}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 688
    .line 689
    .line 690
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 691
    .line 692
    invoke-virtual {v2, v5, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-object v10, v0

    .line 696
    :goto_18
    return-object v10

    .line 697
    :pswitch_a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 698
    .line 699
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 700
    .line 701
    if-eqz v1, :cond_2a

    .line 702
    .line 703
    if-eq v1, v9, :cond_29

    .line 704
    .line 705
    if-ne v1, v8, :cond_28

    .line 706
    .line 707
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    goto :goto_1b

    .line 711
    :cond_28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 712
    .line 713
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 714
    .line 715
    .line 716
    goto :goto_1c

    .line 717
    :cond_29
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 718
    .line 719
    .line 720
    goto :goto_19

    .line 721
    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 725
    .line 726
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 727
    .line 728
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 729
    .line 730
    invoke-interface {v1, v4}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v1

    .line 734
    if-ne v1, v0, :cond_2b

    .line 735
    .line 736
    goto :goto_1a

    .line 737
    :cond_2b
    :goto_19
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 738
    .line 739
    check-cast v1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 740
    .line 741
    iput v8, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 742
    .line 743
    invoke-virtual {v1, v4}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->reset(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    if-ne v1, v0, :cond_2c

    .line 748
    .line 749
    :goto_1a
    move-object v10, v0

    .line 750
    goto :goto_1c

    .line 751
    :cond_2c
    :goto_1b
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 752
    .line 753
    :goto_1c
    return-object v10

    .line 754
    :pswitch_b
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 755
    .line 756
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 757
    .line 758
    if-eqz v1, :cond_2e

    .line 759
    .line 760
    if-ne v1, v9, :cond_2d

    .line 761
    .line 762
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    goto :goto_1d

    .line 766
    :cond_2d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 767
    .line 768
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    goto :goto_1e

    .line 772
    :cond_2e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 773
    .line 774
    .line 775
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 776
    .line 777
    check-cast v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 778
    .line 779
    iget-boolean v2, v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->isIndirectPointerEvent:Z

    .line 780
    .line 781
    if-eqz v2, :cond_2f

    .line 782
    .line 783
    const/high16 v7, -0x40800000    # -1.0f

    .line 784
    .line 785
    :cond_2f
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 786
    .line 787
    check-cast v2, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 788
    .line 789
    iget-object v2, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 790
    .line 791
    iget-wide v10, v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->velocity:J

    .line 792
    .line 793
    invoke-static {v7, v10, v11}, Landroidx/compose/ui/unit/Velocity;->times-adjELrA(FJ)J

    .line 794
    .line 795
    .line 796
    move-result-wide v7

    .line 797
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 798
    .line 799
    invoke-virtual {v2, v7, v8, v6, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->onScrollStopped-BMRW4eQ(JZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    if-ne v1, v0, :cond_30

    .line 804
    .line 805
    move-object v10, v0

    .line 806
    goto :goto_1e

    .line 807
    :cond_30
    :goto_1d
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 808
    .line 809
    :goto_1e
    return-object v10

    .line 810
    :pswitch_c
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 811
    .line 812
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 813
    .line 814
    if-eqz v1, :cond_32

    .line 815
    .line 816
    if-ne v1, v9, :cond_31

    .line 817
    .line 818
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 819
    .line 820
    move-object v1, v0

    .line 821
    check-cast v1, Lkotlinx/coroutines/Job;

    .line 822
    .line 823
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 824
    .line 825
    .line 826
    move-object/from16 v2, p1

    .line 827
    .line 828
    goto :goto_1f

    .line 829
    :catchall_1
    move-exception v0

    .line 830
    goto :goto_21

    .line 831
    :cond_31
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 832
    .line 833
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    goto :goto_20

    .line 837
    :cond_32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 838
    .line 839
    .line 840
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 841
    .line 842
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 843
    .line 844
    new-instance v2, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;

    .line 845
    .line 846
    invoke-direct {v2, v8, v10, v9}, Lapp/k9mail/featureflag/K9FeatureFlagFactory$getCatalog$1;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 847
    .line 848
    .line 849
    invoke-static {v1, v10, v10, v2, v3}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    :try_start_4
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 854
    .line 855
    check-cast v2, Lkotlinx/coroutines/channels/Channel;

    .line 856
    .line 857
    iput-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 858
    .line 859
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 860
    .line 861
    invoke-interface {v2, v4}, Lkotlinx/coroutines/channels/Channel;->receive(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 865
    if-ne v2, v0, :cond_33

    .line 866
    .line 867
    move-object v10, v0

    .line 868
    goto :goto_20

    .line 869
    :cond_33
    :goto_1f
    invoke-interface {v1, v10}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 870
    .line 871
    .line 872
    move-object v10, v2

    .line 873
    :goto_20
    return-object v10

    .line 874
    :goto_21
    invoke-interface {v1, v10}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 875
    .line 876
    .line 877
    throw v0

    .line 878
    :pswitch_d
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 879
    .line 880
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 881
    .line 882
    if-eqz v1, :cond_35

    .line 883
    .line 884
    if-ne v1, v9, :cond_34

    .line 885
    .line 886
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 887
    .line 888
    .line 889
    goto :goto_22

    .line 890
    :cond_34
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 891
    .line 892
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    goto :goto_23

    .line 896
    :cond_35
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 897
    .line 898
    .line 899
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;

    .line 902
    .line 903
    iget-object v1, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 904
    .line 905
    sget-object v2, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    .line 906
    .line 907
    iget-object v3, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 908
    .line 909
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 910
    .line 911
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 912
    .line 913
    invoke-virtual {v1, v2, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->scroll(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    if-ne v1, v0, :cond_36

    .line 918
    .line 919
    move-object v10, v0

    .line 920
    goto :goto_23

    .line 921
    :cond_36
    :goto_22
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 922
    .line 923
    :goto_23
    return-object v10

    .line 924
    :pswitch_e
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 925
    .line 926
    move-object v1, v0

    .line 927
    check-cast v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 928
    .line 929
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 930
    .line 931
    iget v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 932
    .line 933
    if-eqz v2, :cond_3a

    .line 934
    .line 935
    if-eq v2, v9, :cond_38

    .line 936
    .line 937
    if-ne v2, v8, :cond_37

    .line 938
    .line 939
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 940
    .line 941
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 942
    .line 943
    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 944
    .line 945
    .line 946
    goto :goto_24

    .line 947
    :catchall_2
    move-exception v0

    .line 948
    goto :goto_28

    .line 949
    :cond_37
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 950
    .line 951
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    goto :goto_27

    .line 955
    :cond_38
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 956
    .line 957
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 958
    .line 959
    :try_start_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 960
    .line 961
    .line 962
    move-object/from16 v3, p1

    .line 963
    .line 964
    :cond_39
    move-object v11, v2

    .line 965
    goto :goto_25

    .line 966
    :cond_3a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 967
    .line 968
    .line 969
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 972
    .line 973
    :goto_24
    :try_start_7
    invoke-interface {v2}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    invoke-static {v3}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    .line 978
    .line 979
    .line 980
    move-result v3

    .line 981
    if-eqz v3, :cond_3c

    .line 982
    .line 983
    iget-object v3, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 984
    .line 985
    iput-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 986
    .line 987
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 988
    .line 989
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 990
    .line 991
    .line 992
    invoke-static {v3, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v3

    .line 996
    if-ne v3, v0, :cond_39

    .line 997
    .line 998
    goto :goto_26

    .line 999
    :goto_25
    check-cast v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 1000
    .line 1001
    iget-object v2, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 1002
    .line 1003
    const/high16 v5, 0x40c00000    # 6.0f

    .line 1004
    .line 1005
    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 1006
    .line 1007
    .line 1008
    move-result v2

    .line 1009
    iget-object v5, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 1010
    .line 1011
    invoke-interface {v5, v7}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 1012
    .line 1013
    .line 1014
    move-result v5

    .line 1015
    move v6, v2

    .line 1016
    iget-object v2, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 1017
    .line 1018
    iput-object v11, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1019
    .line 1020
    iput v8, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1021
    .line 1022
    move/from16 v16, v6

    .line 1023
    .line 1024
    move-object v6, v4

    .line 1025
    move/from16 v4, v16

    .line 1026
    .line 1027
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->access$dispatchMouseWheelScroll(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1031
    move-object v4, v6

    .line 1032
    if-ne v2, v0, :cond_3b

    .line 1033
    .line 1034
    :goto_26
    move-object v10, v0

    .line 1035
    goto :goto_27

    .line 1036
    :cond_3b
    move-object v2, v11

    .line 1037
    goto :goto_24

    .line 1038
    :cond_3c
    iput-object v10, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->receivingMouseWheelEventsJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1039
    .line 1040
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1041
    .line 1042
    :goto_27
    return-object v10

    .line 1043
    :goto_28
    iput-object v10, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->receivingMouseWheelEventsJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1044
    .line 1045
    throw v0

    .line 1046
    :pswitch_f
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1047
    .line 1048
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1049
    .line 1050
    if-eqz v1, :cond_3e

    .line 1051
    .line 1052
    if-ne v1, v9, :cond_3d

    .line 1053
    .line 1054
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    goto :goto_29

    .line 1058
    :cond_3d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1059
    .line 1060
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    goto :goto_2a

    .line 1064
    :cond_3e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1068
    .line 1069
    check-cast v1, Landroidx/core/view/MenuHostHelper;

    .line 1070
    .line 1071
    iget-object v2, v1, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    .line 1072
    .line 1073
    move-object v12, v2

    .line 1074
    check-cast v12, Landroidx/compose/foundation/MutatorMutex;

    .line 1075
    .line 1076
    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 1077
    .line 1078
    move-object v14, v1

    .line 1079
    check-cast v14, Landroidx/compose/foundation/gestures/DefaultDraggableState$dragScope$1;

    .line 1080
    .line 1081
    sget-object v11, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    .line 1082
    .line 1083
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1084
    .line 1085
    move-object v13, v1

    .line 1086
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 1087
    .line 1088
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1089
    .line 1090
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1091
    .line 1092
    .line 1093
    new-instance v10, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;

    .line 1094
    .line 1095
    const/4 v15, 0x0

    .line 1096
    invoke-direct/range {v10 .. v15}, Landroidx/compose/foundation/MutatorMutex$mutateWith$2;-><init>(Landroidx/compose/foundation/MutatePriority;Landroidx/compose/foundation/MutatorMutex;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1097
    .line 1098
    .line 1099
    invoke-static {v10, v4}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v1

    .line 1103
    if-ne v1, v0, :cond_3f

    .line 1104
    .line 1105
    move-object v10, v0

    .line 1106
    goto :goto_2a

    .line 1107
    :cond_3f
    :goto_29
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1108
    .line 1109
    :goto_2a
    return-object v10

    .line 1110
    :pswitch_10
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1111
    .line 1112
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1113
    .line 1114
    if-eqz v1, :cond_41

    .line 1115
    .line 1116
    if-ne v1, v9, :cond_40

    .line 1117
    .line 1118
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1119
    .line 1120
    .line 1121
    goto :goto_2b

    .line 1122
    :cond_40
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1123
    .line 1124
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    goto :goto_2c

    .line 1128
    :cond_41
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1129
    .line 1130
    .line 1131
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1132
    .line 1133
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1134
    .line 1135
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1136
    .line 1137
    check-cast v2, Landroidx/compose/foundation/interaction/HoverInteraction$Exit;

    .line 1138
    .line 1139
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1140
    .line 1141
    invoke-virtual {v1, v2, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v1

    .line 1145
    if-ne v1, v0, :cond_42

    .line 1146
    .line 1147
    move-object v10, v0

    .line 1148
    goto :goto_2c

    .line 1149
    :cond_42
    :goto_2b
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1150
    .line 1151
    :goto_2c
    return-object v10

    .line 1152
    :pswitch_11
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1153
    .line 1154
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1155
    .line 1156
    if-eqz v1, :cond_44

    .line 1157
    .line 1158
    if-ne v1, v9, :cond_43

    .line 1159
    .line 1160
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1161
    .line 1162
    .line 1163
    goto :goto_2d

    .line 1164
    :cond_43
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1165
    .line 1166
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    goto :goto_2e

    .line 1170
    :cond_44
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1171
    .line 1172
    .line 1173
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1174
    .line 1175
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1176
    .line 1177
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1178
    .line 1179
    check-cast v2, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 1180
    .line 1181
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1182
    .line 1183
    invoke-virtual {v1, v2, v4}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    if-ne v1, v0, :cond_45

    .line 1188
    .line 1189
    move-object v10, v0

    .line 1190
    goto :goto_2e

    .line 1191
    :cond_45
    :goto_2d
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1192
    .line 1193
    :goto_2e
    return-object v10

    .line 1194
    :pswitch_12
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1195
    .line 1196
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1197
    .line 1198
    iget v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1199
    .line 1200
    if-eqz v2, :cond_47

    .line 1201
    .line 1202
    if-ne v2, v9, :cond_46

    .line 1203
    .line 1204
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1205
    .line 1206
    .line 1207
    goto :goto_2f

    .line 1208
    :cond_46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1209
    .line 1210
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    goto :goto_30

    .line 1214
    :cond_47
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1215
    .line 1216
    .line 1217
    const-string v2, "CXCP"

    .line 1218
    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    const-string v5, "PruningProcessingQueue: Processing "

    .line 1222
    .line 1223
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v3

    .line 1233
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    .line 1235
    .line 1236
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1237
    .line 1238
    check-cast v2, Lcom/eygraber/uri/Uri$Builder;

    .line 1239
    .line 1240
    iget-object v2, v2, Lcom/eygraber/uri/Uri$Builder;->authority:Ljava/lang/Object;

    .line 1241
    .line 1242
    check-cast v2, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 1243
    .line 1244
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1245
    .line 1246
    invoke-virtual {v2, v0, v4}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v0

    .line 1250
    if-ne v0, v1, :cond_48

    .line 1251
    .line 1252
    move-object v10, v1

    .line 1253
    goto :goto_30

    .line 1254
    :cond_48
    :goto_2f
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1255
    .line 1256
    :goto_30
    return-object v10

    .line 1257
    :pswitch_13
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1258
    .line 1259
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1260
    .line 1261
    if-eqz v1, :cond_4a

    .line 1262
    .line 1263
    if-ne v1, v9, :cond_49

    .line 1264
    .line 1265
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1266
    .line 1267
    .line 1268
    goto :goto_31

    .line 1269
    :cond_49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1270
    .line 1271
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    goto :goto_32

    .line 1275
    :cond_4a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1276
    .line 1277
    .line 1278
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1279
    .line 1280
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 1281
    .line 1282
    new-instance v2, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;

    .line 1283
    .line 1284
    iget-object v3, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1285
    .line 1286
    check-cast v3, Landroidx/camera/camera2/pipe/compat/VirtualCameraState;

    .line 1287
    .line 1288
    invoke-direct {v2, v6, v3}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;-><init>(ILjava/lang/Object;)V

    .line 1289
    .line 1290
    .line 1291
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1292
    .line 1293
    invoke-interface {v1, v2, v4}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v1

    .line 1297
    if-ne v1, v0, :cond_4b

    .line 1298
    .line 1299
    move-object v10, v0

    .line 1300
    goto :goto_32

    .line 1301
    :cond_4b
    :goto_31
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1302
    .line 1303
    :goto_32
    return-object v10

    .line 1304
    :pswitch_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1305
    .line 1306
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1307
    .line 1308
    iget v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1309
    .line 1310
    if-eqz v2, :cond_4e

    .line 1311
    .line 1312
    if-ne v2, v9, :cond_4d

    .line 1313
    .line 1314
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1315
    .line 1316
    .line 1317
    :cond_4c
    move-object v10, v0

    .line 1318
    goto :goto_34

    .line 1319
    :cond_4d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1320
    .line 1321
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    goto :goto_34

    .line 1325
    :cond_4e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1326
    .line 1327
    .line 1328
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1329
    .line 1330
    check-cast v2, Landroidx/camera/camera2/pipe/compat/CameraRequest;

    .line 1331
    .line 1332
    iget-object v3, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1333
    .line 1334
    check-cast v3, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;

    .line 1335
    .line 1336
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1337
    .line 1338
    instance-of v5, v2, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1339
    .line 1340
    if-eqz v5, :cond_4f

    .line 1341
    .line 1342
    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestOpen;

    .line 1343
    .line 1344
    invoke-virtual {v3, v2, v4}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestOpen(Landroidx/camera/camera2/pipe/compat/RequestOpen;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v2

    .line 1348
    if-ne v2, v1, :cond_52

    .line 1349
    .line 1350
    goto :goto_33

    .line 1351
    :cond_4f
    instance-of v5, v2, Landroidx/camera/camera2/pipe/compat/RequestClose;

    .line 1352
    .line 1353
    if-eqz v5, :cond_50

    .line 1354
    .line 1355
    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestClose;

    .line 1356
    .line 1357
    invoke-virtual {v3, v2, v4}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestClose(Landroidx/camera/camera2/pipe/compat/RequestClose;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v2

    .line 1361
    if-ne v2, v1, :cond_52

    .line 1362
    .line 1363
    goto :goto_33

    .line 1364
    :cond_50
    instance-of v5, v2, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1365
    .line 1366
    if-eqz v5, :cond_51

    .line 1367
    .line 1368
    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestCloseById;

    .line 1369
    .line 1370
    invoke-virtual {v3, v2, v4}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseById(Landroidx/camera/camera2/pipe/compat/RequestCloseById;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v2

    .line 1374
    if-ne v2, v1, :cond_52

    .line 1375
    .line 1376
    goto :goto_33

    .line 1377
    :cond_51
    instance-of v5, v2, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 1378
    .line 1379
    if-eqz v5, :cond_53

    .line 1380
    .line 1381
    check-cast v2, Landroidx/camera/camera2/pipe/compat/RequestCloseAll;

    .line 1382
    .line 1383
    invoke-virtual {v3, v2, v4}, Landroidx/camera/camera2/pipe/compat/PruningCamera2DeviceManager;->processRequestCloseAll(Landroidx/camera/camera2/pipe/compat/RequestCloseAll;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v2

    .line 1387
    if-ne v2, v1, :cond_52

    .line 1388
    .line 1389
    goto :goto_33

    .line 1390
    :cond_52
    move-object v2, v0

    .line 1391
    :goto_33
    if-ne v2, v1, :cond_4c

    .line 1392
    .line 1393
    move-object v10, v1

    .line 1394
    goto :goto_34

    .line 1395
    :cond_53
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1396
    .line 1397
    .line 1398
    :goto_34
    return-object v10

    .line 1399
    :pswitch_15
    invoke-direct/range {p0 .. p1}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->invokeSuspend$androidx$camera$camera2$pipe$compat$Camera2DeviceCache$createCameraIdListFlow$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v0

    .line 1403
    return-object v0

    .line 1404
    :pswitch_16
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1405
    .line 1406
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 1407
    .line 1408
    iget-object v2, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 1409
    .line 1410
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1411
    .line 1412
    iget v6, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1413
    .line 1414
    if-eqz v6, :cond_55

    .line 1415
    .line 1416
    if-ne v6, v9, :cond_54

    .line 1417
    .line 1418
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1419
    .line 1420
    .line 1421
    goto :goto_36

    .line 1422
    :cond_54
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1423
    .line 1424
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1425
    .line 1426
    .line 1427
    goto :goto_37

    .line 1428
    :cond_55
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1429
    .line 1430
    .line 1431
    iget-object v6, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1432
    .line 1433
    check-cast v6, Lkotlinx/coroutines/channels/ProducerScope;

    .line 1434
    .line 1435
    new-instance v7, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;

    .line 1436
    .line 1437
    invoke-direct {v7, v6, v0}, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache$createCameraIdListFlow$1$callback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;)V

    .line 1438
    .line 1439
    .line 1440
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1441
    .line 1442
    iget-object v10, v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->manager:Landroid/hardware/camera2/CameraManager;

    .line 1443
    .line 1444
    if-lt v8, v1, :cond_56

    .line 1445
    .line 1446
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1447
    .line 1448
    .line 1449
    iget-object v1, v2, Landroidx/camera/camera2/pipe/core/Threads;->lightweightExecutor:Ljava/util/concurrent/Executor;

    .line 1450
    .line 1451
    invoke-static {v10, v1, v7}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 1452
    .line 1453
    .line 1454
    goto :goto_35

    .line 1455
    :cond_56
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v1

    .line 1459
    invoke-virtual {v10, v7, v1}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 1460
    .line 1461
    .line 1462
    :goto_35
    new-instance v1, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 1463
    .line 1464
    invoke-direct {v1, v5, v0, v7}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1465
    .line 1466
    .line 1467
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1468
    .line 1469
    invoke-static {v6, v1, v4}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1470
    .line 1471
    .line 1472
    move-result-object v0

    .line 1473
    if-ne v0, v3, :cond_57

    .line 1474
    .line 1475
    move-object v10, v3

    .line 1476
    goto :goto_37

    .line 1477
    :cond_57
    :goto_36
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1478
    .line 1479
    :goto_37
    return-object v10

    .line 1480
    :pswitch_17
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1481
    .line 1482
    check-cast v0, Lokhttp3/Dispatcher;

    .line 1483
    .line 1484
    iget-object v2, v0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 1485
    .line 1486
    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    .line 1487
    .line 1488
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1489
    .line 1490
    iget v5, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1491
    .line 1492
    if-eqz v5, :cond_59

    .line 1493
    .line 1494
    if-ne v5, v9, :cond_58

    .line 1495
    .line 1496
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1497
    .line 1498
    .line 1499
    goto :goto_39

    .line 1500
    :cond_58
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1501
    .line 1502
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1503
    .line 1504
    .line 1505
    goto :goto_3a

    .line 1506
    :cond_59
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1507
    .line 1508
    .line 1509
    iget-object v5, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1510
    .line 1511
    check-cast v5, Lkotlinx/coroutines/channels/ProducerScope;

    .line 1512
    .line 1513
    new-instance v6, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;

    .line 1514
    .line 1515
    invoke-direct {v6, v5}, Landroidx/camera/camera2/pipe/compat/Camera2CameraAvailabilityMonitor$availableCameraFlow$1$availabilityCallback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    .line 1516
    .line 1517
    .line 1518
    iget-object v0, v0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 1519
    .line 1520
    check-cast v0, Ljavax/inject/Provider;

    .line 1521
    .line 1522
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 1527
    .line 1528
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1529
    .line 1530
    if-lt v7, v1, :cond_5a

    .line 1531
    .line 1532
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1533
    .line 1534
    .line 1535
    iget-object v1, v2, Landroidx/camera/camera2/pipe/core/Threads;->_camera2Executor:Lkotlin/SynchronizedLazyImpl;

    .line 1536
    .line 1537
    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v1

    .line 1541
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 1542
    .line 1543
    invoke-static {v0, v1, v6}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 1544
    .line 1545
    .line 1546
    goto :goto_38

    .line 1547
    :cond_5a
    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/core/Threads;->getCamera2Handler()Landroid/os/Handler;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v1

    .line 1551
    invoke-virtual {v0, v6, v1}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 1552
    .line 1553
    .line 1554
    :goto_38
    new-instance v1, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 1555
    .line 1556
    const/4 v2, 0x5

    .line 1557
    invoke-direct {v1, v2, v0, v6}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1558
    .line 1559
    .line 1560
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1561
    .line 1562
    invoke-static {v5, v1, v4}, Lkotlin/ranges/RangesKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v0

    .line 1566
    if-ne v0, v3, :cond_5b

    .line 1567
    .line 1568
    move-object v10, v3

    .line 1569
    goto :goto_3a

    .line 1570
    :cond_5b
    :goto_39
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1571
    .line 1572
    :goto_3a
    return-object v10

    .line 1573
    :pswitch_18
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1574
    .line 1575
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1576
    .line 1577
    if-eqz v1, :cond_5d

    .line 1578
    .line 1579
    if-ne v1, v9, :cond_5c

    .line 1580
    .line 1581
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1582
    .line 1583
    .line 1584
    move-object/from16 v1, p1

    .line 1585
    .line 1586
    goto :goto_3b

    .line 1587
    :cond_5c
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1588
    .line 1589
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    goto :goto_3c

    .line 1593
    :cond_5d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1594
    .line 1595
    .line 1596
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1597
    .line 1598
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1599
    .line 1600
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1601
    .line 1602
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v1

    .line 1606
    if-ne v1, v0, :cond_5e

    .line 1607
    .line 1608
    move-object v10, v0

    .line 1609
    goto :goto_3c

    .line 1610
    :cond_5e
    :goto_3b
    check-cast v1, Lkotlinx/coroutines/Deferred;

    .line 1611
    .line 1612
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1613
    .line 1614
    check-cast v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1615
    .line 1616
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil;->propagateTo(Lkotlinx/coroutines/Deferred;Lkotlinx/coroutines/CompletableDeferredImpl;)V

    .line 1617
    .line 1618
    .line 1619
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1620
    .line 1621
    :goto_3c
    return-object v10

    .line 1622
    :pswitch_19
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1623
    .line 1624
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1625
    .line 1626
    if-eqz v1, :cond_60

    .line 1627
    .line 1628
    if-ne v1, v9, :cond_5f

    .line 1629
    .line 1630
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1631
    .line 1632
    .line 1633
    move-object/from16 v1, p1

    .line 1634
    .line 1635
    goto :goto_3d

    .line 1636
    :cond_5f
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1637
    .line 1638
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1639
    .line 1640
    .line 1641
    goto/16 :goto_41

    .line 1642
    .line 1643
    :cond_60
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1644
    .line 1645
    .line 1646
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1647
    .line 1648
    check-cast v1, Landroidx/core/view/MenuHostHelper;

    .line 1649
    .line 1650
    iget-object v1, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    .line 1651
    .line 1652
    check-cast v1, Landroidx/camera/camera2/pipe/CameraPipeImpl;

    .line 1653
    .line 1654
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1655
    .line 1656
    check-cast v2, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    .line 1657
    .line 1658
    iget-object v2, v2, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1659
    .line 1660
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1661
    .line 1662
    iget-object v3, v1, Landroidx/camera/camera2/pipe/CameraPipeImpl;->lock:Ljava/lang/Object;

    .line 1663
    .line 1664
    monitor-enter v3

    .line 1665
    :try_start_8
    iget-boolean v5, v1, Landroidx/camera/camera2/pipe/CameraPipeImpl;->shutdown:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1666
    .line 1667
    if-nez v5, :cond_69

    .line 1668
    .line 1669
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraPipeImpl;->component:Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;

    .line 1670
    .line 1671
    :try_start_9
    iget-object v1, v1, Landroidx/camera/camera2/pipe/config/DaggerCameraPipeComponent$CameraPipeComponentImpl;->provideCameraBackendsProvider:Ldagger/internal/Provider;

    .line 1672
    .line 1673
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1674
    .line 1675
    .line 1676
    move-result-object v1

    .line 1677
    check-cast v1, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    .line 1678
    .line 1679
    iget-object v1, v1, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->default:Landroidx/camera/camera2/pipe/CameraBackend;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1680
    .line 1681
    monitor-exit v3

    .line 1682
    if-eqz v1, :cond_68

    .line 1683
    .line 1684
    check-cast v1, Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    .line 1685
    .line 1686
    invoke-virtual {v1, v2, v4}, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->isConfigSupported-NpXggIU(Landroidx/camera/camera2/pipe/CameraGraph$Config;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v1

    .line 1690
    if-ne v1, v0, :cond_61

    .line 1691
    .line 1692
    move-object v10, v0

    .line 1693
    goto/16 :goto_41

    .line 1694
    .line 1695
    :cond_61
    :goto_3d
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1696
    .line 1697
    check-cast v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    .line 1698
    .line 1699
    check-cast v1, Landroidx/camera/camera2/pipe/ConfigQueryResult;

    .line 1700
    .line 1701
    iget v2, v1, Landroidx/camera/camera2/pipe/ConfigQueryResult;->value:I

    .line 1702
    .line 1703
    const-string v3, "CXCP"

    .line 1704
    .line 1705
    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 1706
    .line 1707
    .line 1708
    move-result v3

    .line 1709
    if-eqz v3, :cond_66

    .line 1710
    .line 1711
    const-string v3, "CXCP"

    .line 1712
    .line 1713
    iget-object v4, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1714
    .line 1715
    iget-object v4, v4, Landroidx/camera/camera2/pipe/CameraGraph$Config;->streams:Ljava/util/List;

    .line 1716
    .line 1717
    new-instance v5, Ljava/util/ArrayList;

    .line 1718
    .line 1719
    const/16 v7, 0xa

    .line 1720
    .line 1721
    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1722
    .line 1723
    .line 1724
    move-result v10

    .line 1725
    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1726
    .line 1727
    .line 1728
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v4

    .line 1732
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1733
    .line 1734
    .line 1735
    move-result v10

    .line 1736
    if-eqz v10, :cond_63

    .line 1737
    .line 1738
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1739
    .line 1740
    .line 1741
    move-result-object v10

    .line 1742
    check-cast v10, Landroidx/camera/camera2/pipe/CameraStream$Config;

    .line 1743
    .line 1744
    iget-object v10, v10, Landroidx/camera/camera2/pipe/CameraStream$Config;->outputs:Ljava/util/List;

    .line 1745
    .line 1746
    new-instance v11, Ljava/util/ArrayList;

    .line 1747
    .line 1748
    invoke-static {v10, v7}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1749
    .line 1750
    .line 1751
    move-result v12

    .line 1752
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 1753
    .line 1754
    .line 1755
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v10

    .line 1759
    :goto_3f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 1760
    .line 1761
    .line 1762
    move-result v12

    .line 1763
    if-eqz v12, :cond_62

    .line 1764
    .line 1765
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v12

    .line 1769
    check-cast v12, Landroidx/camera/camera2/pipe/OutputStream$Config;

    .line 1770
    .line 1771
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1772
    .line 1773
    const-string v14, "size="

    .line 1774
    .line 1775
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1776
    .line 1777
    .line 1778
    iget-object v14, v12, Landroidx/camera/camera2/pipe/OutputStream$Config;->size:Landroid/util/Size;

    .line 1779
    .line 1780
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1781
    .line 1782
    .line 1783
    const-string v14, ", format="

    .line 1784
    .line 1785
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    .line 1787
    .line 1788
    iget v14, v12, Landroidx/camera/camera2/pipe/OutputStream$Config;->format:I

    .line 1789
    .line 1790
    invoke-static {v14}, Landroidx/camera/camera2/pipe/StreamFormat;->toString-impl(I)Ljava/lang/String;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v14

    .line 1794
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1795
    .line 1796
    .line 1797
    const-string v14, ", dynamicRangeProfile"

    .line 1798
    .line 1799
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    .line 1801
    .line 1802
    iget-object v12, v12, Landroidx/camera/camera2/pipe/OutputStream$Config;->dynamicRangeProfile:Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;

    .line 1803
    .line 1804
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1805
    .line 1806
    .line 1807
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v12

    .line 1811
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    .line 1813
    .line 1814
    goto :goto_3f

    .line 1815
    :cond_62
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    .line 1817
    .line 1818
    goto :goto_3e

    .line 1819
    :cond_63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1820
    .line 1821
    const-string v7, "FeatureCombinationQueryImpl#isSupported: result = "

    .line 1822
    .line 1823
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1824
    .line 1825
    .line 1826
    if-ne v2, v9, :cond_64

    .line 1827
    .line 1828
    const-string v2, "SUPPORTED"

    .line 1829
    .line 1830
    goto :goto_40

    .line 1831
    :cond_64
    if-ne v2, v8, :cond_65

    .line 1832
    .line 1833
    const-string v2, "UNSUPPORTED"

    .line 1834
    .line 1835
    goto :goto_40

    .line 1836
    :cond_65
    const-string v2, "UNKNOWN"

    .line 1837
    .line 1838
    :goto_40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1839
    .line 1840
    .line 1841
    const-string v2, " for sessionParameters = "

    .line 1842
    .line 1843
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    .line 1845
    .line 1846
    iget-object v0, v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 1847
    .line 1848
    iget-object v0, v0, Landroidx/camera/camera2/pipe/CameraGraph$Config;->sessionParameters:Ljava/util/Map;

    .line 1849
    .line 1850
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1851
    .line 1852
    .line 1853
    const-string v0, " and streams = "

    .line 1854
    .line 1855
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    .line 1857
    .line 1858
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1859
    .line 1860
    .line 1861
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v0

    .line 1865
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    .line 1867
    .line 1868
    :cond_66
    iget v0, v1, Landroidx/camera/camera2/pipe/ConfigQueryResult;->value:I

    .line 1869
    .line 1870
    if-ne v0, v9, :cond_67

    .line 1871
    .line 1872
    move v6, v9

    .line 1873
    :cond_67
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1874
    .line 1875
    .line 1876
    move-result-object v10

    .line 1877
    goto :goto_41

    .line 1878
    :cond_68
    const-string v0, "Required value was null."

    .line 1879
    .line 1880
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1881
    .line 1882
    .line 1883
    :goto_41
    return-object v10

    .line 1884
    :catchall_3
    move-exception v0

    .line 1885
    goto :goto_42

    .line 1886
    :cond_69
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1887
    .line 1888
    const-string v1, "Check failed."

    .line 1889
    .line 1890
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1891
    .line 1892
    .line 1893
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1894
    :goto_42
    monitor-exit v3

    .line 1895
    throw v0

    .line 1896
    :pswitch_1a
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1897
    .line 1898
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1899
    .line 1900
    if-eqz v1, :cond_6b

    .line 1901
    .line 1902
    if-ne v1, v9, :cond_6a

    .line 1903
    .line 1904
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1905
    .line 1906
    .line 1907
    move-object/from16 v0, p1

    .line 1908
    .line 1909
    goto :goto_43

    .line 1910
    :cond_6a
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1911
    .line 1912
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1913
    .line 1914
    .line 1915
    move-object v0, v10

    .line 1916
    goto :goto_43

    .line 1917
    :cond_6b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1918
    .line 1919
    .line 1920
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1921
    .line 1922
    check-cast v1, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    .line 1923
    .line 1924
    invoke-static {v1}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;->access$getOrCreateImpl(Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 1925
    .line 1926
    .line 1927
    move-result-object v1

    .line 1928
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1929
    .line 1930
    check-cast v2, Ljava/util/List;

    .line 1931
    .line 1932
    invoke-virtual {v1, v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->removeParametersAsync(Ljava/util/List;)Lkotlinx/coroutines/Deferred;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v1

    .line 1936
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1937
    .line 1938
    check-cast v1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1939
    .line 1940
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1941
    .line 1942
    .line 1943
    move-result-object v1

    .line 1944
    if-ne v1, v0, :cond_6c

    .line 1945
    .line 1946
    goto :goto_43

    .line 1947
    :cond_6c
    move-object v0, v1

    .line 1948
    :goto_43
    return-object v0

    .line 1949
    :pswitch_1b
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1950
    .line 1951
    check-cast v0, Landroidx/activity/compose/ComposePredictiveBackHandler;

    .line 1952
    .line 1953
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1954
    .line 1955
    iget v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 1956
    .line 1957
    if-eqz v2, :cond_6e

    .line 1958
    .line 1959
    if-ne v2, v9, :cond_6d

    .line 1960
    .line 1961
    iget-object v0, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 1962
    .line 1963
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1964
    .line 1965
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1966
    .line 1967
    .line 1968
    goto :goto_44

    .line 1969
    :cond_6d
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1970
    .line 1971
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1972
    .line 1973
    .line 1974
    goto :goto_46

    .line 1975
    :cond_6e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1976
    .line 1977
    .line 1978
    invoke-virtual {v0}, Lnet/openid/appauth/JsonUtil$Field;->isBackEnabled()Z

    .line 1979
    .line 1980
    .line 1981
    move-result v2

    .line 1982
    if-eqz v2, :cond_71

    .line 1983
    .line 1984
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 1985
    .line 1986
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1987
    .line 1988
    .line 1989
    iget-object v3, v0, Landroidx/activity/compose/ComposePredictiveBackHandler;->currentOnBack:Lkotlin/jvm/functions/Function2;

    .line 1990
    .line 1991
    iget-object v0, v0, Landroidx/activity/compose/ComposePredictiveBackHandler;->activeChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1992
    .line 1993
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1994
    .line 1995
    .line 1996
    new-instance v5, Lkotlinx/coroutines/flow/ChannelAsFlow;

    .line 1997
    .line 1998
    invoke-direct {v5, v0, v9}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/Channel;Z)V

    .line 1999
    .line 2000
    .line 2001
    new-instance v0, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;

    .line 2002
    .line 2003
    invoke-direct {v0, v2, v10, v6}, Landroidx/activity/compose/ComposePredictiveBackHandler$launchNewGesture$1$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 2004
    .line 2005
    .line 2006
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

    .line 2007
    .line 2008
    invoke-direct {v6, v5, v0, v9}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;I)V

    .line 2009
    .line 2010
    .line 2011
    iput-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 2012
    .line 2013
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 2014
    .line 2015
    invoke-interface {v3, v6, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v0

    .line 2019
    if-ne v0, v1, :cond_6f

    .line 2020
    .line 2021
    move-object v10, v1

    .line 2022
    goto :goto_46

    .line 2023
    :cond_6f
    move-object v0, v2

    .line 2024
    :goto_44
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2025
    .line 2026
    if-eqz v0, :cond_70

    .line 2027
    .line 2028
    goto :goto_45

    .line 2029
    :cond_70
    const-string v0, "You must collect the progress flow"

    .line 2030
    .line 2031
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2032
    .line 2033
    .line 2034
    goto :goto_46

    .line 2035
    :cond_71
    :goto_45
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2036
    .line 2037
    :goto_46
    return-object v10

    .line 2038
    :pswitch_1c
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2039
    .line 2040
    iget v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 2041
    .line 2042
    if-eqz v1, :cond_73

    .line 2043
    .line 2044
    if-ne v1, v9, :cond_72

    .line 2045
    .line 2046
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2047
    .line 2048
    .line 2049
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2050
    .line 2051
    goto :goto_47

    .line 2052
    :cond_72
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 2053
    .line 2054
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 2055
    .line 2056
    .line 2057
    goto :goto_47

    .line 2058
    :cond_73
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2059
    .line 2060
    .line 2061
    iget-object v1, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->L$0:Ljava/lang/Object;

    .line 2062
    .line 2063
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 2064
    .line 2065
    iget-object v2, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 2066
    .line 2067
    check-cast v2, Landroidx/compose/material/ripple/AndroidRippleNode;

    .line 2068
    .line 2069
    iget-object v3, v2, Landroidx/compose/material/ripple/AndroidRippleNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 2070
    .line 2071
    iget-object v3, v3, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 2072
    .line 2073
    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 2074
    .line 2075
    invoke-direct {v6, v5, v2, v1}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2076
    .line 2077
    .line 2078
    iput v9, v4, Landroidx/compose/material/ripple/RippleNode$onAttach$1;->label:I

    .line 2079
    .line 2080
    invoke-virtual {v3, v6, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2081
    .line 2082
    .line 2083
    move-object v10, v0

    .line 2084
    :goto_47
    return-object v10

    .line 2085
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
