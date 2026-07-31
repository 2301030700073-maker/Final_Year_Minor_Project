.class public final synthetic Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p5, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 17
    .line 18
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 19
    .line 20
    check-cast v3, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 21
    .line 22
    check-cast v2, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 23
    .line 24
    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 25
    .line 26
    check-cast p1, Ljava/lang/Float;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iget-object v0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->sumOrNull(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->velocityTracker:Landroidx/cardview/widget/CardView$1;

    .line 42
    .line 43
    iget-wide v6, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->timeMillis:J

    .line 44
    .line 45
    iget-wide v8, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->value:J

    .line 46
    .line 47
    iget-object v10, p0, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v10, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 50
    .line 51
    const/16 v11, 0x20

    .line 52
    .line 53
    shr-long v11, v8, v11

    .line 54
    .line 55
    long-to-int v11, v11

    .line 56
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    invoke-virtual {v10, v6, v7, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(JF)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 66
    .line 67
    const-wide v10, 0xffffffffL

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    and-long/2addr v8, v10

    .line 73
    long-to-int v8, v8

    .line 74
    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    invoke-virtual {p0, v6, v7, v8}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(JF)V

    .line 79
    .line 80
    .line 81
    iget-object p0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->plus(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iput-object p0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 90
    .line 91
    iget-wide v6, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->value:J

    .line 92
    .line 93
    invoke-virtual {v2, v6, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded-MK-Hz9U(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    invoke-virtual {v2, v6, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toSingleAxisDeltaFromAngle-k-4lQ0M(J)F

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    iput p0, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 102
    .line 103
    sub-float/2addr p0, p1

    .line 104
    invoke-static {p0}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$isLowScrollingDelta(F)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    xor-int/2addr p0, v5

    .line 109
    iput-boolean p0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 110
    .line 111
    :cond_0
    if-eqz v0, :cond_1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/4 v5, 0x0

    .line 115
    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :pswitch_0
    check-cast v4, Ljava/util/Set;

    .line 121
    .line 122
    check-cast v3, Ljava/util/Set;

    .line 123
    .line 124
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 125
    .line 126
    move-object v5, v1

    .line 127
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 128
    .line 129
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 130
    .line 131
    new-instance v0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$PrepareBackStack$lambda$2$0$0$$inlined$onDispose$1;

    .line 132
    .line 133
    iget-object v1, p0, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 134
    .line 135
    move-object v13, v4

    .line 136
    move-object v4, v2

    .line 137
    move-object v2, v13

    .line 138
    invoke-direct/range {v0 .. v5}, Landroidx/navigation3/runtime/DecoratedNavEntriesKt$PrepareBackStack$lambda$2$0$0$$inlined$onDispose$1;-><init>(Ljava/lang/Object;Ljava/util/Set;Ljava/util/Set;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 139
    .line 140
    .line 141
    return-object v0

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
