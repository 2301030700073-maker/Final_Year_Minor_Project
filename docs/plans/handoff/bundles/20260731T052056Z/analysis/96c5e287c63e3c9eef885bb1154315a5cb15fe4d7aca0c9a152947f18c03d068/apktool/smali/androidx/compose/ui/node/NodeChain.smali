.class public final Landroidx/compose/ui/node/NodeChain;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $r8$classId:I

.field public buffer:Ljava/lang/Object;

.field public cachedDiffer:Ljava/lang/Object;

.field public current:Ljava/lang/Object;

.field public head:Ljava/lang/Object;

.field public final innerCoordinator:Ljava/lang/Object;

.field public final layoutNode:Ljava/lang/Object;

.field public outerCoordinator:Ljava/lang/Object;

.field public final sentinelHead:Ljava/lang/Object;

.field public final stack:Ljava/lang/Object;

.field public final tail:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 47
    iput p11, p0, Landroidx/compose/ui/node/NodeChain;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    iput-object p8, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    iput-object p9, p0, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    iput-object p10, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 46
    iput p12, p0, Landroidx/compose/ui/node/NodeChain;->$r8$classId:I

    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    iput-object p8, p0, Landroidx/compose/ui/node/NodeChain;->current:Ljava/lang/Object;

    iput-object p9, p0, Landroidx/compose/ui/node/NodeChain;->buffer:Ljava/lang/Object;

    iput-object p10, p0, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    iput-object p11, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/ui/node/NodeChain;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Landroidx/compose/ui/node/InnerNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object p1, v0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 29
    .line 30
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 33
    .line 34
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 35
    .line 36
    const/16 v0, 0x10

    .line 37
    .line 38
    new-array v0, v0, [Landroidx/compose/ui/Modifier;

    .line 39
    .line 40
    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Landroidx/compose/ui/node/NodeChain;->stack:Ljava/lang/Object;

    .line 44
    .line 45
    return-void
.end method

.method public static createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    .line 1
    instance-of v0, p0, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/node/ModifierNodeElement;->create()Landroidx/compose/ui/Modifier$Node;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFromIncludingDelegates(Landroidx/compose/ui/Modifier$Node;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 28
    .line 29
    iput-object p0, v0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 30
    .line 31
    new-instance p0, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    move-object p0, v0

    .line 37
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string v0, "A ModifierNodeElement cannot return an already attached node from create() "

    .line 42
    .line 43
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    .line 48
    .line 49
    iget-object v0, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iput-object p0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 54
    .line 55
    iput-object v0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 56
    .line 57
    :cond_2
    iput-object p0, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 58
    .line 59
    iput-object p1, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 60
    .line 61
    return-object p0
.end method

.method public static detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "autoInvalidateRemovedNode called on unattached node"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->runDetachLifecycle$ui()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->markAsDetached$ui()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iput-object v1, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 33
    .line 34
    iput-object v2, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 35
    .line 36
    :cond_2
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iput-object v0, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 39
    .line 40
    iput-object v2, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 41
    .line 42
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    return-object v1
.end method

.method public static updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V
    .locals 2

    .line 1
    instance-of p0, p0, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    instance-of p0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 7
    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    check-cast p1, Landroidx/compose/ui/node/ModifierNodeElement;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/ModifierNodeElement;->update(Landroidx/compose/ui/Modifier$Node;)V

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iput-boolean v0, p2, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of p0, p2, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 30
    .line 31
    if-eqz p0, :cond_6

    .line 32
    .line 33
    move-object p0, p2

    .line 34
    check-cast p0, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 35
    .line 36
    iget-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 37
    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    const-string/jumbo v1, "unInitializeModifier called on unattached node"

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 49
    .line 50
    and-int/lit8 v1, v1, 0x8

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->onSemanticsChange()V

    .line 61
    .line 62
    .line 63
    :cond_3
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    .line 64
    .line 65
    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->calculateNodeKindSetFrom(Landroidx/compose/ui/Modifier$Element;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 70
    .line 71
    iget-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;->initializeModifier(Z)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-boolean p0, p2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 80
    .line 81
    if-eqz p0, :cond_5

    .line 82
    .line 83
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    iput-boolean v0, p2, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 88
    .line 89
    return-void

    .line 90
    :cond_6
    const-string p0, "Unknown Modifier.Node type"

    .line 91
    .line 92
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method


# virtual methods
.method public has-H91voCI$ui(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 6
    .line 7
    and-int/2addr p0, p1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public propagateCoordinator(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 2
    .line 3
    :goto_0
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/node/LayoutNode;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_1
    iput-object p1, p2, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 30
    .line 31
    iput-object p2, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iget v0, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 35
    .line 36
    and-int/lit8 v0, v0, 0x2

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_2
    return-void
.end method

.method public runAttachLifecycle()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    .line 4
    .line 5
    :goto_0
    if-eqz p0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->runAttachLifecycle$ui()V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    .line 15
    .line 16
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "autoInvalidateInsertedNode called on unattached node"

    .line 21
    .line 22
    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, -0x1

    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateUpdatedNode(Landroidx/compose/ui/Modifier$Node;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->updatedNodeAwaitingAttachForInvalidation:Z

    .line 41
    .line 42
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    return-void
.end method

.method public structuralUpdate(ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/node/NodeChain$Differ;

    .line 10
    .line 11
    move/from16 v3, p1

    .line 12
    .line 13
    move-object/from16 v4, p2

    .line 14
    .line 15
    move-object/from16 v5, p3

    .line 16
    .line 17
    move-object/from16 v2, p4

    .line 18
    .line 19
    move/from16 v6, p5

    .line 20
    .line 21
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/node/NodeChain$Differ;-><init>(Landroidx/compose/ui/node/NodeChain;Landroidx/compose/ui/Modifier$Node;ILandroidx/compose/runtime/collection/MutableVector;Landroidx/compose/runtime/collection/MutableVector;Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, v1, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move/from16 v3, p1

    .line 28
    .line 29
    move-object/from16 v4, p2

    .line 30
    .line 31
    move-object/from16 v5, p3

    .line 32
    .line 33
    move-object/from16 v2, p4

    .line 34
    .line 35
    iput-object v2, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 36
    .line 37
    iput v3, v0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 38
    .line 39
    iput-object v4, v0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Landroidx/compose/runtime/collection/MutableVector;

    .line 40
    .line 41
    iput-object v5, v0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Landroidx/compose/runtime/collection/MutableVector;

    .line 42
    .line 43
    move/from16 v6, p5

    .line 44
    .line 45
    iput-boolean v6, v0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    .line 46
    .line 47
    :goto_0
    iget-object v2, v0, Landroidx/compose/ui/node/NodeChain$Differ;->this$0:Landroidx/compose/ui/node/NodeChain;

    .line 48
    .line 49
    iget v4, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 50
    .line 51
    sub-int/2addr v4, v3

    .line 52
    iget v5, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 53
    .line 54
    sub-int/2addr v5, v3

    .line 55
    add-int v3, v4, v5

    .line 56
    .line 57
    const/4 v6, 0x1

    .line 58
    add-int/2addr v3, v6

    .line 59
    const/4 v7, 0x2

    .line 60
    div-int/2addr v3, v7

    .line 61
    new-instance v8, Landroidx/compose/runtime/IntStack;

    .line 62
    .line 63
    mul-int/lit8 v9, v3, 0x3

    .line 64
    .line 65
    invoke-direct {v8, v9}, Landroidx/compose/runtime/IntStack;-><init>(I)V

    .line 66
    .line 67
    .line 68
    new-instance v9, Landroidx/compose/runtime/IntStack;

    .line 69
    .line 70
    mul-int/lit8 v10, v3, 0x4

    .line 71
    .line 72
    invoke-direct {v9, v10}, Landroidx/compose/runtime/IntStack;-><init>(I)V

    .line 73
    .line 74
    .line 75
    const/4 v10, 0x0

    .line 76
    invoke-virtual {v9, v10, v4, v10, v5}, Landroidx/compose/runtime/IntStack;->pushRange(IIII)V

    .line 77
    .line 78
    .line 79
    mul-int/2addr v3, v7

    .line 80
    add-int/2addr v3, v6

    .line 81
    new-array v11, v3, [I

    .line 82
    .line 83
    new-array v12, v3, [I

    .line 84
    .line 85
    const/4 v13, 0x5

    .line 86
    new-array v13, v13, [I

    .line 87
    .line 88
    :goto_1
    iget v14, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 89
    .line 90
    if-eqz v14, :cond_1d

    .line 91
    .line 92
    move/from16 p1, v7

    .line 93
    .line 94
    iget-object v7, v9, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 95
    .line 96
    move/from16 p2, v10

    .line 97
    .line 98
    add-int/lit8 v10, v14, -0x1

    .line 99
    .line 100
    iput v10, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 101
    .line 102
    aget v10, v7, v10

    .line 103
    .line 104
    const/16 p3, 0x3

    .line 105
    .line 106
    add-int/lit8 v15, v14, -0x2

    .line 107
    .line 108
    iput v15, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 109
    .line 110
    aget v15, v7, v15

    .line 111
    .line 112
    add-int/lit8 v6, v14, -0x3

    .line 113
    .line 114
    iput v6, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 115
    .line 116
    aget v6, v7, v6

    .line 117
    .line 118
    add-int/lit8 v14, v14, -0x4

    .line 119
    .line 120
    iput v14, v9, Landroidx/compose/runtime/IntStack;->tos:I

    .line 121
    .line 122
    aget v7, v7, v14

    .line 123
    .line 124
    sub-int v14, v6, v7

    .line 125
    .line 126
    move/from16 p5, v3

    .line 127
    .line 128
    sub-int v3, v10, v15

    .line 129
    .line 130
    move-object/from16 v16, v11

    .line 131
    .line 132
    const/4 v11, 0x1

    .line 133
    if-lt v14, v11, :cond_1c

    .line 134
    .line 135
    if-ge v3, v11, :cond_1

    .line 136
    .line 137
    goto/16 :goto_19

    .line 138
    .line 139
    :cond_1
    add-int v17, v14, v3

    .line 140
    .line 141
    add-int/lit8 v17, v17, 0x1

    .line 142
    .line 143
    move/from16 p4, v11

    .line 144
    .line 145
    div-int/lit8 v11, v17, 0x2

    .line 146
    .line 147
    div-int/lit8 v17, p5, 0x2

    .line 148
    .line 149
    add-int/lit8 v18, v17, 0x1

    .line 150
    .line 151
    aput v7, v16, v18

    .line 152
    .line 153
    aput v6, v12, v18

    .line 154
    .line 155
    move/from16 v18, v3

    .line 156
    .line 157
    move/from16 v3, p2

    .line 158
    .line 159
    :goto_2
    if-ge v3, v11, :cond_1c

    .line 160
    .line 161
    sub-int v19, v14, v18

    .line 162
    .line 163
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    .line 164
    .line 165
    .line 166
    move-result v20

    .line 167
    move/from16 v21, v11

    .line 168
    .line 169
    and-int/lit8 v11, v20, 0x1

    .line 170
    .line 171
    move-object/from16 v20, v12

    .line 172
    .line 173
    move/from16 v12, p4

    .line 174
    .line 175
    if-ne v11, v12, :cond_2

    .line 176
    .line 177
    const/4 v11, 0x1

    .line 178
    goto :goto_3

    .line 179
    :cond_2
    move/from16 v11, p2

    .line 180
    .line 181
    :goto_3
    neg-int v12, v3

    .line 182
    move/from16 v22, v11

    .line 183
    .line 184
    move v11, v12

    .line 185
    :goto_4
    const/16 v23, 0x4

    .line 186
    .line 187
    if-gt v11, v3, :cond_b

    .line 188
    .line 189
    if-eq v11, v12, :cond_5

    .line 190
    .line 191
    if-eq v11, v3, :cond_3

    .line 192
    .line 193
    add-int/lit8 v24, v11, 0x1

    .line 194
    .line 195
    add-int v24, v24, v17

    .line 196
    .line 197
    move/from16 v25, v11

    .line 198
    .line 199
    aget v11, v16, v24

    .line 200
    .line 201
    add-int/lit8 v24, v25, -0x1

    .line 202
    .line 203
    add-int v24, v24, v17

    .line 204
    .line 205
    move-object/from16 v26, v13

    .line 206
    .line 207
    aget v13, v16, v24

    .line 208
    .line 209
    if-le v11, v13, :cond_4

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_3
    move/from16 v25, v11

    .line 213
    .line 214
    move-object/from16 v26, v13

    .line 215
    .line 216
    :cond_4
    add-int/lit8 v11, v25, -0x1

    .line 217
    .line 218
    add-int v11, v11, v17

    .line 219
    .line 220
    aget v11, v16, v11

    .line 221
    .line 222
    add-int/lit8 v13, v11, 0x1

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_5
    move/from16 v25, v11

    .line 226
    .line 227
    move-object/from16 v26, v13

    .line 228
    .line 229
    :goto_5
    add-int/lit8 v11, v25, 0x1

    .line 230
    .line 231
    add-int v11, v11, v17

    .line 232
    .line 233
    aget v11, v16, v11

    .line 234
    .line 235
    move v13, v11

    .line 236
    :goto_6
    sub-int v24, v13, v7

    .line 237
    .line 238
    add-int v24, v24, v15

    .line 239
    .line 240
    sub-int v24, v24, v25

    .line 241
    .line 242
    if-eqz v3, :cond_6

    .line 243
    .line 244
    const/16 v27, 0x1

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_6
    move/from16 v27, p2

    .line 248
    .line 249
    :goto_7
    if-ne v13, v11, :cond_7

    .line 250
    .line 251
    const/16 v28, 0x1

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_7
    move/from16 v28, p2

    .line 255
    .line 256
    :goto_8
    and-int v27, v27, v28

    .line 257
    .line 258
    sub-int v27, v24, v27

    .line 259
    .line 260
    move/from16 v30, v24

    .line 261
    .line 262
    move/from16 v24, v11

    .line 263
    .line 264
    move/from16 v11, v30

    .line 265
    .line 266
    :goto_9
    if-ge v13, v6, :cond_8

    .line 267
    .line 268
    if-ge v11, v10, :cond_8

    .line 269
    .line 270
    invoke-virtual {v0, v13, v11}, Landroidx/compose/ui/node/NodeChain$Differ;->areItemsTheSame(II)Z

    .line 271
    .line 272
    .line 273
    move-result v28

    .line 274
    if-eqz v28, :cond_8

    .line 275
    .line 276
    add-int/lit8 v13, v13, 0x1

    .line 277
    .line 278
    add-int/lit8 v11, v11, 0x1

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_8
    add-int v28, v17, v25

    .line 282
    .line 283
    aput v13, v16, v28

    .line 284
    .line 285
    if-eqz v22, :cond_9

    .line 286
    .line 287
    move/from16 v28, v11

    .line 288
    .line 289
    sub-int v11, v19, v25

    .line 290
    .line 291
    move/from16 v29, v14

    .line 292
    .line 293
    add-int/lit8 v14, v12, 0x1

    .line 294
    .line 295
    if-lt v11, v14, :cond_a

    .line 296
    .line 297
    add-int/lit8 v14, v3, -0x1

    .line 298
    .line 299
    if-gt v11, v14, :cond_a

    .line 300
    .line 301
    add-int v11, v17, v11

    .line 302
    .line 303
    aget v11, v20, v11

    .line 304
    .line 305
    if-gt v11, v13, :cond_a

    .line 306
    .line 307
    aput v24, v26, p2

    .line 308
    .line 309
    const/4 v11, 0x1

    .line 310
    aput v27, v26, v11

    .line 311
    .line 312
    aput v13, v26, p1

    .line 313
    .line 314
    aput v28, v26, p3

    .line 315
    .line 316
    aput p2, v26, v23

    .line 317
    .line 318
    const/4 v11, 0x1

    .line 319
    goto/16 :goto_11

    .line 320
    .line 321
    :cond_9
    move/from16 v29, v14

    .line 322
    .line 323
    :cond_a
    add-int/lit8 v11, v25, 0x2

    .line 324
    .line 325
    move-object/from16 v13, v26

    .line 326
    .line 327
    move/from16 v14, v29

    .line 328
    .line 329
    goto/16 :goto_4

    .line 330
    .line 331
    :cond_b
    move-object/from16 v26, v13

    .line 332
    .line 333
    move/from16 v29, v14

    .line 334
    .line 335
    and-int/lit8 v11, v19, 0x1

    .line 336
    .line 337
    if-nez v11, :cond_c

    .line 338
    .line 339
    const/4 v11, 0x1

    .line 340
    goto :goto_a

    .line 341
    :cond_c
    move/from16 v11, p2

    .line 342
    .line 343
    :goto_a
    move v13, v12

    .line 344
    :goto_b
    if-gt v13, v3, :cond_1b

    .line 345
    .line 346
    if-eq v13, v12, :cond_f

    .line 347
    .line 348
    if-eq v13, v3, :cond_d

    .line 349
    .line 350
    add-int/lit8 v14, v13, 0x1

    .line 351
    .line 352
    add-int v14, v14, v17

    .line 353
    .line 354
    aget v14, v20, v14

    .line 355
    .line 356
    add-int/lit8 v22, v13, -0x1

    .line 357
    .line 358
    add-int v22, v22, v17

    .line 359
    .line 360
    move/from16 v24, v11

    .line 361
    .line 362
    aget v11, v20, v22

    .line 363
    .line 364
    if-ge v14, v11, :cond_e

    .line 365
    .line 366
    goto :goto_c

    .line 367
    :cond_d
    move/from16 v24, v11

    .line 368
    .line 369
    :cond_e
    add-int/lit8 v11, v13, -0x1

    .line 370
    .line 371
    add-int v11, v11, v17

    .line 372
    .line 373
    aget v11, v20, v11

    .line 374
    .line 375
    add-int/lit8 v14, v11, -0x1

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_f
    move/from16 v24, v11

    .line 379
    .line 380
    :goto_c
    add-int/lit8 v11, v13, 0x1

    .line 381
    .line 382
    add-int v11, v11, v17

    .line 383
    .line 384
    aget v11, v20, v11

    .line 385
    .line 386
    move v14, v11

    .line 387
    :goto_d
    sub-int v22, v6, v14

    .line 388
    .line 389
    sub-int v22, v22, v13

    .line 390
    .line 391
    sub-int v22, v10, v22

    .line 392
    .line 393
    if-eqz v3, :cond_10

    .line 394
    .line 395
    const/16 v25, 0x1

    .line 396
    .line 397
    goto :goto_e

    .line 398
    :cond_10
    move/from16 v25, p2

    .line 399
    .line 400
    :goto_e
    if-ne v14, v11, :cond_11

    .line 401
    .line 402
    const/16 v27, 0x1

    .line 403
    .line 404
    goto :goto_f

    .line 405
    :cond_11
    move/from16 v27, p2

    .line 406
    .line 407
    :goto_f
    and-int v25, v25, v27

    .line 408
    .line 409
    add-int v25, v22, v25

    .line 410
    .line 411
    move/from16 v30, v22

    .line 412
    .line 413
    move/from16 v22, v11

    .line 414
    .line 415
    move/from16 v11, v30

    .line 416
    .line 417
    :goto_10
    if-le v14, v7, :cond_12

    .line 418
    .line 419
    if-le v11, v15, :cond_12

    .line 420
    .line 421
    move/from16 v27, v11

    .line 422
    .line 423
    add-int/lit8 v11, v14, -0x1

    .line 424
    .line 425
    move/from16 v28, v13

    .line 426
    .line 427
    add-int/lit8 v13, v27, -0x1

    .line 428
    .line 429
    invoke-virtual {v0, v11, v13}, Landroidx/compose/ui/node/NodeChain$Differ;->areItemsTheSame(II)Z

    .line 430
    .line 431
    .line 432
    move-result v11

    .line 433
    if-eqz v11, :cond_13

    .line 434
    .line 435
    add-int/lit8 v14, v14, -0x1

    .line 436
    .line 437
    add-int/lit8 v11, v27, -0x1

    .line 438
    .line 439
    move/from16 v13, v28

    .line 440
    .line 441
    goto :goto_10

    .line 442
    :cond_12
    move/from16 v27, v11

    .line 443
    .line 444
    move/from16 v28, v13

    .line 445
    .line 446
    :cond_13
    add-int v13, v17, v28

    .line 447
    .line 448
    aput v14, v20, v13

    .line 449
    .line 450
    if-eqz v24, :cond_1a

    .line 451
    .line 452
    sub-int v11, v19, v28

    .line 453
    .line 454
    if-lt v11, v12, :cond_1a

    .line 455
    .line 456
    if-gt v11, v3, :cond_1a

    .line 457
    .line 458
    add-int v11, v17, v11

    .line 459
    .line 460
    aget v11, v16, v11

    .line 461
    .line 462
    if-lt v11, v14, :cond_1a

    .line 463
    .line 464
    aput v14, v26, p2

    .line 465
    .line 466
    const/4 v11, 0x1

    .line 467
    aput v27, v26, v11

    .line 468
    .line 469
    aput v22, v26, p1

    .line 470
    .line 471
    aput v25, v26, p3

    .line 472
    .line 473
    aput v11, v26, v23

    .line 474
    .line 475
    :goto_11
    aget v3, v26, p1

    .line 476
    .line 477
    aget v12, v26, p2

    .line 478
    .line 479
    sub-int/2addr v3, v12

    .line 480
    aget v12, v26, p3

    .line 481
    .line 482
    aget v13, v26, v11

    .line 483
    .line 484
    sub-int/2addr v12, v13

    .line 485
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    if-lez v3, :cond_19

    .line 490
    .line 491
    aget v3, v26, p2

    .line 492
    .line 493
    aget v12, v26, v11

    .line 494
    .line 495
    aget v11, v26, p3

    .line 496
    .line 497
    sub-int/2addr v11, v12

    .line 498
    aget v13, v26, p1

    .line 499
    .line 500
    sub-int/2addr v13, v3

    .line 501
    if-eq v11, v13, :cond_18

    .line 502
    .line 503
    invoke-static {v13, v11}, Ljava/lang/Math;->min(II)I

    .line 504
    .line 505
    .line 506
    move-result v13

    .line 507
    aget v11, v26, v23

    .line 508
    .line 509
    if-eqz v11, :cond_14

    .line 510
    .line 511
    const/4 v14, 0x1

    .line 512
    goto :goto_12

    .line 513
    :cond_14
    move/from16 v14, p2

    .line 514
    .line 515
    :goto_12
    aget v17, v26, p3

    .line 516
    .line 517
    const/16 v18, 0x1

    .line 518
    .line 519
    aget v19, v26, v18

    .line 520
    .line 521
    move/from16 p4, v3

    .line 522
    .line 523
    sub-int v3, v17, v19

    .line 524
    .line 525
    aget v21, v26, p1

    .line 526
    .line 527
    aget v22, v26, p2

    .line 528
    .line 529
    move/from16 v23, v11

    .line 530
    .line 531
    sub-int v11, v21, v22

    .line 532
    .line 533
    if-le v3, v11, :cond_15

    .line 534
    .line 535
    move/from16 v3, v18

    .line 536
    .line 537
    goto :goto_13

    .line 538
    :cond_15
    move/from16 v3, p2

    .line 539
    .line 540
    :goto_13
    or-int/2addr v3, v14

    .line 541
    xor-int/lit8 v3, v3, 0x1

    .line 542
    .line 543
    add-int v3, p4, v3

    .line 544
    .line 545
    if-eqz v23, :cond_16

    .line 546
    .line 547
    move/from16 v11, v18

    .line 548
    .line 549
    goto :goto_14

    .line 550
    :cond_16
    move/from16 v11, p2

    .line 551
    .line 552
    :goto_14
    sub-int v14, v17, v19

    .line 553
    .line 554
    move/from16 p4, v3

    .line 555
    .line 556
    sub-int v3, v21, v22

    .line 557
    .line 558
    if-le v14, v3, :cond_17

    .line 559
    .line 560
    move/from16 v3, v18

    .line 561
    .line 562
    goto :goto_15

    .line 563
    :cond_17
    move/from16 v3, p2

    .line 564
    .line 565
    :goto_15
    xor-int/lit8 v3, v3, 0x1

    .line 566
    .line 567
    or-int/2addr v3, v11

    .line 568
    xor-int/lit8 v3, v3, 0x1

    .line 569
    .line 570
    add-int/2addr v12, v3

    .line 571
    move/from16 v3, p4

    .line 572
    .line 573
    goto :goto_16

    .line 574
    :cond_18
    move/from16 p4, v3

    .line 575
    .line 576
    const/16 v18, 0x1

    .line 577
    .line 578
    :goto_16
    invoke-virtual {v8, v3, v12, v13}, Landroidx/compose/runtime/IntStack;->pushDiagonal(III)V

    .line 579
    .line 580
    .line 581
    goto :goto_17

    .line 582
    :cond_19
    move/from16 v18, v11

    .line 583
    .line 584
    :goto_17
    aget v3, v26, p2

    .line 585
    .line 586
    aget v11, v26, v18

    .line 587
    .line 588
    invoke-virtual {v9, v7, v3, v15, v11}, Landroidx/compose/runtime/IntStack;->pushRange(IIII)V

    .line 589
    .line 590
    .line 591
    aget v3, v26, p1

    .line 592
    .line 593
    aget v7, v26, p3

    .line 594
    .line 595
    invoke-virtual {v9, v3, v6, v7, v10}, Landroidx/compose/runtime/IntStack;->pushRange(IIII)V

    .line 596
    .line 597
    .line 598
    :goto_18
    move/from16 v7, p1

    .line 599
    .line 600
    move/from16 v10, p2

    .line 601
    .line 602
    move/from16 v3, p5

    .line 603
    .line 604
    move-object/from16 v11, v16

    .line 605
    .line 606
    move-object/from16 v12, v20

    .line 607
    .line 608
    move-object/from16 v13, v26

    .line 609
    .line 610
    const/4 v6, 0x1

    .line 611
    goto/16 :goto_1

    .line 612
    .line 613
    :cond_1a
    add-int/lit8 v13, v28, 0x2

    .line 614
    .line 615
    move/from16 v11, v24

    .line 616
    .line 617
    goto/16 :goto_b

    .line 618
    .line 619
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    .line 620
    .line 621
    move-object/from16 v12, v20

    .line 622
    .line 623
    move/from16 v11, v21

    .line 624
    .line 625
    move-object/from16 v13, v26

    .line 626
    .line 627
    move/from16 v14, v29

    .line 628
    .line 629
    const/16 p4, 0x1

    .line 630
    .line 631
    goto/16 :goto_2

    .line 632
    .line 633
    :cond_1c
    :goto_19
    move-object/from16 v20, v12

    .line 634
    .line 635
    move-object/from16 v26, v13

    .line 636
    .line 637
    goto :goto_18

    .line 638
    :cond_1d
    move/from16 p1, v7

    .line 639
    .line 640
    move/from16 p2, v10

    .line 641
    .line 642
    const/16 p3, 0x3

    .line 643
    .line 644
    iget v3, v8, Landroidx/compose/runtime/IntStack;->tos:I

    .line 645
    .line 646
    rem-int/lit8 v6, v3, 0x3

    .line 647
    .line 648
    if-nez v6, :cond_1e

    .line 649
    .line 650
    :goto_1a
    move/from16 v6, p3

    .line 651
    .line 652
    goto :goto_1b

    .line 653
    :cond_1e
    const-string v6, "Array size not a multiple of 3"

    .line 654
    .line 655
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    goto :goto_1a

    .line 659
    :goto_1b
    if-le v3, v6, :cond_1f

    .line 660
    .line 661
    sub-int/2addr v3, v6

    .line 662
    move/from16 v6, p2

    .line 663
    .line 664
    invoke-virtual {v8, v6, v3}, Landroidx/compose/runtime/IntStack;->quickSort(II)V

    .line 665
    .line 666
    .line 667
    goto :goto_1c

    .line 668
    :cond_1f
    move/from16 v6, p2

    .line 669
    .line 670
    :goto_1c
    invoke-virtual {v8, v4, v5, v6}, Landroidx/compose/runtime/IntStack;->pushDiagonal(III)V

    .line 671
    .line 672
    .line 673
    move v3, v6

    .line 674
    move v4, v3

    .line 675
    move v5, v4

    .line 676
    :cond_20
    iget v7, v8, Landroidx/compose/runtime/IntStack;->tos:I

    .line 677
    .line 678
    if-ge v3, v7, :cond_29

    .line 679
    .line 680
    iget-object v7, v8, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 681
    .line 682
    aget v9, v7, v3

    .line 683
    .line 684
    add-int/lit8 v10, v3, 0x2

    .line 685
    .line 686
    aget v10, v7, v10

    .line 687
    .line 688
    sub-int/2addr v9, v10

    .line 689
    add-int/lit8 v11, v3, 0x1

    .line 690
    .line 691
    aget v7, v7, v11

    .line 692
    .line 693
    sub-int/2addr v7, v10

    .line 694
    add-int/lit8 v3, v3, 0x3

    .line 695
    .line 696
    :goto_1d
    if-ge v4, v9, :cond_23

    .line 697
    .line 698
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 699
    .line 700
    iget-object v11, v11, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 701
    .line 702
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    .line 704
    .line 705
    iget v12, v11, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 706
    .line 707
    and-int/lit8 v12, v12, 0x2

    .line 708
    .line 709
    if-eqz v12, :cond_22

    .line 710
    .line 711
    iget-object v12, v11, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 712
    .line 713
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 714
    .line 715
    .line 716
    iget-object v13, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 717
    .line 718
    iget-object v12, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 719
    .line 720
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 721
    .line 722
    .line 723
    if-eqz v13, :cond_21

    .line 724
    .line 725
    iput-object v12, v13, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 726
    .line 727
    :cond_21
    iput-object v13, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 728
    .line 729
    iget-object v13, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 730
    .line 731
    invoke-virtual {v2, v13, v12}, Landroidx/compose/ui/node/NodeChain;->propagateCoordinator(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 732
    .line 733
    .line 734
    :cond_22
    invoke-static {v11}, Landroidx/compose/ui/node/NodeChain;->detachAndRemoveNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    .line 735
    .line 736
    .line 737
    move-result-object v11

    .line 738
    iput-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 739
    .line 740
    add-int/lit8 v4, v4, 0x1

    .line 741
    .line 742
    goto :goto_1d

    .line 743
    :cond_23
    :goto_1e
    if-ge v5, v7, :cond_27

    .line 744
    .line 745
    iget v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 746
    .line 747
    add-int/2addr v9, v5

    .line 748
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 749
    .line 750
    iget-object v12, v0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Landroidx/compose/runtime/collection/MutableVector;

    .line 751
    .line 752
    iget-object v12, v12, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 753
    .line 754
    aget-object v9, v12, v9

    .line 755
    .line 756
    check-cast v9, Landroidx/compose/ui/Modifier$Element;

    .line 757
    .line 758
    invoke-static {v9, v11}, Landroidx/compose/ui/node/NodeChain;->createAndInsertNodeAsChild(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;

    .line 759
    .line 760
    .line 761
    move-result-object v9

    .line 762
    iput-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 763
    .line 764
    iget-boolean v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->shouldAttachOnInsert:Z

    .line 765
    .line 766
    if-eqz v11, :cond_26

    .line 767
    .line 768
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 769
    .line 770
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 771
    .line 772
    .line 773
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 774
    .line 775
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 776
    .line 777
    .line 778
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 779
    .line 780
    invoke-static {v11}, Landroidx/compose/ui/node/HitTestResultKt;->asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    .line 781
    .line 782
    .line 783
    move-result-object v11

    .line 784
    if-eqz v11, :cond_24

    .line 785
    .line 786
    new-instance v12, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 787
    .line 788
    iget-object v13, v2, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 789
    .line 790
    check-cast v13, Landroidx/compose/ui/node/LayoutNode;

    .line 791
    .line 792
    invoke-direct {v12, v13, v11}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 793
    .line 794
    .line 795
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 796
    .line 797
    invoke-virtual {v11, v12}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 798
    .line 799
    .line 800
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 801
    .line 802
    invoke-virtual {v2, v11, v12}, Landroidx/compose/ui/node/NodeChain;->propagateCoordinator(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 803
    .line 804
    .line 805
    iget-object v11, v9, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 806
    .line 807
    iput-object v11, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 808
    .line 809
    iput-object v9, v12, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 810
    .line 811
    iput-object v12, v9, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 812
    .line 813
    goto :goto_1f

    .line 814
    :cond_24
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 815
    .line 816
    invoke-virtual {v11, v9}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 817
    .line 818
    .line 819
    :goto_1f
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 820
    .line 821
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->markAsAttached$ui()V

    .line 822
    .line 823
    .line 824
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 825
    .line 826
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->runAttachLifecycle$ui()V

    .line 827
    .line 828
    .line 829
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 830
    .line 831
    sget-object v11, Landroidx/compose/ui/node/NodeKindKt;->classToKindSetMap:Landroidx/collection/MutableObjectIntMap;

    .line 832
    .line 833
    iget-boolean v11, v9, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 834
    .line 835
    if-nez v11, :cond_25

    .line 836
    .line 837
    const-string v11, "autoInvalidateInsertedNode called on unattached node"

    .line 838
    .line 839
    invoke-static {v11}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 840
    .line 841
    .line 842
    :cond_25
    const/4 v11, -0x1

    .line 843
    const/4 v12, 0x1

    .line 844
    invoke-static {v9, v11, v12}, Landroidx/compose/ui/node/NodeKindKt;->autoInvalidateNodeIncludingDelegates(Landroidx/compose/ui/Modifier$Node;II)V

    .line 845
    .line 846
    .line 847
    goto :goto_20

    .line 848
    :cond_26
    const/4 v12, 0x1

    .line 849
    iput-boolean v12, v9, Landroidx/compose/ui/Modifier$Node;->insertedNodeAwaitingAttachForInvalidation:Z

    .line 850
    .line 851
    :goto_20
    add-int/lit8 v5, v5, 0x1

    .line 852
    .line 853
    goto :goto_1e

    .line 854
    :cond_27
    const/4 v12, 0x1

    .line 855
    :goto_21
    add-int/lit8 v7, v10, -0x1

    .line 856
    .line 857
    if-lez v10, :cond_20

    .line 858
    .line 859
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 860
    .line 861
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 862
    .line 863
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 864
    .line 865
    .line 866
    iput-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 867
    .line 868
    iget-object v9, v0, Landroidx/compose/ui/node/NodeChain$Differ;->before:Landroidx/compose/runtime/collection/MutableVector;

    .line 869
    .line 870
    iget v10, v0, Landroidx/compose/ui/node/NodeChain$Differ;->offset:I

    .line 871
    .line 872
    add-int v11, v10, v4

    .line 873
    .line 874
    iget-object v9, v9, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 875
    .line 876
    aget-object v9, v9, v11

    .line 877
    .line 878
    check-cast v9, Landroidx/compose/ui/Modifier$Element;

    .line 879
    .line 880
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->after:Landroidx/compose/runtime/collection/MutableVector;

    .line 881
    .line 882
    add-int/2addr v10, v5

    .line 883
    iget-object v11, v11, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 884
    .line 885
    aget-object v10, v11, v10

    .line 886
    .line 887
    check-cast v10, Landroidx/compose/ui/Modifier$Element;

    .line 888
    .line 889
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    move-result v11

    .line 893
    if-nez v11, :cond_28

    .line 894
    .line 895
    iget-object v11, v0, Landroidx/compose/ui/node/NodeChain$Differ;->node:Landroidx/compose/ui/Modifier$Node;

    .line 896
    .line 897
    invoke-static {v9, v10, v11}, Landroidx/compose/ui/node/NodeChain;->updateNode(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/Modifier$Node;)V

    .line 898
    .line 899
    .line 900
    :cond_28
    add-int/lit8 v4, v4, 0x1

    .line 901
    .line 902
    add-int/lit8 v5, v5, 0x1

    .line 903
    .line 904
    move v10, v7

    .line 905
    goto :goto_21

    .line 906
    :cond_29
    iget-object v0, v1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 907
    .line 908
    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    .line 909
    .line 910
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 911
    .line 912
    move v10, v6

    .line 913
    :goto_22
    if-eqz v0, :cond_2a

    .line 914
    .line 915
    iget-object v2, v1, Landroidx/compose/ui/node/NodeChain;->sentinelHead:Ljava/lang/Object;

    .line 916
    .line 917
    check-cast v2, Landroidx/compose/ui/node/NodeChain$sentinelHead$1;

    .line 918
    .line 919
    if-eq v0, v2, :cond_2a

    .line 920
    .line 921
    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 922
    .line 923
    or-int/2addr v10, v2

    .line 924
    iput v10, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 925
    .line 926
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 927
    .line 928
    goto :goto_22

    .line 929
    :cond_2a
    return-void
.end method

.method public syncCoordinators()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->layoutNode:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/compose/ui/node/TailModifierNode;

    .line 12
    .line 13
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 14
    .line 15
    :goto_0
    if-eqz v2, :cond_3

    .line 16
    .line 17
    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->asLayoutModifierNode(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/node/LayoutModifierNode;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    iget-object v4, v2, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 24
    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    check-cast v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 28
    .line 29
    iget-object v5, v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->layoutModifierNode:Landroidx/compose/ui/node/LayoutModifierNode;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setLayoutModifierNode$ui(Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 32
    .line 33
    .line 34
    if-eq v5, v2, :cond_1

    .line 35
    .line 36
    iget-object v3, v4, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    check-cast v3, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidate()V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    new-instance v4, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    .line 47
    .line 48
    invoke-direct {v4, v0, v3}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutModifierNode;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v4}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    iput-object v4, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 55
    .line 56
    iput-object v1, v4, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    .line 57
    .line 58
    move-object v1, v4

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {v2, v1}, Landroidx/compose/ui/Modifier$Node;->updateCoordinator$ui(Landroidx/compose/ui/node/NodeCoordinator;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 73
    .line 74
    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    const/4 v0, 0x0

    .line 80
    :goto_3
    iput-object v0, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    .line 81
    .line 82
    iput-object v1, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    .line 83
    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/ui/node/NodeChain;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "["

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Landroidx/compose/ui/node/TailModifierNode;

    .line 25
    .line 26
    const-string v2, "]"

    .line 27
    .line 28
    if-ne v1, p0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-eq v1, p0, :cond_2

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v3, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 46
    .line 47
    if-ne v3, p0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string v3, ","

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
