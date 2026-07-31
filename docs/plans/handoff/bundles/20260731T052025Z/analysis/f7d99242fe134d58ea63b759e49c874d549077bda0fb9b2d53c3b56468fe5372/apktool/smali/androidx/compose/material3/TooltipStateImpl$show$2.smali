.class public final Landroidx/compose/material3/TooltipStateImpl$show$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $cancellableShow:Ljava/lang/Object;

.field public final synthetic $mutatePriority:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$cancellableShow:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$mutatePriority:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11

    .line 1
    iget v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$cancellableShow:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$mutatePriority:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v4, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 13
    .line 14
    move-object v5, v3

    .line 15
    check-cast v5, Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 16
    .line 17
    move-object v7, v2

    .line 18
    check-cast v7, Lkotlin/jvm/functions/Function4;

    .line 19
    .line 20
    const/4 v9, 0x3

    .line 21
    iget-object v6, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$cancellableShow:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v8, p1

    .line 24
    invoke-direct/range {v4 .. v9}, Landroidx/compose/material3/TooltipStateImpl$show$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 25
    .line 26
    .line 27
    return-object v4

    .line 28
    :pswitch_0
    move-object v9, p1

    .line 29
    new-instance v5, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 30
    .line 31
    move-object v6, v3

    .line 32
    check-cast v6, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 33
    .line 34
    move-object v7, v1

    .line 35
    check-cast v7, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 36
    .line 37
    move-object v8, v2

    .line 38
    check-cast v8, Ljava/util/Map;

    .line 39
    .line 40
    const/4 v10, 0x2

    .line 41
    invoke-direct/range {v5 .. v10}, Landroidx/compose/material3/TooltipStateImpl$show$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 42
    .line 43
    .line 44
    return-object v5

    .line 45
    :pswitch_1
    move-object v9, p1

    .line 46
    new-instance v5, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 47
    .line 48
    move-object v6, v3

    .line 49
    check-cast v6, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 50
    .line 51
    move-object v7, v1

    .line 52
    check-cast v7, Ljava/util/Map;

    .line 53
    .line 54
    move-object v8, v2

    .line 55
    check-cast v8, Landroidx/camera/core/impl/Config$OptionPriority;

    .line 56
    .line 57
    const/4 v10, 0x1

    .line 58
    invoke-direct/range {v5 .. v10}, Landroidx/compose/material3/TooltipStateImpl$show$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 59
    .line 60
    .line 61
    return-object v5

    .line 62
    :pswitch_2
    move-object v9, p1

    .line 63
    new-instance v5, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 64
    .line 65
    move-object v6, v3

    .line 66
    check-cast v6, Landroidx/compose/material3/TooltipStateImpl;

    .line 67
    .line 68
    move-object v7, v1

    .line 69
    check-cast v7, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 70
    .line 71
    move-object v8, v2

    .line 72
    check-cast v8, Landroidx/compose/foundation/MutatePriority;

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    invoke-direct/range {v5 .. v10}, Landroidx/compose/material3/TooltipStateImpl$show$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 76
    .line 77
    .line 78
    return-object v5

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl$show$2;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroidx/compose/material3/TooltipStateImpl$show$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    nop

    .line 55
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
    iget v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$mutatePriority:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->$cancellableShow:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 10
    .line 11
    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->this$0:Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    const/4 v8, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v6, Landroidx/compose/material3/internal/AnchoredDraggableState;

    .line 21
    .line 22
    iget v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    if-ne v0, v7, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v1, v8

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6, v3}, Landroidx/compose/material3/internal/AnchoredDraggableState;->setDragTarget(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Landroidx/compose/material3/internal/AnchoredDraggableState$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v0, 0x4

    .line 46
    invoke-direct {p1, v6, v0}, Landroidx/compose/material3/internal/AnchoredDraggableState$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/material3/internal/AnchoredDraggableState;I)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;

    .line 50
    .line 51
    check-cast v2, Lkotlin/jvm/functions/Function4;

    .line 52
    .line 53
    const/16 v3, 0x1b

    .line 54
    .line 55
    invoke-direct {v0, v2, v6, v8, v3}, Landroidx/compose/foundation/gestures/DraggableNode$drag$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 56
    .line 57
    .line 58
    iput v7, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    .line 59
    .line 60
    invoke-static {p1, v0, p0}, Landroidx/compose/material3/internal/Icons$Filled;->access$restartable(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    if-ne p0, v5, :cond_2

    .line 65
    .line 66
    move-object v1, v5

    .line 67
    :cond_2
    :goto_0
    return-object v1

    .line 68
    :pswitch_0
    check-cast v6, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 69
    .line 70
    iget v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    .line 71
    .line 72
    if-eqz v0, :cond_4

    .line 73
    .line 74
    if-ne v0, v7, :cond_3

    .line 75
    .line 76
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    move-object p1, v8

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const-string p1, "CXCP"

    .line 89
    .line 90
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    const-string v0, "UseCaseCameraRequestControlImpl#updateCamera2ConfigAsync"

    .line 97
    .line 98
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object p1, v6, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/LinkedHashMap;

    .line 102
    .line 103
    new-instance v0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 104
    .line 105
    sget-object v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 106
    .line 107
    check-cast v3, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 108
    .line 109
    new-instance v1, Landroidx/camera/core/Preview$Builder;

    .line 110
    .line 111
    invoke-direct {v1, v7}, Landroidx/camera/core/Preview$Builder;-><init>(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v3}, Landroidx/camera/core/Preview$Builder;->insertAllOptions(Landroidx/camera/core/impl/Config;)V

    .line 115
    .line 116
    .line 117
    check-cast v2, Ljava/util/Map;

    .line 118
    .line 119
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 120
    .line 121
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    const/16 v2, 0xc

    .line 125
    .line 126
    invoke-direct {v0, v1, v3, v8, v2}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;-><init>(Landroidx/camera/core/Preview$Builder;Ljava/util/LinkedHashMap;Landroidx/camera/camera2/pipe/RequestTemplate;I)V

    .line 127
    .line 128
    .line 129
    sget-object v1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->CAMERA2_CAMERA_CONTROL:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    .line 130
    .line 131
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object p1, v6, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->infoBundleMap:Ljava/util/LinkedHashMap;

    .line 135
    .line 136
    invoke-static {p1}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->merge(Ljava/util/LinkedHashMap;)Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iput v7, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    .line 141
    .line 142
    invoke-virtual {v6, p1, v8, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->updateCameraStateAsync(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl$InfoBundle;Ljava/util/LinkedHashSet;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v5, :cond_6

    .line 147
    .line 148
    move-object p1, v5

    .line 149
    :cond_6
    :goto_1
    return-object p1

    .line 150
    :pswitch_1
    iget v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    .line 151
    .line 152
    if-eqz v0, :cond_8

    .line 153
    .line 154
    if-ne v0, v7, :cond_7

    .line 155
    .line 156
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_7
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    move-object p1, v8

    .line 164
    goto :goto_2

    .line 165
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    check-cast v6, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 169
    .line 170
    check-cast v3, Ljava/util/Map;

    .line 171
    .line 172
    check-cast v2, Landroidx/camera/core/impl/Config$OptionPriority;

    .line 173
    .line 174
    iput v7, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    .line 175
    .line 176
    sget-object p1, Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;->DEFAULT:Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;

    .line 177
    .line 178
    invoke-static {v6, p1, v3, v2, p0}, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->access$setParametersInternal(Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;Landroidx/camera/camera2/impl/UseCaseCameraRequestControl$Type;Ljava/util/Map;Landroidx/camera/core/impl/Config$OptionPriority;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-ne p1, v5, :cond_9

    .line 183
    .line 184
    move-object p1, v5

    .line 185
    :cond_9
    :goto_2
    return-object p1

    .line 186
    :pswitch_2
    check-cast v2, Landroidx/compose/foundation/MutatePriority;

    .line 187
    .line 188
    check-cast v3, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 189
    .line 190
    check-cast v6, Landroidx/compose/material3/TooltipStateImpl;

    .line 191
    .line 192
    iget v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    .line 193
    .line 194
    sget-object v9, Landroidx/compose/foundation/MutatePriority;->PreventUserInput:Landroidx/compose/foundation/MutatePriority;

    .line 195
    .line 196
    const/4 v10, 0x2

    .line 197
    if-eqz v0, :cond_c

    .line 198
    .line 199
    if-eq v0, v7, :cond_a

    .line 200
    .line 201
    if-ne v0, v10, :cond_b

    .line 202
    .line 203
    :cond_a
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :catchall_0
    move-exception p0

    .line 208
    goto :goto_5

    .line 209
    :cond_b
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    move-object v1, v8

    .line 213
    goto :goto_4

    .line 214
    :cond_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :try_start_1
    new-instance p1, Landroidx/compose/material3/ThumbNode$onAttach$1;

    .line 218
    .line 219
    const/16 v0, 0x1a

    .line 220
    .line 221
    invoke-direct {p1, v3, v8, v0}, Landroidx/compose/material3/ThumbNode$onAttach$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 222
    .line 223
    .line 224
    iput v10, p0, Landroidx/compose/material3/TooltipStateImpl$show$2;->label:I

    .line 225
    .line 226
    new-instance v0, Lkotlinx/coroutines/TimeoutCoroutine;

    .line 227
    .line 228
    const-wide/16 v3, 0x5dc

    .line 229
    .line 230
    invoke-direct {v0, v3, v4, p0}, Lkotlinx/coroutines/TimeoutCoroutine;-><init>(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v0, p1}, Lkotlinx/coroutines/JobKt;->setupTimeout(Lkotlinx/coroutines/TimeoutCoroutine;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    if-ne p0, v5, :cond_d

    .line 238
    .line 239
    move-object v1, v5

    .line 240
    goto :goto_4

    .line 241
    :cond_d
    :goto_3
    if-eq v2, v9, :cond_e

    .line 242
    .line 243
    invoke-virtual {v6}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 244
    .line 245
    .line 246
    :cond_e
    :goto_4
    return-object v1

    .line 247
    :goto_5
    if-eq v2, v9, :cond_f

    .line 248
    .line 249
    invoke-virtual {v6}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 250
    .line 251
    .line 252
    :cond_f
    throw p0

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
