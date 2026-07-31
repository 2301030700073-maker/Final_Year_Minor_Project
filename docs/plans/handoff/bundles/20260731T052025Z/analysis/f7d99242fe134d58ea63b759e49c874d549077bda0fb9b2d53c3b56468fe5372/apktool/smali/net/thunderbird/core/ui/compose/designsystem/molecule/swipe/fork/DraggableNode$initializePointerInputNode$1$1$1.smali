.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $onDrag:Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

.field public final synthetic $onDragCancel:Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

.field public final synthetic $onDragEnd:Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

.field public final synthetic $onDragStart:Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

.field public final synthetic $overSlop:Lkotlin/jvm/internal/Ref$LongRef;

.field public final synthetic $shouldAwaitTouchSlop:Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

.field public F$0:F

.field public J$0:J

.field public J$1:J

.field public J$2:J

.field public synthetic L$0:Ljava/lang/Object;

.field public L$1:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public L$10:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public L$11:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

.field public L$5:Ljava/lang/Object;

.field public L$6:Ljava/lang/Object;

.field public L$7:Lkotlin/jvm/internal/Ref$LongRef;

.field public L$8:Ljava/lang/Object;

.field public L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

.field public Z$0:Z

.field public label:I

.field public final synthetic this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;Lkotlin/jvm/internal/Ref$LongRef;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$shouldAwaitTouchSlop:Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$overSlop:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDragStart:Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 8
    .line 9
    iput-object p5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDrag:Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 10
    .line 11
    iput-object p6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDragCancel:Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    iput-object p7, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDragEnd:Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;

    .line 2
    .line 3
    iget-object v6, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDragCancel:Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    iget-object v7, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDragEnd:Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$shouldAwaitTouchSlop:Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$overSlop:Lkotlin/jvm/internal/Ref$LongRef;

    .line 10
    .line 11
    iget-object v3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 12
    .line 13
    iget-object v4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDragStart:Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 14
    .line 15
    iget-object v5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDrag:Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    move-object v8, p2

    .line 18
    invoke-direct/range {v0 .. v8}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;-><init>(Lnet/thunderbird/core/ui/compose/theme2/ThemeSizesKt$$ExternalSyntheticLambda0;Lkotlin/jvm/internal/Ref$LongRef;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;Lkotlin/coroutines/Continuation;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 22
    .line 23
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 6
    .line 7
    iget v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->label:I

    .line 8
    .line 9
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 10
    .line 11
    iget-object v8, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->this$0:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 12
    .line 13
    iget-object v11, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$overSlop:Lkotlin/jvm/internal/Ref$LongRef;

    .line 14
    .line 15
    const/4 v14, 0x0

    .line 16
    sget-object v15, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    packed-switch v2, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v14

    .line 27
    :pswitch_0
    iget-wide v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$2:J

    .line 28
    .line 29
    iget-wide v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 30
    .line 31
    iget-wide v5, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 32
    .line 33
    iget-boolean v7, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 34
    .line 35
    iget-object v8, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 36
    .line 37
    iget-object v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v9, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 40
    .line 41
    iget-object v10, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 44
    .line 45
    iget-object v11, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 46
    .line 47
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    move-object/from16 v13, p1

    .line 51
    .line 52
    move v12, v7

    .line 53
    move-wide v6, v5

    .line 54
    move-wide v4, v3

    .line 55
    move-object v3, v14

    .line 56
    move-object v14, v15

    .line 57
    goto/16 :goto_29

    .line 58
    .line 59
    :pswitch_1
    iget v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->F$0:F

    .line 60
    .line 61
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    iget-wide v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$2:J

    .line 67
    .line 68
    const-wide v18, 0x7fffffff7fffffffL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    iget-wide v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 74
    .line 75
    iget-wide v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 76
    .line 77
    iget-boolean v14, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 78
    .line 79
    iget-object v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$11:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 80
    .line 81
    iget-object v13, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$10:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 82
    .line 83
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 84
    .line 85
    iget-object v13, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 86
    .line 87
    move/from16 v21, v2

    .line 88
    .line 89
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 92
    .line 93
    move-object/from16 v22, v2

    .line 94
    .line 95
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 96
    .line 97
    move-object/from16 v23, v2

    .line 98
    .line 99
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v2, Landroidx/compose/foundation/gestures/Orientation;

    .line 102
    .line 103
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 106
    .line 107
    move-object/from16 v24, v2

    .line 108
    .line 109
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 110
    .line 111
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 112
    .line 113
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 114
    .line 115
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    move-wide/from16 v27, v9

    .line 119
    .line 120
    move-wide v9, v4

    .line 121
    move-object v5, v15

    .line 122
    move/from16 v15, v21

    .line 123
    .line 124
    move-object/from16 v21, v11

    .line 125
    .line 126
    move-object v11, v13

    .line 127
    move-object/from16 v32, v8

    .line 128
    .line 129
    move-object v8, v1

    .line 130
    move-object/from16 v1, v24

    .line 131
    .line 132
    move-wide/from16 v33, v6

    .line 133
    .line 134
    move-object v7, v2

    .line 135
    move-object v2, v3

    .line 136
    move v3, v14

    .line 137
    move-object/from16 v6, v23

    .line 138
    .line 139
    move-wide/from16 v13, v33

    .line 140
    .line 141
    move-object/from16 v23, v32

    .line 142
    .line 143
    goto/16 :goto_22

    .line 144
    .line 145
    :pswitch_2
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    const-wide v18, 0x7fffffff7fffffffL

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    iget v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->F$0:F

    .line 156
    .line 157
    iget-wide v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$2:J

    .line 158
    .line 159
    iget-wide v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 160
    .line 161
    iget-wide v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 162
    .line 163
    iget-boolean v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 164
    .line 165
    iget-object v13, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 166
    .line 167
    iget-object v14, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    .line 170
    .line 171
    move/from16 v21, v2

    .line 172
    .line 173
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 174
    .line 175
    move-object/from16 v22, v2

    .line 176
    .line 177
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v2, Landroidx/compose/foundation/gestures/Orientation;

    .line 180
    .line 181
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v2, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 184
    .line 185
    move-object/from16 v23, v2

    .line 186
    .line 187
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 188
    .line 189
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 190
    .line 191
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 192
    .line 193
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    move-wide/from16 v32, v9

    .line 197
    .line 198
    move-wide v9, v4

    .line 199
    move-wide/from16 v4, v32

    .line 200
    .line 201
    move-object/from16 v24, v3

    .line 202
    .line 203
    move-object v3, v1

    .line 204
    move-object/from16 v1, v23

    .line 205
    .line 206
    move-object/from16 v23, v8

    .line 207
    .line 208
    move-wide/from16 v32, v6

    .line 209
    .line 210
    move-object v7, v2

    .line 211
    move-object v2, v14

    .line 212
    move-object/from16 v6, v22

    .line 213
    .line 214
    move-object/from16 v22, v15

    .line 215
    .line 216
    move/from16 v15, v21

    .line 217
    .line 218
    move-object/from16 v21, v11

    .line 219
    .line 220
    move-object v11, v13

    .line 221
    move-wide/from16 v13, v32

    .line 222
    .line 223
    goto/16 :goto_1b

    .line 224
    .line 225
    :pswitch_3
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    const-wide v18, 0x7fffffff7fffffffL

    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    iget-boolean v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 236
    .line 237
    iget-object v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 238
    .line 239
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 240
    .line 241
    iget-object v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 242
    .line 243
    iget-object v5, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 244
    .line 245
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    move-object v6, v3

    .line 249
    move-object/from16 v23, v8

    .line 250
    .line 251
    move-object/from16 v21, v11

    .line 252
    .line 253
    move-object v8, v15

    .line 254
    move-object/from16 v3, p1

    .line 255
    .line 256
    goto/16 :goto_14

    .line 257
    .line 258
    :pswitch_4
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    const-wide v18, 0x7fffffff7fffffffL

    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    iget v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->F$0:F

    .line 269
    .line 270
    iget-wide v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 271
    .line 272
    iget-wide v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 273
    .line 274
    iget-boolean v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 275
    .line 276
    iget-object v10, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$10:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 277
    .line 278
    iget-object v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 279
    .line 280
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 281
    .line 282
    iget-object v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v12, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 285
    .line 286
    iget-object v13, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 287
    .line 288
    iget-object v14, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    .line 291
    .line 292
    move/from16 v21, v2

    .line 293
    .line 294
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 295
    .line 296
    check-cast v2, Landroidx/compose/foundation/gestures/Orientation;

    .line 297
    .line 298
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 299
    .line 300
    move-object/from16 v22, v2

    .line 301
    .line 302
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 303
    .line 304
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    move-object/from16 v23, v13

    .line 308
    .line 309
    move-object v13, v12

    .line 310
    move-object/from16 v12, v23

    .line 311
    .line 312
    move-wide/from16 v24, v4

    .line 313
    .line 314
    move-object/from16 v23, v8

    .line 315
    .line 316
    move v5, v9

    .line 317
    move-object v8, v15

    .line 318
    move/from16 v9, v21

    .line 319
    .line 320
    move-object v4, v2

    .line 321
    move-object/from16 v21, v11

    .line 322
    .line 323
    move-object v11, v14

    .line 324
    move-object v2, v1

    .line 325
    move-wide v14, v6

    .line 326
    move-object/from16 v1, v22

    .line 327
    .line 328
    move-object v6, v3

    .line 329
    goto/16 :goto_e

    .line 330
    .line 331
    :pswitch_5
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    const-wide v18, 0x7fffffff7fffffffL

    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    iget v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->F$0:F

    .line 342
    .line 343
    iget-wide v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 344
    .line 345
    iget-wide v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 346
    .line 347
    iget-boolean v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 348
    .line 349
    iget-object v10, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 350
    .line 351
    check-cast v10, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 352
    .line 353
    iget-object v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 354
    .line 355
    iget-object v13, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v13, Lkotlin/jvm/internal/Ref$LongRef;

    .line 358
    .line 359
    iget-object v14, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast v14, Landroidx/compose/foundation/gestures/Orientation;

    .line 362
    .line 363
    iget-object v14, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 364
    .line 365
    move/from16 v21, v2

    .line 366
    .line 367
    iget-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 368
    .line 369
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    move-object/from16 v22, v13

    .line 373
    .line 374
    move-object v13, v10

    .line 375
    move/from16 v10, v21

    .line 376
    .line 377
    move-object/from16 v21, v11

    .line 378
    .line 379
    move-object/from16 v11, v22

    .line 380
    .line 381
    move-object/from16 v22, v15

    .line 382
    .line 383
    move-object/from16 v32, v2

    .line 384
    .line 385
    move-object/from16 v2, p1

    .line 386
    .line 387
    move-wide/from16 v33, v4

    .line 388
    .line 389
    move-object v4, v1

    .line 390
    move-object/from16 v5, v32

    .line 391
    .line 392
    move-object v1, v14

    .line 393
    move-wide/from16 v14, v33

    .line 394
    .line 395
    goto/16 :goto_6

    .line 396
    .line 397
    :pswitch_6
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    const-wide v18, 0x7fffffff7fffffffL

    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    iget-boolean v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 408
    .line 409
    iget-object v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$1:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 410
    .line 411
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    move v5, v2

    .line 415
    move-object/from16 v2, p1

    .line 416
    .line 417
    goto :goto_2

    .line 418
    :pswitch_7
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    const-wide v18, 0x7fffffff7fffffffL

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    move-object/from16 v4, p1

    .line 432
    .line 433
    const/4 v2, 0x1

    .line 434
    goto :goto_1

    .line 435
    :pswitch_8
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    const-wide v18, 0x7fffffff7fffffffL

    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 449
    .line 450
    const/4 v2, 0x1

    .line 451
    iput v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->label:I

    .line 452
    .line 453
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 454
    .line 455
    const/4 v5, 0x0

    .line 456
    invoke-static {v1, v5, v4, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v4

    .line 460
    if-ne v4, v15, :cond_0

    .line 461
    .line 462
    :goto_0
    move-object v14, v15

    .line 463
    goto/16 :goto_28

    .line 464
    .line 465
    :cond_0
    :goto_1
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 466
    .line 467
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 468
    .line 469
    iput-object v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$1:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 470
    .line 471
    iput-boolean v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 472
    .line 473
    const/4 v2, 0x2

    .line 474
    iput v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->label:I

    .line 475
    .line 476
    invoke-static {v1, v0, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    if-ne v2, v15, :cond_1

    .line 481
    .line 482
    goto :goto_0

    .line 483
    :cond_1
    const/4 v5, 0x1

    .line 484
    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 485
    .line 486
    const-wide/16 v6, 0x0

    .line 487
    .line 488
    iput-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 489
    .line 490
    if-eqz v5, :cond_12

    .line 491
    .line 492
    :goto_3
    iget-wide v6, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 493
    .line 494
    iget-object v4, v8, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 495
    .line 496
    iget-object v9, v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 497
    .line 498
    iget-object v9, v9, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 499
    .line 500
    invoke-static {v9, v6, v7}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 501
    .line 502
    .line 503
    move-result v9

    .line 504
    if-eqz v9, :cond_2

    .line 505
    .line 506
    move-object v6, v3

    .line 507
    move-object/from16 v23, v8

    .line 508
    .line 509
    move-object/from16 v21, v11

    .line 510
    .line 511
    move-object v8, v15

    .line 512
    :goto_4
    const/4 v3, 0x0

    .line 513
    goto/16 :goto_f

    .line 514
    .line 515
    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 516
    .line 517
    .line 518
    move-result-object v9

    .line 519
    invoke-interface {v9}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 520
    .line 521
    .line 522
    move-result v9

    .line 523
    new-instance v10, Lkotlin/jvm/internal/Ref$LongRef;

    .line 524
    .line 525
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 526
    .line 527
    .line 528
    iput-wide v6, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 529
    .line 530
    new-instance v12, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 531
    .line 532
    const-wide/16 v13, 0x0

    .line 533
    .line 534
    invoke-direct {v12, v13, v14, v4}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;-><init>(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 535
    .line 536
    .line 537
    move-object v4, v2

    .line 538
    move-object/from16 v21, v11

    .line 539
    .line 540
    const-wide/16 v13, 0x0

    .line 541
    .line 542
    move-object v2, v1

    .line 543
    :goto_5
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 544
    .line 545
    move-object/from16 v22, v2

    .line 546
    .line 547
    const/4 v2, 0x0

    .line 548
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$1:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 549
    .line 550
    iput-object v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 551
    .line 552
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 553
    .line 554
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 555
    .line 556
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 557
    .line 558
    iput-object v11, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 559
    .line 560
    iput-object v10, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 561
    .line 562
    iput-object v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 563
    .line 564
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 565
    .line 566
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$10:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 567
    .line 568
    iput-boolean v5, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 569
    .line 570
    iput-wide v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 571
    .line 572
    iput-wide v13, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 573
    .line 574
    iput v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->F$0:F

    .line 575
    .line 576
    const/4 v2, 0x3

    .line 577
    iput v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->label:I

    .line 578
    .line 579
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    if-ne v2, v15, :cond_3

    .line 584
    .line 585
    goto :goto_0

    .line 586
    :cond_3
    move/from16 v32, v5

    .line 587
    .line 588
    move-object v5, v4

    .line 589
    move-object/from16 v4, v22

    .line 590
    .line 591
    move-object/from16 v22, v15

    .line 592
    .line 593
    move-wide v14, v13

    .line 594
    move-object v13, v12

    .line 595
    move-object v12, v10

    .line 596
    move v10, v9

    .line 597
    move/from16 v9, v32

    .line 598
    .line 599
    :goto_6
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 600
    .line 601
    move-object/from16 v23, v8

    .line 602
    .line 603
    iget-object v8, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 604
    .line 605
    move-object/from16 v24, v3

    .line 606
    .line 607
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    move-wide/from16 v25, v14

    .line 612
    .line 613
    const/4 v14, 0x0

    .line 614
    :goto_7
    if-ge v14, v3, :cond_5

    .line 615
    .line 616
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v15

    .line 620
    move/from16 p1, v3

    .line 621
    .line 622
    move-object v3, v15

    .line 623
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 624
    .line 625
    move/from16 v27, v14

    .line 626
    .line 627
    move-object/from16 v28, v15

    .line 628
    .line 629
    iget-wide v14, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 630
    .line 631
    move-wide/from16 v29, v6

    .line 632
    .line 633
    iget-wide v6, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 634
    .line 635
    invoke-static {v14, v15, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 636
    .line 637
    .line 638
    move-result v3

    .line 639
    if-eqz v3, :cond_4

    .line 640
    .line 641
    goto :goto_8

    .line 642
    :cond_4
    add-int/lit8 v14, v27, 0x1

    .line 643
    .line 644
    move/from16 v3, p1

    .line 645
    .line 646
    move-wide/from16 v6, v29

    .line 647
    .line 648
    goto :goto_7

    .line 649
    :cond_5
    move-wide/from16 v29, v6

    .line 650
    .line 651
    const/16 v28, 0x0

    .line 652
    .line 653
    :goto_8
    move-object/from16 v3, v28

    .line 654
    .line 655
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 656
    .line 657
    if-nez v3, :cond_6

    .line 658
    .line 659
    :goto_9
    move-object v1, v4

    .line 660
    move-object v2, v5

    .line 661
    move v5, v9

    .line 662
    move-object/from16 v8, v22

    .line 663
    .line 664
    move-object/from16 v6, v24

    .line 665
    .line 666
    goto/16 :goto_4

    .line 667
    .line 668
    :cond_6
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 669
    .line 670
    .line 671
    move-result v6

    .line 672
    if-eqz v6, :cond_7

    .line 673
    .line 674
    goto :goto_9

    .line 675
    :cond_7
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 676
    .line 677
    .line 678
    move-result v6

    .line 679
    if-eqz v6, :cond_b

    .line 680
    .line 681
    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 682
    .line 683
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 684
    .line 685
    .line 686
    move-result v3

    .line 687
    const/4 v6, 0x0

    .line 688
    :goto_a
    if-ge v6, v3, :cond_9

    .line 689
    .line 690
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v7

    .line 694
    move-object v8, v7

    .line 695
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 696
    .line 697
    iget-boolean v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 698
    .line 699
    if-eqz v8, :cond_8

    .line 700
    .line 701
    goto :goto_b

    .line 702
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 703
    .line 704
    goto :goto_a

    .line 705
    :cond_9
    const/4 v7, 0x0

    .line 706
    :goto_b
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 707
    .line 708
    if-nez v7, :cond_a

    .line 709
    .line 710
    goto :goto_9

    .line 711
    :cond_a
    iget-wide v2, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 712
    .line 713
    iput-wide v2, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 714
    .line 715
    goto :goto_c

    .line 716
    :cond_b
    const/4 v2, 0x1

    .line 717
    invoke-static {v3, v2}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 718
    .line 719
    .line 720
    move-result-wide v6

    .line 721
    invoke-static {v13, v6, v7, v10}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->getPostSlopOffset-qto3Fdw$default(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;JF)J

    .line 722
    .line 723
    .line 724
    move-result-wide v6

    .line 725
    and-long v14, v6, v18

    .line 726
    .line 727
    cmp-long v2, v14, v16

    .line 728
    .line 729
    if-eqz v2, :cond_d

    .line 730
    .line 731
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 732
    .line 733
    .line 734
    iput-wide v6, v11, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 735
    .line 736
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 737
    .line 738
    .line 739
    move-result v2

    .line 740
    if-eqz v2, :cond_c

    .line 741
    .line 742
    move-object v1, v4

    .line 743
    move-object v2, v5

    .line 744
    move v5, v9

    .line 745
    move-object/from16 v8, v22

    .line 746
    .line 747
    move-object/from16 v6, v24

    .line 748
    .line 749
    goto/16 :goto_f

    .line 750
    .line 751
    :cond_c
    const-wide/16 v6, 0x0

    .line 752
    .line 753
    iput-wide v6, v13, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 754
    .line 755
    :goto_c
    move-object v2, v4

    .line 756
    move-object v4, v5

    .line 757
    move v5, v9

    .line 758
    move v9, v10

    .line 759
    move-object v10, v12

    .line 760
    move-object v12, v13

    .line 761
    move-object/from16 v15, v22

    .line 762
    .line 763
    move-object/from16 v8, v23

    .line 764
    .line 765
    move-object/from16 v3, v24

    .line 766
    .line 767
    move-wide/from16 v13, v25

    .line 768
    .line 769
    move-wide/from16 v6, v29

    .line 770
    .line 771
    goto/16 :goto_5

    .line 772
    .line 773
    :cond_d
    iput-object v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 774
    .line 775
    const/4 v2, 0x0

    .line 776
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$1:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 777
    .line 778
    iput-object v5, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 779
    .line 780
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 781
    .line 782
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 783
    .line 784
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 785
    .line 786
    iput-object v11, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 787
    .line 788
    iput-object v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 789
    .line 790
    iput-object v13, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 791
    .line 792
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 793
    .line 794
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$10:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 795
    .line 796
    iput-boolean v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 797
    .line 798
    move-wide/from16 v14, v29

    .line 799
    .line 800
    iput-wide v14, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 801
    .line 802
    move-object/from16 p1, v3

    .line 803
    .line 804
    move-wide/from16 v2, v25

    .line 805
    .line 806
    iput-wide v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 807
    .line 808
    iput v10, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->F$0:F

    .line 809
    .line 810
    iput-wide v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$2:J

    .line 811
    .line 812
    const/4 v6, 0x4

    .line 813
    iput v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->label:I

    .line 814
    .line 815
    move-object/from16 v6, v24

    .line 816
    .line 817
    invoke-virtual {v1, v6, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v7

    .line 821
    move-object/from16 v8, v22

    .line 822
    .line 823
    if-ne v7, v8, :cond_e

    .line 824
    .line 825
    :goto_d
    move-object v14, v8

    .line 826
    goto/16 :goto_28

    .line 827
    .line 828
    :cond_e
    move-wide/from16 v24, v2

    .line 829
    .line 830
    move-object v2, v4

    .line 831
    move-object v4, v5

    .line 832
    move v5, v9

    .line 833
    move v9, v10

    .line 834
    move-object/from16 v10, p1

    .line 835
    .line 836
    :goto_e
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 837
    .line 838
    .line 839
    move-result v3

    .line 840
    if-eqz v3, :cond_11

    .line 841
    .line 842
    move-object v1, v2

    .line 843
    move-object v2, v4

    .line 844
    goto/16 :goto_4

    .line 845
    .line 846
    :goto_f
    if-eqz v3, :cond_10

    .line 847
    .line 848
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 849
    .line 850
    .line 851
    move-result v4

    .line 852
    if-eqz v4, :cond_f

    .line 853
    .line 854
    goto :goto_10

    .line 855
    :cond_f
    move-object v3, v6

    .line 856
    move-object v15, v8

    .line 857
    move-object/from16 v11, v21

    .line 858
    .line 859
    move-object/from16 v8, v23

    .line 860
    .line 861
    goto/16 :goto_3

    .line 862
    .line 863
    :cond_10
    :goto_10
    move-object v4, v3

    .line 864
    goto :goto_11

    .line 865
    :cond_11
    move-object v3, v6

    .line 866
    move-object v10, v12

    .line 867
    move-object v12, v13

    .line 868
    move-wide v6, v14

    .line 869
    move-wide/from16 v13, v24

    .line 870
    .line 871
    move-object v15, v8

    .line 872
    move-object/from16 v8, v23

    .line 873
    .line 874
    goto/16 :goto_5

    .line 875
    .line 876
    :cond_12
    move-object v6, v3

    .line 877
    move-object/from16 v23, v8

    .line 878
    .line 879
    move-object/from16 v21, v11

    .line 880
    .line 881
    move-object v8, v15

    .line 882
    :goto_11
    if-nez v4, :cond_29

    .line 883
    .line 884
    iget-object v3, v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 885
    .line 886
    iget-object v3, v3, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 887
    .line 888
    iget-object v3, v3, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 889
    .line 890
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 891
    .line 892
    .line 893
    move-result v7

    .line 894
    const/4 v9, 0x0

    .line 895
    :goto_12
    if-ge v9, v7, :cond_29

    .line 896
    .line 897
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 898
    .line 899
    .line 900
    move-result-object v10

    .line 901
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 902
    .line 903
    iget-boolean v10, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 904
    .line 905
    if-eqz v10, :cond_28

    .line 906
    .line 907
    move/from16 v32, v5

    .line 908
    .line 909
    move-object v5, v2

    .line 910
    move/from16 v2, v32

    .line 911
    .line 912
    :goto_13
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 913
    .line 914
    const/4 v3, 0x0

    .line 915
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$1:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 916
    .line 917
    iput-object v5, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 918
    .line 919
    iput-object v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 920
    .line 921
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 922
    .line 923
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 924
    .line 925
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 926
    .line 927
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 928
    .line 929
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 930
    .line 931
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 932
    .line 933
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$10:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 934
    .line 935
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$11:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 936
    .line 937
    iput-boolean v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 938
    .line 939
    const/4 v3, 0x5

    .line 940
    iput v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->label:I

    .line 941
    .line 942
    invoke-virtual {v1, v6, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    move-result-object v3

    .line 946
    if-ne v3, v8, :cond_13

    .line 947
    .line 948
    goto :goto_d

    .line 949
    :cond_13
    :goto_14
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 950
    .line 951
    iget-object v3, v3, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 952
    .line 953
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 954
    .line 955
    .line 956
    move-result v7

    .line 957
    const/4 v9, 0x0

    .line 958
    :goto_15
    if-ge v9, v7, :cond_16

    .line 959
    .line 960
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object v10

    .line 964
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 965
    .line 966
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 967
    .line 968
    .line 969
    move-result v10

    .line 970
    if-eqz v10, :cond_15

    .line 971
    .line 972
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 973
    .line 974
    .line 975
    move-result v7

    .line 976
    const/4 v9, 0x0

    .line 977
    :goto_16
    if-ge v9, v7, :cond_16

    .line 978
    .line 979
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v10

    .line 983
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 984
    .line 985
    iget-boolean v10, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 986
    .line 987
    if-eqz v10, :cond_14

    .line 988
    .line 989
    goto :goto_13

    .line 990
    :cond_14
    add-int/lit8 v9, v9, 0x1

    .line 991
    .line 992
    goto :goto_16

    .line 993
    :cond_15
    add-int/lit8 v9, v9, 0x1

    .line 994
    .line 995
    goto :goto_15

    .line 996
    :cond_16
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 997
    .line 998
    .line 999
    move-result v7

    .line 1000
    const/4 v9, 0x0

    .line 1001
    :goto_17
    if-ge v9, v7, :cond_27

    .line 1002
    .line 1003
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v10

    .line 1007
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1008
    .line 1009
    iget-boolean v10, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 1010
    .line 1011
    if-eqz v10, :cond_26

    .line 1012
    .line 1013
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v3

    .line 1017
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1018
    .line 1019
    if-eqz v3, :cond_17

    .line 1020
    .line 1021
    iget-wide v3, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 1022
    .line 1023
    goto :goto_18

    .line 1024
    :cond_17
    const-wide/16 v3, 0x0

    .line 1025
    .line 1026
    :goto_18
    iget-wide v9, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 1027
    .line 1028
    invoke-static {v3, v4, v9, v10}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 1029
    .line 1030
    .line 1031
    move-result-wide v3

    .line 1032
    iget-wide v9, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 1033
    .line 1034
    move-object/from16 v11, v23

    .line 1035
    .line 1036
    iget-object v7, v11, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 1037
    .line 1038
    iget-object v12, v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 1039
    .line 1040
    iget-object v12, v12, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 1041
    .line 1042
    invoke-static {v12, v9, v10}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 1043
    .line 1044
    .line 1045
    move-result v12

    .line 1046
    if-eqz v12, :cond_18

    .line 1047
    .line 1048
    move v12, v2

    .line 1049
    move-object v7, v5

    .line 1050
    move-object v2, v6

    .line 1051
    move-object v5, v8

    .line 1052
    move-object/from16 v23, v11

    .line 1053
    .line 1054
    :goto_19
    const/4 v4, 0x0

    .line 1055
    goto/16 :goto_23

    .line 1056
    .line 1057
    :cond_18
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v12

    .line 1061
    invoke-interface {v12}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 1062
    .line 1063
    .line 1064
    move-result v12

    .line 1065
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    .line 1066
    .line 1067
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 1068
    .line 1069
    .line 1070
    iput-wide v9, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1071
    .line 1072
    new-instance v14, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 1073
    .line 1074
    invoke-direct {v14, v3, v4, v7}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;-><init>(JLandroidx/compose/foundation/gestures/Orientation;)V

    .line 1075
    .line 1076
    .line 1077
    move-object v7, v5

    .line 1078
    move-object/from16 v24, v6

    .line 1079
    .line 1080
    move-object/from16 v23, v11

    .line 1081
    .line 1082
    move-object v15, v13

    .line 1083
    move-object v11, v14

    .line 1084
    move-object/from16 v6, v21

    .line 1085
    .line 1086
    move v14, v12

    .line 1087
    move-wide v12, v9

    .line 1088
    move-wide v9, v3

    .line 1089
    move v3, v2

    .line 1090
    move-wide v4, v9

    .line 1091
    move-object v2, v1

    .line 1092
    :goto_1a
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 1093
    .line 1094
    move-object/from16 v22, v2

    .line 1095
    .line 1096
    const/4 v2, 0x0

    .line 1097
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$1:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1098
    .line 1099
    iput-object v7, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1100
    .line 1101
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1102
    .line 1103
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 1104
    .line 1105
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 1106
    .line 1107
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 1108
    .line 1109
    iput-object v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 1110
    .line 1111
    iput-object v15, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 1112
    .line 1113
    iput-object v11, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 1114
    .line 1115
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$10:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1116
    .line 1117
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$11:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1118
    .line 1119
    iput-boolean v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 1120
    .line 1121
    iput-wide v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 1122
    .line 1123
    iput-wide v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 1124
    .line 1125
    iput-wide v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$2:J

    .line 1126
    .line 1127
    iput v14, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->F$0:F

    .line 1128
    .line 1129
    const/4 v2, 0x6

    .line 1130
    iput v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->label:I

    .line 1131
    .line 1132
    invoke-static {v1, v0}, Landroidx/compose/ui/Modifier$-CC;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v2

    .line 1136
    if-ne v2, v8, :cond_19

    .line 1137
    .line 1138
    goto/16 :goto_d

    .line 1139
    .line 1140
    :cond_19
    move-object/from16 p1, v2

    .line 1141
    .line 1142
    move-object v2, v15

    .line 1143
    move v15, v14

    .line 1144
    move-wide v13, v12

    .line 1145
    move v12, v3

    .line 1146
    move-object/from16 v3, v22

    .line 1147
    .line 1148
    move-object/from16 v22, v8

    .line 1149
    .line 1150
    :goto_1b
    move-object/from16 v8, p1

    .line 1151
    .line 1152
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 1153
    .line 1154
    move-wide/from16 v25, v9

    .line 1155
    .line 1156
    iget-object v9, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 1157
    .line 1158
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 1159
    .line 1160
    .line 1161
    move-result v10

    .line 1162
    move-wide/from16 v27, v13

    .line 1163
    .line 1164
    const/4 v13, 0x0

    .line 1165
    :goto_1c
    if-ge v13, v10, :cond_1b

    .line 1166
    .line 1167
    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v14

    .line 1171
    move-object/from16 v29, v9

    .line 1172
    .line 1173
    move-object v9, v14

    .line 1174
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1175
    .line 1176
    move/from16 p1, v10

    .line 1177
    .line 1178
    iget-wide v9, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 1179
    .line 1180
    move/from16 v30, v13

    .line 1181
    .line 1182
    move-object/from16 v31, v14

    .line 1183
    .line 1184
    iget-wide v13, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1185
    .line 1186
    invoke-static {v9, v10, v13, v14}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 1187
    .line 1188
    .line 1189
    move-result v9

    .line 1190
    if-eqz v9, :cond_1a

    .line 1191
    .line 1192
    goto :goto_1d

    .line 1193
    :cond_1a
    add-int/lit8 v13, v30, 0x1

    .line 1194
    .line 1195
    move/from16 v10, p1

    .line 1196
    .line 1197
    move-object/from16 v9, v29

    .line 1198
    .line 1199
    goto :goto_1c

    .line 1200
    :cond_1b
    const/16 v31, 0x0

    .line 1201
    .line 1202
    :goto_1d
    move-object/from16 v9, v31

    .line 1203
    .line 1204
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1205
    .line 1206
    if-nez v9, :cond_1c

    .line 1207
    .line 1208
    :goto_1e
    move-object v1, v3

    .line 1209
    move-object/from16 v5, v22

    .line 1210
    .line 1211
    move-object/from16 v2, v24

    .line 1212
    .line 1213
    goto/16 :goto_19

    .line 1214
    .line 1215
    :cond_1c
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 1216
    .line 1217
    .line 1218
    move-result v10

    .line 1219
    if-eqz v10, :cond_1d

    .line 1220
    .line 1221
    goto :goto_1e

    .line 1222
    :cond_1d
    invoke-static {v9}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 1223
    .line 1224
    .line 1225
    move-result v10

    .line 1226
    if-eqz v10, :cond_21

    .line 1227
    .line 1228
    iget-object v8, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 1229
    .line 1230
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    .line 1231
    .line 1232
    .line 1233
    move-result v9

    .line 1234
    const/4 v10, 0x0

    .line 1235
    :goto_1f
    if-ge v10, v9, :cond_1f

    .line 1236
    .line 1237
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v13

    .line 1241
    move-object v14, v13

    .line 1242
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1243
    .line 1244
    iget-boolean v14, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 1245
    .line 1246
    if-eqz v14, :cond_1e

    .line 1247
    .line 1248
    goto :goto_20

    .line 1249
    :cond_1e
    add-int/lit8 v10, v10, 0x1

    .line 1250
    .line 1251
    goto :goto_1f

    .line 1252
    :cond_1f
    const/4 v13, 0x0

    .line 1253
    :goto_20
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1254
    .line 1255
    if-nez v13, :cond_20

    .line 1256
    .line 1257
    goto :goto_1e

    .line 1258
    :cond_20
    iget-wide v8, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 1259
    .line 1260
    iput-wide v8, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1261
    .line 1262
    goto :goto_21

    .line 1263
    :cond_21
    const/4 v8, 0x1

    .line 1264
    invoke-static {v9, v8}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 1265
    .line 1266
    .line 1267
    move-result-wide v13

    .line 1268
    invoke-static {v11, v13, v14, v15}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->getPostSlopOffset-qto3Fdw$default(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;JF)J

    .line 1269
    .line 1270
    .line 1271
    move-result-wide v13

    .line 1272
    and-long v13, v13, v18

    .line 1273
    .line 1274
    cmp-long v8, v13, v16

    .line 1275
    .line 1276
    if-eqz v8, :cond_23

    .line 1277
    .line 1278
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 1279
    .line 1280
    .line 1281
    const/4 v8, 0x0

    .line 1282
    invoke-static {v9, v8}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 1283
    .line 1284
    .line 1285
    move-result-wide v13

    .line 1286
    iput-wide v13, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1287
    .line 1288
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 1289
    .line 1290
    .line 1291
    move-result v8

    .line 1292
    if-eqz v8, :cond_22

    .line 1293
    .line 1294
    move-object v1, v3

    .line 1295
    move-object v4, v9

    .line 1296
    move-object/from16 v5, v22

    .line 1297
    .line 1298
    move-object/from16 v2, v24

    .line 1299
    .line 1300
    goto/16 :goto_23

    .line 1301
    .line 1302
    :cond_22
    const-wide/16 v13, 0x0

    .line 1303
    .line 1304
    iput-wide v13, v11, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;->totalPositionChange:J

    .line 1305
    .line 1306
    :goto_21
    move v14, v15

    .line 1307
    move-object/from16 v8, v22

    .line 1308
    .line 1309
    move-wide/from16 v9, v25

    .line 1310
    .line 1311
    move-object v15, v2

    .line 1312
    move-object v2, v3

    .line 1313
    move v3, v12

    .line 1314
    move-wide/from16 v12, v27

    .line 1315
    .line 1316
    goto/16 :goto_1a

    .line 1317
    .line 1318
    :cond_23
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 1319
    .line 1320
    const/4 v8, 0x0

    .line 1321
    iput-object v8, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$1:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1322
    .line 1323
    iput-object v7, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1324
    .line 1325
    iput-object v8, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1326
    .line 1327
    iput-object v8, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 1328
    .line 1329
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 1330
    .line 1331
    iput-object v8, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 1332
    .line 1333
    iput-object v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 1334
    .line 1335
    iput-object v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 1336
    .line 1337
    iput-object v11, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 1338
    .line 1339
    iput-object v8, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$10:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1340
    .line 1341
    iput-object v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$11:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1342
    .line 1343
    iput-boolean v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 1344
    .line 1345
    iput-wide v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 1346
    .line 1347
    move-wide/from16 v13, v27

    .line 1348
    .line 1349
    iput-wide v13, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 1350
    .line 1351
    move-object v10, v2

    .line 1352
    move-object v8, v3

    .line 1353
    move-wide/from16 v2, v25

    .line 1354
    .line 1355
    iput-wide v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$2:J

    .line 1356
    .line 1357
    iput v15, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->F$0:F

    .line 1358
    .line 1359
    const/4 v2, 0x7

    .line 1360
    iput v2, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->label:I

    .line 1361
    .line 1362
    move-object/from16 v2, v24

    .line 1363
    .line 1364
    invoke-virtual {v1, v2, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v3

    .line 1368
    move-wide/from16 v27, v4

    .line 1369
    .line 1370
    move-object/from16 v5, v22

    .line 1371
    .line 1372
    if-ne v3, v5, :cond_24

    .line 1373
    .line 1374
    move-object v14, v5

    .line 1375
    goto/16 :goto_28

    .line 1376
    .line 1377
    :cond_24
    move-object/from16 v22, v10

    .line 1378
    .line 1379
    move v3, v12

    .line 1380
    move-object v12, v9

    .line 1381
    move-wide/from16 v9, v25

    .line 1382
    .line 1383
    :goto_22
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 1384
    .line 1385
    .line 1386
    move-result v4

    .line 1387
    if-eqz v4, :cond_25

    .line 1388
    .line 1389
    move v12, v3

    .line 1390
    move-object v1, v8

    .line 1391
    goto/16 :goto_19

    .line 1392
    .line 1393
    :goto_23
    move-object v6, v2

    .line 1394
    move-object v8, v5

    .line 1395
    move-object v2, v7

    .line 1396
    move v5, v12

    .line 1397
    goto/16 :goto_11

    .line 1398
    .line 1399
    :cond_25
    move-object/from16 v24, v2

    .line 1400
    .line 1401
    move-object v2, v8

    .line 1402
    move-wide v12, v13

    .line 1403
    move v14, v15

    .line 1404
    move-object/from16 v15, v22

    .line 1405
    .line 1406
    move-object v8, v5

    .line 1407
    move-wide/from16 v4, v27

    .line 1408
    .line 1409
    goto/16 :goto_1a

    .line 1410
    .line 1411
    :cond_26
    move-object/from16 v24, v6

    .line 1412
    .line 1413
    move-object v6, v5

    .line 1414
    move-object v5, v8

    .line 1415
    add-int/lit8 v9, v9, 0x1

    .line 1416
    .line 1417
    move-object v5, v6

    .line 1418
    move-object/from16 v6, v24

    .line 1419
    .line 1420
    goto/16 :goto_17

    .line 1421
    .line 1422
    :cond_27
    move-object/from16 v24, v6

    .line 1423
    .line 1424
    move-object v6, v5

    .line 1425
    move v5, v2

    .line 1426
    move-object v2, v6

    .line 1427
    move-object/from16 v6, v24

    .line 1428
    .line 1429
    goto/16 :goto_11

    .line 1430
    .line 1431
    :cond_28
    move v12, v5

    .line 1432
    move-object/from16 v24, v6

    .line 1433
    .line 1434
    move-object v5, v8

    .line 1435
    add-int/lit8 v9, v9, 0x1

    .line 1436
    .line 1437
    move v5, v12

    .line 1438
    goto/16 :goto_12

    .line 1439
    .line 1440
    :cond_29
    move v12, v5

    .line 1441
    move-object v5, v8

    .line 1442
    if-eqz v4, :cond_3a

    .line 1443
    .line 1444
    move-object/from16 v3, v21

    .line 1445
    .line 1446
    iget-wide v6, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1447
    .line 1448
    new-instance v8, Landroidx/compose/ui/geometry/Offset;

    .line 1449
    .line 1450
    invoke-direct {v8, v6, v7}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1451
    .line 1452
    .line 1453
    iget-object v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDragStart:Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;

    .line 1454
    .line 1455
    invoke-virtual {v6, v2, v4, v8}, Lkotlinx/coroutines/channels/BufferedChannel$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    iget-wide v2, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1459
    .line 1460
    iget-object v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDrag:Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;

    .line 1461
    .line 1462
    iget-object v7, v6, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 1463
    .line 1464
    check-cast v7, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 1465
    .line 1466
    iget-object v8, v6, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 1467
    .line 1468
    check-cast v8, Lkotlin/jvm/internal/Ref$LongRef;

    .line 1469
    .line 1470
    iget-object v9, v6, Landroidx/compose/material3/SegmentedButtonKt$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Object;

    .line 1471
    .line 1472
    check-cast v9, Landroidx/camera/view/PreviewView$1;

    .line 1473
    .line 1474
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v10

    .line 1478
    const-wide/16 v13, 0x0

    .line 1479
    .line 1480
    invoke-virtual {v10, v13, v14}, Landroidx/compose/ui/node/NodeCoordinator;->localToScreen-MK-Hz9U(J)J

    .line 1481
    .line 1482
    .line 1483
    move-result-wide v10

    .line 1484
    iget-wide v13, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1485
    .line 1486
    invoke-static {v10, v11, v13, v14}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 1487
    .line 1488
    .line 1489
    move-result v13

    .line 1490
    if-nez v13, :cond_2a

    .line 1491
    .line 1492
    iget-wide v13, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1493
    .line 1494
    invoke-static {v10, v11, v13, v14}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 1495
    .line 1496
    .line 1497
    move-result-wide v13

    .line 1498
    move-object/from16 v22, v5

    .line 1499
    .line 1500
    move-object v15, v6

    .line 1501
    iget-wide v5, v7, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->nodeOffset:J

    .line 1502
    .line 1503
    invoke-static {v5, v6, v13, v14}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 1504
    .line 1505
    .line 1506
    move-result-wide v5

    .line 1507
    iput-wide v5, v7, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->nodeOffset:J

    .line 1508
    .line 1509
    goto :goto_24

    .line 1510
    :cond_2a
    move-object/from16 v22, v5

    .line 1511
    .line 1512
    move-object v15, v6

    .line 1513
    :goto_24
    iput-wide v10, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1514
    .line 1515
    iget-wide v5, v7, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->nodeOffset:J

    .line 1516
    .line 1517
    invoke-static {v9, v4, v5, v6}, Lcom/fsck/k9/sasl/OAuthBearer;->addPointerInputChange-0AR0LA0(Landroidx/camera/view/PreviewView$1;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 1518
    .line 1519
    .line 1520
    iget-object v5, v7, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 1521
    .line 1522
    if-eqz v5, :cond_2b

    .line 1523
    .line 1524
    new-instance v6, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragDelta;

    .line 1525
    .line 1526
    invoke-direct {v6, v2, v3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DragEvent$DragDelta;-><init>(J)V

    .line 1527
    .line 1528
    .line 1529
    invoke-interface {v5, v6}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    .line 1531
    .line 1532
    :cond_2b
    iget-wide v2, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 1533
    .line 1534
    iget-object v4, v1, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 1535
    .line 1536
    iget-object v4, v4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->currentEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 1537
    .line 1538
    invoke-static {v4, v2, v3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    .line 1539
    .line 1540
    .line 1541
    move-result v4

    .line 1542
    if-eqz v4, :cond_2c

    .line 1543
    .line 1544
    :goto_25
    const/4 v14, 0x0

    .line 1545
    goto/16 :goto_30

    .line 1546
    .line 1547
    :cond_2c
    move-wide v4, v2

    .line 1548
    move-object v6, v15

    .line 1549
    :goto_26
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    .line 1550
    .line 1551
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 1552
    .line 1553
    .line 1554
    iput-wide v2, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1555
    .line 1556
    move-object v9, v1

    .line 1557
    move-object v11, v9

    .line 1558
    move-object v10, v6

    .line 1559
    move-object v8, v7

    .line 1560
    move-wide v6, v4

    .line 1561
    move-wide v4, v2

    .line 1562
    move-wide v1, v4

    .line 1563
    :goto_27
    const/4 v3, 0x0

    .line 1564
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$0:Ljava/lang/Object;

    .line 1565
    .line 1566
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$1:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1567
    .line 1568
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$2:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1569
    .line 1570
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$3:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1571
    .line 1572
    iput-object v11, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$4:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;

    .line 1573
    .line 1574
    iput-object v10, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$5:Ljava/lang/Object;

    .line 1575
    .line 1576
    iput-object v9, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$6:Ljava/lang/Object;

    .line 1577
    .line 1578
    iput-object v8, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$7:Lkotlin/jvm/internal/Ref$LongRef;

    .line 1579
    .line 1580
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$8:Ljava/lang/Object;

    .line 1581
    .line 1582
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$9:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/TouchSlopDetector;

    .line 1583
    .line 1584
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$10:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1585
    .line 1586
    iput-object v3, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->L$11:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1587
    .line 1588
    iput-boolean v12, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->Z$0:Z

    .line 1589
    .line 1590
    iput-wide v6, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$0:J

    .line 1591
    .line 1592
    iput-wide v4, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$1:J

    .line 1593
    .line 1594
    iput-wide v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->J$2:J

    .line 1595
    .line 1596
    const/16 v13, 0x8

    .line 1597
    .line 1598
    iput v13, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->label:I

    .line 1599
    .line 1600
    invoke-static {v9, v0}, Landroidx/compose/ui/Modifier$-CC;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 1601
    .line 1602
    .line 1603
    move-result-object v13

    .line 1604
    move-object/from16 v14, v22

    .line 1605
    .line 1606
    if-ne v13, v14, :cond_2d

    .line 1607
    .line 1608
    :goto_28
    return-object v14

    .line 1609
    :cond_2d
    :goto_29
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 1610
    .line 1611
    iget-object v15, v13, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 1612
    .line 1613
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 1614
    .line 1615
    .line 1616
    move-result v3

    .line 1617
    move-wide/from16 v16, v1

    .line 1618
    .line 1619
    const/4 v1, 0x0

    .line 1620
    :goto_2a
    if-ge v1, v3, :cond_2f

    .line 1621
    .line 1622
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v2

    .line 1626
    move/from16 v18, v1

    .line 1627
    .line 1628
    move-object v1, v2

    .line 1629
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1630
    .line 1631
    move-object/from16 p1, v2

    .line 1632
    .line 1633
    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 1634
    .line 1635
    move-wide/from16 v19, v4

    .line 1636
    .line 1637
    move v5, v3

    .line 1638
    iget-wide v3, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1639
    .line 1640
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 1641
    .line 1642
    .line 1643
    move-result v1

    .line 1644
    if-eqz v1, :cond_2e

    .line 1645
    .line 1646
    move-object/from16 v2, p1

    .line 1647
    .line 1648
    goto :goto_2b

    .line 1649
    :cond_2e
    add-int/lit8 v1, v18, 0x1

    .line 1650
    .line 1651
    move v3, v5

    .line 1652
    move-wide/from16 v4, v19

    .line 1653
    .line 1654
    goto :goto_2a

    .line 1655
    :cond_2f
    move-wide/from16 v19, v4

    .line 1656
    .line 1657
    const/4 v2, 0x0

    .line 1658
    :goto_2b
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1659
    .line 1660
    if-nez v2, :cond_30

    .line 1661
    .line 1662
    const/4 v1, 0x1

    .line 1663
    const/4 v2, 0x0

    .line 1664
    goto :goto_2f

    .line 1665
    :cond_30
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 1666
    .line 1667
    .line 1668
    move-result v1

    .line 1669
    if-eqz v1, :cond_34

    .line 1670
    .line 1671
    iget-object v1, v13, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 1672
    .line 1673
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 1674
    .line 1675
    .line 1676
    move-result v3

    .line 1677
    const/4 v5, 0x0

    .line 1678
    :goto_2c
    if-ge v5, v3, :cond_32

    .line 1679
    .line 1680
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v4

    .line 1684
    move-object v13, v4

    .line 1685
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1686
    .line 1687
    iget-boolean v13, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 1688
    .line 1689
    if-eqz v13, :cond_31

    .line 1690
    .line 1691
    goto :goto_2d

    .line 1692
    :cond_31
    add-int/lit8 v5, v5, 0x1

    .line 1693
    .line 1694
    goto :goto_2c

    .line 1695
    :cond_32
    const/4 v4, 0x0

    .line 1696
    :goto_2d
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1697
    .line 1698
    if-nez v4, :cond_33

    .line 1699
    .line 1700
    const/4 v1, 0x1

    .line 1701
    goto :goto_2f

    .line 1702
    :cond_33
    iget-wide v1, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 1703
    .line 1704
    iput-wide v1, v8, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 1705
    .line 1706
    const/4 v1, 0x1

    .line 1707
    goto :goto_2e

    .line 1708
    :cond_34
    const/4 v1, 0x1

    .line 1709
    invoke-static {v2, v1}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 1710
    .line 1711
    .line 1712
    move-result-wide v3

    .line 1713
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 1714
    .line 1715
    .line 1716
    move-result v3

    .line 1717
    const/4 v4, 0x0

    .line 1718
    cmpg-float v3, v3, v4

    .line 1719
    .line 1720
    if-nez v3, :cond_35

    .line 1721
    .line 1722
    :goto_2e
    move-object/from16 v22, v14

    .line 1723
    .line 1724
    move-wide/from16 v1, v16

    .line 1725
    .line 1726
    move-wide/from16 v4, v19

    .line 1727
    .line 1728
    goto/16 :goto_27

    .line 1729
    .line 1730
    :cond_35
    :goto_2f
    if-nez v2, :cond_36

    .line 1731
    .line 1732
    goto/16 :goto_25

    .line 1733
    .line 1734
    :cond_36
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 1735
    .line 1736
    .line 1737
    move-result v3

    .line 1738
    if-eqz v3, :cond_37

    .line 1739
    .line 1740
    goto/16 :goto_25

    .line 1741
    .line 1742
    :cond_37
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 1743
    .line 1744
    .line 1745
    move-result v3

    .line 1746
    if-eqz v3, :cond_39

    .line 1747
    .line 1748
    move-object v14, v2

    .line 1749
    :goto_30
    if-nez v14, :cond_38

    .line 1750
    .line 1751
    iget-object v0, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDragCancel:Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;

    .line 1752
    .line 1753
    invoke-virtual {v0}, Lokio/internal/ResourceFileSystem$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    goto :goto_31

    .line 1757
    :cond_38
    iget-object v0, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode$initializePointerInputNode$1$1$1;->$onDragEnd:Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;

    .line 1758
    .line 1759
    invoke-virtual {v0, v14}, Lnet/thunderbird/core/ui/setting/dialog/ui/components/list/SettingListKt$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    .line 1761
    .line 1762
    goto :goto_31

    .line 1763
    :cond_39
    const/4 v5, 0x0

    .line 1764
    invoke-static {v2, v5}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 1765
    .line 1766
    .line 1767
    move-result-wide v3

    .line 1768
    new-instance v8, Landroidx/compose/ui/geometry/Offset;

    .line 1769
    .line 1770
    invoke-direct {v8, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 1771
    .line 1772
    .line 1773
    invoke-interface {v10, v2, v8}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    .line 1775
    .line 1776
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 1777
    .line 1778
    .line 1779
    iget-wide v2, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 1780
    .line 1781
    move-wide v4, v6

    .line 1782
    move-object v6, v10

    .line 1783
    move-object v1, v11

    .line 1784
    move-object/from16 v22, v14

    .line 1785
    .line 1786
    goto/16 :goto_26

    .line 1787
    .line 1788
    :cond_3a
    :goto_31
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1789
    .line 1790
    return-object v0

    .line 1791
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
