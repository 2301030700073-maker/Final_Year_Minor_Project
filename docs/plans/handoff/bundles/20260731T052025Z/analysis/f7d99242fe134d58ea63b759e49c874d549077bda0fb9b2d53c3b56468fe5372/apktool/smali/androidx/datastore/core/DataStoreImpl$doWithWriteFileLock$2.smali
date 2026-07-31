.class public final Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public label:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->$block:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->$block:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    invoke-direct {v0, p0, p1, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :pswitch_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 18
    .line 19
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-direct {v0, p0, p1, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_1
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 27
    .line 28
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-direct {v0, p0, p1, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_2
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 36
    .line 37
    check-cast p0, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, p0, p1, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_3
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 45
    .line 46
    check-cast p0, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, p0, p1, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->$r8$classId:I

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
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :pswitch_3
    invoke-virtual {p0, p1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->$block:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    if-ne v0, v5, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v6

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast v2, Landroidx/compose/material3/TooltipStateImpl;

    .line 35
    .line 36
    iput v5, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 37
    .line 38
    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 39
    .line 40
    invoke-static {p0}, Lkotlinx/atomicfu/AtomicFU;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-direct {p1, v5, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 48
    .line 49
    .line 50
    iget-object p0, v2, Landroidx/compose/material3/TooltipStateImpl;->transition:Landroidx/compose/animation/core/MutableTransitionState;

    .line 51
    .line 52
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    iget-object p0, p0, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, v2, Landroidx/compose/material3/TooltipStateImpl;->job:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 60
    .line 61
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-ne p0, v4, :cond_2

    .line 66
    .line 67
    move-object v1, v4

    .line 68
    :cond_2
    :goto_0
    return-object v1

    .line 69
    :pswitch_0
    check-cast v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 70
    .line 71
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 72
    .line 73
    const/4 v7, 0x2

    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    if-eq v0, v5, :cond_4

    .line 77
    .line 78
    if-ne v0, v7, :cond_3

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_6

    .line 84
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v1, v6

    .line 88
    goto :goto_7

    .line 89
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput v5, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 97
    .line 98
    invoke-virtual {v2, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateClipboardEntry$foundation(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v4, :cond_6

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :cond_6
    :goto_1
    invoke-static {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getContextTextAndSelection(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Lkotlin/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_a

    .line 110
    .line 111
    iget-object v0, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 112
    .line 113
    move-object v12, v0

    .line 114
    check-cast v12, Ljava/lang/String;

    .line 115
    .line 116
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Landroidx/compose/ui/text/TextRange;

    .line 119
    .line 120
    iget-wide v9, p1, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 121
    .line 122
    iget-object p1, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 123
    .line 124
    if-eqz p1, :cond_a

    .line 125
    .line 126
    iput v7, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 127
    .line 128
    move-object v11, p1

    .line 129
    check-cast v11, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 130
    .line 131
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_7

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_8

    .line 143
    .line 144
    :goto_2
    move-object p0, v1

    .line 145
    goto :goto_3

    .line 146
    :cond_8
    new-instance v8, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;

    .line 147
    .line 148
    const/4 v13, 0x0

    .line 149
    invoke-direct/range {v8 .. v13}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2;-><init>(JLandroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Ljava/lang/CharSequence;Lkotlin/coroutines/Continuation;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, v11, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 153
    .line 154
    new-instance v0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2;

    .line 155
    .line 156
    invoke-direct {v0, v11, v8, v6}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2;-><init>(Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/JobKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    :goto_3
    if-ne p0, v4, :cond_9

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_9
    move-object p0, v1

    .line 167
    :goto_4
    if-ne p0, v4, :cond_a

    .line 168
    .line 169
    :goto_5
    move-object v1, v4

    .line 170
    goto :goto_7

    .line 171
    :cond_a
    :goto_6
    iput-boolean v5, v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->textToolbarShownViaProvider:Z

    .line 172
    .line 173
    :goto_7
    return-object v1

    .line 174
    :pswitch_1
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 175
    .line 176
    if-eqz v0, :cond_c

    .line 177
    .line 178
    if-ne v0, v5, :cond_b

    .line 179
    .line 180
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_b
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    move-object v1, v6

    .line 188
    goto :goto_9

    .line 189
    :cond_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    check-cast v2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;

    .line 193
    .line 194
    iput v5, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 195
    .line 196
    iget-object p1, v2, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequence;->hasStarted:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 197
    .line 198
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/JobSupport;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    if-ne p0, v4, :cond_d

    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_d
    move-object p0, v1

    .line 206
    :goto_8
    if-ne p0, v4, :cond_e

    .line 207
    .line 208
    move-object v1, v4

    .line 209
    :cond_e
    :goto_9
    return-object v1

    .line 210
    :pswitch_2
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 211
    .line 212
    const-string v1, "CXCP"

    .line 213
    .line 214
    if-eqz v0, :cond_10

    .line 215
    .line 216
    if-ne v0, v5, :cond_f

    .line 217
    .line 218
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_a

    .line 222
    :catch_0
    move-exception v0

    .line 223
    move-object p0, v0

    .line 224
    goto :goto_b

    .line 225
    :cond_f
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    move-object v4, v6

    .line 229
    goto :goto_c

    .line 230
    :cond_10
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    if-eqz p1, :cond_11

    .line 238
    .line 239
    const-string p1, "UseCaseCameraRequestControlImpl#setTorchOnAsync"

    .line 240
    .line 241
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    :cond_11
    check-cast v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;

    .line 245
    .line 246
    :try_start_1
    iget-object p1, v2, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->useCaseGraphContext:Landroidx/camera/camera2/config/UseCaseGraphContext;

    .line 247
    .line 248
    invoke-virtual {p1}, Landroidx/camera/camera2/config/UseCaseGraphContext;->getGraph()Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    iput v5, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 253
    .line 254
    invoke-virtual {p1, p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;->acquireSession(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    if-ne p1, v4, :cond_12

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_12
    :goto_a
    check-cast p1, Ljava/lang/AutoCloseable;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 262
    .line 263
    :try_start_2
    move-object p0, p1

    .line 264
    check-cast p0, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;

    .line 265
    .line 266
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphSessionImpl;->setTorchOn()Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 267
    .line 268
    .line 269
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    :try_start_3
    invoke-static {p1, v6}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 271
    .line 272
    .line 273
    goto :goto_c

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    move-object p0, v0

    .line 276
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 277
    :catchall_1
    move-exception v0

    .line 278
    :try_start_5
    invoke-static {p1, p0}, Lokhttp3/Cookie$Companion;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    throw v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_0

    .line 282
    :goto_b
    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->isDebugEnabled(Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-eqz p1, :cond_13

    .line 287
    .line 288
    const-string p1, "Cannot acquire the CameraGraph.Session"

    .line 289
    .line 290
    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .line 292
    .line 293
    :cond_13
    sget-object v4, Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;->submitFailedResult:Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 294
    .line 295
    :goto_c
    return-object v4

    .line 296
    :pswitch_3
    iget v0, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 297
    .line 298
    if-eqz v0, :cond_15

    .line 299
    .line 300
    if-ne v0, v5, :cond_14

    .line 301
    .line 302
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    goto :goto_d

    .line 306
    :cond_14
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    move-object p1, v6

    .line 310
    goto :goto_d

    .line 311
    :cond_15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    check-cast v2, Landroidx/datastore/core/FileWriteScope$writeData$2;

    .line 315
    .line 316
    iput v5, p0, Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;->label:I

    .line 317
    .line 318
    invoke-virtual {v2, p0}, Landroidx/datastore/core/FileWriteScope$writeData$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    if-ne p1, v4, :cond_16

    .line 323
    .line 324
    move-object p1, v4

    .line 325
    :cond_16
    :goto_d
    return-object p1

    .line 326
    nop

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
