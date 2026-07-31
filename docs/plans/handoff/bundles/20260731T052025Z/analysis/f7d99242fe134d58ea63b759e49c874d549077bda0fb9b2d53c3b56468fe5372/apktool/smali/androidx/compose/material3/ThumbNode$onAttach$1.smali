.class public final Landroidx/compose/material3/ThumbNode$onAttach$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/ScrollableState;ILkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/platform/AccessibilityManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    const/16 p1, 0x19

    iput p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->$r8$classId:I

    .line 12
    iput-object p2, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 13
    iput p3, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->$r8$classId:I

    .line 14
    iput-object p2, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private final invokeSuspend$androidx$camera$camera2$pipe$core$WakeLock$startTimeout$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput v3, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 25
    .line 26
    const-wide/16 v4, 0x3e8

    .line 27
    .line 28
    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/compose/ui/node/NodeChain$Differ;->after:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-boolean v1, p1, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    .line 43
    .line 44
    if-nez v1, :cond_4

    .line 45
    .line 46
    iget v1, p1, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iput-object v2, p1, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Ljava/lang/Object;

    .line 52
    .line 53
    iput-boolean v3, p1, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    iget-object p0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 59
    .line 60
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/compose/runtime/Recomposer$$ExternalSyntheticLambda6;->invoke()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    :goto_1
    :try_start_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    monitor-exit v0

    .line 75
    return-object p0

    .line 76
    :goto_2
    monitor-exit v0

    .line 77
    throw p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 9
    .line 10
    check-cast v0, Landroid/content/Context;

    .line 11
    .line 12
    const/16 p1, 0x1d

    .line 13
    .line 14
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :pswitch_0
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 19
    .line 20
    check-cast v0, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;

    .line 21
    .line 22
    const/16 p1, 0x1c

    .line 23
    .line 24
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_1
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 29
    .line 30
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 31
    .line 32
    const/16 p1, 0x1b

    .line 33
    .line 34
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 35
    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_2
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 39
    .line 40
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 41
    .line 42
    const/16 p1, 0x1a

    .line 43
    .line 44
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 45
    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_3
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    check-cast v0, Landroidx/compose/ui/platform/AccessibilityManager;

    .line 52
    .line 53
    invoke-direct {p0, p1, v0, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;Landroidx/compose/ui/platform/AccessibilityManager;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :pswitch_4
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 58
    .line 59
    check-cast v0, Landroidx/compose/animation/core/Animatable;

    .line 60
    .line 61
    const/16 p1, 0x18

    .line 62
    .line 63
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :pswitch_5
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 68
    .line 69
    check-cast v0, Landroidx/compose/material3/ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback;

    .line 70
    .line 71
    const/16 p1, 0x17

    .line 72
    .line 73
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_6
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 78
    .line 79
    check-cast v0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 80
    .line 81
    const/16 p1, 0x16

    .line 82
    .line 83
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 84
    .line 85
    .line 86
    return-object p0

    .line 87
    :pswitch_7
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 88
    .line 89
    check-cast v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 90
    .line 91
    const/16 p1, 0x15

    .line 92
    .line 93
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 94
    .line 95
    .line 96
    return-object p0

    .line 97
    :pswitch_8
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 98
    .line 99
    check-cast v0, Landroidx/cardview/widget/CardView$1;

    .line 100
    .line 101
    const/16 p1, 0x14

    .line 102
    .line 103
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 104
    .line 105
    .line 106
    return-object p0

    .line 107
    :pswitch_9
    new-instance p1, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 108
    .line 109
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 110
    .line 111
    iget p0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 112
    .line 113
    const/16 v1, 0x13

    .line 114
    .line 115
    invoke-direct {p1, v0, p0, p2, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;ILkotlin/coroutines/Continuation;I)V

    .line 116
    .line 117
    .line 118
    return-object p1

    .line 119
    :pswitch_a
    new-instance p1, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 120
    .line 121
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 122
    .line 123
    iget p0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 124
    .line 125
    const/16 v1, 0x12

    .line 126
    .line 127
    invoke-direct {p1, v0, p0, p2, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;ILkotlin/coroutines/Continuation;I)V

    .line 128
    .line 129
    .line 130
    return-object p1

    .line 131
    :pswitch_b
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 132
    .line 133
    check-cast v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 134
    .line 135
    const/16 p1, 0x11

    .line 136
    .line 137
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 138
    .line 139
    .line 140
    return-object p0

    .line 141
    :pswitch_c
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 142
    .line 143
    check-cast v0, Landroidx/compose/foundation/MagnifierNode;

    .line 144
    .line 145
    const/16 p1, 0x10

    .line 146
    .line 147
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 148
    .line 149
    .line 150
    return-object p0

    .line 151
    :pswitch_d
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 152
    .line 153
    check-cast v0, Landroidx/compose/foundation/FocusableNode;

    .line 154
    .line 155
    const/16 p1, 0xf

    .line 156
    .line 157
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :pswitch_e
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 162
    .line 163
    check-cast v0, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    .line 164
    .line 165
    const/16 p1, 0xe

    .line 166
    .line 167
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 168
    .line 169
    .line 170
    return-object p0

    .line 171
    :pswitch_f
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 172
    .line 173
    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 174
    .line 175
    const/16 p1, 0xd

    .line 176
    .line 177
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 178
    .line 179
    .line 180
    return-object p0

    .line 181
    :pswitch_10
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 182
    .line 183
    check-cast v0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    .line 184
    .line 185
    const/16 p1, 0xc

    .line 186
    .line 187
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 188
    .line 189
    .line 190
    return-object p0

    .line 191
    :pswitch_11
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 192
    .line 193
    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    .line 194
    .line 195
    const/16 p1, 0xb

    .line 196
    .line 197
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 198
    .line 199
    .line 200
    return-object p0

    .line 201
    :pswitch_12
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 202
    .line 203
    check-cast v0, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 204
    .line 205
    const/16 p1, 0xa

    .line 206
    .line 207
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 208
    .line 209
    .line 210
    return-object p0

    .line 211
    :pswitch_13
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 212
    .line 213
    check-cast v0, Lkotlinx/coroutines/DeferredCoroutine;

    .line 214
    .line 215
    const/16 p1, 0x9

    .line 216
    .line 217
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 218
    .line 219
    .line 220
    return-object p0

    .line 221
    :pswitch_14
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 222
    .line 223
    check-cast v0, Lcom/eygraber/uri/Uri$Builder;

    .line 224
    .line 225
    const/16 p1, 0x8

    .line 226
    .line 227
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 228
    .line 229
    .line 230
    return-object p0

    .line 231
    :pswitch_15
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 232
    .line 233
    check-cast v0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 234
    .line 235
    const/4 p1, 0x7

    .line 236
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 237
    .line 238
    .line 239
    return-object p0

    .line 240
    :pswitch_16
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 241
    .line 242
    check-cast v0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 243
    .line 244
    const/4 p1, 0x6

    .line 245
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 246
    .line 247
    .line 248
    return-object p0

    .line 249
    :pswitch_17
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 250
    .line 251
    check-cast v0, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 252
    .line 253
    const/4 p1, 0x5

    .line 254
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 255
    .line 256
    .line 257
    return-object p0

    .line 258
    :pswitch_18
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 259
    .line 260
    check-cast v0, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 261
    .line 262
    const/4 p1, 0x4

    .line 263
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 264
    .line 265
    .line 266
    return-object p0

    .line 267
    :pswitch_19
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 268
    .line 269
    check-cast v0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 270
    .line 271
    const/4 p1, 0x3

    .line 272
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 273
    .line 274
    .line 275
    return-object p0

    .line 276
    :pswitch_1a
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 277
    .line 278
    check-cast v0, Ljava/util/List;

    .line 279
    .line 280
    const/4 p1, 0x2

    .line 281
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 282
    .line 283
    .line 284
    return-object p0

    .line 285
    :pswitch_1b
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 286
    .line 287
    check-cast v0, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 288
    .line 289
    invoke-direct {p0, p2, v0}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/camera/camera2/impl/UseCaseCameraImpl;)V

    .line 290
    .line 291
    .line 292
    return-object p0

    .line 293
    :pswitch_1c
    new-instance p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 294
    .line 295
    check-cast v0, Landroidx/compose/material3/ThumbNode;

    .line 296
    .line 297
    const/4 p1, 0x0

    .line 298
    invoke-direct {p0, v0, p2, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 299
    .line 300
    .line 301
    return-object p0

    .line 302
    nop

    .line 303
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
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_4
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 84
    .line 85
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 99
    .line 100
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 101
    .line 102
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :pswitch_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 114
    .line 115
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :pswitch_7
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 129
    .line 130
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 131
    .line 132
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 137
    .line 138
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    return-object p0

    .line 143
    :pswitch_8
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 144
    .line 145
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 146
    .line 147
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 152
    .line 153
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    return-object p0

    .line 158
    :pswitch_9
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 159
    .line 160
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 161
    .line 162
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    return-object v1

    .line 172
    :pswitch_a
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 173
    .line 174
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 175
    .line 176
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 181
    .line 182
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    return-object v1

    .line 186
    :pswitch_b
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 187
    .line 188
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 189
    .line 190
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 195
    .line 196
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    return-object p0

    .line 201
    :pswitch_c
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 202
    .line 203
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 204
    .line 205
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 210
    .line 211
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 215
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 226
    .line 227
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 241
    .line 242
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 271
    .line 272
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 286
    .line 287
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 301
    .line 302
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 316
    .line 317
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    return-object p0

    .line 322
    :pswitch_14
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 323
    .line 324
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 325
    .line 326
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 331
    .line 332
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    return-object p0

    .line 337
    :pswitch_15
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 338
    .line 339
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 340
    .line 341
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 342
    .line 343
    .line 344
    move-result-object p0

    .line 345
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 346
    .line 347
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    return-object p0

    .line 352
    :pswitch_16
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 353
    .line 354
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 355
    .line 356
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 361
    .line 362
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    return-object p0

    .line 367
    :pswitch_17
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 368
    .line 369
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 370
    .line 371
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 372
    .line 373
    .line 374
    move-result-object p0

    .line 375
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 376
    .line 377
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 391
    .line 392
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 406
    .line 407
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 421
    .line 422
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 432
    .line 433
    .line 434
    move-result-object p0

    .line 435
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 436
    .line 437
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ThumbNode$onAttach$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    check-cast p0, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 451
    .line 452
    invoke-virtual {p0, v1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 14

    .line 1
    iget v0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x2

    .line 9
    const/4 v6, 0x1

    .line 10
    const/4 v7, 0x0

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iget v3, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 19
    .line 20
    if-eqz v3, :cond_2

    .line 21
    .line 22
    if-ne v3, v6, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    move-object v7, v0

    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroidx/glance/appwidget/GlanceAppWidgetManager;

    .line 41
    .line 42
    iget-object v3, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {p1, v3}, Landroidx/glance/appwidget/GlanceAppWidgetManager;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iput v6, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v4, p1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->appWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    move-object v8, v6

    .line 81
    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    .line 82
    .line 83
    iget-object v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 84
    .line 85
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-eqz v8, :cond_3

    .line 94
    .line 95
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_5

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 123
    .line 124
    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    iget-object p1, p1, Landroidx/glance/appwidget/GlanceAppWidgetManager;->dataStore$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 139
    .line 140
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Landroidx/datastore/core/DataStore;

    .line 145
    .line 146
    new-instance v3, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 147
    .line 148
    const/16 v4, 0xd

    .line 149
    .line 150
    invoke-direct {v3, v2, v7, v4}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 151
    .line 152
    .line 153
    invoke-interface {p1, v3, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-ne p0, v1, :cond_6

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_6
    move-object p0, v0

    .line 161
    :goto_2
    if-ne p0, v1, :cond_0

    .line 162
    .line 163
    move-object v7, v1

    .line 164
    :goto_3
    return-object v7

    .line 165
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 166
    .line 167
    iget v1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 168
    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    if-ne v1, v6, :cond_7

    .line 172
    .line 173
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_7
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 178
    .line 179
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast p1, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;

    .line 189
    .line 190
    :try_start_1
    iput v6, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 191
    .line 192
    invoke-static {p1, p0}, Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;->access$startSessionIfNeededAndWaitUntilReady(Landroidx/glance/appwidget/GlanceRemoteViewsService$GlanceRemoteViewsFactory;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    if-ne p0, v0, :cond_9

    .line 197
    .line 198
    move-object v7, v0

    .line 199
    goto :goto_5

    .line 200
    :cond_9
    :goto_4
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Lkotlinx/coroutines/channels/ClosedSendChannelException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :catch_0
    move-exception v0

    .line 204
    move-object p0, v0

    .line 205
    const-string p1, "GlanceRemoteViewService"

    .line 206
    .line 207
    const-string v0, "Error when trying to start session for list items"

    .line 208
    .line 209
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    new-instance v7, Ljava/lang/Integer;

    .line 214
    .line 215
    invoke-direct {v7, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 216
    .line 217
    .line 218
    :goto_5
    return-object v7

    .line 219
    :pswitch_1
    iget-object v0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 222
    .line 223
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 224
    .line 225
    iget v2, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 226
    .line 227
    if-eqz v2, :cond_c

    .line 228
    .line 229
    if-eq v2, v6, :cond_b

    .line 230
    .line 231
    if-ne v2, v5, :cond_a

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_a
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 235
    .line 236
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_b
    :goto_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    iget-object p1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->_pointerInputEventHandler:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    .line 248
    .line 249
    iput v5, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 250
    .line 251
    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;->invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    if-ne p0, v1, :cond_d

    .line 256
    .line 257
    move-object v7, v1

    .line 258
    goto :goto_8

    .line 259
    :cond_d
    :goto_7
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 260
    .line 261
    :goto_8
    return-object v7

    .line 262
    :pswitch_2
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 263
    .line 264
    iget v1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 265
    .line 266
    if-eqz v1, :cond_f

    .line 267
    .line 268
    if-ne v1, v6, :cond_e

    .line 269
    .line 270
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_e
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 275
    .line 276
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast p1, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 286
    .line 287
    iput v6, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 288
    .line 289
    invoke-virtual {p1, p0}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    if-ne p0, v0, :cond_10

    .line 294
    .line 295
    move-object v7, v0

    .line 296
    goto :goto_a

    .line 297
    :cond_10
    :goto_9
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 298
    .line 299
    :goto_a
    return-object v7

    .line 300
    :pswitch_3
    iget p0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 301
    .line 302
    if-eqz p0, :cond_12

    .line 303
    .line 304
    if-eq p0, v6, :cond_11

    .line 305
    .line 306
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 307
    .line 308
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_b

    .line 312
    :cond_11
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    throw v7

    .line 316
    :cond_12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 317
    .line 318
    .line 319
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 320
    .line 321
    :goto_b
    return-object v7

    .line 322
    :pswitch_4
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 323
    .line 324
    iget v1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 325
    .line 326
    if-eqz v1, :cond_14

    .line 327
    .line 328
    if-ne v1, v6, :cond_13

    .line 329
    .line 330
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    goto :goto_c

    .line 334
    :cond_13
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 335
    .line 336
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    goto :goto_d

    .line 340
    :cond_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    iget-object p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 344
    .line 345
    move-object v7, p1

    .line 346
    check-cast v7, Landroidx/compose/animation/core/Animatable;

    .line 347
    .line 348
    new-instance v8, Ljava/lang/Float;

    .line 349
    .line 350
    invoke-direct {v8, v4}, Ljava/lang/Float;-><init>(F)V

    .line 351
    .line 352
    .line 353
    iput v6, p0, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 354
    .line 355
    const/4 v9, 0x0

    .line 356
    const/4 v10, 0x0

    .line 357
    const/16 v12, 0xe

    .line 358
    .line 359
    move-object v11, p0

    .line 360
    invoke-static/range {v7 .. v12}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    if-ne p0, v0, :cond_15

    .line 365
    .line 366
    move-object v7, v0

    .line 367
    goto :goto_d

    .line 368
    :cond_15
    :goto_c
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 369
    .line 370
    :goto_d
    return-object v7

    .line 371
    :pswitch_5
    move-object v5, p0

    .line 372
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 373
    .line 374
    iget v0, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 375
    .line 376
    if-eqz v0, :cond_17

    .line 377
    .line 378
    if-ne v0, v6, :cond_16

    .line 379
    .line 380
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 381
    .line 382
    .line 383
    goto :goto_e

    .line 384
    :cond_16
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 385
    .line 386
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_f

    .line 390
    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    iget-object p1, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast p1, Landroidx/compose/material3/ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback;

    .line 396
    .line 397
    iget-object v0, p1, Landroidx/compose/material3/ModalBottomSheetDialogWrapper$PredictiveBackOnBackPressedCallback;->predictiveBackProgress:Landroidx/compose/animation/core/Animatable;

    .line 398
    .line 399
    new-instance v1, Ljava/lang/Float;

    .line 400
    .line 401
    invoke-direct {v1, v4}, Ljava/lang/Float;-><init>(F)V

    .line 402
    .line 403
    .line 404
    iput v6, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 405
    .line 406
    const/4 v2, 0x0

    .line 407
    const/4 v3, 0x0

    .line 408
    move-object v4, v5

    .line 409
    const/16 v5, 0xe

    .line 410
    .line 411
    invoke-static/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    if-ne p1, p0, :cond_18

    .line 416
    .line 417
    move-object v7, p0

    .line 418
    goto :goto_f

    .line 419
    :cond_18
    :goto_e
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 420
    .line 421
    :goto_f
    return-object v7

    .line 422
    :pswitch_6
    move-object v5, p0

    .line 423
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 424
    .line 425
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 426
    .line 427
    iget v1, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 428
    .line 429
    if-eqz v1, :cond_1a

    .line 430
    .line 431
    if-ne v1, v6, :cond_19

    .line 432
    .line 433
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    move-object v7, p0

    .line 437
    goto :goto_10

    .line 438
    :cond_19
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 439
    .line 440
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    goto :goto_10

    .line 444
    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 445
    .line 446
    .line 447
    iget-object p0, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;

    .line 450
    .line 451
    iput v6, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 452
    .line 453
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 454
    .line 455
    .line 456
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 457
    .line 458
    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 459
    .line 460
    .line 461
    iget-object v1, p0, Landroidx/compose/foundation/text/LinkStateInteractionSourceObserver;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 462
    .line 463
    iget-object v1, v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 464
    .line 465
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 466
    .line 467
    const/4 v3, 0x4

    .line 468
    invoke-direct {v2, v3, p1, p0}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v2, v5}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-object v7, v0

    .line 475
    :goto_10
    return-object v7

    .line 476
    :pswitch_7
    move-object v5, p0

    .line 477
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 478
    .line 479
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 480
    .line 481
    iget v1, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 482
    .line 483
    if-eqz v1, :cond_1d

    .line 484
    .line 485
    if-ne v1, v6, :cond_1c

    .line 486
    .line 487
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    :cond_1b
    move-object v7, p0

    .line 491
    goto :goto_12

    .line 492
    :cond_1c
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 493
    .line 494
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    goto :goto_12

    .line 498
    :cond_1d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    iget-object p1, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 502
    .line 503
    check-cast p1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 504
    .line 505
    iput v6, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 506
    .line 507
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 508
    .line 509
    .line 510
    new-instance v1, Landroidx/datastore/core/DataStoreImpl$data$1$3;

    .line 511
    .line 512
    const/16 v2, 0xc

    .line 513
    .line 514
    invoke-direct {v1, p1, v7, v2}, Landroidx/datastore/core/DataStoreImpl$data$1$3;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 515
    .line 516
    .line 517
    invoke-static {v1, v5}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object p1

    .line 521
    if-ne p1, v0, :cond_1e

    .line 522
    .line 523
    goto :goto_11

    .line 524
    :cond_1e
    move-object p1, p0

    .line 525
    :goto_11
    if-ne p1, v0, :cond_1b

    .line 526
    .line 527
    move-object v7, v0

    .line 528
    :goto_12
    return-object v7

    .line 529
    :pswitch_8
    move-object v5, p0

    .line 530
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 531
    .line 532
    iget v0, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 533
    .line 534
    if-eqz v0, :cond_20

    .line 535
    .line 536
    if-ne v0, v6, :cond_1f

    .line 537
    .line 538
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    goto :goto_13

    .line 542
    :cond_1f
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 543
    .line 544
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    goto :goto_14

    .line 548
    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 549
    .line 550
    .line 551
    iget-object p1, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 552
    .line 553
    check-cast p1, Landroidx/cardview/widget/CardView$1;

    .line 554
    .line 555
    iget-object p1, p1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 556
    .line 557
    move-object v0, p1

    .line 558
    check-cast v0, Landroidx/compose/animation/core/AnimationState;

    .line 559
    .line 560
    new-instance v1, Ljava/lang/Float;

    .line 561
    .line 562
    invoke-direct {v1, v4}, Ljava/lang/Float;-><init>(F)V

    .line 563
    .line 564
    .line 565
    new-instance p1, Ljava/lang/Float;

    .line 566
    .line 567
    const/high16 v2, 0x3f000000    # 0.5f

    .line 568
    .line 569
    invoke-direct {p1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 570
    .line 571
    .line 572
    const/high16 v2, 0x43c80000    # 400.0f

    .line 573
    .line 574
    invoke-static {v4, v2, p1, v6}, Landroidx/compose/animation/core/ArcSplineKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    iput v6, v5, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 579
    .line 580
    const/4 v3, 0x1

    .line 581
    const/4 v4, 0x0

    .line 582
    const/16 v6, 0x8

    .line 583
    .line 584
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/ArcSplineKt;->animateTo$default(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/SpringSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object p1

    .line 588
    if-ne p1, p0, :cond_21

    .line 589
    .line 590
    move-object v7, p0

    .line 591
    goto :goto_14

    .line 592
    :cond_21
    :goto_13
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 593
    .line 594
    :goto_14
    return-object v7

    .line 595
    :pswitch_9
    move-object v4, p0

    .line 596
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 597
    .line 598
    .line 599
    iget-object p0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 602
    .line 603
    iget p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 604
    .line 605
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->scrollPosition:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 606
    .line 607
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->index$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 608
    .line 609
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    if-ne v1, p1, :cond_22

    .line 614
    .line 615
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    .line 616
    .line 617
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    .line 618
    .line 619
    .line 620
    move-result v1

    .line 621
    if-eqz v1, :cond_23

    .line 622
    .line 623
    :cond_22
    iget-object v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->itemAnimator:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 624
    .line 625
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->releaseAnimations()V

    .line 626
    .line 627
    .line 628
    iput-object v7, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->keyIndexMap:Lde/cketti/changelog/XmlParser;

    .line 629
    .line 630
    const/4 v2, -0x1

    .line 631
    iput v2, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->firstVisibleIndex:I

    .line 632
    .line 633
    :cond_23
    invoke-virtual {v0, p1, v3}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->update(II)V

    .line 634
    .line 635
    .line 636
    iput-object v7, v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    .line 637
    .line 638
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    .line 639
    .line 640
    if-eqz p0, :cond_24

    .line 641
    .line 642
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->forceRemeasure()V

    .line 643
    .line 644
    .line 645
    :cond_24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 646
    .line 647
    return-object p0

    .line 648
    :pswitch_a
    move-object v4, p0

    .line 649
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 650
    .line 651
    .line 652
    iget-object p0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    .line 655
    .line 656
    iget p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 657
    .line 658
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListState;->snapToItemIndexInternal$foundation(I)V

    .line 659
    .line 660
    .line 661
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 662
    .line 663
    return-object p0

    .line 664
    :pswitch_b
    move-object v4, p0

    .line 665
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 666
    .line 667
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 668
    .line 669
    if-eqz v0, :cond_26

    .line 670
    .line 671
    if-ne v0, v6, :cond_25

    .line 672
    .line 673
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 674
    .line 675
    .line 676
    goto :goto_15

    .line 677
    :cond_25
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 678
    .line 679
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    move-object p1, v7

    .line 683
    goto :goto_15

    .line 684
    :cond_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 685
    .line 686
    .line 687
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast p1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 690
    .line 691
    iget-object p1, p1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 692
    .line 693
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 694
    .line 695
    new-instance v0, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    .line 696
    .line 697
    const/16 v1, 0x10

    .line 698
    .line 699
    invoke-direct {v0, p1, v7, v1}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 700
    .line 701
    .line 702
    invoke-static {v0, v4}, Lkotlinx/coroutines/JobKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object p1

    .line 706
    if-ne p1, p0, :cond_27

    .line 707
    .line 708
    move-object p1, p0

    .line 709
    :cond_27
    :goto_15
    return-object p1

    .line 710
    :pswitch_c
    move-object v4, p0

    .line 711
    iget-object p0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 712
    .line 713
    check-cast p0, Landroidx/compose/foundation/MagnifierNode;

    .line 714
    .line 715
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 716
    .line 717
    iget v1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 718
    .line 719
    if-eqz v1, :cond_2a

    .line 720
    .line 721
    if-eq v1, v6, :cond_29

    .line 722
    .line 723
    if-ne v1, v5, :cond_28

    .line 724
    .line 725
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 726
    .line 727
    .line 728
    goto :goto_1a

    .line 729
    :cond_28
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 730
    .line 731
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 732
    .line 733
    .line 734
    goto :goto_19

    .line 735
    :cond_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    goto :goto_17

    .line 739
    :cond_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 740
    .line 741
    .line 742
    :cond_2b
    :goto_16
    iget-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->drawSignalChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 743
    .line 744
    if-eqz p1, :cond_2c

    .line 745
    .line 746
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 747
    .line 748
    invoke-static {p1, v4}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object p1

    .line 752
    if-ne p1, v0, :cond_2c

    .line 753
    .line 754
    goto :goto_18

    .line 755
    :cond_2c
    :goto_17
    iget-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    .line 756
    .line 757
    if-eqz p1, :cond_2b

    .line 758
    .line 759
    new-instance p1, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 760
    .line 761
    invoke-direct {p1, v6}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 762
    .line 763
    .line 764
    iput v5, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 765
    .line 766
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/BroadcastFrameClock;

    .line 771
    .line 772
    .line 773
    move-result-object v1

    .line 774
    new-instance v2, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;

    .line 775
    .line 776
    invoke-direct {v2, v3, p1}, Landroidx/compose/runtime/MonotonicFrameClockKt$withFrameMillis$2;-><init>(ILkotlin/jvm/functions/Function1;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v1, v2, v4}, Landroidx/compose/runtime/BroadcastFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object p1

    .line 783
    if-ne p1, v0, :cond_2d

    .line 784
    .line 785
    :goto_18
    move-object v7, v0

    .line 786
    :goto_19
    return-object v7

    .line 787
    :cond_2d
    :goto_1a
    iget-object p1, p0, Landroidx/compose/foundation/MagnifierNode;->magnifier:Landroidx/compose/foundation/PlatformMagnifier;

    .line 788
    .line 789
    if-eqz p1, :cond_2b

    .line 790
    .line 791
    check-cast p1, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;

    .line 792
    .line 793
    invoke-virtual {p1}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;->updateContent()V

    .line 794
    .line 795
    .line 796
    goto :goto_16

    .line 797
    :pswitch_d
    move-object v4, p0

    .line 798
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 799
    .line 800
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 801
    .line 802
    if-eqz v0, :cond_2f

    .line 803
    .line 804
    if-ne v0, v6, :cond_2e

    .line 805
    .line 806
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 807
    .line 808
    .line 809
    goto :goto_1b

    .line 810
    :cond_2e
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 811
    .line 812
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    goto :goto_1c

    .line 816
    :cond_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 817
    .line 818
    .line 819
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 820
    .line 821
    check-cast p1, Landroidx/compose/foundation/FocusableNode;

    .line 822
    .line 823
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 824
    .line 825
    invoke-static {p1, v7, v4}, Landroidx/work/Data$Companion;->bringIntoView(Landroidx/compose/ui/node/DelegatableNode;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    move-result-object p1

    .line 829
    if-ne p1, p0, :cond_30

    .line 830
    .line 831
    move-object v7, p0

    .line 832
    goto :goto_1c

    .line 833
    :cond_30
    :goto_1b
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 834
    .line 835
    :goto_1c
    return-object v7

    .line 836
    :pswitch_e
    move-object v4, p0

    .line 837
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 838
    .line 839
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 840
    .line 841
    if-eqz v0, :cond_32

    .line 842
    .line 843
    if-ne v0, v6, :cond_31

    .line 844
    .line 845
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 846
    .line 847
    .line 848
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 849
    .line 850
    goto :goto_1d

    .line 851
    :cond_31
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 852
    .line 853
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    goto :goto_1d

    .line 857
    :cond_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 858
    .line 859
    .line 860
    new-instance v9, Lkotlin/jvm/internal/Ref$IntRef;

    .line 861
    .line 862
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 863
    .line 864
    .line 865
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    .line 866
    .line 867
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 868
    .line 869
    .line 870
    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    .line 871
    .line 872
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 873
    .line 874
    .line 875
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 876
    .line 877
    move-object v12, p1

    .line 878
    check-cast v12, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;

    .line 879
    .line 880
    iget-object p1, v12, Landroidx/compose/foundation/DefaultDebugIndication$DefaultDebugIndicationInstance;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 881
    .line 882
    iget-object p1, p1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 883
    .line 884
    new-instance v8, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;

    .line 885
    .line 886
    const/4 v13, 0x1

    .line 887
    invoke-direct/range {v8 .. v13}, Landroidx/room/TriggerBasedInvalidationTracker$createFlow$1$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 888
    .line 889
    .line 890
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 891
    .line 892
    invoke-virtual {p1, v8, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 893
    .line 894
    .line 895
    move-object v7, p0

    .line 896
    :goto_1d
    return-object v7

    .line 897
    :pswitch_f
    move-object v4, p0

    .line 898
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 899
    .line 900
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 901
    .line 902
    if-eqz v0, :cond_34

    .line 903
    .line 904
    if-ne v0, v6, :cond_33

    .line 905
    .line 906
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 907
    .line 908
    .line 909
    goto :goto_1e

    .line 910
    :cond_33
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 911
    .line 912
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    goto :goto_1f

    .line 916
    :cond_34
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 917
    .line 918
    .line 919
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 920
    .line 921
    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 922
    .line 923
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 924
    .line 925
    invoke-static {p1, v4}, Landroidx/compose/animation/core/SeekableTransitionState;->access$runAnimations(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object p1

    .line 929
    if-ne p1, p0, :cond_35

    .line 930
    .line 931
    move-object v7, p0

    .line 932
    goto :goto_1f

    .line 933
    :cond_35
    :goto_1e
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 934
    .line 935
    :goto_1f
    return-object v7

    .line 936
    :pswitch_10
    move-object v4, p0

    .line 937
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 938
    .line 939
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 940
    .line 941
    iget v2, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 942
    .line 943
    if-eqz v2, :cond_38

    .line 944
    .line 945
    if-ne v2, v6, :cond_37

    .line 946
    .line 947
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 948
    .line 949
    .line 950
    :cond_36
    move-object v7, p0

    .line 951
    goto :goto_22

    .line 952
    :cond_37
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 953
    .line 954
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    goto :goto_22

    .line 958
    :cond_38
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 959
    .line 960
    .line 961
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 962
    .line 963
    check-cast p1, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    .line 964
    .line 965
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 966
    .line 967
    const-string v2, "CXCP"

    .line 968
    .line 969
    const-string v3, "CameraBackends#shutdown"

    .line 970
    .line 971
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    .line 973
    .line 974
    iget-object p1, p1, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->activeCameraBackends:Ljava/util/LinkedHashMap;

    .line 975
    .line 976
    new-instance v3, Ljava/util/ArrayList;

    .line 977
    .line 978
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 979
    .line 980
    .line 981
    move-result v5

    .line 982
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 986
    .line 987
    .line 988
    move-result-object p1

    .line 989
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 990
    .line 991
    .line 992
    move-result-object p1

    .line 993
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 994
    .line 995
    .line 996
    move-result v5

    .line 997
    if-eqz v5, :cond_39

    .line 998
    .line 999
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v5

    .line 1003
    check-cast v5, Ljava/util/Map$Entry;

    .line 1004
    .line 1005
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    check-cast v5, Landroidx/camera/camera2/pipe/CameraBackend;

    .line 1010
    .line 1011
    check-cast v5, Landroidx/camera/camera2/pipe/compat/Camera2Backend;

    .line 1012
    .line 1013
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1014
    .line 1015
    .line 1016
    const-string v6, "Camera2Backend#shutdownAsync"

    .line 1017
    .line 1018
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    .line 1020
    .line 1021
    iget-object v6, v5, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->camera2DeviceCache:Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;

    .line 1022
    .line 1023
    iget-object v6, v6, Landroidx/camera/camera2/pipe/compat/Camera2DeviceCache;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 1024
    .line 1025
    invoke-static {v6, v7}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v6, v5, Landroidx/camera/camera2/pipe/compat/Camera2Backend;->threads:Landroidx/camera/camera2/pipe/core/Threads;

    .line 1029
    .line 1030
    iget-object v6, v6, Landroidx/camera/camera2/pipe/core/Threads;->cameraPipeScope:Lkotlinx/coroutines/CoroutineScope;

    .line 1031
    .line 1032
    new-instance v8, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 1033
    .line 1034
    const/4 v9, 0x5

    .line 1035
    invoke-direct {v8, v5, v7, v9}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1036
    .line 1037
    .line 1038
    invoke-static {v6, v7, v7, v8, v1}, Lkotlinx/coroutines/JobKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/DeferredCoroutine;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v5

    .line 1042
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    goto :goto_20

    .line 1046
    :cond_39
    invoke-static {v3, v4}, Lkotlinx/coroutines/JobKt;->joinAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    move-result-object p1

    .line 1050
    if-ne p1, v0, :cond_3a

    .line 1051
    .line 1052
    goto :goto_21

    .line 1053
    :cond_3a
    move-object p1, p0

    .line 1054
    :goto_21
    if-ne p1, v0, :cond_36

    .line 1055
    .line 1056
    move-object v7, v0

    .line 1057
    :goto_22
    return-object v7

    .line 1058
    :pswitch_11
    move-object v4, p0

    .line 1059
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1060
    .line 1061
    iget-object v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1062
    .line 1063
    check-cast v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;

    .line 1064
    .line 1065
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1066
    .line 1067
    iget v2, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1068
    .line 1069
    if-eqz v2, :cond_3d

    .line 1070
    .line 1071
    if-eq v2, v6, :cond_3c

    .line 1072
    .line 1073
    if-ne v2, v5, :cond_3b

    .line 1074
    .line 1075
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1076
    .line 1077
    .line 1078
    goto :goto_25

    .line 1079
    :cond_3b
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1080
    .line 1081
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    goto :goto_26

    .line 1085
    :cond_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_23

    .line 1089
    :cond_3d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1090
    .line 1091
    .line 1092
    iget-object p1, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->old:Lorg/apache/james/mime4j/stream/RawField;

    .line 1093
    .line 1094
    if-eqz p1, :cond_3e

    .line 1095
    .line 1096
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1097
    .line 1098
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->shutdown$camera_camera2_pipe()Lkotlin/Unit;

    .line 1099
    .line 1100
    .line 1101
    if-ne p0, v1, :cond_3e

    .line 1102
    .line 1103
    goto :goto_24

    .line 1104
    :cond_3e
    :goto_23
    iget-object p1, v0, Landroidx/camera/camera2/pipe/graph/GraphCommand$RequestProcessor;->new:Lorg/apache/james/mime4j/stream/RawField;

    .line 1105
    .line 1106
    if-eqz p1, :cond_3f

    .line 1107
    .line 1108
    iput v5, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1109
    .line 1110
    invoke-virtual {p1}, Lorg/apache/james/mime4j/stream/RawField;->shutdown$camera_camera2_pipe()Lkotlin/Unit;

    .line 1111
    .line 1112
    .line 1113
    if-ne p0, v1, :cond_3f

    .line 1114
    .line 1115
    :goto_24
    move-object v7, v1

    .line 1116
    goto :goto_26

    .line 1117
    :cond_3f
    :goto_25
    move-object v7, p0

    .line 1118
    :goto_26
    return-object v7

    .line 1119
    :pswitch_12
    move-object v4, p0

    .line 1120
    invoke-direct {v4, p1}, Landroidx/compose/material3/ThumbNode$onAttach$1;->invokeSuspend$androidx$camera$camera2$pipe$core$WakeLock$startTimeout$1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    .line 1122
    .line 1123
    move-result-object p0

    .line 1124
    return-object p0

    .line 1125
    :pswitch_13
    move-object v4, p0

    .line 1126
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1127
    .line 1128
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1129
    .line 1130
    if-eqz v0, :cond_41

    .line 1131
    .line 1132
    if-ne v0, v6, :cond_40

    .line 1133
    .line 1134
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1135
    .line 1136
    .line 1137
    goto :goto_27

    .line 1138
    :cond_40
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1139
    .line 1140
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    move-object p1, v7

    .line 1144
    goto :goto_27

    .line 1145
    :cond_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1146
    .line 1147
    .line 1148
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1149
    .line 1150
    check-cast p1, Lkotlinx/coroutines/DeferredCoroutine;

    .line 1151
    .line 1152
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1153
    .line 1154
    invoke-virtual {p1, v4}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1155
    .line 1156
    .line 1157
    move-result-object p1

    .line 1158
    if-ne p1, p0, :cond_42

    .line 1159
    .line 1160
    move-object p1, p0

    .line 1161
    :cond_42
    :goto_27
    return-object p1

    .line 1162
    :pswitch_14
    move-object v4, p0

    .line 1163
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1164
    .line 1165
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1166
    .line 1167
    if-eqz v0, :cond_44

    .line 1168
    .line 1169
    if-ne v0, v6, :cond_43

    .line 1170
    .line 1171
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1172
    .line 1173
    .line 1174
    goto :goto_28

    .line 1175
    :cond_43
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1176
    .line 1177
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    goto :goto_29

    .line 1181
    :cond_44
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1182
    .line 1183
    .line 1184
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1185
    .line 1186
    check-cast p1, Lcom/eygraber/uri/Uri$Builder;

    .line 1187
    .line 1188
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1189
    .line 1190
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 1191
    .line 1192
    const/16 v1, 0x8

    .line 1193
    .line 1194
    invoke-direct {v0, p1, v7, v1}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 1195
    .line 1196
    .line 1197
    new-instance p1, Lkotlinx/coroutines/SupervisorCoroutine;

    .line 1198
    .line 1199
    invoke-interface {v4}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v1

    .line 1203
    invoke-direct {p1, v4, v1}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    .line 1204
    .line 1205
    .line 1206
    invoke-static {p1, v6, p1, v0}, Lorg/minidns/util/Base64;->startUndispatched(Lkotlinx/coroutines/internal/ScopeCoroutine;ZLkotlinx/coroutines/internal/ScopeCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 1207
    .line 1208
    .line 1209
    move-result-object p1

    .line 1210
    if-ne p1, p0, :cond_45

    .line 1211
    .line 1212
    move-object v7, p0

    .line 1213
    goto :goto_29

    .line 1214
    :cond_45
    :goto_28
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1215
    .line 1216
    :goto_29
    return-object v7

    .line 1217
    :pswitch_15
    move-object v4, p0

    .line 1218
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1219
    .line 1220
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1221
    .line 1222
    if-eqz v0, :cond_47

    .line 1223
    .line 1224
    if-ne v0, v6, :cond_46

    .line 1225
    .line 1226
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1227
    .line 1228
    .line 1229
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1230
    .line 1231
    goto :goto_2a

    .line 1232
    :cond_46
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1233
    .line 1234
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1235
    .line 1236
    .line 1237
    goto :goto_2a

    .line 1238
    :cond_47
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1239
    .line 1240
    .line 1241
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1242
    .line 1243
    check-cast p1, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 1244
    .line 1245
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1246
    .line 1247
    invoke-static {p1, v4}, Lcom/fsck/k9/mailstore/LocalStore$7;->access$processingLoop(Lcom/fsck/k9/mailstore/LocalStore$7;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 1248
    .line 1249
    .line 1250
    move-object v7, p0

    .line 1251
    :goto_2a
    return-object v7

    .line 1252
    :pswitch_16
    move-object v4, p0

    .line 1253
    iget-object p0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1254
    .line 1255
    check-cast p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 1256
    .line 1257
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1258
    .line 1259
    iget v2, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1260
    .line 1261
    if-eqz v2, :cond_49

    .line 1262
    .line 1263
    if-ne v2, v6, :cond_48

    .line 1264
    .line 1265
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1266
    .line 1267
    .line 1268
    goto :goto_2b

    .line 1269
    :cond_48
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1270
    .line 1271
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1272
    .line 1273
    .line 1274
    goto :goto_2d

    .line 1275
    :cond_49
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1276
    .line 1277
    .line 1278
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1279
    .line 1280
    new-instance v2, Landroidx/compose/runtime/Recomposer$join$2;

    .line 1281
    .line 1282
    invoke-direct {v2, v5, v7, v1}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 1283
    .line 1284
    .line 1285
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1286
    .line 1287
    invoke-static {p1, v2, v4}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object p1

    .line 1291
    if-ne p1, v0, :cond_4a

    .line 1292
    .line 1293
    move-object v7, v0

    .line 1294
    goto :goto_2d

    .line 1295
    :cond_4a
    :goto_2b
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraState;

    .line 1296
    .line 1297
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateOpen;

    .line 1298
    .line 1299
    if-eqz v0, :cond_4b

    .line 1300
    .line 1301
    new-instance p1, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    .line 1302
    .line 1303
    invoke-direct {p1, p0, v7, v5}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;I)V

    .line 1304
    .line 1305
    .line 1306
    move-object v7, p1

    .line 1307
    goto :goto_2d

    .line 1308
    :cond_4b
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    .line 1309
    .line 1310
    if-eqz v0, :cond_4c

    .line 1311
    .line 1312
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    .line 1313
    .line 1314
    .line 1315
    new-instance p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    .line 1316
    .line 1317
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;

    .line 1318
    .line 1319
    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosing;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 1320
    .line 1321
    invoke-direct {p0, v7, p1, v6}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;I)V

    .line 1322
    .line 1323
    .line 1324
    :goto_2c
    move-object v7, p0

    .line 1325
    goto :goto_2d

    .line 1326
    :cond_4c
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    .line 1327
    .line 1328
    if-eqz v0, :cond_4d

    .line 1329
    .line 1330
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    .line 1331
    .line 1332
    .line 1333
    new-instance p0, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;

    .line 1334
    .line 1335
    check-cast p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;

    .line 1336
    .line 1337
    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/CameraStateClosed;->cameraErrorCode:Landroidx/camera/camera2/pipe/CameraError;

    .line 1338
    .line 1339
    invoke-direct {p0, v7, p1, v6}, Landroidx/camera/camera2/pipe/compat/OpenCameraResult;-><init>(Landroidx/camera/camera2/pipe/compat/AndroidCameraState;Landroidx/camera/camera2/pipe/CameraError;I)V

    .line 1340
    .line 1341
    .line 1342
    goto :goto_2c

    .line 1343
    :cond_4d
    instance-of v0, p1, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    .line 1344
    .line 1345
    if-eqz v0, :cond_4e

    .line 1346
    .line 1347
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->close()V

    .line 1348
    .line 1349
    .line 1350
    const-string p0, "Unexpected CameraState: "

    .line 1351
    .line 1352
    invoke-static {p1, p0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1353
    .line 1354
    .line 1355
    goto :goto_2d

    .line 1356
    :cond_4e
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 1357
    .line 1358
    .line 1359
    :goto_2d
    return-object v7

    .line 1360
    :pswitch_17
    move-object v4, p0

    .line 1361
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1362
    .line 1363
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1364
    .line 1365
    if-eqz v0, :cond_51

    .line 1366
    .line 1367
    if-eq v0, v6, :cond_50

    .line 1368
    .line 1369
    if-ne v0, v5, :cond_4f

    .line 1370
    .line 1371
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1372
    .line 1373
    .line 1374
    goto :goto_30

    .line 1375
    :cond_4f
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1376
    .line 1377
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1378
    .line 1379
    .line 1380
    goto :goto_31

    .line 1381
    :cond_50
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1382
    .line 1383
    .line 1384
    goto :goto_2e

    .line 1385
    :cond_51
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1386
    .line 1387
    .line 1388
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1389
    .line 1390
    check-cast p1, Lcom/fsck/k9/mailstore/LockableDatabase;

    .line 1391
    .line 1392
    iget-object p1, p1, Lcom/fsck/k9/mailstore/LockableDatabase;->generalSettingsManager:Ljava/lang/Object;

    .line 1393
    .line 1394
    check-cast p1, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1395
    .line 1396
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1397
    .line 1398
    invoke-virtual {p1, v4}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object p1

    .line 1402
    if-ne p1, p0, :cond_52

    .line 1403
    .line 1404
    goto :goto_2f

    .line 1405
    :cond_52
    :goto_2e
    iput v5, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1406
    .line 1407
    const-wide/16 v0, 0x7d0

    .line 1408
    .line 1409
    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1410
    .line 1411
    .line 1412
    move-result-object p1

    .line 1413
    if-ne p1, p0, :cond_53

    .line 1414
    .line 1415
    :goto_2f
    move-object v7, p0

    .line 1416
    goto :goto_31

    .line 1417
    :cond_53
    :goto_30
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1418
    .line 1419
    :goto_31
    return-object v7

    .line 1420
    :pswitch_18
    move-object v4, p0

    .line 1421
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1422
    .line 1423
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1424
    .line 1425
    if-eqz v0, :cond_55

    .line 1426
    .line 1427
    if-ne v0, v6, :cond_54

    .line 1428
    .line 1429
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1430
    .line 1431
    .line 1432
    goto :goto_32

    .line 1433
    :cond_54
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1434
    .line 1435
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1436
    .line 1437
    .line 1438
    goto :goto_33

    .line 1439
    :cond_55
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1440
    .line 1441
    .line 1442
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1443
    .line 1444
    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;

    .line 1445
    .line 1446
    iget-object v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraStatusMonitor;->cameraStatus:Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 1447
    .line 1448
    new-instance v1, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;

    .line 1449
    .line 1450
    invoke-direct {v1, v6, p1}, Landroidx/camera/camera2/pipe/compat/VirtualCameraState$connect$2$1$1;-><init>(ILjava/lang/Object;)V

    .line 1451
    .line 1452
    .line 1453
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1454
    .line 1455
    invoke-virtual {v0, v1, v4}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    move-result-object p1

    .line 1459
    if-ne p1, p0, :cond_56

    .line 1460
    .line 1461
    move-object v7, p0

    .line 1462
    goto :goto_33

    .line 1463
    :cond_56
    :goto_32
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1464
    .line 1465
    :goto_33
    return-object v7

    .line 1466
    :pswitch_19
    move-object v4, p0

    .line 1467
    iget-object p0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1468
    .line 1469
    check-cast p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;

    .line 1470
    .line 1471
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1472
    .line 1473
    iget v1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1474
    .line 1475
    if-eqz v1, :cond_58

    .line 1476
    .line 1477
    if-ne v1, v6, :cond_57

    .line 1478
    .line 1479
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1480
    .line 1481
    .line 1482
    goto :goto_34

    .line 1483
    :cond_57
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1484
    .line 1485
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1486
    .line 1487
    .line 1488
    goto :goto_35

    .line 1489
    :cond_58
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1490
    .line 1491
    .line 1492
    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->androidCameraState:Landroidx/camera/camera2/pipe/compat/AndroidCameraState;

    .line 1493
    .line 1494
    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/AndroidCameraState;->_state:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 1495
    .line 1496
    new-instance v1, Landroidx/compose/runtime/Recomposer$join$2;

    .line 1497
    .line 1498
    invoke-direct {v1, v5, v7, v6}, Landroidx/compose/runtime/Recomposer$join$2;-><init>(ILkotlin/coroutines/Continuation;I)V

    .line 1499
    .line 1500
    .line 1501
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1502
    .line 1503
    invoke-static {p1, v1, v4}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1504
    .line 1505
    .line 1506
    move-result-object p1

    .line 1507
    if-ne p1, v0, :cond_59

    .line 1508
    .line 1509
    move-object v7, v0

    .line 1510
    goto :goto_35

    .line 1511
    :cond_59
    :goto_34
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/ActiveCamera;->wakelock:Landroidx/compose/ui/node/NodeChain$Differ;

    .line 1512
    .line 1513
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeChain$Differ;->release()V

    .line 1514
    .line 1515
    .line 1516
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1517
    .line 1518
    :goto_35
    return-object v7

    .line 1519
    :pswitch_1a
    move-object v4, p0

    .line 1520
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1521
    .line 1522
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1523
    .line 1524
    if-eqz v0, :cond_5b

    .line 1525
    .line 1526
    if-ne v0, v6, :cond_5a

    .line 1527
    .line 1528
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1529
    .line 1530
    .line 1531
    goto :goto_37

    .line 1532
    :cond_5a
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1533
    .line 1534
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1535
    .line 1536
    .line 1537
    move-object p1, v7

    .line 1538
    goto :goto_37

    .line 1539
    :cond_5b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1540
    .line 1541
    .line 1542
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1543
    .line 1544
    check-cast p1, Ljava/util/List;

    .line 1545
    .line 1546
    new-instance v0, Ljava/util/ArrayList;

    .line 1547
    .line 1548
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 1549
    .line 1550
    .line 1551
    move-result v1

    .line 1552
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1553
    .line 1554
    .line 1555
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1556
    .line 1557
    .line 1558
    move-result-object p1

    .line 1559
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1560
    .line 1561
    .line 1562
    move-result v1

    .line 1563
    if-eqz v1, :cond_5c

    .line 1564
    .line 1565
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v1

    .line 1569
    check-cast v1, Landroidx/camera/core/impl/DeferrableSurface;

    .line 1570
    .line 1571
    invoke-virtual {v1}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v1

    .line 1575
    invoke-static {v1}, Landroidx/camera/core/impl/utils/futures/Futures;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v1

    .line 1579
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1580
    .line 1581
    .line 1582
    goto :goto_36

    .line 1583
    :cond_5c
    new-instance p1, Landroidx/camera/core/impl/utils/futures/ListFuture;

    .line 1584
    .line 1585
    new-instance v1, Ljava/util/ArrayList;

    .line 1586
    .line 1587
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1588
    .line 1589
    .line 1590
    invoke-static {}, Lorg/slf4j/helpers/Util;->directExecutor()Lcom/bumptech/glide/util/Executors$1;

    .line 1591
    .line 1592
    .line 1593
    move-result-object v0

    .line 1594
    invoke-direct {p1, v1, v3, v0}, Landroidx/camera/core/impl/utils/futures/ListFuture;-><init>(Ljava/util/ArrayList;ZLcom/bumptech/glide/util/Executors$1;)V

    .line 1595
    .line 1596
    .line 1597
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1598
    .line 1599
    invoke-static {p1, v4}, Landroidx/appcompat/app/ActionBar;->await(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    move-result-object p1

    .line 1603
    if-ne p1, p0, :cond_5d

    .line 1604
    .line 1605
    move-object p1, p0

    .line 1606
    :cond_5d
    :goto_37
    return-object p1

    .line 1607
    :pswitch_1b
    move-object v4, p0

    .line 1608
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1609
    .line 1610
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1611
    .line 1612
    if-eqz v0, :cond_5f

    .line 1613
    .line 1614
    if-ne v0, v6, :cond_5e

    .line 1615
    .line 1616
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1617
    .line 1618
    .line 1619
    goto/16 :goto_3a

    .line 1620
    .line 1621
    :cond_5e
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1622
    .line 1623
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1624
    .line 1625
    .line 1626
    goto/16 :goto_3b

    .line 1627
    .line 1628
    :cond_5f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1629
    .line 1630
    .line 1631
    const-string p1, "CXCP"

    .line 1632
    .line 1633
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 1634
    .line 1635
    .line 1636
    move-result p1

    .line 1637
    if-eqz p1, :cond_60

    .line 1638
    .line 1639
    const-string p1, "CXCP"

    .line 1640
    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    const-string v1, "Closing "

    .line 1644
    .line 1645
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1646
    .line 1647
    .line 1648
    iget-object v1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1649
    .line 1650
    check-cast v1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 1651
    .line 1652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v0

    .line 1659
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    .line 1661
    .line 1662
    :cond_60
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1663
    .line 1664
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 1665
    .line 1666
    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 1667
    .line 1668
    iget-object v0, p1, Landroidx/camera/camera2/config/UseCaseGraphContext;->_graph:Lkotlin/SynchronizedLazyImpl;

    .line 1669
    .line 1670
    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->isInitialized()Z

    .line 1671
    .line 1672
    .line 1673
    move-result v0

    .line 1674
    if-eqz v0, :cond_63

    .line 1675
    .line 1676
    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 1677
    .line 1678
    .line 1679
    move-result-object p1

    .line 1680
    instance-of v0, p1, Ljava/lang/AutoCloseable;

    .line 1681
    .line 1682
    if-eqz v0, :cond_61

    .line 1683
    .line 1684
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->close()V

    .line 1685
    .line 1686
    .line 1687
    goto :goto_38

    .line 1688
    :cond_61
    instance-of v0, p1, Ljava/util/concurrent/ExecutorService;

    .line 1689
    .line 1690
    if-eqz v0, :cond_62

    .line 1691
    .line 1692
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 1693
    .line 1694
    invoke-static {p1}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 1695
    .line 1696
    .line 1697
    goto :goto_38

    .line 1698
    :cond_62
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 1699
    .line 1700
    .line 1701
    goto :goto_3b

    .line 1702
    :cond_63
    :goto_38
    iget-object p1, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1703
    .line 1704
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;

    .line 1705
    .line 1706
    iget-object p1, p1, Landroidx/camera/camera2/impl/UseCaseCameraImpl;->useCaseSurfaceManager$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 1707
    .line 1708
    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 1709
    .line 1710
    .line 1711
    move-result-object p1

    .line 1712
    check-cast p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;

    .line 1713
    .line 1714
    iget-object v1, p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->lock:Ljava/lang/Object;

    .line 1715
    .line 1716
    monitor-enter v1

    .line 1717
    :try_start_2
    iget-object v0, p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->stopDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1718
    .line 1719
    if-eqz v0, :cond_64

    .line 1720
    .line 1721
    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isWarnEnabled()Z

    .line 1722
    .line 1723
    .line 1724
    move-result p1

    .line 1725
    if-eqz p1, :cond_66

    .line 1726
    .line 1727
    const-string p1, "CXCP"

    .line 1728
    .line 1729
    const-string v2, "UseCaseSurfaceManager is already stopping!"

    .line 1730
    .line 1731
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    .line 1733
    .line 1734
    goto :goto_39

    .line 1735
    :catchall_0
    move-exception v0

    .line 1736
    move-object p0, v0

    .line 1737
    goto :goto_3c

    .line 1738
    :cond_64
    iget-object v0, p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->setupDeferred:Lkotlinx/coroutines/DeferredCoroutine;

    .line 1739
    .line 1740
    if-eqz v0, :cond_65

    .line 1741
    .line 1742
    invoke-virtual {v0, v7}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 1743
    .line 1744
    .line 1745
    :cond_65
    iget-object v0, p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->inactiveSurfaceCloser:Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;

    .line 1746
    .line 1747
    invoke-interface {v0}, Landroidx/camera/camera2/compat/workaround/InactiveSurfaceCloser;->closeAll()V

    .line 1748
    .line 1749
    .line 1750
    iput-object v7, p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->configuredSurfaceMap:Ljava/util/LinkedHashMap;

    .line 1751
    .line 1752
    new-instance v0, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1753
    .line 1754
    invoke-direct {v0}, Lkotlinx/coroutines/CompletableDeferredImpl;-><init>()V

    .line 1755
    .line 1756
    .line 1757
    iput-object v0, p1, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->stopDeferred:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 1758
    .line 1759
    invoke-virtual {p1}, Landroidx/camera/camera2/impl/UseCaseSurfaceManager;->tryClearSurfaceListener()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1760
    .line 1761
    .line 1762
    :cond_66
    :goto_39
    monitor-exit v1

    .line 1763
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1764
    .line 1765
    invoke-virtual {v0, v4}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1766
    .line 1767
    .line 1768
    move-result-object p1

    .line 1769
    if-ne p1, p0, :cond_67

    .line 1770
    .line 1771
    move-object v7, p0

    .line 1772
    goto :goto_3b

    .line 1773
    :cond_67
    :goto_3a
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1774
    .line 1775
    :goto_3b
    return-object v7

    .line 1776
    :goto_3c
    monitor-exit v1

    .line 1777
    throw p0

    .line 1778
    :pswitch_1c
    move-object v4, p0

    .line 1779
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1780
    .line 1781
    iget v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1782
    .line 1783
    if-eqz v0, :cond_69

    .line 1784
    .line 1785
    if-ne v0, v6, :cond_68

    .line 1786
    .line 1787
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1788
    .line 1789
    .line 1790
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1791
    .line 1792
    goto :goto_3d

    .line 1793
    :cond_68
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1794
    .line 1795
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 1796
    .line 1797
    .line 1798
    goto :goto_3d

    .line 1799
    :cond_69
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1800
    .line 1801
    .line 1802
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    .line 1803
    .line 1804
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 1805
    .line 1806
    .line 1807
    iget-object v0, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->this$0:Ljava/lang/Object;

    .line 1808
    .line 1809
    check-cast v0, Landroidx/compose/material3/ThumbNode;

    .line 1810
    .line 1811
    iget-object v1, v0, Landroidx/compose/material3/ThumbNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 1812
    .line 1813
    iget-object v1, v1, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->interactions:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 1814
    .line 1815
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;

    .line 1816
    .line 1817
    const/4 v3, 0x7

    .line 1818
    invoke-direct {v2, v3, p1, v0}, Lkotlinx/coroutines/flow/FlowKt__LimitKt$drop$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1819
    .line 1820
    .line 1821
    iput v6, v4, Landroidx/compose/material3/ThumbNode$onAttach$1;->label:I

    .line 1822
    .line 1823
    invoke-virtual {v1, v2, v4}, Lkotlinx/coroutines/flow/SharedFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 1824
    .line 1825
    .line 1826
    move-object v7, p0

    .line 1827
    :goto_3d
    return-object v7

    .line 1828
    nop

    .line 1829
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
