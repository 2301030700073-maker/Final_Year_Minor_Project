.class public final Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public _awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

.field public _awaitGesturePickupState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

.field public _awaitTouchSlopState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

.field public _draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

.field public currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

.field public final node:Landroidx/compose/foundation/gestures/ScrollableNode;

.field public nodeOffset:J

.field public final offsetSmoother:Lokio/PriorityQueue;

.field public previousPositionOnScreen:J

.field public touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

.field public final touchSmooth:Lokio/PriorityQueue;

.field public velocityTracker:Landroidx/paging/HintHandler;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollableNode;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 5
    .line 6
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    .line 12
    .line 13
    new-instance p1, Lokio/PriorityQueue;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-direct {p1, v0, v1}, Lokio/PriorityQueue;-><init>(CI)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/collection/MutableObjectList;

    .line 21
    .line 22
    invoke-direct {v1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSmooth:Lokio/PriorityQueue;

    .line 28
    .line 29
    new-instance p1, Lokio/PriorityQueue;

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    invoke-direct {p1, v0, v1}, Lokio/PriorityQueue;-><init>(CI)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroidx/collection/MutableLongList;

    .line 36
    .line 37
    invoke-direct {v0}, Landroidx/collection/MutableLongList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Lokio/PriorityQueue;

    .line 43
    .line 44
    const-wide/16 v0, 0x0

    .line 45
    .line 46
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 47
    .line 48
    return-void
.end method

.method public static moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V
    .locals 4

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-wide/16 p4, 0x0

    .line 6
    .line 7
    :cond_0
    iget-object p6, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 21
    .line 22
    const-wide v2, 0x7fffffffffffffffL

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 28
    .line 29
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 32
    .line 33
    :cond_1
    iput-object p1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 34
    .line 35
    iput-wide p2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 38
    .line 39
    iget-object p2, p6, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    new-instance p1, Lokhttp3/internal/http1/HeadersReader;

    .line 44
    .line 45
    const/4 p3, 0x2

    .line 46
    invoke-direct {p1, p2, p3}, Lokhttp3/internal/http1/HeadersReader;-><init>(Landroidx/compose/foundation/gestures/Orientation;I)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iput-object p2, p1, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 53
    .line 54
    iput-wide p4, p1, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 55
    .line 56
    :goto_0
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 57
    .line 58
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final moveToAwaitDownState()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 7
    .line 8
    sget-object v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 14
    .line 15
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 18
    .line 19
    :cond_0
    sget-object v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 20
    .line 21
    iput-object v2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 22
    .line 23
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 26
    .line 27
    return-void
.end method

.method public final moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 12
    .line 13
    const-wide v1, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 21
    .line 22
    :cond_0
    iput-object p1, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 23
    .line 24
    iput-wide p2, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    iput-wide p1, p4, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 31
    .line 32
    return-void
.end method

.method public final requireVelocityTracker()Landroidx/paging/HintHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/paging/HintHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Velocity Tracker not initialized."

    .line 7
    .line 8
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    iget-object v3, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 6
    .line 7
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const-wide/16 v5, 0x0

    .line 12
    .line 13
    invoke-virtual {v4, v5, v6}, Landroidx/compose/ui/node/NodeCoordinator;->localToScreen-MK-Hz9U(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    iget-wide v6, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    .line 18
    .line 19
    const-wide v8, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    iget-wide v6, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    .line 31
    .line 32
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_0

    .line 37
    .line 38
    iget-wide v6, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    .line 39
    .line 40
    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    iget-wide v8, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 45
    .line 46
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    iput-wide v6, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 51
    .line 52
    :cond_0
    iput-wide v4, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    .line 53
    .line 54
    iget-object v4, v3, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    sget v5, Landroidx/compose/foundation/gestures/DraggableKt;->$r8$clinit:I

    .line 60
    .line 61
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 62
    .line 63
    const/16 v6, 0x20

    .line 64
    .line 65
    const-wide v7, 0xffffffffL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    if-ne v4, v5, :cond_1

    .line 71
    .line 72
    and-long v4, v1, v7

    .line 73
    .line 74
    :goto_0
    long-to-int v4, v4

    .line 75
    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    shr-long v4, v1, v6

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    const/high16 v5, 0x40000000    # 2.0f

    .line 88
    .line 89
    cmpl-float v4, v4, v5

    .line 90
    .line 91
    if-lez v4, :cond_7

    .line 92
    .line 93
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    iget-object v11, v3, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 98
    .line 99
    iget-object v13, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSmooth:Lokio/PriorityQueue;

    .line 100
    .line 101
    iget-wide v14, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 102
    .line 103
    move-object/from16 v10, p1

    .line 104
    .line 105
    move-object/from16 v12, p2

    .line 106
    .line 107
    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/gestures/ScrollableKt;->addIndirectPointerInputChange-Qf4Zb88(Landroidx/paging/HintHandler;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Lokio/PriorityQueue;J)V

    .line 108
    .line 109
    .line 110
    new-instance v4, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 111
    .line 112
    iget-object v0, v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Lokio/PriorityQueue;

    .line 113
    .line 114
    iget-object v5, v0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v5, Landroidx/collection/MutableLongList;

    .line 117
    .line 118
    iget v9, v5, Landroidx/collection/MutableLongList;->_size:I

    .line 119
    .line 120
    const/4 v10, 0x3

    .line 121
    if-ne v9, v10, :cond_3

    .line 122
    .line 123
    iget v11, v0, Lokio/PriorityQueue;->size:I

    .line 124
    .line 125
    add-int/lit8 v12, v11, 0x1

    .line 126
    .line 127
    iput v12, v0, Lokio/PriorityQueue;->size:I

    .line 128
    .line 129
    if-ltz v11, :cond_2

    .line 130
    .line 131
    if-ge v11, v9, :cond_2

    .line 132
    .line 133
    iget-object v9, v5, Landroidx/collection/MutableLongList;->content:[J

    .line 134
    .line 135
    aget-wide v12, v9, v11

    .line 136
    .line 137
    aput-wide v1, v9, v11

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    const-string v0, "Index must be between 0 and size"

    .line 141
    .line 142
    invoke-static {v0}, Lcom/google/gson/Gson$$ExternalSyntheticBUOutline0;->m$2(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_3
    invoke-virtual {v5, v1, v2}, Landroidx/collection/MutableLongList;->add(J)V

    .line 147
    .line 148
    .line 149
    :goto_2
    iget v1, v0, Lokio/PriorityQueue;->size:I

    .line 150
    .line 151
    const/4 v2, 0x0

    .line 152
    if-ne v1, v10, :cond_4

    .line 153
    .line 154
    iput v2, v0, Lokio/PriorityQueue;->size:I

    .line 155
    .line 156
    :cond_4
    iget-object v0, v5, Landroidx/collection/MutableLongList;->content:[J

    .line 157
    .line 158
    iget v1, v5, Landroidx/collection/MutableLongList;->_size:I

    .line 159
    .line 160
    const/4 v9, 0x0

    .line 161
    move v10, v2

    .line 162
    move v11, v9

    .line 163
    :goto_3
    if-ge v10, v1, :cond_5

    .line 164
    .line 165
    aget-wide v12, v0, v10

    .line 166
    .line 167
    shr-long/2addr v12, v6

    .line 168
    long-to-int v12, v12

    .line 169
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    add-float/2addr v11, v12

    .line 174
    add-int/lit8 v10, v10, 0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_5
    iget v0, v5, Landroidx/collection/MutableLongList;->_size:I

    .line 178
    .line 179
    int-to-float v1, v0

    .line 180
    div-float/2addr v11, v1

    .line 181
    iget-object v1, v5, Landroidx/collection/MutableLongList;->content:[J

    .line 182
    .line 183
    :goto_4
    if-ge v2, v0, :cond_6

    .line 184
    .line 185
    aget-wide v12, v1, v2

    .line 186
    .line 187
    and-long/2addr v12, v7

    .line 188
    long-to-int v10, v12

    .line 189
    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    add-float/2addr v9, v10

    .line 194
    add-int/lit8 v2, v2, 0x1

    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_6
    iget v0, v5, Landroidx/collection/MutableLongList;->_size:I

    .line 198
    .line 199
    int-to-float v0, v0

    .line 200
    div-float/2addr v9, v0

    .line 201
    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    int-to-long v0, v0

    .line 206
    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    int-to-long v9, v2

    .line 211
    shl-long/2addr v0, v6

    .line 212
    and-long v5, v9, v7

    .line 213
    .line 214
    or-long/2addr v0, v5

    .line 215
    const/4 v2, 0x1

    .line 216
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZ)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/gestures/ScrollableNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 220
    .line 221
    .line 222
    :cond_7
    return-void
.end method

.method public final sendDragStart-3f7A7Is(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/paging/HintHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/paging/HintHandler;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-direct {v0, v1}, Landroidx/paging/HintHandler;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/paging/HintHandler;

    .line 12
    .line 13
    :cond_0
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-object v9, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 22
    .line 23
    iget-object v4, v9, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 24
    .line 25
    iget-object v6, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSmooth:Lokio/PriorityQueue;

    .line 26
    .line 27
    iget-wide v7, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    move-object v5, p3

    .line 31
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->addIndirectPointerInputChange-Qf4Zb88(Landroidx/paging/HintHandler;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Lokio/PriorityQueue;J)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v9, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 35
    .line 36
    invoke-static {p2, p1, v5}, Landroidx/compose/foundation/gestures/ScrollableKt;->primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    .line 37
    .line 38
    .line 39
    move-result-wide p1

    .line 40
    invoke-static {p1, p2, p4, p5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    iget-object p3, v9, Landroidx/compose/foundation/gestures/ScrollableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 45
    .line 46
    new-instance p4, Landroidx/compose/ui/input/pointer/PointerType;

    .line 47
    .line 48
    const/4 p5, 0x1

    .line 49
    invoke-direct {p4, p5}, Landroidx/compose/ui/input/pointer/PointerType;-><init>(I)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_1

    .line 63
    .line 64
    invoke-static {v9}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {p3, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->localToScreen-MK-Hz9U(J)J

    .line 69
    .line 70
    .line 71
    move-result-wide p3

    .line 72
    iput-wide p3, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->previousPositionOnScreen:J

    .line 73
    .line 74
    new-instance p3, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 75
    .line 76
    invoke-direct {p3, p1, p2}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, p3}, Landroidx/compose/foundation/gestures/ScrollableNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Lokio/PriorityQueue;

    .line 83
    .line 84
    const/4 p1, 0x0

    .line 85
    iput p1, p0, Lokio/PriorityQueue;->size:I

    .line 86
    .line 87
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p0, Landroidx/collection/MutableLongList;

    .line 90
    .line 91
    iput p1, p0, Landroidx/collection/MutableLongList;->_size:I

    .line 92
    .line 93
    return-void
.end method
