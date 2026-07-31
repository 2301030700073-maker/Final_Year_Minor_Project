.class public final Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public $$this$coroutineScope:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic $state:Ljava/lang/Object;

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 16
    iput p1, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$state:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipStateImpl;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$r8$classId:I

    .line 15
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$state:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http/StatusLine;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$r8$classId:I

    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$state:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 p1, 0x2

    .line 11
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$state:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lokhttp3/internal/http/StatusLine;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 17
    .line 18
    check-cast v1, Landroidx/compose/foundation/text/TextDragObserver;

    .line 19
    .line 20
    invoke-direct {v0, v2, p0, v1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(Lokhttp3/internal/http/StatusLine;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_0
    new-instance p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 27
    .line 28
    check-cast v1, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    return-object p0

    .line 37
    :pswitch_1
    new-instance p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 38
    .line 39
    check-cast v1, Landroidx/compose/foundation/pager/PagerState;

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    return-object p0

    .line 48
    :pswitch_2
    new-instance v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 53
    .line 54
    check-cast v1, Landroidx/compose/material3/TooltipStateImpl;

    .line 55
    .line 56
    invoke-direct {v0, p0, v1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipStateImpl;Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    return-object v0

    .line 62
    nop

    .line 63
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
    iget v0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$r8$classId:I

    .line 2
    .line 3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 6
    .line 7
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x4

    .line 9
    iget-object v5, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$state:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    const/4 v7, 0x2

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x1

    .line 16
    const/4 v10, 0x0

    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lokhttp3/internal/http/StatusLine;

    .line 23
    .line 24
    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 25
    .line 26
    iget v12, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 27
    .line 28
    if-eqz v12, :cond_3

    .line 29
    .line 30
    if-eq v12, v9, :cond_2

    .line 31
    .line 32
    if-eq v12, v7, :cond_1

    .line 33
    .line 34
    if-eq v12, v3, :cond_1

    .line 35
    .line 36
    if-ne v12, v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object v2, v10

    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    :cond_2
    iget-object v6, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v6, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v12, p1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v6, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v6, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 66
    .line 67
    iput-object v6, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput v9, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 70
    .line 71
    invoke-static {v6, v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->awaitDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    if-ne v12, v11, :cond_4

    .line 76
    .line 77
    goto/16 :goto_5

    .line 78
    .line 79
    :cond_4
    :goto_1
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 80
    .line 81
    iget-object v13, v1, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 84
    .line 85
    iget-object v14, v1, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 88
    .line 89
    iget-object v15, v12, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v15

    .line 95
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 96
    .line 97
    move-object/from16 v17, v5

    .line 98
    .line 99
    if-eqz v14, :cond_5

    .line 100
    .line 101
    iget-wide v4, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 102
    .line 103
    move-wide/from16 v18, v4

    .line 104
    .line 105
    iget-wide v3, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 106
    .line 107
    sub-long v3, v18, v3

    .line 108
    .line 109
    invoke-interface {v13}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapTimeoutMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v18

    .line 113
    cmp-long v3, v3, v18

    .line 114
    .line 115
    if-gez v3, :cond_5

    .line 116
    .line 117
    iget v3, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 118
    .line 119
    invoke-static {v13, v3}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    iget-wide v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 124
    .line 125
    iget-wide v13, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 126
    .line 127
    invoke-static {v4, v5, v13, v14}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 128
    .line 129
    .line 130
    move-result-wide v4

    .line 131
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    cmpg-float v3, v4, v3

    .line 136
    .line 137
    if-gez v3, :cond_5

    .line 138
    .line 139
    iget v3, v1, Lokhttp3/internal/http/StatusLine;->code:I

    .line 140
    .line 141
    add-int/2addr v3, v9

    .line 142
    iput v3, v1, Lokhttp3/internal/http/StatusLine;->code:I

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    iput v9, v1, Lokhttp3/internal/http/StatusLine;->code:I

    .line 146
    .line 147
    :goto_2
    iput-object v15, v1, Lokhttp3/internal/http/StatusLine;->message:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-static {v12}, Landroidx/compose/foundation/text/selection/SelectionGestures_androidKt;->isMouseOrTouchPad(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_8

    .line 154
    .line 155
    iget v4, v12, Landroidx/compose/ui/input/pointer/PointerEvent;->buttons:I

    .line 156
    .line 157
    and-int/lit8 v4, v4, 0x21

    .line 158
    .line 159
    if-eqz v4, :cond_8

    .line 160
    .line 161
    iget-object v4, v12, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    :goto_3
    if-ge v8, v5, :cond_7

    .line 168
    .line 169
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v13

    .line 173
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 174
    .line 175
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    if-eqz v13, :cond_6

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    iget-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v3, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    .line 188
    .line 189
    iput-object v10, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 190
    .line 191
    iput v7, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 192
    .line 193
    invoke-static {v6, v3, v1, v12, v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->mouseSelection(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Lokhttp3/internal/http/StatusLine;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-ne v0, v11, :cond_a

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_8
    :goto_4
    if-nez v3, :cond_a

    .line 201
    .line 202
    iget v1, v1, Lokhttp3/internal/http/StatusLine;->code:I

    .line 203
    .line 204
    move-object/from16 v5, v17

    .line 205
    .line 206
    check-cast v5, Landroidx/compose/foundation/text/TextDragObserver;

    .line 207
    .line 208
    if-ne v1, v9, :cond_9

    .line 209
    .line 210
    iput-object v10, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 211
    .line 212
    const/4 v1, 0x3

    .line 213
    iput v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 214
    .line 215
    invoke-static {v6, v5, v12, v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->touchSelectionFirstPress(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    if-ne v0, v11, :cond_a

    .line 220
    .line 221
    goto :goto_5

    .line 222
    :cond_9
    iput-object v10, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 223
    .line 224
    const/4 v3, 0x4

    .line 225
    iput v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 226
    .line 227
    invoke-static {v6, v5, v12, v1, v0}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->touchSelectionSubsequentPress(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;ILkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    if-ne v0, v11, :cond_a

    .line 232
    .line 233
    :goto_5
    move-object v2, v11

    .line 234
    :cond_a
    :goto_6
    return-object v2

    .line 235
    :pswitch_0
    move-object/from16 v17, v5

    .line 236
    .line 237
    move-object/from16 v5, v17

    .line 238
    .line 239
    check-cast v5, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    .line 240
    .line 241
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 242
    .line 243
    iget v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 244
    .line 245
    if-eqz v3, :cond_e

    .line 246
    .line 247
    if-eq v3, v9, :cond_d

    .line 248
    .line 249
    if-eq v3, v7, :cond_c

    .line 250
    .line 251
    const/4 v4, 0x3

    .line 252
    if-ne v3, v4, :cond_b

    .line 253
    .line 254
    iget-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 255
    .line 256
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 257
    .line 258
    iget-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 261
    .line 262
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    move-object/from16 v16, v2

    .line 266
    .line 267
    move-object/from16 v2, p1

    .line 268
    .line 269
    goto/16 :goto_1d

    .line 270
    .line 271
    :cond_b
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    move-object v2, v10

    .line 275
    goto/16 :goto_21

    .line 276
    .line 277
    :cond_c
    iget-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 280
    .line 281
    iget-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 284
    .line 285
    iget-object v6, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v6, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 288
    .line 289
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    move-object/from16 v10, p1

    .line 293
    .line 294
    goto/16 :goto_d

    .line 295
    .line 296
    :cond_d
    iget-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 299
    .line 300
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    move-object/from16 v4, p1

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    iget-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 312
    .line 313
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 314
    .line 315
    iput-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 316
    .line 317
    iput v9, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 318
    .line 319
    invoke-static {v3, v9, v4, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    if-ne v4, v1, :cond_f

    .line 324
    .line 325
    goto/16 :goto_1c

    .line 326
    .line 327
    :cond_f
    :goto_7
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 328
    .line 329
    iget v6, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 330
    .line 331
    iget-wide v11, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 332
    .line 333
    const/4 v13, 0x3

    .line 334
    if-ne v6, v13, :cond_10

    .line 335
    .line 336
    goto :goto_8

    .line 337
    :cond_10
    const/4 v13, 0x4

    .line 338
    if-ne v6, v13, :cond_36

    .line 339
    .line 340
    :goto_8
    const/16 v6, 0x20

    .line 341
    .line 342
    shr-long v13, v11, v6

    .line 343
    .line 344
    long-to-int v13, v13

    .line 345
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 346
    .line 347
    .line 348
    move-result v14

    .line 349
    const/4 v15, 0x0

    .line 350
    cmpl-float v14, v14, v15

    .line 351
    .line 352
    if-ltz v14, :cond_11

    .line 353
    .line 354
    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 355
    .line 356
    .line 357
    move-result v13

    .line 358
    iget-object v14, v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 359
    .line 360
    move-wide/from16 v16, v11

    .line 361
    .line 362
    iget-wide v10, v14, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->boundsSize:J

    .line 363
    .line 364
    shr-long/2addr v10, v6

    .line 365
    long-to-int v6, v10

    .line 366
    int-to-float v6, v6

    .line 367
    cmpg-float v6, v13, v6

    .line 368
    .line 369
    if-gez v6, :cond_11

    .line 370
    .line 371
    const-wide v10, 0xffffffffL

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    and-long v12, v16, v10

    .line 377
    .line 378
    long-to-int v6, v12

    .line 379
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 380
    .line 381
    .line 382
    move-result v12

    .line 383
    cmpl-float v12, v12, v15

    .line 384
    .line 385
    if-ltz v12, :cond_11

    .line 386
    .line 387
    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    iget-object v12, v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 392
    .line 393
    iget-wide v12, v12, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->boundsSize:J

    .line 394
    .line 395
    and-long/2addr v10, v12

    .line 396
    long-to-int v10, v10

    .line 397
    int-to-float v10, v10

    .line 398
    cmpg-float v6, v6, v10

    .line 399
    .line 400
    if-gez v6, :cond_11

    .line 401
    .line 402
    move v6, v9

    .line 403
    goto :goto_9

    .line 404
    :cond_11
    move v6, v8

    .line 405
    :goto_9
    iget-boolean v10, v5, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->focused:Z

    .line 406
    .line 407
    if-nez v10, :cond_13

    .line 408
    .line 409
    if-eqz v6, :cond_12

    .line 410
    .line 411
    goto :goto_a

    .line 412
    :cond_12
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 413
    .line 414
    goto :goto_b

    .line 415
    :cond_13
    :goto_a
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 416
    .line 417
    :goto_b
    move-object/from16 v20, v6

    .line 418
    .line 419
    move-object v6, v3

    .line 420
    move-object/from16 v3, v20

    .line 421
    .line 422
    :goto_c
    iput-object v6, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 423
    .line 424
    iput-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 425
    .line 426
    iput-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 427
    .line 428
    iput v7, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 429
    .line 430
    invoke-virtual {v6, v3, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    if-ne v10, v1, :cond_14

    .line 435
    .line 436
    goto/16 :goto_1c

    .line 437
    .line 438
    :cond_14
    :goto_d
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 439
    .line 440
    iget-object v11, v10, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 441
    .line 442
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    .line 443
    .line 444
    .line 445
    move-result v12

    .line 446
    move v13, v8

    .line 447
    :goto_e
    if-ge v13, v12, :cond_17

    .line 448
    .line 449
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v14

    .line 453
    move-object v15, v14

    .line 454
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 455
    .line 456
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 457
    .line 458
    .line 459
    move-result v16

    .line 460
    if-nez v16, :cond_15

    .line 461
    .line 462
    iget-wide v8, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 463
    .line 464
    move-object/from16 v16, v2

    .line 465
    .line 466
    move-object/from16 p1, v3

    .line 467
    .line 468
    iget-wide v2, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 469
    .line 470
    invoke-static {v8, v9, v2, v3}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 471
    .line 472
    .line 473
    move-result v2

    .line 474
    if-eqz v2, :cond_16

    .line 475
    .line 476
    iget-boolean v2, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 477
    .line 478
    if-eqz v2, :cond_16

    .line 479
    .line 480
    goto :goto_f

    .line 481
    :cond_15
    move-object/from16 v16, v2

    .line 482
    .line 483
    move-object/from16 p1, v3

    .line 484
    .line 485
    :cond_16
    add-int/lit8 v13, v13, 0x1

    .line 486
    .line 487
    move-object/from16 v3, p1

    .line 488
    .line 489
    move-object/from16 v2, v16

    .line 490
    .line 491
    const/4 v8, 0x0

    .line 492
    const/4 v9, 0x1

    .line 493
    goto :goto_e

    .line 494
    :cond_17
    move-object/from16 v16, v2

    .line 495
    .line 496
    move-object/from16 p1, v3

    .line 497
    .line 498
    const/4 v14, 0x0

    .line 499
    :goto_f
    move-object v2, v14

    .line 500
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 501
    .line 502
    if-nez v2, :cond_18

    .line 503
    .line 504
    goto :goto_10

    .line 505
    :cond_18
    iget-wide v8, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 506
    .line 507
    iget-wide v11, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 508
    .line 509
    sub-long/2addr v8, v11

    .line 510
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-interface {v3}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    .line 515
    .line 516
    .line 517
    move-result-wide v11

    .line 518
    cmp-long v3, v8, v11

    .line 519
    .line 520
    if-ltz v3, :cond_19

    .line 521
    .line 522
    goto :goto_10

    .line 523
    :cond_19
    iget v3, v10, Landroidx/compose/ui/input/pointer/PointerEvent;->classification:I

    .line 524
    .line 525
    if-ne v3, v7, :cond_1a

    .line 526
    .line 527
    :goto_10
    const/4 v2, 0x0

    .line 528
    goto :goto_11

    .line 529
    :cond_1a
    iget-wide v8, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 530
    .line 531
    iget-wide v10, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 532
    .line 533
    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 534
    .line 535
    .line 536
    move-result-wide v8

    .line 537
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 538
    .line 539
    .line 540
    move-result v3

    .line 541
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    invoke-interface {v8}, Landroidx/compose/ui/platform/ViewConfiguration;->getHandwritingSlop()F

    .line 546
    .line 547
    .line 548
    move-result v8

    .line 549
    cmpl-float v3, v3, v8

    .line 550
    .line 551
    if-lez v3, :cond_35

    .line 552
    .line 553
    :goto_11
    if-nez v2, :cond_1b

    .line 554
    .line 555
    goto/16 :goto_20

    .line 556
    .line 557
    :cond_1b
    iget-boolean v3, v5, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->focused:Z

    .line 558
    .line 559
    if-nez v3, :cond_30

    .line 560
    .line 561
    iget-object v3, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 562
    .line 563
    const/4 v7, 0x0

    .line 564
    :goto_12
    const/4 v8, 0x7

    .line 565
    const/16 v9, 0x10

    .line 566
    .line 567
    if-eqz v3, :cond_23

    .line 568
    .line 569
    instance-of v10, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 570
    .line 571
    if-eqz v10, :cond_1c

    .line 572
    .line 573
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 574
    .line 575
    invoke-virtual {v3, v8}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 576
    .line 577
    .line 578
    goto/16 :goto_1a

    .line 579
    .line 580
    :cond_1c
    iget v8, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 581
    .line 582
    and-int/lit16 v8, v8, 0x400

    .line 583
    .line 584
    if-eqz v8, :cond_22

    .line 585
    .line 586
    instance-of v8, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 587
    .line 588
    if-eqz v8, :cond_22

    .line 589
    .line 590
    move-object v8, v3

    .line 591
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 592
    .line 593
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 594
    .line 595
    const/4 v10, 0x0

    .line 596
    :goto_13
    if-eqz v8, :cond_21

    .line 597
    .line 598
    iget v11, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 599
    .line 600
    and-int/lit16 v11, v11, 0x400

    .line 601
    .line 602
    if-eqz v11, :cond_20

    .line 603
    .line 604
    add-int/lit8 v10, v10, 0x1

    .line 605
    .line 606
    const/4 v11, 0x1

    .line 607
    if-ne v10, v11, :cond_1d

    .line 608
    .line 609
    move-object v3, v8

    .line 610
    goto :goto_14

    .line 611
    :cond_1d
    if-nez v7, :cond_1e

    .line 612
    .line 613
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 614
    .line 615
    new-array v11, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 616
    .line 617
    invoke-direct {v7, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 618
    .line 619
    .line 620
    :cond_1e
    if-eqz v3, :cond_1f

    .line 621
    .line 622
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    const/4 v3, 0x0

    .line 626
    :cond_1f
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 627
    .line 628
    .line 629
    :cond_20
    :goto_14
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 630
    .line 631
    goto :goto_13

    .line 632
    :cond_21
    const/4 v11, 0x1

    .line 633
    if-ne v10, v11, :cond_22

    .line 634
    .line 635
    goto :goto_12

    .line 636
    :cond_22
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    goto :goto_12

    .line 641
    :cond_23
    iget-object v3, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 642
    .line 643
    iget-boolean v3, v3, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 644
    .line 645
    if-nez v3, :cond_24

    .line 646
    .line 647
    const-string/jumbo v3, "visitChildren called on an unattached node"

    .line 648
    .line 649
    .line 650
    invoke-static {v3}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 651
    .line 652
    .line 653
    :cond_24
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 654
    .line 655
    new-array v7, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 656
    .line 657
    invoke-direct {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 658
    .line 659
    .line 660
    iget-object v7, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 661
    .line 662
    iget-object v10, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 663
    .line 664
    if-nez v10, :cond_25

    .line 665
    .line 666
    invoke-static {v3, v7}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 667
    .line 668
    .line 669
    goto :goto_15

    .line 670
    :cond_25
    invoke-virtual {v3, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    :cond_26
    :goto_15
    iget v7, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 674
    .line 675
    if-eqz v7, :cond_30

    .line 676
    .line 677
    add-int/lit8 v7, v7, -0x1

    .line 678
    .line 679
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v7

    .line 683
    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 684
    .line 685
    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 686
    .line 687
    and-int/lit16 v10, v10, 0x400

    .line 688
    .line 689
    if-nez v10, :cond_27

    .line 690
    .line 691
    invoke-static {v3, v7}, Landroidx/compose/ui/node/HitTestResultKt;->addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 692
    .line 693
    .line 694
    goto :goto_15

    .line 695
    :cond_27
    :goto_16
    if-eqz v7, :cond_26

    .line 696
    .line 697
    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 698
    .line 699
    and-int/lit16 v10, v10, 0x400

    .line 700
    .line 701
    if-eqz v10, :cond_2f

    .line 702
    .line 703
    const/4 v10, 0x0

    .line 704
    :goto_17
    if-eqz v7, :cond_26

    .line 705
    .line 706
    instance-of v11, v7, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 707
    .line 708
    if-eqz v11, :cond_28

    .line 709
    .line 710
    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 711
    .line 712
    invoke-virtual {v7, v8}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 713
    .line 714
    .line 715
    goto :goto_1a

    .line 716
    :cond_28
    iget v11, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 717
    .line 718
    and-int/lit16 v11, v11, 0x400

    .line 719
    .line 720
    if-eqz v11, :cond_2e

    .line 721
    .line 722
    instance-of v11, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 723
    .line 724
    if-eqz v11, :cond_2e

    .line 725
    .line 726
    move-object v11, v7

    .line 727
    check-cast v11, Landroidx/compose/ui/node/DelegatingNode;

    .line 728
    .line 729
    iget-object v11, v11, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 730
    .line 731
    const/4 v12, 0x0

    .line 732
    :goto_18
    if-eqz v11, :cond_2d

    .line 733
    .line 734
    iget v13, v11, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 735
    .line 736
    and-int/lit16 v13, v13, 0x400

    .line 737
    .line 738
    if-eqz v13, :cond_2c

    .line 739
    .line 740
    add-int/lit8 v12, v12, 0x1

    .line 741
    .line 742
    const/4 v13, 0x1

    .line 743
    if-ne v12, v13, :cond_29

    .line 744
    .line 745
    move-object v7, v11

    .line 746
    goto :goto_19

    .line 747
    :cond_29
    if-nez v10, :cond_2a

    .line 748
    .line 749
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    .line 750
    .line 751
    new-array v13, v9, [Landroidx/compose/ui/Modifier$Node;

    .line 752
    .line 753
    invoke-direct {v10, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 754
    .line 755
    .line 756
    :cond_2a
    if-eqz v7, :cond_2b

    .line 757
    .line 758
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    const/4 v7, 0x0

    .line 762
    :cond_2b
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    :cond_2c
    :goto_19
    iget-object v11, v11, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 766
    .line 767
    goto :goto_18

    .line 768
    :cond_2d
    const/4 v11, 0x1

    .line 769
    if-ne v12, v11, :cond_2e

    .line 770
    .line 771
    goto :goto_17

    .line 772
    :cond_2e
    invoke-static {v10}, Landroidx/compose/ui/node/HitTestResultKt;->pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 773
    .line 774
    .line 775
    move-result-object v7

    .line 776
    goto :goto_17

    .line 777
    :cond_2f
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 778
    .line 779
    goto :goto_16

    .line 780
    :cond_30
    :goto_1a
    iget-object v3, v5, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->onHandwritingSlopExceeded:Lkotlin/jvm/functions/Function0;

    .line 781
    .line 782
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 786
    .line 787
    .line 788
    move-object v3, v4

    .line 789
    move-object v4, v6

    .line 790
    :goto_1b
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 791
    .line 792
    iput-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 793
    .line 794
    iput-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 795
    .line 796
    const/4 v5, 0x0

    .line 797
    iput-object v5, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 798
    .line 799
    const/4 v13, 0x3

    .line 800
    iput v13, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 801
    .line 802
    invoke-virtual {v4, v2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v2

    .line 806
    if-ne v2, v1, :cond_31

    .line 807
    .line 808
    :goto_1c
    move-object v2, v1

    .line 809
    goto :goto_21

    .line 810
    :cond_31
    :goto_1d
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 811
    .line 812
    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 813
    .line 814
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 815
    .line 816
    .line 817
    move-result v5

    .line 818
    const/4 v6, 0x0

    .line 819
    :goto_1e
    if-ge v6, v5, :cond_33

    .line 820
    .line 821
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v7

    .line 825
    move-object v8, v7

    .line 826
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 827
    .line 828
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 829
    .line 830
    .line 831
    move-result v9

    .line 832
    if-nez v9, :cond_32

    .line 833
    .line 834
    iget-wide v9, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 835
    .line 836
    iget-wide v11, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 837
    .line 838
    invoke-static {v9, v10, v11, v12}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 839
    .line 840
    .line 841
    move-result v9

    .line 842
    if-eqz v9, :cond_32

    .line 843
    .line 844
    iget-boolean v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 845
    .line 846
    if-eqz v8, :cond_32

    .line 847
    .line 848
    move-object v5, v7

    .line 849
    goto :goto_1f

    .line 850
    :cond_32
    add-int/lit8 v6, v6, 0x1

    .line 851
    .line 852
    goto :goto_1e

    .line 853
    :cond_33
    const/4 v5, 0x0

    .line 854
    :goto_1f
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 855
    .line 856
    if-nez v5, :cond_34

    .line 857
    .line 858
    goto :goto_20

    .line 859
    :cond_34
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 860
    .line 861
    .line 862
    goto :goto_1b

    .line 863
    :cond_35
    move-object/from16 v3, p1

    .line 864
    .line 865
    move-object/from16 v2, v16

    .line 866
    .line 867
    const/4 v8, 0x0

    .line 868
    const/4 v9, 0x1

    .line 869
    goto/16 :goto_c

    .line 870
    .line 871
    :cond_36
    move-object/from16 v16, v2

    .line 872
    .line 873
    :goto_20
    move-object/from16 v2, v16

    .line 874
    .line 875
    :goto_21
    return-object v2

    .line 876
    :pswitch_1
    move-object/from16 v16, v2

    .line 877
    .line 878
    move-object/from16 v17, v5

    .line 879
    .line 880
    move-object/from16 v5, v17

    .line 881
    .line 882
    check-cast v5, Landroidx/compose/foundation/pager/PagerState;

    .line 883
    .line 884
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 885
    .line 886
    iget v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 887
    .line 888
    if-eqz v2, :cond_39

    .line 889
    .line 890
    const/4 v11, 0x1

    .line 891
    if-eq v2, v11, :cond_38

    .line 892
    .line 893
    if-ne v2, v7, :cond_37

    .line 894
    .line 895
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 896
    .line 897
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 898
    .line 899
    iget-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 900
    .line 901
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 902
    .line 903
    iget-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 904
    .line 905
    check-cast v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 906
    .line 907
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 908
    .line 909
    .line 910
    move-object v10, v2

    .line 911
    move-object/from16 v2, p1

    .line 912
    .line 913
    goto :goto_25

    .line 914
    :cond_37
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    const/4 v2, 0x0

    .line 918
    goto/16 :goto_27

    .line 919
    .line 920
    :cond_38
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 923
    .line 924
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 925
    .line 926
    .line 927
    move-object/from16 v3, p1

    .line 928
    .line 929
    goto :goto_22

    .line 930
    :cond_39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 931
    .line 932
    .line 933
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 934
    .line 935
    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 936
    .line 937
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 938
    .line 939
    iput-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 940
    .line 941
    const/4 v11, 0x1

    .line 942
    iput v11, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 943
    .line 944
    const/4 v4, 0x0

    .line 945
    invoke-static {v2, v4, v3, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    if-ne v3, v1, :cond_3a

    .line 950
    .line 951
    goto :goto_24

    .line 952
    :cond_3a
    :goto_22
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 953
    .line 954
    iget-object v4, v5, Landroidx/compose/foundation/pager/PagerState;->upDownDifference$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 955
    .line 956
    new-instance v6, Landroidx/compose/ui/geometry/Offset;

    .line 957
    .line 958
    const-wide/16 v8, 0x0

    .line 959
    .line 960
    invoke-direct {v6, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 961
    .line 962
    .line 963
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 964
    .line 965
    .line 966
    move-object v4, v2

    .line 967
    const/4 v10, 0x0

    .line 968
    :goto_23
    if-nez v10, :cond_3e

    .line 969
    .line 970
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 971
    .line 972
    iput-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 973
    .line 974
    iput-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 975
    .line 976
    iput-object v10, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 977
    .line 978
    iput v7, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 979
    .line 980
    invoke-virtual {v4, v2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 981
    .line 982
    .line 983
    move-result-object v2

    .line 984
    if-ne v2, v1, :cond_3b

    .line 985
    .line 986
    :goto_24
    move-object v2, v1

    .line 987
    goto :goto_27

    .line 988
    :cond_3b
    :goto_25
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 989
    .line 990
    iget-object v6, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 991
    .line 992
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 993
    .line 994
    .line 995
    move-result v8

    .line 996
    const/4 v9, 0x0

    .line 997
    :goto_26
    if-ge v9, v8, :cond_3d

    .line 998
    .line 999
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v11

    .line 1003
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1004
    .line 1005
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v11

    .line 1009
    if-nez v11, :cond_3c

    .line 1010
    .line 1011
    goto :goto_23

    .line 1012
    :cond_3c
    add-int/lit8 v9, v9, 0x1

    .line 1013
    .line 1014
    goto :goto_26

    .line 1015
    :cond_3d
    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 1016
    .line 1017
    const/4 v6, 0x0

    .line 1018
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v2

    .line 1022
    move-object v10, v2

    .line 1023
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1024
    .line 1025
    goto :goto_23

    .line 1026
    :cond_3e
    iget-wide v0, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 1027
    .line 1028
    iget-wide v2, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 1029
    .line 1030
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 1031
    .line 1032
    .line 1033
    move-result-wide v0

    .line 1034
    iget-object v2, v5, Landroidx/compose/foundation/pager/PagerState;->upDownDifference$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 1035
    .line 1036
    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    .line 1037
    .line 1038
    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 1042
    .line 1043
    .line 1044
    move-object/from16 v2, v16

    .line 1045
    .line 1046
    :goto_27
    return-object v2

    .line 1047
    :pswitch_2
    move-object/from16 v17, v5

    .line 1048
    .line 1049
    move-object/from16 v5, v17

    .line 1050
    .line 1051
    check-cast v5, Landroidx/compose/material3/TooltipStateImpl;

    .line 1052
    .line 1053
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 1054
    .line 1055
    iget v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 1056
    .line 1057
    if-eqz v2, :cond_40

    .line 1058
    .line 1059
    const/4 v11, 0x1

    .line 1060
    if-ne v2, v11, :cond_3f

    .line 1061
    .line 1062
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 1063
    .line 1064
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 1065
    .line 1066
    iget-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 1067
    .line 1068
    check-cast v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 1069
    .line 1070
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1071
    .line 1072
    .line 1073
    move-object/from16 v4, p1

    .line 1074
    .line 1075
    goto :goto_2a

    .line 1076
    :cond_3f
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 1077
    .line 1078
    .line 1079
    const/4 v10, 0x0

    .line 1080
    goto :goto_29

    .line 1081
    :cond_40
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1082
    .line 1083
    .line 1084
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 1085
    .line 1086
    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 1087
    .line 1088
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 1089
    .line 1090
    move-object/from16 v20, v3

    .line 1091
    .line 1092
    move-object v3, v2

    .line 1093
    move-object/from16 v2, v20

    .line 1094
    .line 1095
    :cond_41
    :goto_28
    iput-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 1096
    .line 1097
    iput-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 1098
    .line 1099
    const/4 v11, 0x1

    .line 1100
    iput v11, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 1101
    .line 1102
    invoke-virtual {v3, v2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v4

    .line 1106
    if-ne v4, v1, :cond_42

    .line 1107
    .line 1108
    move-object v10, v1

    .line 1109
    :goto_29
    return-object v10

    .line 1110
    :cond_42
    :goto_2a
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 1111
    .line 1112
    iget-object v6, v4, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 1113
    .line 1114
    const/4 v8, 0x0

    .line 1115
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v6

    .line 1119
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1120
    .line 1121
    iget v6, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 1122
    .line 1123
    if-ne v6, v7, :cond_44

    .line 1124
    .line 1125
    iget v4, v4, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 1126
    .line 1127
    const/4 v13, 0x4

    .line 1128
    if-ne v4, v13, :cond_43

    .line 1129
    .line 1130
    iget-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 1131
    .line 1132
    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    .line 1133
    .line 1134
    new-instance v6, Landroidx/compose/material3/internal/BasicTooltipKt$anchorSemantics$1$1$1;

    .line 1135
    .line 1136
    const/4 v9, 0x0

    .line 1137
    const/4 v11, 0x1

    .line 1138
    invoke-direct {v6, v5, v9, v11}, Landroidx/compose/material3/internal/BasicTooltipKt$anchorSemantics$1$1$1;-><init>(Landroidx/compose/material3/TooltipStateImpl;Lkotlin/coroutines/Continuation;I)V

    .line 1139
    .line 1140
    .line 1141
    const/4 v10, 0x3

    .line 1142
    invoke-static {v4, v9, v9, v6, v10}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1143
    .line 1144
    .line 1145
    goto :goto_28

    .line 1146
    :cond_43
    const/4 v9, 0x0

    .line 1147
    const/4 v10, 0x3

    .line 1148
    const/4 v11, 0x1

    .line 1149
    const/4 v6, 0x5

    .line 1150
    if-ne v4, v6, :cond_41

    .line 1151
    .line 1152
    invoke-virtual {v5}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 1153
    .line 1154
    .line 1155
    goto :goto_28

    .line 1156
    :cond_44
    const/4 v9, 0x0

    .line 1157
    const/4 v10, 0x3

    .line 1158
    const/4 v11, 0x1

    .line 1159
    const/4 v13, 0x4

    .line 1160
    goto :goto_28

    .line 1161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
