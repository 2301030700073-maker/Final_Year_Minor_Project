.class public final Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $state:Landroidx/compose/ui/layout/SubcomposeLayoutState;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$4$1;->$state:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/layout/SubcomposeLayoutKt$SubcomposeLayout$4$1;->$state:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->getState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getFoldedChildren$ui()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 14
    .line 15
    iget-object v1, v1, Landroidx/collection/MutableObjectList$ObjectListMutableList;->objectList:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 18
    .line 19
    iget v1, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 20
    .line 21
    iget v2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->reusableCount:I

    .line 22
    .line 23
    if-eq v2, v1, :cond_5

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->nodeToNodeState:Landroidx/collection/MutableScatterMap;

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 30
    .line 31
    array-length v2, p0

    .line 32
    add-int/lit8 v2, v2, -0x2

    .line 33
    .line 34
    const/4 v3, 0x7

    .line 35
    const/4 v4, 0x0

    .line 36
    if-ltz v2, :cond_3

    .line 37
    .line 38
    move v5, v4

    .line 39
    :goto_0
    aget-wide v6, p0, v5

    .line 40
    .line 41
    not-long v8, v6

    .line 42
    shl-long/2addr v8, v3

    .line 43
    and-long/2addr v8, v6

    .line 44
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    and-long/2addr v8, v10

    .line 50
    cmp-long v8, v8, v10

    .line 51
    .line 52
    if-eqz v8, :cond_2

    .line 53
    .line 54
    sub-int v8, v5, v2

    .line 55
    .line 56
    not-int v8, v8

    .line 57
    ushr-int/lit8 v8, v8, 0x1f

    .line 58
    .line 59
    const/16 v9, 0x8

    .line 60
    .line 61
    rsub-int/lit8 v8, v8, 0x8

    .line 62
    .line 63
    move v10, v4

    .line 64
    :goto_1
    if-ge v10, v8, :cond_1

    .line 65
    .line 66
    const-wide/16 v11, 0xff

    .line 67
    .line 68
    and-long/2addr v11, v6

    .line 69
    const-wide/16 v13, 0x80

    .line 70
    .line 71
    cmp-long v11, v11, v13

    .line 72
    .line 73
    if-gez v11, :cond_0

    .line 74
    .line 75
    shl-int/lit8 v11, v5, 0x3

    .line 76
    .line 77
    add-int/2addr v11, v10

    .line 78
    aget-object v11, v1, v11

    .line 79
    .line 80
    check-cast v11, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .line 81
    .line 82
    const/4 v12, 0x1

    .line 83
    iput-boolean v12, v11, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->forceRecompose:Z

    .line 84
    .line 85
    :cond_0
    shr-long/2addr v6, v9

    .line 86
    add-int/lit8 v10, v10, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    if-ne v8, v9, :cond_3

    .line 90
    .line 91
    :cond_2
    if-eq v5, v2, :cond_3

    .line 92
    .line 93
    add-int/lit8 v5, v5, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNode;->lookaheadRoot:Landroidx/compose/ui/node/LayoutNode;

    .line 97
    .line 98
    if-eqz p0, :cond_4

    .line 99
    .line 100
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    .line 101
    .line 102
    iget-boolean p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadMeasurePending:Z

    .line 103
    .line 104
    if-nez p0, :cond_5

    .line 105
    .line 106
    invoke-static {v0, v4, v3}, Landroidx/compose/ui/node/LayoutNode;->requestLookaheadRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui()Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-nez p0, :cond_5

    .line 115
    .line 116
    invoke-static {v0, v4, v3}, Landroidx/compose/ui/node/LayoutNode;->requestRemeasure$ui$default(Landroidx/compose/ui/node/LayoutNode;ZI)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p0
.end method
