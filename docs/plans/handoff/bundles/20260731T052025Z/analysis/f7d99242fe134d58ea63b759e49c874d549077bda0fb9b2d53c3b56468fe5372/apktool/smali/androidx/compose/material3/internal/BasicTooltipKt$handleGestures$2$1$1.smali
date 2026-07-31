.class public final Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

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
.method public constructor <init>(Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$r8$classId:I

    .line 14
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$state:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public constructor <init>(Lde/cketti/changelog/XmlParser;Lcom/fsck/k9/mailstore/LocalFolder$12;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

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
    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
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
    check-cast v2, Lde/cketti/changelog/XmlParser;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 17
    .line 18
    check-cast v1, Landroidx/compose/foundation/text/TextDragObserver;

    .line 19
    .line 20
    invoke-direct {v0, v2, p0, v1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(Lde/cketti/changelog/XmlParser;Lcom/fsck/k9/mailstore/LocalFolder$12;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)V

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
    invoke-direct {p0, v1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;Lkotlin/coroutines/Continuation;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    return-object p0

    .line 36
    :pswitch_1
    new-instance v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;

    .line 37
    .line 38
    iget-object p0, p0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    .line 41
    .line 42
    check-cast v1, Landroidx/compose/material3/TooltipStateImpl;

    .line 43
    .line 44
    invoke-direct {v0, p0, v1, p2}, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material3/TooltipStateImpl;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    return-object v0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 44
    .line 45
    return-object p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
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
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$state:Ljava/lang/Object;

    .line 10
    .line 11
    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 14
    .line 15
    const/4 v7, 0x2

    .line 16
    const/4 v8, 0x3

    .line 17
    const/4 v9, 0x4

    .line 18
    const/4 v10, 0x0

    .line 19
    const/4 v11, 0x1

    .line 20
    const/4 v12, 0x0

    .line 21
    packed-switch v1, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Lde/cketti/changelog/XmlParser;

    .line 27
    .line 28
    iget v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    if-eq v2, v11, :cond_2

    .line 33
    .line 34
    if-eq v2, v7, :cond_1

    .line 35
    .line 36
    if-eq v2, v8, :cond_1

    .line 37
    .line 38
    if-ne v2, v9, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move-object v3, v12

    .line 45
    goto/16 :goto_6

    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_2
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 55
    .line 56
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object/from16 v5, p1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 68
    .line 69
    iput-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput v11, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 72
    .line 73
    invoke-static {v2, v0}, Landroidx/room/util/RelationUtil;->access$awaitDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    if-ne v5, v6, :cond_4

    .line 78
    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :cond_4
    :goto_1
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 82
    .line 83
    iget-object v13, v1, Lde/cketti/changelog/XmlParser;->xmlPullParser:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 86
    .line 87
    iget-object v14, v1, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 90
    .line 91
    iget-object v15, v5, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 98
    .line 99
    if-eqz v14, :cond_5

    .line 100
    .line 101
    iget-wide v9, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 102
    .line 103
    move-wide/from16 v17, v9

    .line 104
    .line 105
    iget-wide v8, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 106
    .line 107
    sub-long v8, v17, v8

    .line 108
    .line 109
    invoke-interface {v13}, Landroidx/compose/ui/platform/ViewConfiguration;->getDoubleTapTimeoutMillis()J

    .line 110
    .line 111
    .line 112
    move-result-wide v17

    .line 113
    cmp-long v8, v8, v17

    .line 114
    .line 115
    if-gez v8, :cond_5

    .line 116
    .line 117
    iget v8, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 118
    .line 119
    invoke-static {v13, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    iget-wide v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 124
    .line 125
    iget-wide v13, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 126
    .line 127
    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 128
    .line 129
    .line 130
    move-result-wide v9

    .line 131
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    cmpg-float v8, v9, v8

    .line 136
    .line 137
    if-gez v8, :cond_5

    .line 138
    .line 139
    iget v8, v1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 140
    .line 141
    add-int/2addr v8, v11

    .line 142
    iput v8, v1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    iput v11, v1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 146
    .line 147
    :goto_2
    iput-object v15, v1, Lde/cketti/changelog/XmlParser;->result:Ljava/lang/Object;

    .line 148
    .line 149
    invoke-static {v5}, Landroidx/compose/foundation/text/selection/SelectionGestures_androidKt;->isMouseOrTouchPad(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    if-eqz v8, :cond_8

    .line 154
    .line 155
    iget v9, v5, Landroidx/compose/ui/input/pointer/PointerEvent;->buttons:I

    .line 156
    .line 157
    and-int/lit8 v9, v9, 0x21

    .line 158
    .line 159
    if-eqz v9, :cond_8

    .line 160
    .line 161
    iget-object v9, v5, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 164
    .line 165
    .line 166
    move-result v10

    .line 167
    const/4 v13, 0x0

    .line 168
    :goto_3
    if-ge v13, v10, :cond_7

    .line 169
    .line 170
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 175
    .line 176
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 177
    .line 178
    .line 179
    move-result v14

    .line 180
    if-eqz v14, :cond_6

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    add-int/lit8 v13, v13, 0x1

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_7
    iget-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 187
    .line 188
    check-cast v4, Lcom/fsck/k9/mailstore/LocalFolder$12;

    .line 189
    .line 190
    iput-object v12, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 191
    .line 192
    iput v7, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 193
    .line 194
    invoke-static {v2, v4, v1, v5, v0}, Landroidx/room/util/RelationUtil;->mouseSelection(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lcom/fsck/k9/mailstore/LocalFolder$12;Lde/cketti/changelog/XmlParser;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-ne v0, v6, :cond_a

    .line 199
    .line 200
    goto :goto_5

    .line 201
    :cond_8
    :goto_4
    if-nez v8, :cond_a

    .line 202
    .line 203
    iget v1, v1, Lde/cketti/changelog/XmlParser;->lastVersionCode:I

    .line 204
    .line 205
    check-cast v4, Landroidx/compose/foundation/text/TextDragObserver;

    .line 206
    .line 207
    if-ne v1, v11, :cond_9

    .line 208
    .line 209
    iput-object v12, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 210
    .line 211
    const/4 v1, 0x3

    .line 212
    iput v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 213
    .line 214
    invoke-static {v2, v4, v5, v0}, Landroidx/room/util/RelationUtil;->touchSelectionFirstPress(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-ne v0, v6, :cond_a

    .line 219
    .line 220
    goto :goto_5

    .line 221
    :cond_9
    iput-object v12, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 222
    .line 223
    const/4 v7, 0x4

    .line 224
    iput v7, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 225
    .line 226
    invoke-static {v2, v4, v5, v1, v0}, Landroidx/room/util/RelationUtil;->access$touchSelectionSubsequentPress(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/ui/input/pointer/PointerEvent;ILkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-ne v0, v6, :cond_a

    .line 231
    .line 232
    :goto_5
    move-object v3, v6

    .line 233
    :cond_a
    :goto_6
    return-object v3

    .line 234
    :pswitch_0
    check-cast v4, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    .line 235
    .line 236
    iget v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 237
    .line 238
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 239
    .line 240
    if-eqz v1, :cond_e

    .line 241
    .line 242
    if-eq v1, v11, :cond_d

    .line 243
    .line 244
    if-eq v1, v7, :cond_c

    .line 245
    .line 246
    const/4 v2, 0x3

    .line 247
    if-ne v1, v2, :cond_b

    .line 248
    .line 249
    iget-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 250
    .line 251
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 252
    .line 253
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 256
    .line 257
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    move-object/from16 v4, p1

    .line 261
    .line 262
    move-object v7, v8

    .line 263
    goto/16 :goto_1b

    .line 264
    .line 265
    :cond_b
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    move-object v3, v12

    .line 269
    goto/16 :goto_1e

    .line 270
    .line 271
    :cond_c
    iget-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 274
    .line 275
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 278
    .line 279
    iget-object v5, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v5, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 282
    .line 283
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    move-object/from16 v9, p1

    .line 287
    .line 288
    goto/16 :goto_b

    .line 289
    .line 290
    :cond_d
    iget-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 293
    .line 294
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    move-object/from16 v5, p1

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_e
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    iget-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 306
    .line 307
    iput-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 308
    .line 309
    iput v11, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 310
    .line 311
    invoke-static {v1, v11, v8, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    if-ne v5, v6, :cond_f

    .line 316
    .line 317
    goto/16 :goto_1a

    .line 318
    .line 319
    :cond_f
    :goto_7
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 320
    .line 321
    iget v9, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 322
    .line 323
    iget-wide v13, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 324
    .line 325
    const/4 v10, 0x3

    .line 326
    if-ne v9, v10, :cond_10

    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_10
    const/4 v10, 0x4

    .line 330
    if-ne v9, v10, :cond_36

    .line 331
    .line 332
    :goto_8
    const/16 p1, 0x20

    .line 333
    .line 334
    shr-long v9, v13, p1

    .line 335
    .line 336
    long-to-int v9, v9

    .line 337
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    const/4 v15, 0x0

    .line 342
    cmpl-float v10, v10, v15

    .line 343
    .line 344
    if-ltz v10, :cond_11

    .line 345
    .line 346
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 347
    .line 348
    .line 349
    move-result v9

    .line 350
    iget-object v10, v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 351
    .line 352
    move-wide/from16 v18, v13

    .line 353
    .line 354
    iget-wide v12, v10, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->boundsSize:J

    .line 355
    .line 356
    shr-long v12, v12, p1

    .line 357
    .line 358
    long-to-int v10, v12

    .line 359
    int-to-float v10, v10

    .line 360
    cmpg-float v9, v9, v10

    .line 361
    .line 362
    if-gez v9, :cond_11

    .line 363
    .line 364
    const-wide v9, 0xffffffffL

    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    and-long v12, v18, v9

    .line 370
    .line 371
    long-to-int v12, v12

    .line 372
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 373
    .line 374
    .line 375
    move-result v13

    .line 376
    cmpl-float v13, v13, v15

    .line 377
    .line 378
    if-ltz v13, :cond_11

    .line 379
    .line 380
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 381
    .line 382
    .line 383
    move-result v12

    .line 384
    iget-object v13, v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 385
    .line 386
    iget-wide v13, v13, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->boundsSize:J

    .line 387
    .line 388
    and-long/2addr v9, v13

    .line 389
    long-to-int v9, v9

    .line 390
    int-to-float v9, v9

    .line 391
    cmpg-float v9, v12, v9

    .line 392
    .line 393
    if-gez v9, :cond_11

    .line 394
    .line 395
    move v9, v11

    .line 396
    goto :goto_9

    .line 397
    :cond_11
    const/4 v9, 0x0

    .line 398
    :goto_9
    iget-boolean v10, v4, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->focused:Z

    .line 399
    .line 400
    if-nez v10, :cond_12

    .line 401
    .line 402
    if-eqz v9, :cond_13

    .line 403
    .line 404
    :cond_12
    move-object v2, v8

    .line 405
    :cond_13
    move-object/from16 v20, v5

    .line 406
    .line 407
    move-object v5, v1

    .line 408
    move-object v1, v2

    .line 409
    move-object/from16 v2, v20

    .line 410
    .line 411
    :goto_a
    iput-object v5, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 412
    .line 413
    iput-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 414
    .line 415
    iput-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 416
    .line 417
    iput v7, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 418
    .line 419
    invoke-virtual {v5, v1, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    if-ne v9, v6, :cond_14

    .line 424
    .line 425
    goto/16 :goto_1a

    .line 426
    .line 427
    :cond_14
    :goto_b
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 428
    .line 429
    iget-object v10, v9, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 430
    .line 431
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 432
    .line 433
    .line 434
    move-result v12

    .line 435
    const/4 v13, 0x0

    .line 436
    :goto_c
    if-ge v13, v12, :cond_17

    .line 437
    .line 438
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v14

    .line 442
    move-object v15, v14

    .line 443
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 444
    .line 445
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 446
    .line 447
    .line 448
    move-result v16

    .line 449
    if-nez v16, :cond_15

    .line 450
    .line 451
    move/from16 p1, v12

    .line 452
    .line 453
    iget-wide v11, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 454
    .line 455
    move-object/from16 v16, v8

    .line 456
    .line 457
    iget-wide v7, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 458
    .line 459
    invoke-static {v11, v12, v7, v8}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 460
    .line 461
    .line 462
    move-result v7

    .line 463
    if-eqz v7, :cond_16

    .line 464
    .line 465
    iget-boolean v7, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 466
    .line 467
    if-eqz v7, :cond_16

    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_15
    move-object/from16 v16, v8

    .line 471
    .line 472
    move/from16 p1, v12

    .line 473
    .line 474
    :cond_16
    add-int/lit8 v13, v13, 0x1

    .line 475
    .line 476
    move/from16 v12, p1

    .line 477
    .line 478
    move-object/from16 v8, v16

    .line 479
    .line 480
    const/4 v7, 0x2

    .line 481
    const/4 v11, 0x1

    .line 482
    goto :goto_c

    .line 483
    :cond_17
    move-object/from16 v16, v8

    .line 484
    .line 485
    const/4 v14, 0x0

    .line 486
    :goto_d
    move-object v7, v14

    .line 487
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 488
    .line 489
    if-nez v7, :cond_18

    .line 490
    .line 491
    goto :goto_e

    .line 492
    :cond_18
    iget-wide v10, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 493
    .line 494
    iget-wide v12, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 495
    .line 496
    sub-long/2addr v10, v12

    .line 497
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 498
    .line 499
    .line 500
    move-result-object v8

    .line 501
    invoke-interface {v8}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    .line 502
    .line 503
    .line 504
    move-result-wide v12

    .line 505
    cmp-long v8, v10, v12

    .line 506
    .line 507
    if-ltz v8, :cond_19

    .line 508
    .line 509
    goto :goto_e

    .line 510
    :cond_19
    iget v8, v9, Landroidx/compose/ui/input/pointer/PointerEvent;->classification:I

    .line 511
    .line 512
    const/4 v9, 0x2

    .line 513
    if-ne v8, v9, :cond_1a

    .line 514
    .line 515
    :goto_e
    const/4 v7, 0x0

    .line 516
    goto :goto_f

    .line 517
    :cond_1a
    iget-wide v8, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 518
    .line 519
    iget-wide v10, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 520
    .line 521
    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 522
    .line 523
    .line 524
    move-result-wide v8

    .line 525
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 526
    .line 527
    .line 528
    move-result v8

    .line 529
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 530
    .line 531
    .line 532
    move-result-object v9

    .line 533
    invoke-interface {v9}, Landroidx/compose/ui/platform/ViewConfiguration;->getHandwritingSlop()F

    .line 534
    .line 535
    .line 536
    move-result v9

    .line 537
    cmpl-float v8, v8, v9

    .line 538
    .line 539
    if-lez v8, :cond_35

    .line 540
    .line 541
    :goto_f
    if-nez v7, :cond_1b

    .line 542
    .line 543
    goto/16 :goto_1e

    .line 544
    .line 545
    :cond_1b
    iget-boolean v1, v4, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->focused:Z

    .line 546
    .line 547
    if-nez v1, :cond_30

    .line 548
    .line 549
    iget-object v1, v4, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 550
    .line 551
    const/4 v8, 0x0

    .line 552
    :goto_10
    const/4 v9, 0x7

    .line 553
    const/16 v10, 0x10

    .line 554
    .line 555
    if-eqz v1, :cond_23

    .line 556
    .line 557
    instance-of v11, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 558
    .line 559
    if-eqz v11, :cond_1c

    .line 560
    .line 561
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 562
    .line 563
    invoke-virtual {v1, v9}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 564
    .line 565
    .line 566
    goto/16 :goto_18

    .line 567
    .line 568
    :cond_1c
    iget v9, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 569
    .line 570
    and-int/lit16 v9, v9, 0x400

    .line 571
    .line 572
    if-eqz v9, :cond_22

    .line 573
    .line 574
    instance-of v9, v1, Landroidx/compose/ui/node/DelegatingNode;

    .line 575
    .line 576
    if-eqz v9, :cond_22

    .line 577
    .line 578
    move-object v9, v1

    .line 579
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 580
    .line 581
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 582
    .line 583
    const/4 v11, 0x0

    .line 584
    :goto_11
    if-eqz v9, :cond_21

    .line 585
    .line 586
    iget v12, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 587
    .line 588
    and-int/lit16 v12, v12, 0x400

    .line 589
    .line 590
    if-eqz v12, :cond_20

    .line 591
    .line 592
    add-int/lit8 v11, v11, 0x1

    .line 593
    .line 594
    const/4 v12, 0x1

    .line 595
    if-ne v11, v12, :cond_1d

    .line 596
    .line 597
    move-object v1, v9

    .line 598
    goto :goto_12

    .line 599
    :cond_1d
    if-nez v8, :cond_1e

    .line 600
    .line 601
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 602
    .line 603
    new-array v12, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 604
    .line 605
    invoke-direct {v8, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    :cond_1e
    if-eqz v1, :cond_1f

    .line 609
    .line 610
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 611
    .line 612
    .line 613
    const/4 v1, 0x0

    .line 614
    :cond_1f
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 615
    .line 616
    .line 617
    :cond_20
    :goto_12
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 618
    .line 619
    goto :goto_11

    .line 620
    :cond_21
    const/4 v12, 0x1

    .line 621
    if-ne v11, v12, :cond_22

    .line 622
    .line 623
    goto :goto_10

    .line 624
    :cond_22
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    goto :goto_10

    .line 629
    :cond_23
    iget-object v1, v4, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 630
    .line 631
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 632
    .line 633
    if-nez v1, :cond_24

    .line 634
    .line 635
    const-string/jumbo v1, "visitChildren called on an unattached node"

    .line 636
    .line 637
    .line 638
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    :cond_24
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 642
    .line 643
    new-array v8, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 644
    .line 645
    invoke-direct {v1, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    iget-object v8, v4, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 649
    .line 650
    iget-object v11, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 651
    .line 652
    if-nez v11, :cond_25

    .line 653
    .line 654
    invoke-static {v1, v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 655
    .line 656
    .line 657
    goto :goto_13

    .line 658
    :cond_25
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 659
    .line 660
    .line 661
    :cond_26
    :goto_13
    iget v8, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 662
    .line 663
    if-eqz v8, :cond_30

    .line 664
    .line 665
    add-int/lit8 v8, v8, -0x1

    .line 666
    .line 667
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object v8

    .line 671
    check-cast v8, Landroidx/compose/ui/Modifier$Node;

    .line 672
    .line 673
    iget v11, v8, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 674
    .line 675
    and-int/lit16 v11, v11, 0x400

    .line 676
    .line 677
    if-nez v11, :cond_27

    .line 678
    .line 679
    invoke-static {v1, v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 680
    .line 681
    .line 682
    goto :goto_13

    .line 683
    :cond_27
    :goto_14
    if-eqz v8, :cond_26

    .line 684
    .line 685
    iget v11, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 686
    .line 687
    and-int/lit16 v11, v11, 0x400

    .line 688
    .line 689
    if-eqz v11, :cond_2f

    .line 690
    .line 691
    const/4 v11, 0x0

    .line 692
    :goto_15
    if-eqz v8, :cond_26

    .line 693
    .line 694
    instance-of v12, v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 695
    .line 696
    if-eqz v12, :cond_28

    .line 697
    .line 698
    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 699
    .line 700
    invoke-virtual {v8, v9}, Landroidx/compose/ui/focus/FocusTargetNode;->requestFocus-3ESFkO8(I)Z

    .line 701
    .line 702
    .line 703
    goto :goto_18

    .line 704
    :cond_28
    iget v12, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 705
    .line 706
    and-int/lit16 v12, v12, 0x400

    .line 707
    .line 708
    if-eqz v12, :cond_2e

    .line 709
    .line 710
    instance-of v12, v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 711
    .line 712
    if-eqz v12, :cond_2e

    .line 713
    .line 714
    move-object v12, v8

    .line 715
    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .line 716
    .line 717
    iget-object v12, v12, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 718
    .line 719
    const/4 v13, 0x0

    .line 720
    :goto_16
    if-eqz v12, :cond_2d

    .line 721
    .line 722
    iget v14, v12, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 723
    .line 724
    and-int/lit16 v14, v14, 0x400

    .line 725
    .line 726
    if-eqz v14, :cond_2c

    .line 727
    .line 728
    add-int/lit8 v13, v13, 0x1

    .line 729
    .line 730
    const/4 v14, 0x1

    .line 731
    if-ne v13, v14, :cond_29

    .line 732
    .line 733
    move-object v8, v12

    .line 734
    goto :goto_17

    .line 735
    :cond_29
    if-nez v11, :cond_2a

    .line 736
    .line 737
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    .line 738
    .line 739
    new-array v14, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 740
    .line 741
    invoke-direct {v11, v14}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    :cond_2a
    if-eqz v8, :cond_2b

    .line 745
    .line 746
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 747
    .line 748
    .line 749
    const/4 v8, 0x0

    .line 750
    :cond_2b
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 751
    .line 752
    .line 753
    :cond_2c
    :goto_17
    iget-object v12, v12, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 754
    .line 755
    goto :goto_16

    .line 756
    :cond_2d
    const/4 v12, 0x1

    .line 757
    if-ne v13, v12, :cond_2e

    .line 758
    .line 759
    goto :goto_15

    .line 760
    :cond_2e
    invoke-static {v11}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 761
    .line 762
    .line 763
    move-result-object v8

    .line 764
    goto :goto_15

    .line 765
    :cond_2f
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 766
    .line 767
    goto :goto_14

    .line 768
    :cond_30
    :goto_18
    iget-object v1, v4, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->onHandwritingSlopExceeded:Lkotlin/jvm/functions/Function0;

    .line 769
    .line 770
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 774
    .line 775
    .line 776
    move-object v1, v2

    .line 777
    move-object v2, v5

    .line 778
    :goto_19
    iput-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 779
    .line 780
    iput-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 781
    .line 782
    const/4 v4, 0x0

    .line 783
    iput-object v4, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 784
    .line 785
    const/4 v10, 0x3

    .line 786
    iput v10, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 787
    .line 788
    move-object/from16 v7, v16

    .line 789
    .line 790
    invoke-virtual {v2, v7, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    if-ne v4, v6, :cond_31

    .line 795
    .line 796
    :goto_1a
    move-object v3, v6

    .line 797
    goto :goto_1e

    .line 798
    :cond_31
    :goto_1b
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 799
    .line 800
    iget-object v4, v4, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 801
    .line 802
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 803
    .line 804
    .line 805
    move-result v5

    .line 806
    const/4 v8, 0x0

    .line 807
    :goto_1c
    if-ge v8, v5, :cond_33

    .line 808
    .line 809
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v9

    .line 813
    move-object v10, v9

    .line 814
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 815
    .line 816
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 817
    .line 818
    .line 819
    move-result v11

    .line 820
    if-nez v11, :cond_32

    .line 821
    .line 822
    iget-wide v11, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 823
    .line 824
    iget-wide v13, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 825
    .line 826
    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 827
    .line 828
    .line 829
    move-result v11

    .line 830
    if-eqz v11, :cond_32

    .line 831
    .line 832
    iget-boolean v10, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 833
    .line 834
    if-eqz v10, :cond_32

    .line 835
    .line 836
    move-object v4, v9

    .line 837
    goto :goto_1d

    .line 838
    :cond_32
    add-int/lit8 v8, v8, 0x1

    .line 839
    .line 840
    goto :goto_1c

    .line 841
    :cond_33
    const/4 v4, 0x0

    .line 842
    :goto_1d
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 843
    .line 844
    if-nez v4, :cond_34

    .line 845
    .line 846
    goto :goto_1e

    .line 847
    :cond_34
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 848
    .line 849
    .line 850
    move-object/from16 v16, v7

    .line 851
    .line 852
    goto :goto_19

    .line 853
    :cond_35
    move-object/from16 v8, v16

    .line 854
    .line 855
    const/4 v7, 0x2

    .line 856
    const/4 v11, 0x1

    .line 857
    goto/16 :goto_a

    .line 858
    .line 859
    :cond_36
    :goto_1e
    return-object v3

    .line 860
    :pswitch_1
    check-cast v4, Landroidx/compose/material3/TooltipStateImpl;

    .line 861
    .line 862
    iget v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 863
    .line 864
    if-eqz v1, :cond_38

    .line 865
    .line 866
    const/4 v12, 0x1

    .line 867
    if-ne v1, v12, :cond_37

    .line 868
    .line 869
    iget-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 870
    .line 871
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 872
    .line 873
    iget-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 874
    .line 875
    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 876
    .line 877
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 878
    .line 879
    .line 880
    move-object/from16 v3, p1

    .line 881
    .line 882
    goto :goto_21

    .line 883
    :cond_37
    invoke-static {v5}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    const/4 v6, 0x0

    .line 887
    goto :goto_20

    .line 888
    :cond_38
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 889
    .line 890
    .line 891
    iget-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 892
    .line 893
    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 894
    .line 895
    move-object/from16 v20, v2

    .line 896
    .line 897
    move-object v2, v1

    .line 898
    move-object/from16 v1, v20

    .line 899
    .line 900
    :cond_39
    :goto_1f
    iput-object v2, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 901
    .line 902
    iput-object v1, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 903
    .line 904
    const/4 v12, 0x1

    .line 905
    iput v12, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->label:I

    .line 906
    .line 907
    invoke-virtual {v2, v1, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 908
    .line 909
    .line 910
    move-result-object v3

    .line 911
    if-ne v3, v6, :cond_3a

    .line 912
    .line 913
    :goto_20
    return-object v6

    .line 914
    :cond_3a
    :goto_21
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 915
    .line 916
    iget-object v5, v3, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 917
    .line 918
    const/4 v7, 0x0

    .line 919
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 924
    .line 925
    iget v5, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 926
    .line 927
    const/4 v9, 0x2

    .line 928
    if-ne v5, v9, :cond_3c

    .line 929
    .line 930
    iget v3, v3, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 931
    .line 932
    const/4 v10, 0x4

    .line 933
    if-ne v3, v10, :cond_3b

    .line 934
    .line 935
    iget-object v3, v0, Landroidx/compose/material3/internal/BasicTooltipKt$handleGestures$2$1$1;->$$this$coroutineScope:Ljava/lang/Object;

    .line 936
    .line 937
    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    .line 938
    .line 939
    new-instance v5, Landroidx/compose/material3/internal/BasicTooltipKt$anchorSemantics$1$1$1;

    .line 940
    .line 941
    const/4 v8, 0x0

    .line 942
    const/4 v12, 0x1

    .line 943
    invoke-direct {v5, v4, v8, v12}, Landroidx/compose/material3/internal/BasicTooltipKt$anchorSemantics$1$1$1;-><init>(Landroidx/compose/material3/TooltipStateImpl;Lkotlin/coroutines/Continuation;I)V

    .line 944
    .line 945
    .line 946
    const/4 v11, 0x3

    .line 947
    invoke-static {v3, v8, v8, v5, v11}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 948
    .line 949
    .line 950
    goto :goto_1f

    .line 951
    :cond_3b
    const/4 v8, 0x0

    .line 952
    const/4 v11, 0x3

    .line 953
    const/4 v12, 0x1

    .line 954
    const/4 v5, 0x5

    .line 955
    if-ne v3, v5, :cond_39

    .line 956
    .line 957
    invoke-virtual {v4}, Landroidx/compose/material3/TooltipStateImpl;->dismiss()V

    .line 958
    .line 959
    .line 960
    goto :goto_1f

    .line 961
    :cond_3c
    const/4 v8, 0x0

    .line 962
    const/4 v10, 0x4

    .line 963
    const/4 v11, 0x3

    .line 964
    const/4 v12, 0x1

    .line 965
    goto :goto_1f

    .line 966
    nop

    .line 967
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
