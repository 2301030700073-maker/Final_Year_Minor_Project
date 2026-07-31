.class public final Landroidx/compose/foundation/gestures/ScrollableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/input/indirect/IndirectPointerInputModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/foundation/GestureConnection;


# instance fields
.field public _awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

.field public _awaitGesturePickupState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

.field public _awaitTouchSlopState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

.field public _draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

.field public canDrag:Lkotlin/jvm/functions/Function1;

.field public channel:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

.field public currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

.field public final defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

.field public dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

.field public enabled:Z

.field public flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final focusTargetModifierNode:Landroidx/compose/ui/focus/FocusTargetNode;

.field public gestureNode:Landroidx/compose/foundation/GestureNode;

.field public indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

.field public interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

.field public isListeningForEvents:Z

.field public isListeningForPointerInputEvents:Z

.field public mouseWheelScrollingLogic:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

.field public final nestedScrollConnection:Lkotlinx/serialization/json/internal/Composer;

.field public final nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field public nodeOffset:J

.field public orientationLock:Landroidx/compose/foundation/gestures/Orientation;

.field public overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

.field public previousPositionOnScreen:J

.field public scrollByAction:Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

.field public scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

.field public final scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

.field public trackpadScrollingLogic:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

.field public velocityTracker:Landroidx/paging/HintHandler;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V
    .locals 10

    .line 1
    move/from16 v9, p7

    .line 2
    .line 3
    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->CanDragCalculation:Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 11
    .line 12
    iput-boolean v9, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 13
    .line 14
    move-object/from16 v0, p6

    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 17
    .line 18
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->previousPositionOnScreen:J

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nodeOffset:J

    .line 28
    .line 29
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 30
    .line 31
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 32
    .line 33
    new-instance v6, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 34
    .line 35
    invoke-direct {v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 39
    .line 40
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 41
    .line 42
    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableKt;->UnityDensity:Landroidx/compose/foundation/gestures/ScrollableKt$UnityDensity$1;

    .line 43
    .line 44
    new-instance v3, Landroidx/appcompat/widget/PopupMenu$1;

    .line 45
    .line 46
    invoke-direct {v3, v1}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 50
    .line 51
    invoke-direct {v1, v3}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/appcompat/widget/PopupMenu$1;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpecImpl;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 62
    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    move-object v3, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object v3, v1

    .line 68
    :goto_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 69
    .line 70
    new-instance v8, Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-direct {v8, p0, v1}, Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V

    .line 74
    .line 75
    .line 76
    move-object v7, p0

    .line 77
    move-object v4, p4

    .line 78
    move-object v1, p5

    .line 79
    move/from16 v5, p8

    .line 80
    .line 81
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/foundation/gestures/ScrollableNode;Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;)V

    .line 82
    .line 83
    .line 84
    move-object v3, v0

    .line 85
    move-object v0, v6

    .line 86
    iput-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 87
    .line 88
    new-instance v8, Lkotlinx/serialization/json/internal/Composer;

    .line 89
    .line 90
    const/4 v1, 0x2

    .line 91
    invoke-direct {v8, v3, v9, v1}, Lkotlinx/serialization/json/internal/Composer;-><init>(Ljava/lang/Object;ZI)V

    .line 92
    .line 93
    .line 94
    iput-object v8, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollConnection:Lkotlinx/serialization/json/internal/Composer;

    .line 95
    .line 96
    new-instance v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 97
    .line 98
    const/16 v4, 0xa

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-direct {v2, v1, v4, v5}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(IILkotlin/jvm/functions/Function2;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 105
    .line 106
    .line 107
    iput-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->focusTargetModifierNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 108
    .line 109
    new-instance v1, Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 110
    .line 111
    new-instance v6, Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    invoke-direct {v6, p0, v2}, Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V

    .line 115
    .line 116
    .line 117
    move-object v5, p2

    .line 118
    move-object v2, p4

    .line 119
    move/from16 v4, p8

    .line 120
    .line 121
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/ScrollableNode$$ExternalSyntheticLambda0;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 125
    .line 126
    .line 127
    iput-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 128
    .line 129
    new-instance v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    .line 130
    .line 131
    invoke-direct {v2, v8, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 135
    .line 136
    .line 137
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    .line 138
    .line 139
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v1, v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;->responder:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public static moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/ScrollableNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V
    .locals 3

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
    iget-object p6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p6, :cond_1

    .line 11
    .line 12
    new-instance p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 13
    .line 14
    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-object v1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 19
    .line 20
    const-wide v1, 0x7fffffffffffffffL

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 26
    .line 27
    iput-boolean v0, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 28
    .line 29
    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->_awaitTouchSlopState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 30
    .line 31
    :cond_1
    iput-object p1, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 32
    .line 33
    iput-wide p2, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 36
    .line 37
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    new-instance p1, Lokhttp3/internal/http1/HeadersReader;

    .line 42
    .line 43
    const/4 p3, 0x2

    .line 44
    invoke-direct {p1, p2, p3}, Lokhttp3/internal/http1/HeadersReader;-><init>(Landroidx/compose/foundation/gestures/Orientation;I)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iput-object p2, p1, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 51
    .line 52
    iput-wide p4, p1, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 53
    .line 54
    :goto_0
    iput-boolean v0, p6, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 55
    .line 56
    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByAction:Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v0, v2, p0}, Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByAction:Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByAction:Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 34
    .line 35
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollBy:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 36
    .line 37
    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    .line 38
    .line 39
    invoke-direct {v3, v1, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 50
    .line 51
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->ScrollByOffset:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 52
    .line 53
    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->set(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public final disposeInteractionSource$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final getShouldAutoInvalidate()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getShouldClearDescendantSemantics()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getShouldMergeDescendantSemantics()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getTouchBoundsExpansion-RZrCHBk()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/node/TouchBoundsExpansion;->None:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final interceptOutOfBoundsChildEvents()V
    .locals 0

    .line 1
    return-void
.end method

.method public final isImportantForBounds()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isInterested(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z
    .locals 0

    .line 160
    invoke-static {p1}, Landroidx/compose/foundation/gestures/ScrollableKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInterested(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 9

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerId;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    new-instance v0, Lokhttp3/internal/http1/HeadersReader;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 27
    .line 28
    invoke-direct {v0, v3, v2}, Lokhttp3/internal/http1/HeadersReader;-><init>(Landroidx/compose/foundation/gestures/Orientation;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 32
    .line 33
    :cond_2
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 40
    .line 41
    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-static {p1, v1}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 50
    .line 51
    if-eqz p0, :cond_7

    .line 52
    .line 53
    invoke-virtual {p0, v0, v3, v4, v1}, Lokhttp3/internal/http1/HeadersReader;->getPostSlopOffset-qto3Fdw(FJZ)J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_6

    .line 67
    .line 68
    iget-wide v5, p0, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 69
    .line 70
    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    const/16 p1, 0x20

    .line 75
    .line 76
    shr-long v5, v3, p1

    .line 77
    .line 78
    long-to-int p1, v5

    .line 79
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    const-wide v5, 0xffffffffL

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    and-long/2addr v3, v5

    .line 93
    long-to-int v0, v3

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    float-to-double v3, v0

    .line 103
    float-to-double v5, p1

    .line 104
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    double-to-float p1, v3

    .line 109
    const/high16 v0, 0x43340000    # 180.0f

    .line 110
    .line 111
    mul-float/2addr p1, v0

    .line 112
    float-to-double v3, p1

    .line 113
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    div-double/2addr v3, v5

    .line 119
    iget-object p0, p0, Lokhttp3/internal/http1/HeadersReader;->source:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p0, Landroidx/compose/foundation/gestures/Orientation;

    .line 122
    .line 123
    if-nez p0, :cond_3

    .line 124
    .line 125
    const/4 p0, -0x1

    .line 126
    goto :goto_0

    .line 127
    :cond_3
    sget-object p1, Landroidx/compose/foundation/gestures/TouchSlopDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    aget p0, p1, p0

    .line 134
    .line 135
    :goto_0
    const/4 p1, 0x1

    .line 136
    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    .line 137
    .line 138
    if-eq p0, p1, :cond_5

    .line 139
    .line 140
    if-eq p0, v2, :cond_4

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    cmpl-double p0, v3, v5

    .line 144
    .line 145
    if-lez p0, :cond_6

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    cmpg-double p0, v3, v5

    .line 149
    .line 150
    if-gez p0, :cond_6

    .line 151
    .line 152
    :goto_1
    return p1

    .line 153
    :cond_6
    :goto_2
    return v1

    .line 154
    :cond_7
    const-string p0, "Touch slop detector not initialized."

    .line 155
    .line 156
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return v1
.end method

.method public final moveToAwaitDownState()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 7
    .line 8
    sget-object v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 14
    .line 15
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 18
    .line 19
    :cond_0
    sget-object v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 20
    .line 21
    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 22
    .line 23
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 26
    .line 27
    return-void
.end method

.method public final moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/pointer/PointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 12
    .line 13
    const-wide v1, 0x7fffffffffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 19
    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->_awaitGesturePickupState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 21
    .line 22
    :cond_0
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 23
    .line 24
    iput-wide p2, v0, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    iput-wide p1, p4, Lokhttp3/internal/http1/HeadersReader;->headerLimit:J

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 31
    .line 32
    return-void
.end method

.method public final onAttach()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v2, Landroidx/appcompat/widget/PopupMenu$1;

    .line 18
    .line 19
    invoke-direct {v2, v0}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 23
    .line 24
    invoke-direct {v0, v2}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/appcompat/widget/PopupMenu$1;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 28
    .line 29
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 38
    .line 39
    iput-object v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->trackpadScrollingLogic:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 50
    .line 51
    iput-object p0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public final onCancelIndirectPointerInput()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 9
    .line 10
    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/gestures/ScrollableNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/paging/HintHandler;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Lokio/PriorityQueue;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lokio/PriorityQueue;->size:I

    .line 26
    .line 27
    iget-object p0, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Landroidx/collection/MutableLongList;

    .line 30
    .line 31
    iput v0, p0, Landroidx/collection/MutableLongList;->_size:I

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public final onCancelPointerInput()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForPointerInputEvents:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitDownState()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->velocityTracker:Landroidx/paging/HintHandler;

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForPointerInputEvents:Z

    .line 26
    .line 27
    return-void
.end method

.method public final onDensityChange()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->onCancelPointerInput()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v2, Landroidx/appcompat/widget/PopupMenu$1;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/appcompat/widget/PopupMenu$1;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->flingDecay:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 41
    .line 42
    iput-object v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->trackpadScrollingLogic:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 53
    .line 54
    iput-object p0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->density:Landroidx/compose/ui/unit/Density;

    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public final onDetach()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->disposeInteractionSource$1()V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nodeOffset:J

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 20
    .line 21
    return-void
.end method

.method public final onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->startListeningForEvents()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onDragStarted-k-4lQ0M(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 8
    .line 9
    const/4 v2, 0x7

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v1, p1, p0, v3, v2}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x3

    .line 15
    invoke-static {v0, v3, v3, v1, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onIndirectPointerEvent(Lokhttp3/internal/http/StatusLine;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Lokhttp3/internal/http/StatusLine;->code:I

    .line 8
    .line 9
    iget-object v1, v1, Lokhttp3/internal/http/StatusLine;->protocol:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    new-instance v4, Landroidx/compose/foundation/GestureNode;

    .line 18
    .line 19
    invoke-direct {v4, v0}, Landroidx/compose/foundation/GestureNode;-><init>(Landroidx/compose/foundation/GestureConnection;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 23
    .line 24
    .line 25
    iput-object v4, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 26
    .line 27
    :cond_0
    iget-boolean v4, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 28
    .line 29
    if-eqz v4, :cond_37

    .line 30
    .line 31
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    new-instance v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 36
    .line 37
    invoke-direct {v4, v0}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;)V

    .line 38
    .line 39
    .line 40
    iput-object v4, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 41
    .line 42
    :cond_1
    move-object v5, v4

    .line 43
    iget-object v0, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 44
    .line 45
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 46
    .line 47
    const/4 v11, 0x0

    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    iget-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 51
    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    new-instance v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 55
    .line 56
    sget-object v6, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 62
    .line 63
    iput-boolean v11, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 64
    .line 65
    iput-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_awaitDownState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 66
    .line 67
    :cond_2
    iput-object v4, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 68
    .line 69
    :cond_3
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 70
    .line 71
    const-wide v12, 0x7fffffffffffffffL

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    const-wide/16 v14, 0x0

    .line 77
    .line 78
    const/4 v7, 0x1

    .line 79
    if-eqz v6, :cond_c

    .line 80
    .line 81
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_4

    .line 88
    .line 89
    goto/16 :goto_12

    .line 90
    .line 91
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    :goto_0
    if-ge v11, v6, :cond_6

    .line 96
    .line 97
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 102
    .line 103
    invoke-static {v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-nez v8, :cond_5

    .line 108
    .line 109
    goto/16 :goto_12

    .line 110
    .line 111
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    move-object v6, v1

    .line 119
    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 120
    .line 121
    iget-object v1, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 122
    .line 123
    sget-object v8, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    aget v1, v8, v1

    .line 130
    .line 131
    if-ne v1, v7, :cond_8

    .line 132
    .line 133
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->startDragImmediately()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_7

    .line 138
    .line 139
    sget-object v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_7
    sget-object v0, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_8
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 146
    .line 147
    :goto_1
    iput-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 148
    .line 149
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 150
    .line 151
    if-ne v2, v1, :cond_9

    .line 152
    .line 153
    sget-object v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 154
    .line 155
    if-ne v0, v1, :cond_9

    .line 156
    .line 157
    iput-boolean v7, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 158
    .line 159
    iput-boolean v7, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 160
    .line 161
    :cond_9
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 162
    .line 163
    if-ne v2, v1, :cond_37

    .line 164
    .line 165
    sget-object v1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 166
    .line 167
    if-ne v0, v1, :cond_a

    .line 168
    .line 169
    iget-wide v7, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 170
    .line 171
    const-wide/16 v9, 0x0

    .line 172
    .line 173
    const/16 v11, 0xc

    .line 174
    .line 175
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_a
    iget-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 180
    .line 181
    if-eqz v0, :cond_37

    .line 182
    .line 183
    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 184
    .line 185
    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 186
    .line 187
    .line 188
    const-wide/16 v9, 0x0

    .line 189
    .line 190
    move-object v7, v6

    .line 191
    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragStart-3f7A7Is(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 192
    .line 193
    .line 194
    new-instance v0, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 195
    .line 196
    invoke-direct {v0, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5, v6, v0, v14, v15}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 200
    .line 201
    .line 202
    iget-wide v0, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 203
    .line 204
    iget-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 205
    .line 206
    if-nez v2, :cond_b

    .line 207
    .line 208
    new-instance v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 209
    .line 210
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    iput-wide v12, v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 214
    .line 215
    iput-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 216
    .line 217
    :cond_b
    iput-wide v0, v2, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 218
    .line 219
    iput-object v2, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 220
    .line 221
    return-void

    .line 222
    :cond_c
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 223
    .line 224
    if-eqz v6, :cond_22

    .line 225
    .line 226
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;

    .line 227
    .line 228
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 229
    .line 230
    if-ne v2, v6, :cond_d

    .line 231
    .line 232
    goto/16 :goto_12

    .line 233
    .line 234
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    move v9, v11

    .line 239
    :goto_2
    if-ge v9, v6, :cond_f

    .line 240
    .line 241
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    move-object v14, v10

    .line 246
    check-cast v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 247
    .line 248
    iget-wide v14, v14, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 249
    .line 250
    move/from16 p1, v9

    .line 251
    .line 252
    iget-wide v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 253
    .line 254
    invoke-static {v14, v15, v8, v9}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    if-eqz v8, :cond_e

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_e
    add-int/lit8 v9, p1, 0x1

    .line 262
    .line 263
    goto :goto_2

    .line 264
    :cond_f
    const/4 v10, 0x0

    .line 265
    :goto_3
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 266
    .line 267
    if-nez v10, :cond_13

    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    move v8, v11

    .line 274
    :goto_4
    if-ge v8, v6, :cond_11

    .line 275
    .line 276
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    move-object v10, v9

    .line 281
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 282
    .line 283
    iget-boolean v10, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->pressed:Z

    .line 284
    .line 285
    if-eqz v10, :cond_10

    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_10
    add-int/lit8 v8, v8, 0x1

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_11
    const/4 v9, 0x0

    .line 292
    :goto_5
    move-object v10, v9

    .line 293
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 294
    .line 295
    if-nez v10, :cond_12

    .line 296
    .line 297
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_12
    iget-wide v8, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 302
    .line 303
    iput-wide v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 304
    .line 305
    :cond_13
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 306
    .line 307
    const-string v14, "AwaitTouchSlop.touchSlopDetector was not initialized"

    .line 308
    .line 309
    const-string v15, "AwaitTouchSlop.initialDown was not initialized"

    .line 310
    .line 311
    if-ne v2, v6, :cond_1e

    .line 312
    .line 313
    iget-boolean v6, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 314
    .line 315
    if-nez v6, :cond_1b

    .line 316
    .line 317
    invoke-static {v10}, Landroidx/compose/foundation/gestures/ScrollableKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    if-eqz v6, :cond_17

    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    move v3, v11

    .line 328
    :goto_6
    if-ge v3, v0, :cond_15

    .line 329
    .line 330
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    move-object v7, v6

    .line 335
    check-cast v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 336
    .line 337
    iget-boolean v7, v7, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->pressed:Z

    .line 338
    .line 339
    if-eqz v7, :cond_14

    .line 340
    .line 341
    move-object v8, v6

    .line 342
    goto :goto_7

    .line 343
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 344
    .line 345
    goto :goto_6

    .line 346
    :cond_15
    const/4 v8, 0x0

    .line 347
    :goto_7
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 348
    .line 349
    if-nez v8, :cond_16

    .line 350
    .line 351
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_8

    .line 355
    .line 356
    :cond_16
    iget-wide v0, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 357
    .line 358
    iput-wide v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 359
    .line 360
    goto/16 :goto_8

    .line 361
    .line 362
    :cond_17
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 363
    .line 364
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 369
    .line 370
    sget v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->mouseToTouchSlopRatio:F

    .line 371
    .line 372
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    iget-object v6, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 377
    .line 378
    if-eqz v6, :cond_1a

    .line 379
    .line 380
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 381
    .line 382
    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 383
    .line 384
    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 385
    .line 386
    .line 387
    invoke-static {v10, v0, v8, v7}, Landroidx/compose/foundation/gestures/ScrollableKt;->positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    .line 388
    .line 389
    .line 390
    move-result-wide v8

    .line 391
    invoke-virtual {v6, v1, v8, v9, v7}, Lokhttp3/internal/http1/HeadersReader;->getPostSlopOffset-qto3Fdw(FJZ)J

    .line 392
    .line 393
    .line 394
    move-result-wide v0

    .line 395
    const-wide v8, 0x7fffffff7fffffffL

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    and-long/2addr v8, v0

    .line 401
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    cmp-long v6, v8, v16

    .line 407
    .line 408
    if-eqz v6, :cond_19

    .line 409
    .line 410
    iput-boolean v7, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 411
    .line 412
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 413
    .line 414
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    new-instance v8, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 418
    .line 419
    invoke-direct {v8, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 420
    .line 421
    .line 422
    move-object v7, v10

    .line 423
    move-wide v9, v0

    .line 424
    invoke-virtual/range {v5 .. v10}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragStart-3f7A7Is(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 425
    .line 426
    .line 427
    move-object v10, v7

    .line 428
    new-instance v6, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 429
    .line 430
    invoke-direct {v6, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v5, v10, v6, v0, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 434
    .line 435
    .line 436
    iget-wide v0, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 437
    .line 438
    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 439
    .line 440
    if-nez v3, :cond_18

    .line 441
    .line 442
    new-instance v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 443
    .line 444
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 445
    .line 446
    .line 447
    iput-wide v12, v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 448
    .line 449
    iput-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->_draggingState:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 450
    .line 451
    :cond_18
    iput-wide v0, v3, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 452
    .line 453
    iput-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 454
    .line 455
    goto :goto_8

    .line 456
    :cond_19
    iput-boolean v7, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 457
    .line 458
    goto :goto_8

    .line 459
    :cond_1a
    const-string v0, "Touch slop detector not initialized."

    .line 460
    .line 461
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :cond_1b
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 466
    .line 467
    if-eqz v0, :cond_1d

    .line 468
    .line 469
    iget-wide v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 470
    .line 471
    iget-object v1, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 472
    .line 473
    if-eqz v1, :cond_1c

    .line 474
    .line 475
    invoke-virtual {v5, v0, v6, v7, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V

    .line 476
    .line 477
    .line 478
    goto :goto_8

    .line 479
    :cond_1c
    invoke-static {v14}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    return-void

    .line 483
    :cond_1d
    invoke-static {v15}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :cond_1e
    :goto_8
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 488
    .line 489
    if-ne v2, v0, :cond_37

    .line 490
    .line 491
    iget-boolean v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 492
    .line 493
    if-eqz v0, :cond_37

    .line 494
    .line 495
    iget-boolean v0, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 496
    .line 497
    if-eqz v0, :cond_21

    .line 498
    .line 499
    iget-object v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 500
    .line 501
    if-eqz v0, :cond_20

    .line 502
    .line 503
    iget-wide v1, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 504
    .line 505
    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 506
    .line 507
    if-eqz v3, :cond_1f

    .line 508
    .line 509
    invoke-virtual {v5, v0, v1, v2, v3}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :cond_1f
    invoke-static {v14}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :cond_20
    invoke-static {v15}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    return-void

    .line 521
    :cond_21
    iput-boolean v11, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 522
    .line 523
    return-void

    .line 524
    :cond_22
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 525
    .line 526
    if-eqz v6, :cond_2a

    .line 527
    .line 528
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;

    .line 529
    .line 530
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 531
    .line 532
    if-eq v2, v6, :cond_23

    .line 533
    .line 534
    goto/16 :goto_12

    .line 535
    .line 536
    :cond_23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 537
    .line 538
    .line 539
    move-result v2

    .line 540
    move v6, v11

    .line 541
    :goto_9
    if-ge v6, v2, :cond_25

    .line 542
    .line 543
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    check-cast v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 548
    .line 549
    iget-boolean v8, v8, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 550
    .line 551
    if-eqz v8, :cond_24

    .line 552
    .line 553
    move v7, v11

    .line 554
    goto :goto_a

    .line 555
    :cond_24
    add-int/lit8 v6, v6, 0x1

    .line 556
    .line 557
    goto :goto_9

    .line 558
    :cond_25
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 559
    .line 560
    .line 561
    move-result v2

    .line 562
    :goto_b
    if-ge v11, v2, :cond_29

    .line 563
    .line 564
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    check-cast v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 569
    .line 570
    iget-boolean v6, v6, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->pressed:Z

    .line 571
    .line 572
    if-eqz v6, :cond_28

    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    if-eqz v2, :cond_26

    .line 579
    .line 580
    goto :goto_c

    .line 581
    :cond_26
    if-eqz v7, :cond_37

    .line 582
    .line 583
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    check-cast v1, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 588
    .line 589
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 590
    .line 591
    new-instance v6, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 592
    .line 593
    invoke-direct {v6, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 594
    .line 595
    .line 596
    invoke-static {v1, v2, v6}, Landroidx/compose/foundation/gestures/ScrollableKt;->primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    .line 597
    .line 598
    .line 599
    move-result-wide v1

    .line 600
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 601
    .line 602
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    .line 604
    .line 605
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 606
    .line 607
    new-instance v7, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 608
    .line 609
    invoke-direct {v7, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 610
    .line 611
    .line 612
    invoke-static {v6, v0, v7}, Landroidx/compose/foundation/gestures/ScrollableKt;->primaryAxisPosition-_bfSUIo(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;)J

    .line 613
    .line 614
    .line 615
    move-result-wide v6

    .line 616
    invoke-static {v1, v2, v6, v7}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 617
    .line 618
    .line 619
    move-result-wide v9

    .line 620
    iget-object v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 621
    .line 622
    if-eqz v6, :cond_27

    .line 623
    .line 624
    iget-wide v7, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 625
    .line 626
    const/16 v11, 0x8

    .line 627
    .line 628
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;JJI)V

    .line 629
    .line 630
    .line 631
    return-void

    .line 632
    :cond_27
    const-string v0, "AwaitGesturePickup.initialDown was not initialized."

    .line 633
    .line 634
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    return-void

    .line 638
    :cond_28
    add-int/lit8 v11, v11, 0x1

    .line 639
    .line 640
    goto :goto_b

    .line 641
    :cond_29
    :goto_c
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 642
    .line 643
    .line 644
    return-void

    .line 645
    :cond_2a
    instance-of v6, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 646
    .line 647
    if-eqz v6, :cond_36

    .line 648
    .line 649
    check-cast v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;

    .line 650
    .line 651
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 652
    .line 653
    if-eq v2, v6, :cond_2b

    .line 654
    .line 655
    goto/16 :goto_12

    .line 656
    .line 657
    :cond_2b
    iget-wide v8, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 658
    .line 659
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    move v6, v11

    .line 664
    :goto_d
    if-ge v6, v2, :cond_2d

    .line 665
    .line 666
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v10

    .line 670
    move-object v12, v10

    .line 671
    check-cast v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 672
    .line 673
    iget-wide v12, v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 674
    .line 675
    invoke-static {v12, v13, v8, v9}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 676
    .line 677
    .line 678
    move-result v12

    .line 679
    if-eqz v12, :cond_2c

    .line 680
    .line 681
    goto :goto_e

    .line 682
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    .line 683
    .line 684
    goto :goto_d

    .line 685
    :cond_2d
    const/4 v10, 0x0

    .line 686
    :goto_e
    check-cast v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 687
    .line 688
    if-nez v10, :cond_2e

    .line 689
    .line 690
    goto/16 :goto_12

    .line 691
    .line 692
    :cond_2e
    invoke-static {v10}, Landroidx/compose/foundation/gestures/ScrollableKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 693
    .line 694
    .line 695
    move-result v2

    .line 696
    sget-object v6, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 697
    .line 698
    if-eqz v2, :cond_33

    .line 699
    .line 700
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 701
    .line 702
    .line 703
    move-result v2

    .line 704
    move v8, v11

    .line 705
    :goto_f
    if-ge v8, v2, :cond_30

    .line 706
    .line 707
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v9

    .line 711
    move-object v12, v9

    .line 712
    check-cast v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 713
    .line 714
    iget-boolean v12, v12, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->pressed:Z

    .line 715
    .line 716
    if-eqz v12, :cond_2f

    .line 717
    .line 718
    goto :goto_10

    .line 719
    :cond_2f
    add-int/lit8 v8, v8, 0x1

    .line 720
    .line 721
    goto :goto_f

    .line 722
    :cond_30
    const/4 v9, 0x0

    .line 723
    :goto_10
    check-cast v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;

    .line 724
    .line 725
    if-nez v9, :cond_32

    .line 726
    .line 727
    iget-boolean v1, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 728
    .line 729
    if-nez v1, :cond_31

    .line 730
    .line 731
    invoke-static {v10}, Landroidx/compose/foundation/gestures/ScrollableKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;)Z

    .line 732
    .line 733
    .line 734
    move-result v1

    .line 735
    if-eqz v1, :cond_31

    .line 736
    .line 737
    new-instance v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 738
    .line 739
    invoke-direct {v1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 743
    .line 744
    .line 745
    move-result-object v16

    .line 746
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 747
    .line 748
    iget-object v3, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->touchSmooth:Lokio/PriorityQueue;

    .line 749
    .line 750
    iget-wide v8, v5, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->nodeOffset:J

    .line 751
    .line 752
    move-object/from16 v19, v1

    .line 753
    .line 754
    move-object/from16 v18, v2

    .line 755
    .line 756
    move-object/from16 v20, v3

    .line 757
    .line 758
    move-wide/from16 v21, v8

    .line 759
    .line 760
    move-object/from16 v17, v10

    .line 761
    .line 762
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/gestures/ScrollableKt;->addIndirectPointerInputChange-Qf4Zb88(Landroidx/paging/HintHandler;Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Lokio/PriorityQueue;J)V

    .line 763
    .line 764
    .line 765
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 766
    .line 767
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 772
    .line 773
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    .line 774
    .line 775
    .line 776
    move-result v1

    .line 777
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 778
    .line 779
    .line 780
    move-result-object v2

    .line 781
    invoke-static {v1, v1}, Lkotlin/ResultKt;->Velocity(FF)J

    .line 782
    .line 783
    .line 784
    move-result-wide v3

    .line 785
    invoke-virtual {v2, v3, v4}, Landroidx/paging/HintHandler;->calculateVelocity-AH228Gc(J)J

    .line 786
    .line 787
    .line 788
    move-result-wide v1

    .line 789
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 790
    .line 791
    .line 792
    move-result-object v3

    .line 793
    iget-object v3, v3, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 794
    .line 795
    check-cast v3, Lcoil3/memory/RealStrongMemoryCache;

    .line 796
    .line 797
    iget-object v4, v3, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 800
    .line 801
    iget-object v6, v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 802
    .line 803
    check-cast v6, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 804
    .line 805
    const/4 v8, 0x0

    .line 806
    invoke-static {v8, v6}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 807
    .line 808
    .line 809
    iput v11, v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 810
    .line 811
    iget-object v4, v3, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 812
    .line 813
    check-cast v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 814
    .line 815
    iget-object v6, v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 816
    .line 817
    check-cast v6, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 818
    .line 819
    invoke-static {v8, v6}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 820
    .line 821
    .line 822
    iput v11, v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 823
    .line 824
    iput-wide v14, v3, Lcoil3/memory/RealStrongMemoryCache;->initialMaxSize:J

    .line 825
    .line 826
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 827
    .line 828
    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->toValidVelocity-TH1AsA0(J)J

    .line 829
    .line 830
    .line 831
    move-result-wide v1

    .line 832
    invoke-direct {v3, v1, v2, v7}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZ)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/gestures/ScrollableNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 836
    .line 837
    .line 838
    goto :goto_11

    .line 839
    :cond_31
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/gestures/ScrollableNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 840
    .line 841
    .line 842
    :goto_11
    invoke-virtual {v5}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 843
    .line 844
    .line 845
    return-void

    .line 846
    :cond_32
    iget-wide v0, v9, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->id:J

    .line 847
    .line 848
    iput-wide v0, v4, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging;->pointerId:J

    .line 849
    .line 850
    return-void

    .line 851
    :cond_33
    iget-boolean v1, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 852
    .line 853
    if-eqz v1, :cond_34

    .line 854
    .line 855
    invoke-virtual {v0, v6}, Landroidx/compose/foundation/gestures/ScrollableNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 856
    .line 857
    .line 858
    return-void

    .line 859
    :cond_34
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 860
    .line 861
    new-instance v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 862
    .line 863
    invoke-direct {v2, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 864
    .line 865
    .line 866
    invoke-static {v10, v1, v2, v7}, Landroidx/compose/foundation/gestures/ScrollableKt;->positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    .line 867
    .line 868
    .line 869
    move-result-wide v1

    .line 870
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 871
    .line 872
    .line 873
    move-result v1

    .line 874
    const/4 v2, 0x0

    .line 875
    cmpg-float v1, v1, v2

    .line 876
    .line 877
    if-nez v1, :cond_35

    .line 878
    .line 879
    goto :goto_12

    .line 880
    :cond_35
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 881
    .line 882
    new-instance v1, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 883
    .line 884
    invoke-direct {v1, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 885
    .line 886
    .line 887
    invoke-static {v10, v0, v1, v11}, Landroidx/compose/foundation/gestures/ScrollableKt;->positionChangeInternal-wfG_k4k(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;Z)J

    .line 888
    .line 889
    .line 890
    move-result-wide v0

    .line 891
    new-instance v2, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;

    .line 892
    .line 893
    invoke-direct {v2, v3}, Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;-><init>(I)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v5, v10, v2, v0, v1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->sendDragEvent-Eu1f8Dk(Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;Landroidx/compose/ui/input/indirect/IndirectPointerEventPrimaryDirectionalMotionAxis;J)V

    .line 897
    .line 898
    .line 899
    iput-boolean v7, v10, Landroidx/compose/ui/input/indirect/IndirectPointerInputChange;->isConsumed:Z

    .line 900
    .line 901
    return-void

    .line 902
    :cond_36
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 903
    .line 904
    .line 905
    :cond_37
    :goto_12
    return-void
.end method

.method public final onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->PageDown:J

    .line 11
    .line 12
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sget-wide v4, Landroidx/compose/ui/input/key/Key;->PageUp:J

    .line 27
    .line 28
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x2

    .line 39
    if-ne v0, v2, :cond_5

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_5

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 48
    .line 49
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 50
    .line 51
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 52
    .line 53
    const/4 v3, 0x1

    .line 54
    if-ne v0, v2, :cond_1

    .line 55
    .line 56
    move v1, v3

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    const/16 v2, 0x20

    .line 59
    .line 60
    const-wide v4, 0xffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    iget-object v6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getViewportSizeOrZero-YbymL2g$foundation()J

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    and-long/2addr v6, v4

    .line 74
    long-to-int v1, v6

    .line 75
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v6

    .line 83
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->PageUp:J

    .line 84
    .line 85
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    int-to-float p1, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    int-to-float p1, v1

    .line 94
    neg-float p1, p1

    .line 95
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    int-to-long v0, v0

    .line 100
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    int-to-long v6, p1

    .line 105
    shl-long/2addr v0, v2

    .line 106
    and-long/2addr v4, v6

    .line 107
    or-long/2addr v0, v4

    .line 108
    :goto_1
    move-wide v6, v0

    .line 109
    goto :goto_3

    .line 110
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->getViewportSizeOrZero-YbymL2g$foundation()J

    .line 111
    .line 112
    .line 113
    move-result-wide v6

    .line 114
    shr-long/2addr v6, v2

    .line 115
    long-to-int v1, v6

    .line 116
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->Key(I)J

    .line 121
    .line 122
    .line 123
    move-result-wide v6

    .line 124
    sget-wide v8, Landroidx/compose/ui/input/key/Key;->PageUp:J

    .line 125
    .line 126
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->equals-impl0(JJ)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    int-to-float p1, v1

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    int-to-float p1, v1

    .line 135
    neg-float p1, p1

    .line 136
    :goto_2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    int-to-long v6, p1

    .line 141
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    int-to-long v0, p1

    .line 146
    shl-long/2addr v6, v2

    .line 147
    and-long/2addr v0, v4

    .line 148
    or-long/2addr v0, v6

    .line 149
    goto :goto_1

    .line 150
    :goto_3
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    new-instance v4, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    .line 155
    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v8, 0x0

    .line 158
    move-object v5, p0

    .line 159
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;JLkotlin/coroutines/Continuation;I)V

    .line 160
    .line 161
    .line 162
    const/4 p0, 0x3

    .line 163
    invoke-static {p1, v8, v8, v4, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 164
    .line 165
    .line 166
    return v3

    .line 167
    :cond_5
    return v1
.end method

.method public final onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v10, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v11, 0x0

    .line 14
    move v2, v11

    .line 15
    :goto_0
    if-ge v2, v1, :cond_3b

    .line 16
    .line 17
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 22
    .line 23
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 24
    .line 25
    iget v3, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 26
    .line 27
    new-instance v5, Landroidx/compose/ui/input/pointer/PointerType;

    .line 28
    .line 29
    invoke-direct {v5, v3}, Landroidx/compose/ui/input/pointer/PointerType;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_3a

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    iput-boolean v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForPointerInputEvents:Z

    .line 46
    .line 47
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 48
    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    new-instance v2, Landroidx/compose/foundation/GestureNode;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Landroidx/compose/foundation/GestureNode;-><init>(Landroidx/compose/foundation/GestureConnection;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 57
    .line 58
    .line 59
    iput-object v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 60
    .line 61
    :cond_0
    iget-boolean v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 62
    .line 63
    if-eqz v2, :cond_3b

    .line 64
    .line 65
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 66
    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 70
    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    new-instance v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 74
    .line 75
    sget-object v3, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->NotInitialized:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 81
    .line 82
    iput-boolean v11, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 83
    .line 84
    iput-object v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->_awaitDownState:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 85
    .line 86
    :cond_1
    iput-object v2, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 87
    .line 88
    :cond_2
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 89
    .line 90
    const-wide v4, 0x7fffffffffffffffL

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const-wide/16 v6, 0x0

    .line 96
    .line 97
    if-eqz v3, :cond_a

    .line 98
    .line 99
    check-cast v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;

    .line 100
    .line 101
    iget-object v3, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_3

    .line 108
    .line 109
    goto/16 :goto_16

    .line 110
    .line 111
    :cond_3
    invoke-static {v8, v11, v11}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->isChangedToDown(Landroidx/compose/ui/input/pointer/PointerEvent;ZZ)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_4

    .line 116
    .line 117
    goto/16 :goto_16

    .line 118
    .line 119
    :cond_4
    iget-object v3, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 120
    .line 121
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 126
    .line 127
    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 128
    .line 129
    sget-object v14, Landroidx/compose/foundation/gestures/DragGestureNode$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 130
    .line 131
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    aget v13, v14, v13

    .line 136
    .line 137
    if-ne v13, v1, :cond_6

    .line 138
    .line 139
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->startDragImmediately()Z

    .line 140
    .line 141
    .line 142
    move-result v13

    .line 143
    if-nez v13, :cond_5

    .line 144
    .line 145
    sget-object v13, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_5
    sget-object v13, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 152
    .line 153
    :goto_1
    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->awaitTouchSlop:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 154
    .line 155
    sget-object v14, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 156
    .line 157
    if-ne v9, v14, :cond_7

    .line 158
    .line 159
    sget-object v14, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->No:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 160
    .line 161
    if-ne v13, v14, :cond_7

    .line 162
    .line 163
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 164
    .line 165
    .line 166
    iput-boolean v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 167
    .line 168
    :cond_7
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 169
    .line 170
    if-ne v9, v1, :cond_3b

    .line 171
    .line 172
    sget-object v1, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;->Yes:Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown$AwaitTouchSlop;

    .line 173
    .line 174
    if-ne v13, v1, :cond_8

    .line 175
    .line 176
    move-object v1, v3

    .line 177
    iget-wide v2, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 178
    .line 179
    const-wide/16 v4, 0x0

    .line 180
    .line 181
    const/16 v6, 0xc

    .line 182
    .line 183
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/ScrollableNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_16

    .line 187
    .line 188
    :cond_8
    move-object v1, v3

    .line 189
    iget-boolean v2, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitDown;->consumedOnInitial:Z

    .line 190
    .line 191
    if-eqz v2, :cond_3b

    .line 192
    .line 193
    invoke-virtual {v0, v1, v1, v6, v7}, Landroidx/compose/foundation/gestures/ScrollableNode;->sendDragStart-0AR0LA0(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v6, v7, v1}, Landroidx/compose/foundation/gestures/ScrollableNode;->sendDragEvent-Uv8p0NA(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 197
    .line 198
    .line 199
    iget-wide v1, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 200
    .line 201
    iget-object v3, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 202
    .line 203
    if-nez v3, :cond_9

    .line 204
    .line 205
    new-instance v3, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 206
    .line 207
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 208
    .line 209
    .line 210
    iput-wide v4, v3, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 211
    .line 212
    iput-object v3, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 213
    .line 214
    :cond_9
    iput-wide v1, v3, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 215
    .line 216
    iput-object v3, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 217
    .line 218
    goto/16 :goto_16

    .line 219
    .line 220
    :cond_a
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 221
    .line 222
    if-eqz v3, :cond_25

    .line 223
    .line 224
    check-cast v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;

    .line 225
    .line 226
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 227
    .line 228
    if-ne v9, v3, :cond_b

    .line 229
    .line 230
    goto/16 :goto_16

    .line 231
    .line 232
    :cond_b
    iget-object v3, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    move v7, v11

    .line 239
    :goto_2
    if-ge v7, v6, :cond_d

    .line 240
    .line 241
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v13

    .line 245
    move-object v14, v13

    .line 246
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 247
    .line 248
    iget-wide v14, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 249
    .line 250
    move-object/from16 p4, v13

    .line 251
    .line 252
    iget-wide v12, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 253
    .line 254
    invoke-static {v14, v15, v12, v13}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    if-eqz v12, :cond_c

    .line 259
    .line 260
    move-object/from16 v13, p4

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_d
    const/4 v13, 0x0

    .line 267
    :goto_3
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 268
    .line 269
    if-nez v13, :cond_11

    .line 270
    .line 271
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    move v7, v11

    .line 276
    :goto_4
    if-ge v7, v6, :cond_f

    .line 277
    .line 278
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    move-object v13, v12

    .line 283
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 284
    .line 285
    iget-boolean v13, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 286
    .line 287
    if-eqz v13, :cond_e

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_f
    const/4 v12, 0x0

    .line 294
    :goto_5
    move-object v13, v12

    .line 295
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 296
    .line 297
    if-nez v13, :cond_10

    .line 298
    .line 299
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitDownState()V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_16

    .line 303
    .line 304
    :cond_10
    iget-wide v6, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 305
    .line 306
    iput-wide v6, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 307
    .line 308
    :cond_11
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 309
    .line 310
    const-string v7, "AwaitTouchSlop.touchSlopDetector was not initialized"

    .line 311
    .line 312
    const-string v12, "AwaitTouchSlop.initialDown was not initialized"

    .line 313
    .line 314
    if-ne v9, v6, :cond_20

    .line 315
    .line 316
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    if-nez v6, :cond_1d

    .line 321
    .line 322
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-eqz v6, :cond_15

    .line 327
    .line 328
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    move v4, v11

    .line 333
    :goto_6
    if-ge v4, v1, :cond_13

    .line 334
    .line 335
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    move-object v6, v5

    .line 340
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 341
    .line 342
    iget-boolean v6, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 343
    .line 344
    if-eqz v6, :cond_12

    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_13
    const/4 v5, 0x0

    .line 351
    :goto_7
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 352
    .line 353
    if-nez v5, :cond_14

    .line 354
    .line 355
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitDownState()V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_b

    .line 359
    .line 360
    :cond_14
    iget-wide v3, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 361
    .line 362
    iput-wide v3, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 363
    .line 364
    goto/16 :goto_b

    .line 365
    .line 366
    :cond_15
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 367
    .line 368
    invoke-static {v0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    check-cast v3, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 373
    .line 374
    iget v6, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 375
    .line 376
    invoke-static {v3, v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    iget-object v6, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 381
    .line 382
    if-eqz v6, :cond_1c

    .line 383
    .line 384
    invoke-static {v13, v1}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 385
    .line 386
    .line 387
    move-result-wide v14

    .line 388
    invoke-virtual {v6, v3, v14, v15, v1}, Lokhttp3/internal/http1/HeadersReader;->getPostSlopOffset-qto3Fdw(FJZ)J

    .line 389
    .line 390
    .line 391
    move-result-wide v14

    .line 392
    const-wide v16, 0x7fffffff7fffffffL

    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    and-long v16, v14, v16

    .line 398
    .line 399
    const-wide v18, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    cmp-long v3, v16, v18

    .line 405
    .line 406
    if-eqz v3, :cond_1b

    .line 407
    .line 408
    invoke-virtual {v0, v13}, Landroidx/compose/foundation/gestures/ScrollableNode;->isInterested(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 409
    .line 410
    .line 411
    move-result v3

    .line 412
    sget-object v6, Landroidx/compose/foundation/GestureNode;->TraverseKey:Landroidx/compose/foundation/GestureNode$TraverseKey;

    .line 413
    .line 414
    invoke-static {v0, v6}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/DelegatingNode;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    instance-of v11, v6, Landroidx/compose/foundation/GestureNode;

    .line 419
    .line 420
    if-eqz v11, :cond_16

    .line 421
    .line 422
    check-cast v6, Landroidx/compose/foundation/GestureNode;

    .line 423
    .line 424
    goto :goto_8

    .line 425
    :cond_16
    const/4 v6, 0x0

    .line 426
    :goto_8
    if-eqz v6, :cond_17

    .line 427
    .line 428
    iget-object v6, v6, Landroidx/compose/foundation/GestureNode;->gestureConnection:Landroidx/compose/foundation/GestureConnection;

    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_17
    const/4 v6, 0x0

    .line 432
    :goto_9
    if-eqz v6, :cond_18

    .line 433
    .line 434
    invoke-interface {v6, v13}, Landroidx/compose/foundation/GestureConnection;->isInterested(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 435
    .line 436
    .line 437
    move-result v6

    .line 438
    if-ne v6, v1, :cond_18

    .line 439
    .line 440
    move v6, v1

    .line 441
    goto :goto_a

    .line 442
    :cond_18
    const/4 v6, 0x0

    .line 443
    :goto_a
    if-nez v3, :cond_19

    .line 444
    .line 445
    if-eqz v6, :cond_19

    .line 446
    .line 447
    iput-boolean v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 448
    .line 449
    goto :goto_b

    .line 450
    :cond_19
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 451
    .line 452
    .line 453
    iget-object v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 454
    .line 455
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0, v1, v13, v14, v15}, Landroidx/compose/foundation/gestures/ScrollableNode;->sendDragStart-0AR0LA0(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v0, v14, v15, v13}, Landroidx/compose/foundation/gestures/ScrollableNode;->sendDragEvent-Uv8p0NA(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 462
    .line 463
    .line 464
    iget-wide v14, v13, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 465
    .line 466
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 467
    .line 468
    if-nez v1, :cond_1a

    .line 469
    .line 470
    new-instance v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 471
    .line 472
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 473
    .line 474
    .line 475
    iput-wide v4, v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 476
    .line 477
    iput-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->_draggingState:Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 478
    .line 479
    :cond_1a
    iput-wide v14, v1, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 480
    .line 481
    iput-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->currentDragState:Landroidx/compose/foundation/gestures/ScrollableKt;

    .line 482
    .line 483
    goto :goto_b

    .line 484
    :cond_1b
    iput-boolean v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 485
    .line 486
    goto :goto_b

    .line 487
    :cond_1c
    const-string v1, "Touch slop detector not initialized."

    .line 488
    .line 489
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    goto :goto_c

    .line 493
    :cond_1d
    iget-object v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 494
    .line 495
    if-eqz v1, :cond_1f

    .line 496
    .line 497
    iget-wide v3, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 498
    .line 499
    iget-object v5, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 500
    .line 501
    if-eqz v5, :cond_1e

    .line 502
    .line 503
    invoke-virtual {v0, v1, v3, v4, v5}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/pointer/PointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V

    .line 504
    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_1e
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    goto :goto_c

    .line 511
    :cond_1f
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    goto :goto_c

    .line 515
    :cond_20
    :goto_b
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 516
    .line 517
    if-ne v9, v1, :cond_24

    .line 518
    .line 519
    iget-boolean v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 520
    .line 521
    if-eqz v1, :cond_24

    .line 522
    .line 523
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 524
    .line 525
    .line 526
    move-result v1

    .line 527
    if-eqz v1, :cond_23

    .line 528
    .line 529
    iget-object v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 530
    .line 531
    if-eqz v1, :cond_22

    .line 532
    .line 533
    iget-wide v2, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->pointerId:J

    .line 534
    .line 535
    iget-object v4, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->touchSlopDetector:Lokhttp3/internal/http1/HeadersReader;

    .line 536
    .line 537
    if-eqz v4, :cond_21

    .line 538
    .line 539
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitGesturePickupState-rnUCldI(Landroidx/compose/ui/input/pointer/PointerInputChange;JLokhttp3/internal/http1/HeadersReader;)V

    .line 540
    .line 541
    .line 542
    goto :goto_c

    .line 543
    :cond_21
    invoke-static {v7}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    goto :goto_c

    .line 547
    :cond_22
    invoke-static {v12}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    goto :goto_c

    .line 551
    :cond_23
    const/4 v1, 0x0

    .line 552
    iput-boolean v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitTouchSlop;->verifyConsumptionInFinalPass:Z

    .line 553
    .line 554
    move v11, v1

    .line 555
    goto/16 :goto_16

    .line 556
    .line 557
    :cond_24
    :goto_c
    const/4 v11, 0x0

    .line 558
    goto/16 :goto_16

    .line 559
    .line 560
    :cond_25
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 561
    .line 562
    if-eqz v3, :cond_2d

    .line 563
    .line 564
    check-cast v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;

    .line 565
    .line 566
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 567
    .line 568
    if-eq v9, v3, :cond_26

    .line 569
    .line 570
    goto :goto_c

    .line 571
    :cond_26
    iget-object v3, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 572
    .line 573
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 574
    .line 575
    .line 576
    move-result v4

    .line 577
    const/4 v5, 0x0

    .line 578
    :goto_d
    if-ge v5, v4, :cond_28

    .line 579
    .line 580
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v6

    .line 584
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 585
    .line 586
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 587
    .line 588
    .line 589
    move-result v6

    .line 590
    if-eqz v6, :cond_27

    .line 591
    .line 592
    const/4 v1, 0x0

    .line 593
    goto :goto_e

    .line 594
    :cond_27
    add-int/lit8 v5, v5, 0x1

    .line 595
    .line 596
    goto :goto_d

    .line 597
    :cond_28
    :goto_e
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    const/4 v5, 0x0

    .line 602
    :goto_f
    if-ge v5, v4, :cond_2c

    .line 603
    .line 604
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v6

    .line 608
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 609
    .line 610
    iget-boolean v6, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 611
    .line 612
    if-eqz v6, :cond_2b

    .line 613
    .line 614
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    if-eqz v4, :cond_29

    .line 619
    .line 620
    goto :goto_10

    .line 621
    :cond_29
    if-eqz v1, :cond_24

    .line 622
    .line 623
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 628
    .line 629
    iget-wide v3, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 630
    .line 631
    iget-object v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 632
    .line 633
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 634
    .line 635
    .line 636
    iget-wide v5, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 637
    .line 638
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 639
    .line 640
    .line 641
    move-result-wide v4

    .line 642
    iget-object v1, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->initialDown:Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 643
    .line 644
    if-eqz v1, :cond_2a

    .line 645
    .line 646
    iget-wide v2, v2, Landroidx/compose/foundation/gestures/DragDetectionState$AwaitGesturePickup;->pointerId:J

    .line 647
    .line 648
    const/16 v6, 0x8

    .line 649
    .line 650
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitTouchSlopState-aWI9W7U$default(Landroidx/compose/foundation/gestures/ScrollableNode;Landroidx/compose/ui/input/pointer/PointerInputChange;JJI)V

    .line 651
    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_2a
    const-string v1, "AwaitGesturePickup.initialDown was not initialized."

    .line 655
    .line 656
    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    goto :goto_c

    .line 660
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    .line 661
    .line 662
    goto :goto_f

    .line 663
    :cond_2c
    :goto_10
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitDownState()V

    .line 664
    .line 665
    .line 666
    goto :goto_c

    .line 667
    :cond_2d
    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 668
    .line 669
    if-eqz v3, :cond_39

    .line 670
    .line 671
    check-cast v2, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;

    .line 672
    .line 673
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 674
    .line 675
    if-eq v9, v3, :cond_2e

    .line 676
    .line 677
    goto :goto_c

    .line 678
    :cond_2e
    iget-wide v3, v2, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 679
    .line 680
    iget-object v5, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 681
    .line 682
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 683
    .line 684
    .line 685
    move-result v11

    .line 686
    const/4 v12, 0x0

    .line 687
    :goto_11
    if-ge v12, v11, :cond_30

    .line 688
    .line 689
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v13

    .line 693
    move-object v14, v13

    .line 694
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 695
    .line 696
    iget-wide v14, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 697
    .line 698
    invoke-static {v14, v15, v3, v4}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    .line 699
    .line 700
    .line 701
    move-result v14

    .line 702
    if-eqz v14, :cond_2f

    .line 703
    .line 704
    goto :goto_12

    .line 705
    :cond_2f
    add-int/lit8 v12, v12, 0x1

    .line 706
    .line 707
    goto :goto_11

    .line 708
    :cond_30
    const/4 v13, 0x0

    .line 709
    :goto_12
    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 710
    .line 711
    if-nez v13, :cond_31

    .line 712
    .line 713
    goto/16 :goto_c

    .line 714
    .line 715
    :cond_31
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 716
    .line 717
    .line 718
    move-result v3

    .line 719
    sget-object v4, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 720
    .line 721
    if-eqz v3, :cond_36

    .line 722
    .line 723
    iget-object v1, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    .line 724
    .line 725
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 726
    .line 727
    .line 728
    move-result v3

    .line 729
    const/4 v5, 0x0

    .line 730
    :goto_13
    if-ge v5, v3, :cond_33

    .line 731
    .line 732
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v11

    .line 736
    move-object v12, v11

    .line 737
    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 738
    .line 739
    iget-boolean v12, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 740
    .line 741
    if-eqz v12, :cond_32

    .line 742
    .line 743
    goto :goto_14

    .line 744
    :cond_32
    add-int/lit8 v5, v5, 0x1

    .line 745
    .line 746
    goto :goto_13

    .line 747
    :cond_33
    const/4 v11, 0x0

    .line 748
    :goto_14
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 749
    .line 750
    if-nez v11, :cond_35

    .line 751
    .line 752
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 753
    .line 754
    .line 755
    move-result v1

    .line 756
    if-nez v1, :cond_34

    .line 757
    .line 758
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    if-eqz v1, :cond_34

    .line 763
    .line 764
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 765
    .line 766
    .line 767
    move-result-object v1

    .line 768
    invoke-static {v1, v13, v6, v7}, Landroidx/work/Operation$State;->addPointerInputChange-0AR0LA0(Landroidx/paging/HintHandler;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 769
    .line 770
    .line 771
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->LocalViewConfiguration:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 772
    .line 773
    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v1

    .line 777
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 778
    .line 779
    invoke-interface {v1}, Landroidx/compose/ui/platform/ViewConfiguration;->getMaximumFlingVelocity()F

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 784
    .line 785
    .line 786
    move-result-object v2

    .line 787
    invoke-static {v1, v1}, Lkotlin/ResultKt;->Velocity(FF)J

    .line 788
    .line 789
    .line 790
    move-result-wide v3

    .line 791
    invoke-virtual {v2, v3, v4}, Landroidx/paging/HintHandler;->calculateVelocity-AH228Gc(J)J

    .line 792
    .line 793
    .line 794
    move-result-wide v1

    .line 795
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 796
    .line 797
    .line 798
    move-result-object v3

    .line 799
    iget-object v3, v3, Landroidx/paging/HintHandler;->state:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v3, Lcoil3/memory/RealStrongMemoryCache;

    .line 802
    .line 803
    iget-object v4, v3, Lcoil3/memory/RealStrongMemoryCache;->weakMemoryCache:Ljava/lang/Object;

    .line 804
    .line 805
    check-cast v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 806
    .line 807
    iget-object v5, v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 808
    .line 809
    check-cast v5, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 810
    .line 811
    const/4 v11, 0x0

    .line 812
    invoke-static {v11, v5}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 813
    .line 814
    .line 815
    const/4 v5, 0x0

    .line 816
    iput v5, v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 817
    .line 818
    iget-object v4, v3, Lcoil3/memory/RealStrongMemoryCache;->cache:Ljava/lang/Object;

    .line 819
    .line 820
    check-cast v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;

    .line 821
    .line 822
    iget-object v12, v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_child:Ljava/lang/Object;

    .line 823
    .line 824
    check-cast v12, [Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    .line 825
    .line 826
    invoke-static {v11, v12}, Lkotlin/collections/ArraysKt___ArraysKt;->fill$default(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 827
    .line 828
    .line 829
    iput v5, v4, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->_index:I

    .line 830
    .line 831
    iput-wide v6, v3, Lcoil3/memory/RealStrongMemoryCache;->initialMaxSize:J

    .line 832
    .line 833
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 834
    .line 835
    .line 836
    move-result-object v3

    .line 837
    new-instance v4, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 838
    .line 839
    invoke-static {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->toValidVelocity-TH1AsA0(J)J

    .line 840
    .line 841
    .line 842
    move-result-wide v1

    .line 843
    invoke-direct {v4, v1, v2, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZ)V

    .line 844
    .line 845
    .line 846
    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    iput-boolean v5, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForPointerInputEvents:Z

    .line 850
    .line 851
    goto :goto_15

    .line 852
    :cond_34
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 853
    .line 854
    .line 855
    move-result-object v1

    .line 856
    invoke-interface {v1, v4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    .line 858
    .line 859
    :goto_15
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitDownState()V

    .line 860
    .line 861
    .line 862
    goto/16 :goto_c

    .line 863
    .line 864
    :cond_35
    iget-wide v3, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 865
    .line 866
    iput-wide v3, v2, Landroidx/compose/foundation/gestures/DragDetectionState$Dragging;->pointerId:J

    .line 867
    .line 868
    goto/16 :goto_c

    .line 869
    .line 870
    :cond_36
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 871
    .line 872
    .line 873
    move-result v2

    .line 874
    if-eqz v2, :cond_37

    .line 875
    .line 876
    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 877
    .line 878
    .line 879
    move-result-object v1

    .line 880
    invoke-interface {v1, v4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    goto/16 :goto_c

    .line 884
    .line 885
    :cond_37
    invoke-static {v13, v1}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 886
    .line 887
    .line 888
    move-result-wide v1

    .line 889
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    .line 890
    .line 891
    .line 892
    move-result v1

    .line 893
    const/4 v2, 0x0

    .line 894
    cmpg-float v1, v1, v2

    .line 895
    .line 896
    if-nez v1, :cond_38

    .line 897
    .line 898
    goto/16 :goto_c

    .line 899
    .line 900
    :cond_38
    const/4 v11, 0x0

    .line 901
    invoke-static {v13, v11}, Landroidx/compose/ui/input/pointer/PointerId;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    .line 902
    .line 903
    .line 904
    move-result-wide v1

    .line 905
    invoke-virtual {v0, v1, v2, v13}, Landroidx/compose/foundation/gestures/ScrollableNode;->sendDragEvent-Uv8p0NA(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 909
    .line 910
    .line 911
    goto :goto_16

    .line 912
    :cond_39
    const/4 v11, 0x0

    .line 913
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 914
    .line 915
    .line 916
    goto :goto_16

    .line 917
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    .line 918
    .line 919
    goto/16 :goto_0

    .line 920
    .line 921
    :cond_3b
    :goto_16
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 922
    .line 923
    if-nez v1, :cond_3c

    .line 924
    .line 925
    new-instance v1, Landroidx/compose/foundation/GestureNode;

    .line 926
    .line 927
    invoke-direct {v1, v0}, Landroidx/compose/foundation/GestureNode;-><init>(Landroidx/compose/foundation/GestureConnection;)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/DelegatingNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    .line 931
    .line 932
    .line 933
    iput-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->gestureNode:Landroidx/compose/foundation/GestureNode;

    .line 934
    .line 935
    :cond_3c
    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 936
    .line 937
    if-eqz v1, :cond_4c

    .line 938
    .line 939
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 940
    .line 941
    const/4 v12, 0x3

    .line 942
    iget-object v13, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 943
    .line 944
    const/4 v14, 0x6

    .line 945
    if-ne v9, v1, :cond_3e

    .line 946
    .line 947
    iget v1, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 948
    .line 949
    if-ne v1, v14, :cond_3e

    .line 950
    .line 951
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 952
    .line 953
    if-nez v1, :cond_3d

    .line 954
    .line 955
    new-instance v15, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 956
    .line 957
    new-instance v1, Landroidx/appcompat/widget/PopupMenu$1;

    .line 958
    .line 959
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireView(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 964
    .line 965
    .line 966
    move-result-object v2

    .line 967
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 968
    .line 969
    .line 970
    move-result-object v2

    .line 971
    const/16 v3, 0xe

    .line 972
    .line 973
    invoke-direct {v1, v3, v2}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(ILjava/lang/Object;)V

    .line 974
    .line 975
    .line 976
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;

    .line 977
    .line 978
    const/4 v6, 0x4

    .line 979
    const/4 v7, 0x1

    .line 980
    move-object v2, v1

    .line 981
    const/4 v1, 0x2

    .line 982
    const-class v3, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 983
    .line 984
    const-string v4, "onWheelScrollStopped"

    .line 985
    .line 986
    const-string v5, "onWheelScrollStopped-TH1AsA0(J)V"

    .line 987
    .line 988
    move-object v11, v2

    .line 989
    move-object/from16 v2, p0

    .line 990
    .line 991
    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 992
    .line 993
    .line 994
    move-object v1, v0

    .line 995
    move-object v0, v2

    .line 996
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 1001
    .line 1002
    invoke-direct {v15, v13, v11, v1, v2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Landroidx/compose/ui/unit/Density;)V

    .line 1003
    .line 1004
    .line 1005
    iput-object v15, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 1006
    .line 1007
    move-object v1, v15

    .line 1008
    :cond_3d
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v2

    .line 1012
    iget-object v3, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->receivingMouseWheelEventsJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1013
    .line 1014
    if-nez v3, :cond_3e

    .line 1015
    .line 1016
    new-instance v3, Landroidx/datastore/core/SimpleActor$offer$2;

    .line 1017
    .line 1018
    const/4 v4, 0x4

    .line 1019
    const/4 v11, 0x0

    .line 1020
    invoke-direct {v3, v4, v1, v11}, Landroidx/datastore/core/SimpleActor$offer$2;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1021
    .line 1022
    .line 1023
    invoke-static {v2, v11, v11, v3, v12}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v2

    .line 1027
    iput-object v2, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->receivingMouseWheelEventsJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1028
    .line 1029
    :cond_3e
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->mouseWheelScrollingLogic:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 1030
    .line 1031
    if-eqz v1, :cond_42

    .line 1032
    .line 1033
    iget v2, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 1034
    .line 1035
    if-ne v2, v14, :cond_42

    .line 1036
    .line 1037
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 1038
    .line 1039
    .line 1040
    move-result v2

    .line 1041
    const/4 v3, 0x0

    .line 1042
    :goto_17
    if-ge v3, v2, :cond_40

    .line 1043
    .line 1044
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v4

    .line 1048
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1049
    .line 1050
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 1051
    .line 1052
    .line 1053
    move-result v4

    .line 1054
    if-eqz v4, :cond_3f

    .line 1055
    .line 1056
    goto :goto_18

    .line 1057
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    .line 1058
    .line 1059
    goto :goto_17

    .line 1060
    :cond_40
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 1061
    .line 1062
    if-ne v9, v2, :cond_41

    .line 1063
    .line 1064
    iget-boolean v2, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->isScrolling:Z

    .line 1065
    .line 1066
    if-eqz v2, :cond_41

    .line 1067
    .line 1068
    invoke-virtual {v1, v8}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->onMouseWheel-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 1069
    .line 1070
    .line 1071
    invoke-static {v8}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->consume$foundation(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 1072
    .line 1073
    .line 1074
    :cond_41
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 1075
    .line 1076
    if-ne v9, v2, :cond_42

    .line 1077
    .line 1078
    iget-boolean v2, v1, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->isScrolling:Z

    .line 1079
    .line 1080
    if-nez v2, :cond_42

    .line 1081
    .line 1082
    invoke-virtual {v1, v8}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->onMouseWheel-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v1

    .line 1086
    if-eqz v1, :cond_42

    .line 1087
    .line 1088
    invoke-static {v8}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->consume$foundation(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 1089
    .line 1090
    .line 1091
    :cond_42
    :goto_18
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 1092
    .line 1093
    const/16 v11, 0xc

    .line 1094
    .line 1095
    const/16 v14, 0xb

    .line 1096
    .line 1097
    const/16 v15, 0xa

    .line 1098
    .line 1099
    if-ne v9, v1, :cond_46

    .line 1100
    .line 1101
    iget v1, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 1102
    .line 1103
    if-ne v1, v15, :cond_43

    .line 1104
    .line 1105
    goto :goto_19

    .line 1106
    :cond_43
    if-ne v1, v14, :cond_44

    .line 1107
    .line 1108
    goto :goto_19

    .line 1109
    :cond_44
    if-ne v1, v11, :cond_46

    .line 1110
    .line 1111
    :goto_19
    iget-object v1, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->trackpadScrollingLogic:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 1112
    .line 1113
    if-nez v1, :cond_45

    .line 1114
    .line 1115
    new-instance v1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 1116
    .line 1117
    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;

    .line 1118
    .line 1119
    const/4 v6, 0x4

    .line 1120
    const/4 v7, 0x2

    .line 1121
    move-object v2, v1

    .line 1122
    const/4 v1, 0x2

    .line 1123
    const-class v3, Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 1124
    .line 1125
    const-string v4, "onTrackpadScrollStopped"

    .line 1126
    .line 1127
    const-string v5, "onTrackpadScrollStopped-TH1AsA0(J)V"

    .line 1128
    .line 1129
    move-object v11, v2

    .line 1130
    move-object/from16 v2, p0

    .line 1131
    .line 1132
    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1133
    .line 1134
    .line 1135
    move-object v1, v0

    .line 1136
    move-object v0, v2

    .line 1137
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    .line 1142
    .line 1143
    invoke-direct {v11, v13, v1, v2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/runtime/internal/ComposableLambdaImpl$invoke$1;Landroidx/compose/ui/unit/Density;)V

    .line 1144
    .line 1145
    .line 1146
    iput-object v11, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->trackpadScrollingLogic:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 1147
    .line 1148
    move-object v1, v11

    .line 1149
    :cond_45
    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v2

    .line 1153
    iget-object v3, v1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->receivingPanEventsJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1154
    .line 1155
    if-nez v3, :cond_46

    .line 1156
    .line 1157
    new-instance v3, Landroidx/paging/FlowExtKt$simpleScan$1;

    .line 1158
    .line 1159
    const/4 v11, 0x0

    .line 1160
    invoke-direct {v3, v12, v1, v11}, Landroidx/paging/FlowExtKt$simpleScan$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-static {v2, v11, v11, v3, v12}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v2

    .line 1167
    iput-object v2, v1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->receivingPanEventsJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 1168
    .line 1169
    :cond_46
    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollableNode;->trackpadScrollingLogic:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 1170
    .line 1171
    if-eqz v0, :cond_4c

    .line 1172
    .line 1173
    iget v1, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    .line 1174
    .line 1175
    if-ne v1, v15, :cond_47

    .line 1176
    .line 1177
    goto :goto_1a

    .line 1178
    :cond_47
    if-ne v1, v14, :cond_48

    .line 1179
    .line 1180
    goto :goto_1a

    .line 1181
    :cond_48
    const/16 v2, 0xc

    .line 1182
    .line 1183
    if-ne v1, v2, :cond_4c

    .line 1184
    .line 1185
    :goto_1a
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 1186
    .line 1187
    .line 1188
    move-result v1

    .line 1189
    const/4 v11, 0x0

    .line 1190
    :goto_1b
    if-ge v11, v1, :cond_4a

    .line 1191
    .line 1192
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v2

    .line 1196
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1197
    .line 1198
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 1199
    .line 1200
    .line 1201
    move-result v2

    .line 1202
    if-eqz v2, :cond_49

    .line 1203
    .line 1204
    goto :goto_1c

    .line 1205
    :cond_49
    add-int/lit8 v11, v11, 0x1

    .line 1206
    .line 1207
    goto :goto_1b

    .line 1208
    :cond_4a
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 1209
    .line 1210
    if-ne v9, v1, :cond_4b

    .line 1211
    .line 1212
    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->isScrolling:Z

    .line 1213
    .line 1214
    if-eqz v1, :cond_4b

    .line 1215
    .line 1216
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->onPan(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 1217
    .line 1218
    .line 1219
    invoke-static {v8}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->consume$foundation(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 1220
    .line 1221
    .line 1222
    :cond_4b
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 1223
    .line 1224
    if-ne v9, v1, :cond_4c

    .line 1225
    .line 1226
    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->isScrolling:Z

    .line 1227
    .line 1228
    if-nez v1, :cond_4c

    .line 1229
    .line 1230
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->onPan(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 1231
    .line 1232
    .line 1233
    move-result v0

    .line 1234
    if-eqz v0, :cond_4c

    .line 1235
    .line 1236
    invoke-static {v8}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->consume$foundation(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    .line 1237
    .line 1238
    .line 1239
    :cond_4c
    :goto_1c
    return-void
.end method

.method public final onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onViewConfigurationChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->onCancelPointerInput()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final processDragCancel(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v3

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 59
    .line 60
    invoke-direct {v5, p1}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 61
    .line 62
    .line 63
    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragCancel$1;->label:I

    .line 64
    .line 65
    invoke-virtual {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    iput-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 73
    .line 74
    :cond_4
    new-instance p1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 75
    .line 76
    const-wide/16 v0, 0x0

    .line 77
    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-direct {p1, v0, v1, v2}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(JZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableNode;->onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    .line 83
    .line 84
    .line 85
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 86
    .line 87
    return-object p0
.end method

.method public final processDragStart(Landroidx/compose/foundation/gestures/DragEvent$DragStarted;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x2

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    if-eq v2, v4, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 40
    .line 41
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 55
    .line 56
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 72
    .line 73
    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 74
    .line 75
    .line 76
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 77
    .line 78
    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 79
    .line 80
    invoke-virtual {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-ne p2, v1, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    :goto_1
    new-instance p2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 93
    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$0:Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 97
    .line 98
    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->L$1:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 99
    .line 100
    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStart$1;->label:I

    .line 101
    .line 102
    invoke-virtual {v2, p2, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-ne v0, v1, :cond_5

    .line 107
    .line 108
    :goto_2
    return-object v1

    .line 109
    :cond_5
    move-object v0, p1

    .line 110
    move-object p1, p2

    .line 111
    :goto_3
    move-object p2, p1

    .line 112
    move-object p1, v0

    .line 113
    :cond_6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 114
    .line 115
    iget-wide p0, p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;->startPoint:J

    .line 116
    .line 117
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p0
.end method

.method public final processDragStop(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 53
    .line 54
    if-eqz p2, :cond_4

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    new-instance v5, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    .line 61
    .line 62
    invoke-direct {v5, p2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->L$0:Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 66
    .line 67
    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureNode$processDragStop$1;->label:I

    .line 68
    .line 69
    invoke-virtual {v2, v5, v0}, Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;->emit(Landroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-ne p2, v1, :cond_3

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    :goto_1
    iput-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableNode;->onDragStopped(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V

    .line 79
    .line 80
    .line 81
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p0
.end method

.method public final requireChannel()Lkotlinx/coroutines/channels/Channel;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "Events channel not initialized."

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

.method public final requireVelocityTracker()Landroidx/paging/HintHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->velocityTracker:Landroidx/paging/HintHandler;

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

.method public final sendDragEvent-Uv8p0NA(JLandroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToScreen-MK-Hz9U(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->previousPositionOnScreen:J

    .line 14
    .line 15
    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->previousPositionOnScreen:J

    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    iget-wide v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->previousPositionOnScreen:J

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-wide v4, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nodeOffset:J

    .line 41
    .line 42
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iput-wide v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nodeOffset:J

    .line 47
    .line 48
    :cond_0
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->previousPositionOnScreen:J

    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-wide v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nodeOffset:J

    .line 55
    .line 56
    invoke-static {v0, p3, v1, v2}, Landroidx/work/Operation$State;->addPointerInputChange-0AR0LA0(Landroidx/paging/HintHandler;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance p3, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-direct {p3, p1, p2, v0}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JZ)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p0, p3}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final sendDragStart-0AR0LA0(Landroidx/compose/ui/input/pointer/PointerInputChange;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->velocityTracker:Landroidx/paging/HintHandler;

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
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->velocityTracker:Landroidx/paging/HintHandler;

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireVelocityTracker()Landroidx/paging/HintHandler;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    invoke-static {v0, p1, v1, v2}, Landroidx/work/Operation$State;->addPointerInputChange-0AR0LA0(Landroidx/paging/HintHandler;Landroidx/compose/ui/input/pointer/PointerInputChange;J)V

    .line 20
    .line 21
    .line 22
    iget-wide v3, p2, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 23
    .line 24
    invoke-static {v3, v4, p3, p4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 25
    .line 26
    .line 27
    move-result-wide p2

    .line 28
    iput-wide v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nodeOffset:J

    .line 29
    .line 30
    iget-object p4, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 31
    .line 32
    iget p1, p1, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 33
    .line 34
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerType;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Landroidx/compose/ui/input/pointer/PointerType;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    const p1, 0x7fffffff

    .line 60
    .line 61
    .line 62
    const/4 p4, 0x6

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-static {p1, p4, v0}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 69
    .line 70
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->startListeningForEvents()V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutCoordinates(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/NodeCoordinator;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v1, v2}, Landroidx/compose/ui/node/NodeCoordinator;->localToScreen-MK-Hz9U(J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    iput-wide v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->previousPositionOnScreen:J

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance p1, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    .line 88
    .line 89
    invoke-direct {p1, p2, p3}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(J)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public final sharePointerInputWithSiblings()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final startDragImmediately()Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->isScrollInProgress()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_8

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 12
    .line 13
    if-eqz p0, :cond_7

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->edgeEffectWrapper:Landroidx/compose/foundation/EdgeEffectWrapper;

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->topEffect:Landroid/widget/EdgeEffect;

    .line 18
    .line 19
    const/16 v1, 0x1f

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .line 26
    if-lt v3, v1, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v2

    .line 34
    :goto_0
    cmpg-float v0, v0, v2

    .line 35
    .line 36
    if-nez v0, :cond_8

    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    .line 44
    if-lt v3, v1, :cond_2

    .line 45
    .line 46
    invoke-static {v0}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v0, v2

    .line 52
    :goto_1
    cmpg-float v0, v0, v2

    .line 53
    .line 54
    if-nez v0, :cond_8

    .line 55
    .line 56
    :cond_3
    iget-object v0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->leftEffect:Landroid/widget/EdgeEffect;

    .line 57
    .line 58
    if-eqz v0, :cond_5

    .line 59
    .line 60
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    if-lt v3, v1, :cond_4

    .line 63
    .line 64
    invoke-static {v0}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    goto :goto_2

    .line 69
    :cond_4
    move v0, v2

    .line 70
    :goto_2
    cmpg-float v0, v0, v2

    .line 71
    .line 72
    if-nez v0, :cond_8

    .line 73
    .line 74
    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/EdgeEffectWrapper;->rightEffect:Landroid/widget/EdgeEffect;

    .line 75
    .line 76
    if-eqz p0, :cond_7

    .line 77
    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 79
    .line 80
    if-lt v0, v1, :cond_6

    .line 81
    .line 82
    invoke-static {p0}, Landroidx/compose/foundation/Api31Impl;->getDistance(Landroid/widget/EdgeEffect;)F

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    goto :goto_3

    .line 87
    :cond_6
    move p0, v2

    .line 88
    :goto_3
    cmpg-float p0, p0, v2

    .line 89
    .line 90
    if-nez p0, :cond_8

    .line 91
    .line 92
    :cond_7
    const/4 p0, 0x0

    .line 93
    return p0

    .line 94
    :cond_8
    const/4 p0, 0x1

    .line 95
    return p0
.end method

.method public final startListeningForEvents()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7fffffff

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->channel:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;

    .line 24
    .line 25
    invoke-direct {v2, p0, v1}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x3

    .line 29
    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final update(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Landroidx/compose/foundation/gestures/BringIntoViewSpec;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;ZZ)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, p7, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollConnection:Lkotlinx/serialization/json/internal/Composer;

    .line 8
    .line 9
    iput-boolean p7, v0, Lkotlinx/serialization/json/internal/Composer;->writingFirst:Z

    .line 10
    .line 11
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-nez p3, :cond_1

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->defaultFlingBehavior:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p3

    .line 20
    :goto_1
    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollingLogic:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 21
    .line 22
    iget-object v5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 23
    .line 24
    invoke-static {v5, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    iput-object p5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 31
    .line 32
    move p5, v1

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    move p5, v2

    .line 35
    :goto_2
    iput-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 36
    .line 37
    iget-object v5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 38
    .line 39
    if-eq v5, p4, :cond_3

    .line 40
    .line 41
    iput-object p4, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 42
    .line 43
    move-object v5, p4

    .line 44
    move p5, v1

    .line 45
    :cond_3
    iget-boolean v6, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    .line 46
    .line 47
    if-eq v6, p8, :cond_4

    .line 48
    .line 49
    iput-boolean p8, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseDirection:Z

    .line 50
    .line 51
    move p5, v1

    .line 52
    :cond_4
    iput-object v3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 55
    .line 56
    iput-object v3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->nestedScrollDispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->contentInViewNode:Landroidx/compose/foundation/gestures/ContentInViewNode;

    .line 59
    .line 60
    iput-object p4, v3, Landroidx/compose/foundation/gestures/ContentInViewNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 61
    .line 62
    iput-boolean p8, v3, Landroidx/compose/foundation/gestures/ContentInViewNode;->reverseDirection:Z

    .line 63
    .line 64
    iput-object p2, v3, Landroidx/compose/foundation/gestures/ContentInViewNode;->bringIntoViewSpec:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    .line 65
    .line 66
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->overscrollEffect:Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;

    .line 67
    .line 68
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 69
    .line 70
    sget-object p1, Landroidx/compose/foundation/gestures/ScrollableKt;->CanDragCalculation:Landroidx/compose/foundation/text/BasicTextKt$$ExternalSyntheticLambda3;

    .line 71
    .line 72
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 73
    .line 74
    if-ne v5, p2, :cond_5

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_5
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 78
    .line 79
    :goto_3
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->canDrag:Lkotlin/jvm/functions/Function1;

    .line 80
    .line 81
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 82
    .line 83
    const/4 p3, 0x0

    .line 84
    if-eq p1, p7, :cond_7

    .line 85
    .line 86
    iput-boolean p7, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->enabled:Z

    .line 87
    .line 88
    if-nez p7, :cond_6

    .line 89
    .line 90
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->disposeInteractionSource$1()V

    .line 91
    .line 92
    .line 93
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 94
    .line 95
    :cond_6
    move p5, v1

    .line 96
    :cond_7
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 97
    .line 98
    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-nez p1, :cond_8

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->disposeInteractionSource$1()V

    .line 105
    .line 106
    .line 107
    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;

    .line 108
    .line 109
    :cond_8
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 110
    .line 111
    if-eq p1, p2, :cond_9

    .line 112
    .line 113
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->orientationLock:Landroidx/compose/foundation/gestures/Orientation;

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_9
    move v1, p5

    .line 117
    :goto_4
    if-eqz v1, :cond_d

    .line 118
    .line 119
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForPointerInputEvents:Z

    .line 120
    .line 121
    sget-object p2, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 122
    .line 123
    if-eqz p1, :cond_b

    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->moveToAwaitDownState()V

    .line 126
    .line 127
    .line 128
    iget-boolean p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    .line 129
    .line 130
    if-eqz p1, :cond_a

    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/ScrollableNode;->requireChannel()Lkotlinx/coroutines/channels/Channel;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    :cond_a
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->velocityTracker:Landroidx/paging/HintHandler;

    .line 140
    .line 141
    :cond_b
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->indirectPointerInputDragCycleDetector:Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;

    .line 142
    .line 143
    if-eqz p1, :cond_d

    .line 144
    .line 145
    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->moveToAwaitDownState()V

    .line 146
    .line 147
    .line 148
    iget-object p4, p1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->node:Landroidx/compose/foundation/gestures/ScrollableNode;

    .line 149
    .line 150
    iget-boolean p5, p4, Landroidx/compose/foundation/gestures/ScrollableNode;->isListeningForEvents:Z

    .line 151
    .line 152
    if-eqz p5, :cond_c

    .line 153
    .line 154
    invoke-virtual {p4, p2}, Landroidx/compose/foundation/gestures/ScrollableNode;->onDragEvent(Landroidx/compose/foundation/gestures/DragEvent;)V

    .line 155
    .line 156
    .line 157
    :cond_c
    iput-object p3, p1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->velocityTracker:Landroidx/paging/HintHandler;

    .line 158
    .line 159
    iget-object p1, p1, Landroidx/compose/foundation/gestures/IndirectPointerInputDragCycleDetector;->offsetSmoother:Lokio/PriorityQueue;

    .line 160
    .line 161
    iput v2, p1, Lokio/PriorityQueue;->size:I

    .line 162
    .line 163
    iget-object p1, p1, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast p1, Landroidx/collection/MutableLongList;

    .line 166
    .line 167
    iput v2, p1, Landroidx/collection/MutableLongList;->_size:I

    .line 168
    .line 169
    :cond_d
    if-eqz v0, :cond_e

    .line 170
    .line 171
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByAction:Landroidx/paging/HintHandler$$ExternalSyntheticLambda0;

    .line 172
    .line 173
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->scrollByOffsetAction:Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    .line 174
    .line 175
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    .line 176
    .line 177
    .line 178
    :cond_e
    return-void
.end method
