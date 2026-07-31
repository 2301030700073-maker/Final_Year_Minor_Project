.class public final Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $backStackEntry:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public synthetic $transitionState:Ljava/lang/Object;

.field public $value:F

.field public label:I


# direct methods
.method public constructor <init>(FLandroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 3
    .line 4
    iput p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 15
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 16
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    iput p2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    iput-object p3, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroidx/compose/material/ripple/StateLayer;

    .line 13
    .line 14
    iget p0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 15
    .line 16
    check-cast v1, Landroidx/compose/animation/core/AnimationSpec;

    .line 17
    .line 18
    invoke-direct {p1, v0, p0, v1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(Landroidx/compose/material/ripple/StateLayer;FLandroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    new-instance p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/animation/core/Transition;

    .line 25
    .line 26
    invoke-direct {p0, v1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_1
    new-instance p1, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 33
    .line 34
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 35
    .line 36
    iget-object p0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 39
    .line 40
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 41
    .line 42
    invoke-direct {p1, v0, p0, v1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;-><init>(FLandroidx/compose/animation/core/SeekableTransitionState;Landroidx/navigation/NavBackStackEntry;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$backStackEntry:Ljava/lang/Object;

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
    iget v0, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

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
    iget-object p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Landroidx/compose/material/ripple/StateLayer;

    .line 37
    .line 38
    iget-object p1, p1, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v6, p1

    .line 41
    check-cast v6, Landroidx/compose/animation/core/Animatable;

    .line 42
    .line 43
    iget p1, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 44
    .line 45
    new-instance v7, Ljava/lang/Float;

    .line 46
    .line 47
    invoke-direct {v7, p1}, Ljava/lang/Float;-><init>(F)V

    .line 48
    .line 49
    .line 50
    move-object v8, v2

    .line 51
    check-cast v8, Landroidx/compose/animation/core/AnimationSpec;

    .line 52
    .line 53
    iput v5, p0, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    const/16 v11, 0xc

    .line 57
    .line 58
    move-object v10, p0

    .line 59
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-ne p0, v4, :cond_2

    .line 64
    .line 65
    move-object v1, v4

    .line 66
    :cond_2
    :goto_0
    return-object v1

    .line 67
    :pswitch_0
    move-object v10, p0

    .line 68
    iget p0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 69
    .line 70
    if-eqz p0, :cond_4

    .line 71
    .line 72
    if-ne p0, v5, :cond_3

    .line 73
    .line 74
    iget p0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 75
    .line 76
    iget-object v0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    move-object v1, v6

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 95
    .line 96
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Landroidx/compose/animation/core/ArcSplineKt;->getDurationScale(Lkotlin/coroutines/CoroutineContext;)F

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    move-object v0, p0

    .line 105
    move p0, p1

    .line 106
    :cond_5
    :goto_1
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    move-object p1, v2

    .line 113
    check-cast p1, Landroidx/compose/animation/core/Transition;

    .line 114
    .line 115
    new-instance v3, Landroidx/compose/animation/core/Transition$animateTo$1$1$1$$ExternalSyntheticLambda0;

    .line 116
    .line 117
    invoke-direct {v3, p1, p0}, Landroidx/compose/animation/core/Transition$animateTo$1$1$1$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/animation/core/Transition;F)V

    .line 118
    .line 119
    .line 120
    iput-object v0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 121
    .line 122
    iput p0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 123
    .line 124
    iput v5, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 125
    .line 126
    invoke-interface {v10}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->getMonotonicFrameClock(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/BroadcastFrameClock;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1, v3, v10}, Landroidx/compose/runtime/BroadcastFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-ne p1, v4, :cond_5

    .line 139
    .line 140
    move-object v1, v4

    .line 141
    :cond_6
    :goto_2
    return-object v1

    .line 142
    :pswitch_1
    move-object v10, p0

    .line 143
    iget-object p0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$transitionState:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 146
    .line 147
    iget v0, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->$value:F

    .line 148
    .line 149
    iget v7, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 150
    .line 151
    const/4 v8, 0x0

    .line 152
    const/4 v9, 0x2

    .line 153
    if-eqz v7, :cond_9

    .line 154
    .line 155
    if-eq v7, v5, :cond_8

    .line 156
    .line 157
    if-ne v7, v9, :cond_7

    .line 158
    .line 159
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_7
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    move-object v1, v6

    .line 167
    goto :goto_7

    .line 168
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    cmpl-float p1, v0, v8

    .line 176
    .line 177
    if-lez p1, :cond_a

    .line 178
    .line 179
    iput v5, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 180
    .line 181
    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 182
    .line 183
    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0, v0, p1, v10}, Landroidx/compose/animation/core/SeekableTransitionState;->seekTo(FLjava/lang/Object;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-ne p1, v4, :cond_a

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_a
    :goto_3
    cmpg-float p1, v0, v8

    .line 195
    .line 196
    if-nez p1, :cond_e

    .line 197
    .line 198
    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 199
    .line 200
    iput v9, v10, Landroidx/navigation/compose/NavHostKt$NavHost$29$1$1$1;->label:I

    .line 201
    .line 202
    iget-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;->transition:Landroidx/compose/animation/core/Transition;

    .line 203
    .line 204
    if-nez p1, :cond_c

    .line 205
    .line 206
    :cond_b
    :goto_4
    move-object p0, v1

    .line 207
    goto :goto_5

    .line 208
    :cond_c
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->currentState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 209
    .line 210
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_d

    .line 219
    .line 220
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 221
    .line 222
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_d

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_d
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->mutatorMutex:Landroidx/compose/animation/core/MutatorMutex;

    .line 234
    .line 235
    new-instance v3, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;

    .line 236
    .line 237
    invoke-direct {v3, p0, v2, p1, v6}, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Ljava/lang/Object;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v0, v3, v10}, Landroidx/compose/animation/core/MutatorMutex;->mutate$default(Landroidx/compose/animation/core/MutatorMutex;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p0

    .line 244
    if-ne p0, v4, :cond_b

    .line 245
    .line 246
    :goto_5
    if-ne p0, v4, :cond_e

    .line 247
    .line 248
    :goto_6
    move-object v1, v4

    .line 249
    :cond_e
    :goto_7
    return-object v1

    .line 250
    nop

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
