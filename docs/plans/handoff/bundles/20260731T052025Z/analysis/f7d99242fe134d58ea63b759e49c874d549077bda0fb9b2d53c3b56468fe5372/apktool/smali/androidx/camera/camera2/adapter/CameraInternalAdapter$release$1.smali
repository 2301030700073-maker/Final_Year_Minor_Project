.class public final Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Landroidx/camera/camera2/adapter/CameraInternalAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/CameraInternalAdapter;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->this$0:Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    iget p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->this$0:Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;-><init>(Landroidx/camera/camera2/adapter/CameraInternalAdapter;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    new-instance p1, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, p2, v0}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;-><init>(Landroidx/camera/camera2/adapter/CameraInternalAdapter;Lkotlin/coroutines/Continuation;I)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 9
    .line 10
    iget v3, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->label:I

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    if-ne v3, v1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_4

    .line 26
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->this$0:Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->cameraStateAdapter:Landroidx/camera/camera2/adapter/CameraStateAdapter;

    .line 32
    .line 33
    new-instance v3, Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 34
    .line 35
    const/16 v4, 0x8

    .line 36
    .line 37
    invoke-direct {v3, v4}, Landroidx/camera/core/AutoValue_CameraState_StateError;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iget-object v4, p1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->lock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v4

    .line 43
    :try_start_0
    iget-boolean v5, p1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->isRemoved:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    :goto_0
    monitor-exit v4

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    :try_start_1
    const-string v5, "CXCP"

    .line 50
    .line 51
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    const-string v5, "CXCP"

    .line 58
    .line 59
    const-string v6, "Camera is removed, forcing state to CLOSED."

    .line 60
    .line 61
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_5

    .line 67
    :cond_3
    :goto_1
    iput-boolean v1, p1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->isRemoved:Z

    .line 68
    .line 69
    sget-object v5, Landroidx/camera/core/impl/CameraInternal$State;->CLOSED:Landroidx/camera/core/impl/CameraInternal$State;

    .line 70
    .line 71
    iput-object v5, p1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraInternalState:Landroidx/camera/core/impl/CameraInternal$State;

    .line 72
    .line 73
    iput-object v3, p1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentCameraStateError:Landroidx/camera/core/AutoValue_CameraState_StateError;

    .line 74
    .line 75
    invoke-virtual {p1, v5, v3}, Landroidx/camera/camera2/adapter/CameraStateAdapter;->postCameraState(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/AutoValue_CameraState_StateError;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p1, Landroidx/camera/camera2/adapter/CameraStateAdapter;->currentGraph:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_2
    iget-object p1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->this$0:Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    .line 82
    .line 83
    iget-object p1, p1, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 84
    .line 85
    iput v1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->label:I

    .line 86
    .line 87
    invoke-virtual {p1, p0}, Landroidx/camera/camera2/impl/UseCaseManager;->close(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    if-ne p0, v0, :cond_4

    .line 92
    .line 93
    move-object v2, v0

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    :goto_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 96
    .line 97
    :goto_4
    return-object v2

    .line 98
    :goto_5
    monitor-exit v4

    .line 99
    throw p0

    .line 100
    :pswitch_0
    iget-object v0, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->this$0:Landroidx/camera/camera2/adapter/CameraInternalAdapter;

    .line 101
    .line 102
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 103
    .line 104
    iget v4, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->label:I

    .line 105
    .line 106
    if-eqz v4, :cond_6

    .line 107
    .line 108
    if-ne v4, v1, :cond_5

    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_5
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 115
    .line 116
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto :goto_7

    .line 120
    :cond_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, v0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->useCaseManager:Landroidx/camera/camera2/impl/UseCaseManager;

    .line 124
    .line 125
    iput v1, p0, Landroidx/camera/camera2/adapter/CameraInternalAdapter$release$1;->label:I

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Landroidx/camera/camera2/impl/UseCaseManager;->close(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    if-ne p0, v3, :cond_7

    .line 132
    .line 133
    move-object v2, v3

    .line 134
    goto :goto_7

    .line 135
    :cond_7
    :goto_6
    iget-object p0, v0, Landroidx/camera/camera2/adapter/CameraInternalAdapter;->threads:Landroidx/camera/camera2/impl/UseCaseThreads;

    .line 136
    .line 137
    iget-object p0, p0, Landroidx/camera/camera2/impl/UseCaseThreads;->scope:Lkotlinx/coroutines/internal/ContextScope;

    .line 138
    .line 139
    invoke-static {p0, v2}, Lkotlinx/coroutines/JobKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;)V

    .line 140
    .line 141
    .line 142
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 143
    .line 144
    :goto_7
    return-object v2

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
