.class public final Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $toBeConsumed:J

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 12
    iput p5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->this$0:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    .line 1
    iget p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 9
    .line 10
    move-object v4, v0

    .line 11
    check-cast v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 12
    .line 13
    const/4 v6, 0x3

    .line 14
    iget-wide v2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    .line 15
    .line 16
    move-object v5, p2

    .line 17
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;-><init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 18
    .line 19
    .line 20
    return-object v1

    .line 21
    :pswitch_0
    move-object v6, p2

    .line 22
    new-instance v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 23
    .line 24
    move-object v3, v0

    .line 25
    check-cast v3, Landroidx/compose/animation/core/Animatable;

    .line 26
    .line 27
    iget-wide v4, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    .line 28
    .line 29
    const/4 v7, 0x2

    .line 30
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :pswitch_1
    move-object v6, p2

    .line 35
    new-instance v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 36
    .line 37
    move-object v5, v0

    .line 38
    check-cast v5, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    iget-wide v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    .line 42
    .line 43
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;-><init>(JLjava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :pswitch_2
    move-object v6, p2

    .line 48
    new-instance v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 49
    .line 50
    move-object v3, v0

    .line 51
    check-cast v3, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 52
    .line 53
    iget-wide v4, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;-><init>(Ljava/lang/Object;JLkotlin/coroutines/Continuation;I)V

    .line 57
    .line 58
    .line 59
    return-object v2

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-wide v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    .line 9
    .line 10
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 11
    .line 12
    iget v5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->label:I

    .line 13
    .line 14
    const-wide/16 v6, 0x8

    .line 15
    .line 16
    const/4 v8, 0x2

    .line 17
    if-eqz v5, :cond_2

    .line 18
    .line 19
    if-eq v5, v2, :cond_1

    .line 20
    .line 21
    if-ne v5, v8, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sub-long v9, v3, v6

    .line 41
    .line 42
    iput v2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->label:I

    .line 43
    .line 44
    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    :goto_0
    iput v8, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->label:I

    .line 52
    .line 53
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_4

    .line 58
    .line 59
    :goto_1
    move-object v1, v0

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    :goto_2
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->this$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 64
    .line 65
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->pointerAwaiter:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 66
    .line 67
    if-eqz p0, :cond_5

    .line 68
    .line 69
    new-instance p1, Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException;

    .line 70
    .line 71
    invoke-direct {p1, v3, v4}, Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException;-><init>(J)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lkotlin/Result$Failure;

    .line 75
    .line 76
    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 83
    .line 84
    :goto_3
    return-object v1

    .line 85
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 86
    .line 87
    iget v3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->label:I

    .line 88
    .line 89
    if-eqz v3, :cond_7

    .line 90
    .line 91
    if-ne v3, v2, :cond_6

    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 98
    .line 99
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->this$0:Ljava/lang/Object;

    .line 107
    .line 108
    move-object v3, p1

    .line 109
    check-cast v3, Landroidx/compose/animation/core/Animatable;

    .line 110
    .line 111
    iget-wide v4, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    .line 112
    .line 113
    move-wide v5, v4

    .line 114
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    .line 115
    .line 116
    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 117
    .line 118
    .line 119
    sget-object v5, Landroidx/compose/foundation/text/selection/SelectionMagnifierKt;->MagnifierSpringSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 120
    .line 121
    iput v2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->label:I

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    const/16 v8, 0xc

    .line 125
    .line 126
    move-object v7, p0

    .line 127
    invoke-static/range {v3 .. v8}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    if-ne p0, v0, :cond_8

    .line 132
    .line 133
    move-object v1, v0

    .line 134
    goto :goto_5

    .line 135
    :cond_8
    :goto_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 136
    .line 137
    :goto_5
    return-object v1

    .line 138
    :pswitch_1
    move-object v7, p0

    .line 139
    const-string p0, "Restarting "

    .line 140
    .line 141
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 142
    .line 143
    iget v3, v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->label:I

    .line 144
    .line 145
    if-eqz v3, :cond_a

    .line 146
    .line 147
    if-ne v3, v2, :cond_9

    .line 148
    .line 149
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_9
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 154
    .line 155
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iget-wide v3, v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    .line 163
    .line 164
    iput v2, v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->label:I

    .line 165
    .line 166
    invoke-static {v3, v4, v7}, Lkotlinx/coroutines/JobKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-ne p1, v0, :cond_b

    .line 171
    .line 172
    move-object v1, v0

    .line 173
    goto :goto_8

    .line 174
    :cond_b
    :goto_6
    iget-object p1, v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->this$0:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;

    .line 177
    .line 178
    iget-object v1, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->lock:Ljava/lang/Object;

    .line 179
    .line 180
    monitor-enter v1

    .line 181
    :try_start_0
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->isClosed()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-nez v0, :cond_c

    .line 186
    .line 187
    iget-object v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 188
    .line 189
    sget-object v2, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$6:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    if-nez v0, :cond_c

    .line 196
    .line 197
    iget-object v0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->controllerState:Landroidx/compose/ui/unit/IntRectKt;

    .line 198
    .line 199
    sget-object v2, Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;->INSTANCE$5:Landroidx/camera/camera2/pipe/CameraController$ControllerState$ERROR;

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_c

    .line 206
    .line 207
    const-string v0, "CXCP"

    .line 208
    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string p0, "..."

    .line 218
    .line 219
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    iget-object p0, p1, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->surfaceTracker:Landroidx/camera/camera2/pipe/graph/SurfaceGraph;

    .line 230
    .line 231
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/SurfaceGraph;->registerAllSurfaces()V

    .line 232
    .line 233
    .line 234
    invoke-static {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->access$stopLocked(Landroidx/camera/camera2/pipe/compat/Camera2CameraController;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/compat/Camera2CameraController;->startLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    .line 239
    .line 240
    goto :goto_7

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    move-object p0, v0

    .line 243
    goto :goto_9

    .line 244
    :cond_c
    :goto_7
    monitor-exit v1

    .line 245
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 246
    .line 247
    :goto_8
    return-object v1

    .line 248
    :goto_9
    monitor-exit v1

    .line 249
    throw p0

    .line 250
    :pswitch_2
    move-object v7, p0

    .line 251
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 252
    .line 253
    iget v0, v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->label:I

    .line 254
    .line 255
    if-eqz v0, :cond_e

    .line 256
    .line 257
    if-ne v0, v2, :cond_d

    .line 258
    .line 259
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    goto :goto_a

    .line 263
    :cond_d
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 264
    .line 265
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_b

    .line 269
    :cond_e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->this$0:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    .line 275
    .line 276
    iget-object p1, p1, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 277
    .line 278
    iget-wide v0, v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->$toBeConsumed:J

    .line 279
    .line 280
    iput v2, v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;->label:I

    .line 281
    .line 282
    invoke-virtual {p1, v0, v1, v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreFling-QWom1Mo(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    if-ne p1, p0, :cond_f

    .line 287
    .line 288
    move-object v1, p0

    .line 289
    goto :goto_b

    .line 290
    :cond_f
    :goto_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 291
    .line 292
    :goto_b
    return-object v1

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
