.class public final Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# static fields
.field public static final CanDrag:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;


# instance fields
.field public final enabled:Z

.field public final onDragStarted:Lkotlin/jvm/functions/Function3;

.field public final onDragStopped:Lkotlin/jvm/functions/Function3;

.field public final state:Landroidx/compose/foundation/gestures/DraggableState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->CanDrag:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/MenuHostHelper;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 8
    .line 9
    iput-boolean p2, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->enabled:Z

    .line 10
    .line 11
    iput-object p3, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 12
    .line 13
    iput-object p4, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 3

    .line 1
    new-instance v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 12
    .line 13
    sget-object v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->CanDrag:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 14
    .line 15
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->canDrag:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 18
    .line 19
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 20
    .line 21
    iget-boolean v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->enabled:Z

    .line 22
    .line 23
    iput-boolean v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->enabled:Z

    .line 24
    .line 25
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 26
    .line 27
    iput-object v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 28
    .line 29
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 30
    .line 31
    iput-object p0, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 32
    .line 33
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    iput-wide v1, v0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->nodeOffset:J

    .line 36
    .line 37
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_1
    const-class v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eq v1, v2, :cond_2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;

    .line 18
    .line 19
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 20
    .line 21
    iget-object v2, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    iget-boolean v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->enabled:Z

    .line 31
    .line 32
    iget-boolean v2, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->enabled:Z

    .line 33
    .line 34
    if-eq v1, v2, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 38
    .line 39
    iget-object v2, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_5
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 49
    .line 50
    iget-object p1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_6

    .line 57
    .line 58
    :goto_0
    const/4 p0, 0x0

    .line 59
    return p0

    .line 60
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-boolean v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->enabled:Z

    .line 19
    .line 20
    const/16 v2, 0x4d5

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/16 v0, 0x4cf

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v2

    .line 28
    :goto_0
    add-int/2addr v1, v0

    .line 29
    mul-int/lit16 v1, v1, 0x3c1

    .line 30
    .line 31
    add-int/2addr v1, v2

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-object p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    add-int/2addr p0, v0

    .line 50
    mul-int/lit8 p0, p0, 0x1f

    .line 51
    .line 52
    add-int/2addr p0, v2

    .line 53
    return p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 4

    .line 1
    check-cast p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iput-object v0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->state:Landroidx/compose/foundation/gestures/DraggableState;

    .line 21
    .line 22
    move v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 26
    .line 27
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 28
    .line 29
    if-eq v1, v3, :cond_1

    .line 30
    .line 31
    iput-object v3, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 32
    .line 33
    move v0, v2

    .line 34
    :cond_1
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 35
    .line 36
    iput-object v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onDragStarted:Lkotlin/jvm/functions/Function3;

    .line 37
    .line 38
    iget-object v1, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 39
    .line 40
    iput-object v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->onDragStopped:Lkotlin/jvm/functions/Function3;

    .line 41
    .line 42
    sget-object v1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->CanDrag:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 43
    .line 44
    iput-object v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->canDrag:Landroidx/compose/foundation/ScrollState$$ExternalSyntheticLambda4;

    .line 45
    .line 46
    iget-boolean v1, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->enabled:Z

    .line 47
    .line 48
    iget-boolean p0, p0, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableElement;->enabled:Z

    .line 49
    .line 50
    if-eq v1, p0, :cond_4

    .line 51
    .line 52
    iput-boolean p0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->enabled:Z

    .line 53
    .line 54
    if-nez p0, :cond_5

    .line 55
    .line 56
    iget-object p0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    .line 61
    iput-object v0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->dragInteraction:Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 62
    .line 63
    :cond_2
    iget-object p0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 64
    .line 65
    if-eqz p0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Landroidx/compose/ui/node/DelegatingNode;->undelegate(Landroidx/compose/ui/node/DelegatableNode;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iput-object v0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move v2, v0

    .line 74
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 75
    .line 76
    iget-object p0, p1, Lnet/thunderbird/core/ui/compose/designsystem/molecule/swipe/fork/DraggableNode;->pointerInputNode:Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    .line 77
    .line 78
    if-eqz p0, :cond_6

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;->resetPointerInputHandler()V

    .line 81
    .line 82
    .line 83
    :cond_6
    return-void
.end method
