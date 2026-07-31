.class public final Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public label:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;

    .line 13
    .line 14
    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v2, p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    new-instance v0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;

    .line 26
    .line 27
    check-cast p0, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v0, v2, p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    new-instance v0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;

    .line 39
    .line 40
    check-cast p0, Landroidx/compose/material3/TooltipStateImpl;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-direct {v0, v2, p0, p1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 5
    .line 6
    iget-object v3, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 15
    .line 16
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    iget v6, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->label:I

    .line 19
    .line 20
    const/4 v7, 0x2

    .line 21
    if-eqz v6, :cond_2

    .line 22
    .line 23
    if-eq v6, v4, :cond_1

    .line 24
    .line 25
    if-ne v6, v7, :cond_0

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput v4, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->label:I

    .line 43
    .line 44
    invoke-virtual {v3, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->updateClipboardEntry$foundation(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    :goto_0
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getContextTextAndSelection()Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    iget-object v1, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Landroidx/compose/ui/text/TextRange;

    .line 64
    .line 65
    iget-wide v8, p1, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 66
    .line 67
    iget-object p1, v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    iput v7, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->label:I

    .line 72
    .line 73
    check-cast p1, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 74
    .line 75
    invoke-virtual {p1, v1, v8, v9, p0}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->onShowContextMenuOrSelectionToolbar-Sb-Bc2M(Ljava/lang/CharSequence;JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    if-ne p0, v0, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move-object p0, v5

    .line 83
    :goto_1
    if-ne p0, v0, :cond_5

    .line 84
    .line 85
    :goto_2
    move-object v1, v0

    .line 86
    goto :goto_4

    .line 87
    :cond_5
    :goto_3
    iput-boolean v4, v3, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->textToolbarShownViaProvider:Z

    .line 88
    .line 89
    move-object v1, v5

    .line 90
    :goto_4
    return-object v1

    .line 91
    :pswitch_0
    check-cast v3, Landroidx/compose/foundation/text/selection/SelectionManager;

    .line 92
    .line 93
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 94
    .line 95
    iget v6, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->label:I

    .line 96
    .line 97
    if-eqz v6, :cond_7

    .line 98
    .line 99
    if-ne v6, v4, :cond_6

    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_6

    .line 105
    :cond_6
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContextTextAndSelection$foundation()Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_9

    .line 117
    .line 118
    iget-object v1, p1, Lkotlin/Pair;->first:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 121
    .line 122
    iget-object p1, p1, Lkotlin/Pair;->second:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Landroidx/compose/ui/text/TextRange;

    .line 125
    .line 126
    iget-wide v6, p1, Landroidx/compose/ui/text/TextRange;->packedValue:J

    .line 127
    .line 128
    iget-object p1, v3, Landroidx/compose/foundation/text/selection/SelectionManager;->platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

    .line 129
    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    iput v4, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->label:I

    .line 133
    .line 134
    check-cast p1, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;

    .line 135
    .line 136
    invoke-virtual {p1, v1, v6, v7, p0}, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviorsImpl;->onShowContextMenuOrSelectionToolbar-Sb-Bc2M(Ljava/lang/CharSequence;JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    if-ne p0, v0, :cond_8

    .line 141
    .line 142
    goto :goto_5

    .line 143
    :cond_8
    move-object p0, v5

    .line 144
    :goto_5
    if-ne p0, v0, :cond_9

    .line 145
    .line 146
    move-object v1, v0

    .line 147
    goto :goto_7

    .line 148
    :cond_9
    :goto_6
    move-object v1, v5

    .line 149
    :goto_7
    return-object v1

    .line 150
    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 151
    .line 152
    iget v6, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->label:I

    .line 153
    .line 154
    if-eqz v6, :cond_b

    .line 155
    .line 156
    if-ne v6, v4, :cond_a

    .line 157
    .line 158
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_a
    invoke-static {v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_9

    .line 166
    :cond_b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    check-cast v3, Landroidx/compose/material3/TooltipStateImpl;

    .line 170
    .line 171
    iput v4, p0, Landroidx/compose/material3/TooltipStateImpl$show$cancellableShow$1;->label:I

    .line 172
    .line 173
    new-instance p1, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 174
    .line 175
    invoke-static {p0}, Lkotlin/ExceptionsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    invoke-direct {p1, v4, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 183
    .line 184
    .line 185
    iget-object p0, v3, Landroidx/compose/material3/TooltipStateImpl;->transition:Landroidx/compose/animation/core/MutableTransitionState;

    .line 186
    .line 187
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 188
    .line 189
    iget-object p0, p0, Landroidx/compose/animation/core/MutableTransitionState;->targetState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 190
    .line 191
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iput-object p1, v3, Landroidx/compose/material3/TooltipStateImpl;->job:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 195
    .line 196
    invoke-virtual {p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    if-ne p0, v0, :cond_c

    .line 201
    .line 202
    move-object v1, v0

    .line 203
    goto :goto_9

    .line 204
    :cond_c
    :goto_8
    move-object v1, v5

    .line 205
    :goto_9
    return-object v1

    .line 206
    nop

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
