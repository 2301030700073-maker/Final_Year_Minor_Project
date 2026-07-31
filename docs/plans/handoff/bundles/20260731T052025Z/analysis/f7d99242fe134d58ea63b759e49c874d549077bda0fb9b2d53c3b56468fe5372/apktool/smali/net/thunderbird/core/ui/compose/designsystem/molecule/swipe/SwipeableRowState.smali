.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accessibilityActions:Lkotlinx/collections/immutable/ImmutableList;

.field public final accessibilityState:Lokhttp3/ConnectionPool;

.field public final animatedOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

.field public final density:Landroidx/compose/ui/unit/Density;

.field public dragAnimationJob:Lkotlinx/coroutines/StandaloneCoroutine;

.field public final draggableState:Landroidx/core/view/MenuHostHelper;

.field public final endToStartBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

.field public final layoutWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final pendingOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

.field public final startToEndBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

.field public final swipeDirection$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final swipeState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;Lkotlinx/collections/immutable/ImmutableList;FLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;FF)V
    .locals 0

    .line 1
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    .line 12
    iput-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->density:Landroidx/compose/ui/unit/Density;

    .line 13
    .line 14
    iput-object p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->startToEndBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 15
    .line 16
    iput-object p4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->endToStartBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 17
    .line 18
    iput-object p5, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->accessibilityActions:Lkotlinx/collections/immutable/ImmutableList;

    .line 19
    .line 20
    new-instance p1, Landroidx/compose/animation/core/Animatable;

    .line 21
    .line 22
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    sget-object p4, Landroidx/compose/animation/core/ArcSplineKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 27
    .line 28
    const/4 p5, 0x0

    .line 29
    const/4 p6, 0x4

    .line 30
    invoke-direct {p1, p3, p4, p5, p6}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->animatedOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 38
    .line 39
    new-instance p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    const/4 p3, 0x0

    .line 42
    invoke-direct {p1, p0, p3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;I)V

    .line 43
    .line 44
    .line 45
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->swipeDirection$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 50
    .line 51
    new-instance p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    const/4 p3, 0x2

    .line 54
    invoke-direct {p1, p0, p3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState$$ExternalSyntheticLambda0;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 58
    .line 59
    .line 60
    invoke-static {p7}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->swipeState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 65
    .line 66
    new-instance p1, Lokhttp3/ConnectionPool;

    .line 67
    .line 68
    const/16 p3, 0x1b

    .line 69
    .line 70
    invoke-direct {p1, p3, p0}, Lokhttp3/ConnectionPool;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->accessibilityState:Lokhttp3/ConnectionPool;

    .line 74
    .line 75
    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 76
    .line 77
    invoke-direct {p1, p8}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->layoutWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 81
    .line 82
    new-instance p1, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 83
    .line 84
    invoke-direct {p1, p9}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->pendingOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 88
    .line 89
    new-instance p1, Landroidx/camera/view/PreviewView$1;

    .line 90
    .line 91
    invoke-direct {p1, p2}, Landroidx/camera/view/PreviewView$1;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 92
    .line 93
    .line 94
    new-instance p2, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 95
    .line 96
    invoke-direct {p2, p1}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/camera/view/PreviewView$1;)V

    .line 97
    .line 98
    .line 99
    iput-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->decayAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 100
    .line 101
    new-instance p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;

    .line 102
    .line 103
    const/4 p2, 0x3

    .line 104
    invoke-direct {p1, p0, p2}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowKt$$ExternalSyntheticLambda2;-><init>(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;I)V

    .line 105
    .line 106
    .line 107
    sget-object p2, Landroidx/compose/foundation/gestures/DraggableKt;->NoOpOnDragStarted:Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    .line 108
    .line 109
    new-instance p2, Landroidx/core/view/MenuHostHelper;

    .line 110
    .line 111
    invoke-direct {p2, p1}, Landroidx/core/view/MenuHostHelper;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 112
    .line 113
    .line 114
    iput-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->draggableState:Landroidx/core/view/MenuHostHelper;

    .line 115
    .line 116
    return-void
.end method


# virtual methods
.method public final calculateFinalOffset(ZLnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;)F
    .locals 3

    .line 1
    instance-of v0, p3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Dismiss;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->layoutWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const p3, 0x3f99999a    # 1.2f

    .line 15
    .line 16
    .line 17
    mul-float/2addr p1, p3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v0, p3, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Action;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0, p3}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getPercentageThreshold(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;)F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    mul-float/2addr p1, p3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move p1, v2

    .line 36
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/4 p3, 0x1

    .line 41
    if-eqz p2, :cond_4

    .line 42
    .line 43
    if-eq p2, p3, :cond_3

    .line 44
    .line 45
    const/4 v0, 0x2

    .line 46
    if-ne p2, v0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 50
    .line 51
    .line 52
    return v2

    .line 53
    :cond_3
    const/4 p3, -0x1

    .line 54
    :cond_4
    :goto_1
    int-to-float p2, p3

    .line 55
    mul-float/2addr p1, p2

    .line 56
    cmpl-float p2, p1, v2

    .line 57
    .line 58
    if-lez p2, :cond_5

    .line 59
    .line 60
    iget-object p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->startToEndBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 61
    .line 62
    instance-of p2, p2, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 63
    .line 64
    if-eqz p2, :cond_5

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    cmpg-float p2, p1, v2

    .line 68
    .line 69
    if-gez p2, :cond_6

    .line 70
    .line 71
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->endToStartBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 72
    .line 73
    instance-of p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour$Disabled;

    .line 74
    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    :goto_2
    return v2

    .line 78
    :cond_6
    return p1
.end method

.method public final getActiveBehaviour$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    cmpl-float v0, v0, v1

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Number;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    cmpg-float v0, v0, v1

    .line 36
    .line 37
    if-gez v0, :cond_1

    .line 38
    .line 39
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->endToStartBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->startToEndBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 43
    .line 44
    return-object p0
.end method

.method public final getAnimatedOffset()Landroidx/compose/animation/core/Animatable;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->animatedOffset$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/animation/core/Animatable;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getBehaviour(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeDirection;)Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :cond_1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->endToStartBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->startToEndBehaviour:Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;

    .line 23
    .line 24
    return-object p0
.end method

.method public final getPercentageThreshold(Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;)F
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->density:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-interface {p1}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeBehaviour;->getThreshold-D9Ej5fM()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->layoutWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;->getFloatValue()F

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    div-float/2addr p1, p0

    .line 18
    return p1
.end method

.method public final getSwipeState$tfa_core_ui_compose_designsystem()Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->swipeState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeState;

    .line 8
    .line 9
    return-object p0
.end method

.method public final isClosingGesture(F)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    cmpl-float v0, v0, v1

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    cmpg-float v0, p1, v1

    .line 21
    .line 22
    if-ltz v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/SwipeableRowState;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    cmpg-float p0, p0, v1

    .line 39
    .line 40
    if-gez p0, :cond_2

    .line 41
    .line 42
    cmpl-float p0, p1, v1

    .line 43
    .line 44
    if-lez p0, :cond_2

    .line 45
    .line 46
    :cond_1
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    return p0
.end method
