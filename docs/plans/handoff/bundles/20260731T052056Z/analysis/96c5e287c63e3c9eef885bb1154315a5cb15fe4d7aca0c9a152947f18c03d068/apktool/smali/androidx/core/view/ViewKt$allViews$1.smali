.class public final Landroidx/core/view/ViewKt$allViews$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_allViews:Ljava/lang/Object;

.field public synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/ViewKt$allViews$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/core/view/ViewKt$allViews$1;->$this_allViews:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/view/ViewKt$allViews$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/core/view/ViewKt$allViews$1;->$this_allViews:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    .line 9
    .line 10
    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, v1, p0, p2}, Landroidx/core/view/ViewKt$allViews$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0

    .line 19
    :pswitch_0
    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    .line 20
    .line 21
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-direct {v0, v1, p0, p2}, Landroidx/core/view/ViewKt$allViews$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, v0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    return-object v0

    .line 30
    :pswitch_1
    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    .line 31
    .line 32
    check-cast p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, v1, p0, p2}, Landroidx/core/view/ViewKt$allViews$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, v0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_2
    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    .line 42
    .line 43
    check-cast p0, Landroid/view/View;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1, p0, p2}, Landroidx/core/view/ViewKt$allViews$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, v0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    return-object v0

    .line 52
    nop

    .line 53
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
    iget v0, p0, Landroidx/core/view/ViewKt$allViews$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 9
    .line 10
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewKt$allViews$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/core/view/ViewKt$allViews$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/core/view/ViewKt$allViews$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 24
    .line 25
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 26
    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewKt$allViews$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Landroidx/core/view/ViewKt$allViews$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Landroidx/core/view/ViewKt$allViews$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewKt$allViews$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Landroidx/core/view/ViewKt$allViews$1;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/core/view/ViewKt$allViews$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewKt$allViews$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Landroidx/core/view/ViewKt$allViews$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Landroidx/core/view/ViewKt$allViews$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/core/view/ViewKt$allViews$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, p0, Landroidx/core/view/ViewKt$allViews$1;->$this_allViews:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 21
    .line 22
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    .line 24
    iget v8, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 25
    .line 26
    if-eqz v8, :cond_1

    .line 27
    .line 28
    if-ne v8, v5, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object v3, v7

    .line 38
    goto :goto_2

    .line 39
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_0
    iget-boolean p1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 43
    .line 44
    if-eqz p1, :cond_6

    .line 45
    .line 46
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    iput v5, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 51
    .line 52
    invoke-virtual {v0, p1, p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v2, :cond_3

    .line 57
    .line 58
    move-object v3, v2

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 61
    .line 62
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 88
    .line 89
    iget-boolean v7, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 90
    .line 91
    if-nez v7, :cond_5

    .line 92
    .line 93
    iget-boolean v4, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 94
    .line 95
    if-eqz v4, :cond_5

    .line 96
    .line 97
    iput-boolean v1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    :goto_2
    return-object v3

    .line 101
    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 102
    .line 103
    iget v1, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 104
    .line 105
    if-eqz v1, :cond_8

    .line 106
    .line 107
    if-ne v1, v5, :cond_7

    .line 108
    .line 109
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_7
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object p1, v7

    .line 117
    goto :goto_3

    .line 118
    :cond_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 124
    .line 125
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 126
    .line 127
    iput v5, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 128
    .line 129
    invoke-static {p1, v6, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->waitForUpOrCancellation(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-ne p1, v0, :cond_9

    .line 134
    .line 135
    move-object p1, v0

    .line 136
    :cond_9
    :goto_3
    return-object p1

    .line 137
    :pswitch_1
    move-object v0, v6

    .line 138
    check-cast v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 139
    .line 140
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 141
    .line 142
    iget v6, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 143
    .line 144
    if-eqz v6, :cond_c

    .line 145
    .line 146
    if-eq v6, v5, :cond_b

    .line 147
    .line 148
    if-ne v6, v2, :cond_a

    .line 149
    .line 150
    iget-object v4, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    check-cast v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 153
    .line 154
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_a
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    move-object v3, v7

    .line 162
    goto/16 :goto_a

    .line 163
    .line 164
    :cond_b
    iget-object v4, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 167
    .line 168
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object p1, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 176
    .line 177
    move-object v4, p1

    .line 178
    check-cast v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 179
    .line 180
    iput-object v4, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    iput v5, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 183
    .line 184
    invoke-static {v4, v7, p0, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    if-ne p1, v8, :cond_d

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_d
    :goto_4
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 192
    .line 193
    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 194
    .line 195
    iput-wide v5, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:J

    .line 196
    .line 197
    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 198
    .line 199
    iput-wide v5, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:J

    .line 200
    .line 201
    :cond_e
    iput-object v4, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 202
    .line 203
    iput v2, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 204
    .line 205
    invoke-static {v4, p0}, Landroidx/compose/ui/Modifier$-CC;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    if-ne p1, v8, :cond_f

    .line 210
    .line 211
    :goto_5
    move-object v3, v8

    .line 212
    goto :goto_a

    .line 213
    :cond_f
    :goto_6
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 214
    .line 215
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 216
    .line 217
    new-instance v5, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    move v9, v1

    .line 231
    :goto_7
    if-ge v9, v6, :cond_11

    .line 232
    .line 233
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    move-object v11, v10

    .line 238
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 239
    .line 240
    iget-boolean v11, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 241
    .line 242
    if-eqz v11, :cond_10

    .line 243
    .line 244
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    :cond_10
    add-int/lit8 v9, v9, 0x1

    .line 248
    .line 249
    goto :goto_7

    .line 250
    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    move v6, v1

    .line 255
    :goto_8
    if-ge v6, p1, :cond_13

    .line 256
    .line 257
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v9

    .line 261
    move-object v10, v9

    .line 262
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 263
    .line 264
    iget-wide v10, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 265
    .line 266
    iget-wide v12, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:J

    .line 267
    .line 268
    invoke-static {v10, v11, v12, v13}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 269
    .line 270
    .line 271
    move-result v10

    .line 272
    if-eqz v10, :cond_12

    .line 273
    .line 274
    goto :goto_9

    .line 275
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_13
    move-object v9, v7

    .line 279
    :goto_9
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 280
    .line 281
    if-nez v9, :cond_14

    .line 282
    .line 283
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    move-object v9, p1

    .line 288
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 289
    .line 290
    :cond_14
    if-eqz v9, :cond_15

    .line 291
    .line 292
    iget-wide v10, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 293
    .line 294
    iput-wide v10, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:J

    .line 295
    .line 296
    iget-wide v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 297
    .line 298
    iput-wide v9, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerPosition:J

    .line 299
    .line 300
    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-eqz p1, :cond_e

    .line 305
    .line 306
    const-wide/16 p0, -0x1

    .line 307
    .line 308
    iput-wide p0, v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pointerId:J

    .line 309
    .line 310
    :goto_a
    return-object v3

    .line 311
    :pswitch_2
    check-cast v6, Landroid/view/View;

    .line 312
    .line 313
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 314
    .line 315
    iget v1, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 316
    .line 317
    if-eqz v1, :cond_18

    .line 318
    .line 319
    if-eq v1, v5, :cond_17

    .line 320
    .line 321
    if-ne v1, v2, :cond_16

    .line 322
    .line 323
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    goto :goto_f

    .line 327
    :cond_16
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    move-object v3, v7

    .line 331
    goto :goto_f

    .line 332
    :cond_17
    iget-object v1, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 335
    .line 336
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    goto :goto_b

    .line 340
    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 341
    .line 342
    .line 343
    iget-object p1, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 344
    .line 345
    move-object v1, p1

    .line 346
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 347
    .line 348
    iput-object v1, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 349
    .line 350
    iput v5, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 351
    .line 352
    invoke-virtual {v1, v6, p0}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    if-ne p1, v0, :cond_19

    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_19
    :goto_b
    instance-of p1, v6, Landroid/view/ViewGroup;

    .line 360
    .line 361
    if-eqz p1, :cond_1c

    .line 362
    .line 363
    check-cast v6, Landroid/view/ViewGroup;

    .line 364
    .line 365
    iput-object v7, p0, Landroidx/core/view/ViewKt$allViews$1;->L$0:Ljava/lang/Object;

    .line 366
    .line 367
    iput v2, p0, Landroidx/core/view/ViewKt$allViews$1;->label:I

    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    .line 371
    .line 372
    new-instance p1, Landroidx/core/view/TreeIterator;

    .line 373
    .line 374
    new-instance v4, Lkotlin/UIntArray$Iterator;

    .line 375
    .line 376
    invoke-direct {v4, v2, v6}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 377
    .line 378
    .line 379
    invoke-direct {p1, v4}, Landroidx/core/view/TreeIterator;-><init>(Ljava/util/Iterator;)V

    .line 380
    .line 381
    .line 382
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 383
    .line 384
    .line 385
    move-result v4

    .line 386
    if-nez v4, :cond_1a

    .line 387
    .line 388
    move-object p0, v3

    .line 389
    goto :goto_c

    .line 390
    :cond_1a
    iput-object p1, v1, Lkotlin/sequences/SequenceBuilderIterator;->nextIterator:Ljava/util/Iterator;

    .line 391
    .line 392
    iput v2, v1, Lkotlin/sequences/SequenceBuilderIterator;->state:I

    .line 393
    .line 394
    iput-object p0, v1, Lkotlin/sequences/SequenceBuilderIterator;->nextStep:Lkotlin/coroutines/Continuation;

    .line 395
    .line 396
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 397
    .line 398
    :goto_c
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 399
    .line 400
    if-ne p0, p1, :cond_1b

    .line 401
    .line 402
    goto :goto_d

    .line 403
    :cond_1b
    move-object p0, v3

    .line 404
    :goto_d
    if-ne p0, v0, :cond_1c

    .line 405
    .line 406
    :goto_e
    move-object v3, v0

    .line 407
    :cond_1c
    :goto_f
    return-object v3

    .line 408
    nop

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
