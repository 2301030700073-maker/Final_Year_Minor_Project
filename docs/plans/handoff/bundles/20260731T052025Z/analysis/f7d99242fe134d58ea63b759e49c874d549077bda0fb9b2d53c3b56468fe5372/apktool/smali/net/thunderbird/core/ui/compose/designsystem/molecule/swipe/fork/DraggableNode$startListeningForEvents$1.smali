.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

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

.method public constructor <init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->$r8$classId:I

    .line 13
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;

    .line 9
    .line 10
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 11
    .line 12
    invoke-direct {v0, p0, v1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0

    .line 18
    :pswitch_0
    new-instance p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;

    .line 19
    .line 20
    invoke-direct {p0, v1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object p0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    iget-object v2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

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
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 17
    .line 18
    iget-object v7, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 21
    .line 22
    iget v8, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->label:I

    .line 23
    .line 24
    if-eqz v8, :cond_1

    .line 25
    .line 26
    if-ne v8, v5, :cond_0

    .line 27
    .line 28
    iget-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_0
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object v1, v6

    .line 38
    goto :goto_4

    .line 39
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 43
    .line 44
    instance-of v3, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;

    .line 45
    .line 46
    if-nez v3, :cond_6

    .line 47
    .line 48
    instance-of v3, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragCancelled;

    .line 49
    .line 50
    if-nez v3, :cond_6

    .line 51
    .line 52
    instance-of v3, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragDelta;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragDelta;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move-object p1, v6

    .line 60
    :goto_1
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-interface {v7, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p1, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iput-object v7, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 72
    .line 73
    iput v5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->label:I

    .line 74
    .line 75
    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v4, :cond_4

    .line 80
    .line 81
    move-object v1, v4

    .line 82
    goto :goto_4

    .line 83
    :cond_4
    move-object v3, v0

    .line 84
    :goto_2
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent;

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    move-object v3, v0

    .line 88
    move-object p1, v6

    .line 89
    :goto_3
    iput-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_6
    :goto_4
    return-object v1

    .line 93
    :pswitch_0
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 96
    .line 97
    iget v7, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->label:I

    .line 98
    .line 99
    packed-switch v7, :pswitch_data_1

    .line 100
    .line 101
    .line 102
    invoke-static {v3}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    move-object v1, v6

    .line 106
    goto/16 :goto_c

    .line 107
    .line 108
    :pswitch_1
    iget-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 109
    .line 110
    check-cast v3, Ljava/util/concurrent/CancellationException;

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :pswitch_2
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    goto :goto_6

    .line 117
    :pswitch_3
    iget-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 118
    .line 119
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    .line 121
    .line 122
    goto/16 :goto_a

    .line 123
    .line 124
    :pswitch_4
    iget-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 125
    .line 126
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_9

    .line 130
    :pswitch_5
    iget-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 131
    .line 132
    iget-object v7, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 133
    .line 134
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_7

    .line 138
    :goto_5
    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_7
    :goto_6
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_d

    .line 146
    .line 147
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 150
    .line 151
    .line 152
    iget-object p1, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 153
    .line 154
    if-eqz p1, :cond_9

    .line 155
    .line 156
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 157
    .line 158
    iput-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 159
    .line 160
    iput-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 161
    .line 162
    iput v5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->label:I

    .line 163
    .line 164
    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-ne p1, v4, :cond_8

    .line 169
    .line 170
    goto/16 :goto_b

    .line 171
    .line 172
    :cond_8
    move-object v7, v3

    .line 173
    :goto_7
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent;

    .line 174
    .line 175
    goto :goto_8

    .line 176
    :cond_9
    move-object v7, v3

    .line 177
    move-object p1, v6

    .line 178
    :goto_8
    iput-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 179
    .line 180
    iget-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 181
    .line 182
    instance-of v3, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStarted;

    .line 183
    .line 184
    if-eqz v3, :cond_7

    .line 185
    .line 186
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStarted;

    .line 187
    .line 188
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 189
    .line 190
    iput-object v7, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 191
    .line 192
    iput-object v6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 193
    .line 194
    const/4 v3, 0x2

    .line 195
    iput v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->label:I

    .line 196
    .line 197
    invoke-static {v2, p1, p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->access$processDragStart(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStarted;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    if-ne v1, v4, :cond_a

    .line 201
    .line 202
    goto :goto_b

    .line 203
    :cond_a
    move-object v3, v7

    .line 204
    :goto_9
    :try_start_2
    new-instance p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;

    .line 205
    .line 206
    invoke-direct {p1, v3, v2, v6}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/Continuation;)V

    .line 207
    .line 208
    .line 209
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 212
    .line 213
    const/4 v7, 0x3

    .line 214
    iput v7, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->label:I

    .line 215
    .line 216
    iget-object v7, v2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 217
    .line 218
    new-instance v8, Lcom/fsck/k9/Preferences$getAccountFlow$1;

    .line 219
    .line 220
    const/16 v9, 0x1d

    .line 221
    .line 222
    invoke-direct {v8, p1, v2, v6, v9}, Lcom/fsck/k9/Preferences$getAccountFlow$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v7, v8, p0}, Landroidx/compose/foundation/gestures/DraggableState;->drag(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    if-ne p1, v4, :cond_b

    .line 230
    .line 231
    goto :goto_b

    .line 232
    :cond_b
    :goto_a
    iget-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 233
    .line 234
    instance-of v3, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;

    .line 235
    .line 236
    if-eqz v3, :cond_c

    .line 237
    .line 238
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;

    .line 239
    .line 240
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 241
    .line 242
    iput-object v6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 243
    .line 244
    const/4 v3, 0x4

    .line 245
    iput v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->label:I

    .line 246
    .line 247
    invoke-static {v2, p1, p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->access$processDragStop(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragStopped;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    if-ne v1, v4, :cond_7

    .line 251
    .line 252
    goto :goto_b

    .line 253
    :cond_c
    instance-of p1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragCancelled;

    .line 254
    .line 255
    if-eqz p1, :cond_7

    .line 256
    .line 257
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 258
    .line 259
    iput-object v6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 260
    .line 261
    const/4 p1, 0x5

    .line 262
    iput p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->label:I

    .line 263
    .line 264
    invoke-static {v2, p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->access$processDragCancel(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 265
    .line 266
    .line 267
    if-ne v1, v4, :cond_7

    .line 268
    .line 269
    goto :goto_b

    .line 270
    :catch_0
    iput-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$0:Ljava/lang/Object;

    .line 271
    .line 272
    iput-object v6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 273
    .line 274
    iput-object v6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->L$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 275
    .line 276
    const/4 p1, 0x6

    .line 277
    iput p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$startListeningForEvents$1;->label:I

    .line 278
    .line 279
    invoke-static {v2, p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->access$processDragCancel(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    if-ne v1, v4, :cond_7

    .line 283
    .line 284
    :goto_b
    move-object v1, v4

    .line 285
    :cond_d
    :goto_c
    return-object v1

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
