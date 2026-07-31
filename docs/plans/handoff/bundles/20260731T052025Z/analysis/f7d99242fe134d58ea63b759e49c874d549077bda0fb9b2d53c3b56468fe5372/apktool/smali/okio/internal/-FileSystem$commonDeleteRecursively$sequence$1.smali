.class public final Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $fileOrDirectory:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public $this_commonDeleteRecursively:Ljava/lang/Object;

.field public L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 1
    iput p4, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V
    .locals 0

    .line 12
    iput p3, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$r8$classId:I

    iput-object p1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    iget v0, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 9
    .line 10
    check-cast v1, Landroidx/compose/foundation/text/TextDragObserver;

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    invoke-direct {p0, v1, p2, v0}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_0
    new-instance v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 20
    .line 21
    iget-object p0, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 24
    .line 25
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    invoke-direct {v0, p0, v1, p2, v2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_1
    new-instance p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 35
    .line 36
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    invoke-direct {p0, v1, p2, v0}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 43
    .line 44
    return-object p0

    .line 45
    :pswitch_2
    new-instance v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 46
    .line 47
    iget-object p0, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    .line 50
    .line 51
    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-direct {v0, p0, v1, p2, v2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 55
    .line 56
    .line 57
    iput-object p1, v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    return-object v0

    .line 60
    :pswitch_3
    new-instance v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 61
    .line 62
    iget-object p0, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lokio/FileSystem;

    .line 65
    .line 66
    check-cast v1, Lokio/Path;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {v0, p0, v1, p2, v2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 70
    .line 71
    .line 72
    iput-object p1, v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    return-object v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$r8$classId:I

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
    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :pswitch_1
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 39
    .line 40
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0

    .line 53
    :pswitch_2
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 54
    .line 55
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :pswitch_3
    check-cast p1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 69
    .line 70
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    check-cast p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$r8$classId:I

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    .line 11
    .line 12
    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    iget-object v9, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    check-cast v9, Landroidx/compose/foundation/text/TextDragObserver;

    .line 22
    .line 23
    iget v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    if-eq v0, v5, :cond_1

    .line 28
    .line 29
    if-ne v0, v3, :cond_0

    .line 30
    .line 31
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 34
    .line 35
    iget-object v1, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 38
    .line 39
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object/from16 v4, p1

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_0
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object v7, v10

    .line 49
    goto :goto_5

    .line 50
    :cond_1
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 53
    .line 54
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object/from16 v1, p1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 66
    .line 67
    iput-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput v5, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 70
    .line 71
    invoke-static {v0, v6, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-ne v1, v8, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    :goto_0
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 79
    .line 80
    iget-wide v4, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 81
    .line 82
    invoke-interface {v9}, Landroidx/compose/foundation/text/TextDragObserver;->onDown-k-4lQ0M()V

    .line 83
    .line 84
    .line 85
    move-object/from16 v16, v1

    .line 86
    .line 87
    move-object v1, v0

    .line 88
    move-object/from16 v0, v16

    .line 89
    .line 90
    :goto_1
    iput-object v1, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 93
    .line 94
    iput v3, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 95
    .line 96
    invoke-static {v1, v6}, Landroidx/compose/ui/Modifier$-CC;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    if-ne v4, v8, :cond_4

    .line 101
    .line 102
    :goto_2
    move-object v7, v8

    .line 103
    goto :goto_5

    .line 104
    :cond_4
    :goto_3
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 105
    .line 106
    iget-object v4, v4, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    const/4 v10, 0x0

    .line 113
    :goto_4
    if-ge v10, v5, :cond_6

    .line 114
    .line 115
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 120
    .line 121
    iget-wide v12, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 122
    .line 123
    iget-wide v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 124
    .line 125
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 126
    .line 127
    .line 128
    move-result v12

    .line 129
    if-eqz v12, :cond_5

    .line 130
    .line 131
    iget-boolean v11, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 132
    .line 133
    if-eqz v11, :cond_5

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    invoke-interface {v9}, Landroidx/compose/foundation/text/TextDragObserver;->onUp()V

    .line 140
    .line 141
    .line 142
    :goto_5
    return-object v7

    .line 143
    :pswitch_0
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 144
    .line 145
    iget v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 146
    .line 147
    sget-object v11, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;->INSTANCE:Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    .line 148
    .line 149
    if-eqz v0, :cond_9

    .line 150
    .line 151
    if-eq v0, v5, :cond_8

    .line 152
    .line 153
    if-ne v0, v3, :cond_7

    .line 154
    .line 155
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 158
    .line 159
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    move-object/from16 v2, p1

    .line 163
    .line 164
    goto/16 :goto_c

    .line 165
    .line 166
    :cond_7
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    move-object v7, v10

    .line 170
    goto/16 :goto_e

    .line 171
    .line 172
    :cond_8
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 175
    .line 176
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    move-object/from16 v4, p1

    .line 180
    .line 181
    goto :goto_7

    .line 182
    :cond_9
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 188
    .line 189
    :goto_6
    iget-object v4, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 192
    .line 193
    iput-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 194
    .line 195
    iput v5, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 196
    .line 197
    invoke-virtual {v0, v4, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    if-ne v4, v8, :cond_a

    .line 202
    .line 203
    goto :goto_b

    .line 204
    :cond_a
    :goto_7
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 205
    .line 206
    iget-object v10, v4, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 209
    .line 210
    .line 211
    move-result v12

    .line 212
    const/4 v13, 0x0

    .line 213
    :goto_8
    if-ge v13, v12, :cond_13

    .line 214
    .line 215
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 220
    .line 221
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 222
    .line 223
    .line 224
    move-result v14

    .line 225
    if-nez v14, :cond_12

    .line 226
    .line 227
    iget v4, v4, Landroidx/compose/ui/input/pointer/PointerEvent;->classification:I

    .line 228
    .line 229
    if-ne v4, v3, :cond_b

    .line 230
    .line 231
    sget-object v0, Landroidx/compose/foundation/gestures/LongPressResult$Success;->INSTANCE:Landroidx/compose/foundation/gestures/LongPressResult$Success;

    .line 232
    .line 233
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 234
    .line 235
    goto/16 :goto_e

    .line 236
    .line 237
    :cond_b
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    const/4 v12, 0x0

    .line 242
    :goto_9
    if-ge v12, v4, :cond_e

    .line 243
    .line 244
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 249
    .line 250
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 251
    .line 252
    .line 253
    move-result v14

    .line 254
    if-nez v14, :cond_d

    .line 255
    .line 256
    iget-object v14, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 257
    .line 258
    iget-wide v14, v14, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->boundsSize:J

    .line 259
    .line 260
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getExtendedTouchPadding-NH-jbRc()J

    .line 261
    .line 262
    .line 263
    move-result-wide v2

    .line 264
    invoke-static {v13, v14, v15, v2, v3}, Landroidx/compose/ui/input/pointer/PointerId;->isOutOfBounds-jwHxaWs(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-eqz v2, :cond_c

    .line 269
    .line 270
    goto :goto_a

    .line 271
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 272
    .line 273
    const/4 v3, 0x2

    .line 274
    goto :goto_9

    .line 275
    :cond_d
    :goto_a
    iput-object v11, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 276
    .line 277
    goto :goto_e

    .line 278
    :cond_e
    iput-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 279
    .line 280
    const/4 v2, 0x2

    .line 281
    iput v2, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 282
    .line 283
    invoke-virtual {v0, v1, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    if-ne v2, v8, :cond_f

    .line 288
    .line 289
    :goto_b
    move-object v7, v8

    .line 290
    goto :goto_e

    .line 291
    :cond_f
    :goto_c
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 292
    .line 293
    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 294
    .line 295
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    const/4 v4, 0x0

    .line 300
    :goto_d
    if-ge v4, v3, :cond_11

    .line 301
    .line 302
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 307
    .line 308
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    if-eqz v10, :cond_10

    .line 313
    .line 314
    iput-object v11, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 315
    .line 316
    goto :goto_e

    .line 317
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 318
    .line 319
    goto :goto_d

    .line 320
    :cond_11
    const/4 v3, 0x2

    .line 321
    goto/16 :goto_6

    .line 322
    .line 323
    :cond_12
    add-int/lit8 v13, v13, 0x1

    .line 324
    .line 325
    const/4 v3, 0x2

    .line 326
    goto :goto_8

    .line 327
    :cond_13
    new-instance v0, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    .line 328
    .line 329
    const/4 v1, 0x0

    .line 330
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 335
    .line 336
    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/LongPressResult$Released;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 337
    .line 338
    .line 339
    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 340
    .line 341
    :goto_e
    return-object v7

    .line 342
    :pswitch_1
    iget v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 343
    .line 344
    if-eqz v0, :cond_15

    .line 345
    .line 346
    if-ne v0, v5, :cond_14

    .line 347
    .line 348
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 349
    .line 350
    iget-object v1, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v1, Lkotlin/sequences/SequenceBuilderIterator;

    .line 353
    .line 354
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    goto :goto_f

    .line 358
    :cond_14
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    move-object v7, v10

    .line 362
    goto :goto_10

    .line 363
    :cond_15
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 367
    .line 368
    check-cast v0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 369
    .line 370
    move-object v1, v0

    .line 371
    :cond_16
    move-object v0, v9

    .line 372
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 373
    .line 374
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    if-eqz v0, :cond_17

    .line 379
    .line 380
    iput-object v1, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 381
    .line 382
    iput-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 383
    .line 384
    iput v5, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 385
    .line 386
    invoke-virtual {v1, v0, v6}, Lkotlin/sequences/SequenceBuilderIterator;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 387
    .line 388
    .line 389
    move-object v7, v8

    .line 390
    goto :goto_10

    .line 391
    :cond_17
    move-object v0, v10

    .line 392
    :goto_f
    if-nez v0, :cond_16

    .line 393
    .line 394
    :goto_10
    return-object v7

    .line 395
    :pswitch_2
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 396
    .line 397
    move-object v2, v0

    .line 398
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 399
    .line 400
    iget v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 401
    .line 402
    const/4 v3, 0x3

    .line 403
    if-eqz v0, :cond_1b

    .line 404
    .line 405
    if-eq v0, v5, :cond_1a

    .line 406
    .line 407
    const/4 v11, 0x2

    .line 408
    if-eq v0, v11, :cond_19

    .line 409
    .line 410
    if-ne v0, v3, :cond_18

    .line 411
    .line 412
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 415
    .line 416
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    move-object v4, v0

    .line 420
    goto :goto_11

    .line 421
    :cond_18
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    move-object v7, v10

    .line 425
    goto :goto_16

    .line 426
    :cond_19
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 427
    .line 428
    move-object v4, v0

    .line 429
    check-cast v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 430
    .line 431
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .line 433
    .line 434
    :goto_11
    const/4 v11, 0x2

    .line 435
    goto :goto_12

    .line 436
    :catch_0
    move-exception v0

    .line 437
    const/4 v11, 0x2

    .line 438
    goto :goto_14

    .line 439
    :cond_1a
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 440
    .line 441
    move-object v4, v0

    .line 442
    check-cast v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 443
    .line 444
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 445
    .line 446
    .line 447
    goto :goto_13

    .line 448
    :cond_1b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 449
    .line 450
    .line 451
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 454
    .line 455
    move-object v4, v0

    .line 456
    :cond_1c
    :goto_12
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    if-eqz v0, :cond_1f

    .line 461
    .line 462
    :try_start_2
    move-object v0, v9

    .line 463
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 464
    .line 465
    iput-object v4, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 466
    .line 467
    iput v5, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 468
    .line 469
    invoke-interface {v0, v4, v6}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    if-ne v0, v8, :cond_1d

    .line 474
    .line 475
    goto :goto_15

    .line 476
    :cond_1d
    :goto_13
    iput-object v4, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 477
    .line 478
    const/4 v11, 0x2

    .line 479
    :try_start_3
    iput v11, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 480
    .line 481
    invoke-static {v4, v1, v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitAllPointersUp(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 482
    .line 483
    .line 484
    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 485
    if-ne v0, v8, :cond_1c

    .line 486
    .line 487
    goto :goto_15

    .line 488
    :catch_1
    move-exception v0

    .line 489
    :goto_14
    invoke-static {v2}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    .line 490
    .line 491
    .line 492
    move-result v10

    .line 493
    if-eqz v10, :cond_1e

    .line 494
    .line 495
    iput-object v4, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 496
    .line 497
    iput v3, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 498
    .line 499
    invoke-static {v4, v1, v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->awaitAllPointersUp(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    if-ne v0, v8, :cond_1c

    .line 504
    .line 505
    :goto_15
    move-object v7, v8

    .line 506
    goto :goto_16

    .line 507
    :cond_1e
    throw v0

    .line 508
    :cond_1f
    :goto_16
    return-object v7

    .line 509
    :pswitch_3
    iget v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 510
    .line 511
    if-eqz v0, :cond_21

    .line 512
    .line 513
    if-ne v0, v5, :cond_20

    .line 514
    .line 515
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    goto :goto_17

    .line 519
    :cond_20
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    move-object v7, v10

    .line 523
    goto :goto_17

    .line 524
    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 525
    .line 526
    .line 527
    iget-object v0, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v0, Lkotlin/sequences/SequenceBuilderIterator;

    .line 530
    .line 531
    iget-object v1, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Ljava/lang/Object;

    .line 532
    .line 533
    check-cast v1, Lokio/FileSystem;

    .line 534
    .line 535
    new-instance v2, Lkotlin/collections/ArrayDeque;

    .line 536
    .line 537
    invoke-direct {v2}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 538
    .line 539
    .line 540
    move-object v3, v9

    .line 541
    check-cast v3, Lokio/Path;

    .line 542
    .line 543
    iput v5, v6, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    .line 544
    .line 545
    const/4 v4, 0x0

    .line 546
    const/4 v5, 0x1

    .line 547
    invoke-static/range {v0 .. v6}, Lokio/internal/ZipFilesKt;->collectRecursively(Lkotlin/sequences/SequenceBuilderIterator;Lokio/FileSystem;Lkotlin/collections/ArrayDeque;Lokio/Path;ZZLkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    if-ne v0, v8, :cond_22

    .line 552
    .line 553
    move-object v7, v8

    .line 554
    :cond_22
    :goto_17
    return-object v7

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
