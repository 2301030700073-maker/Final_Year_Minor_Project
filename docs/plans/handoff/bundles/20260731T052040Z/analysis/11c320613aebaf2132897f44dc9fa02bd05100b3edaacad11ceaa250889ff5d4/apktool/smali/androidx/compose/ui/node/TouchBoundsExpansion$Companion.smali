.class public final Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final access$unpack(IJ)I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/node/HitTestResultKt;->$r8$clinit:I

    .line 2
    .line 3
    mul-int/lit8 p0, p0, 0xf

    .line 4
    .line 5
    shr-long p0, p1, p0

    .line 6
    .line 7
    long-to-int p0, p0

    .line 8
    and-int/lit16 p0, p0, 0x7fff

    .line 9
    .line 10
    return p0
.end method


# virtual methods
.method public childHitTest-qzLsGqo(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 7

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 9
    .line 10
    sget-object p5, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    .line 11
    .line 12
    invoke-virtual {p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-object v0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    .line 19
    .line 20
    const/4 v5, 0x1

    .line 21
    move-object v4, p4

    .line 22
    move v6, p6

    .line 23
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-qzLsGqo(Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    invoke-virtual/range {p1 .. p6}, Landroidx/compose/ui/node/LayoutNode;->hitTest-6fMxITs$ui(JLandroidx/compose/ui/node/HitTestResult;IZ)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public entityType-OLwlOKw()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/16 p0, 0x8

    .line 7
    .line 8
    return p0

    .line 9
    :pswitch_0
    const/16 p0, 0x10

    .line 10
    .line 11
    return p0

    .line 12
    nop

    .line 13
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public interceptOutOfBoundsChildEvents(Landroidx/compose/ui/Modifier$Node;)Z
    .locals 7

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :pswitch_0
    const/4 p0, 0x0

    .line 9
    move-object v1, p0

    .line 10
    :goto_0
    if-eqz p1, :cond_7

    .line 11
    .line 12
    instance-of v2, p1, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 18
    .line 19
    invoke-interface {p1}, Landroidx/compose/ui/node/PointerInputModifierNode;->interceptOutOfBoundsChildEvents()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_6

    .line 24
    .line 25
    move v0, v3

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    iget v2, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 28
    .line 29
    const/16 v4, 0x10

    .line 30
    .line 31
    and-int/2addr v2, v4

    .line 32
    if-eqz v2, :cond_6

    .line 33
    .line 34
    instance-of v2, p1, Landroidx/compose/ui/node/DelegatingNode;

    .line 35
    .line 36
    if-eqz v2, :cond_6

    .line 37
    .line 38
    move-object v2, p1

    .line 39
    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 40
    .line 41
    iget-object v2, v2, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 42
    .line 43
    move v5, v0

    .line 44
    :goto_1
    if-eqz v2, :cond_5

    .line 45
    .line 46
    iget v6, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 47
    .line 48
    and-int/2addr v6, v4

    .line 49
    if-eqz v6, :cond_4

    .line 50
    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    if-ne v5, v3, :cond_1

    .line 54
    .line 55
    move-object p1, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    if-nez v1, :cond_2

    .line 58
    .line 59
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 60
    .line 61
    new-array v6, v4, [Landroidx/compose/ui/Modifier$Node;

    .line 62
    .line 63
    invoke-direct {v1, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    move-object p1, p0

    .line 72
    :cond_3
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_2
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    if-ne v5, v3, :cond_6

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_6
    invoke-static {v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_0

    .line 86
    :cond_7
    :goto_3
    return v0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public shareWithSiblings(Landroidx/compose/ui/node/HitTestResult;Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 8

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    return v0

    .line 8
    :pswitch_0
    iget-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Landroidx/compose/ui/node/NodeCoordinator;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const/16 p2, 0x10

    .line 16
    .line 17
    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 30
    .line 31
    if-eqz v1, :cond_a

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 34
    .line 35
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    const-string/jumbo v1, "visitLocalDescendants called on an unattached node"

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 46
    .line 47
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 48
    .line 49
    and-int/2addr v1, p2

    .line 50
    if-eqz v1, :cond_a

    .line 51
    .line 52
    :goto_0
    if-eqz p0, :cond_a

    .line 53
    .line 54
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 55
    .line 56
    and-int/2addr v1, p2

    .line 57
    if-eqz v1, :cond_9

    .line 58
    .line 59
    const/4 v1, 0x0

    .line 60
    move-object v2, p0

    .line 61
    move-object v3, v1

    .line 62
    :goto_1
    if-eqz v2, :cond_9

    .line 63
    .line 64
    instance-of v4, v2, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    check-cast v2, Landroidx/compose/ui/node/PointerInputModifierNode;

    .line 70
    .line 71
    invoke-interface {v2}, Landroidx/compose/ui/node/PointerInputModifierNode;->sharePointerInputWithSiblings()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_8

    .line 76
    .line 77
    iget-object p0, p1, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    .line 78
    .line 79
    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    .line 80
    .line 81
    sub-int/2addr p0, v5

    .line 82
    iput p0, p1, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    .line 83
    .line 84
    move v0, v5

    .line 85
    goto :goto_4

    .line 86
    :cond_2
    iget v4, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 87
    .line 88
    and-int/2addr v4, p2

    .line 89
    if-eqz v4, :cond_8

    .line 90
    .line 91
    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 92
    .line 93
    if-eqz v4, :cond_8

    .line 94
    .line 95
    move-object v4, v2

    .line 96
    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    .line 97
    .line 98
    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 99
    .line 100
    move v6, v0

    .line 101
    :goto_2
    if-eqz v4, :cond_7

    .line 102
    .line 103
    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 104
    .line 105
    and-int/2addr v7, p2

    .line 106
    if-eqz v7, :cond_6

    .line 107
    .line 108
    add-int/lit8 v6, v6, 0x1

    .line 109
    .line 110
    if-ne v6, v5, :cond_3

    .line 111
    .line 112
    move-object v2, v4

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    if-nez v3, :cond_4

    .line 115
    .line 116
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 117
    .line 118
    new-array v7, p2, [Landroidx/compose/ui/Modifier$Node;

    .line 119
    .line 120
    invoke-direct {v3, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    move-object v2, v1

    .line 129
    :cond_5
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_6
    :goto_3
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_7
    if-ne v6, v5, :cond_8

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_8
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    goto :goto_1

    .line 143
    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_a
    :goto_4
    return v0

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldHitTest(Landroidx/compose/ui/Modifier$Node;)Z
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->SemanticsNode(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->isImportantForAccessibility(Landroidx/compose/ui/semantics/SemanticsNode;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :pswitch_0
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public shouldHitTestChildren(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 1

    .line 1
    iget p0, p0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 p1, 0x0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-boolean p0, p0, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    move p1, v0

    .line 19
    :cond_0
    xor-int/lit8 p0, p1, 0x1

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_0
    return v0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
