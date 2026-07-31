.class public final Landroidx/compose/ui/focus/FocusOwnerImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/focus/FocusOwner;


# instance fields
.field public activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

.field public final focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

.field public keysCurrentlyDown:Landroidx/collection/MutableLongSet;

.field public final listeners:Landroidx/collection/MutableObjectList;

.field public final modifier:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

.field public final owner:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final platformFocusOwner:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->owner:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 7
    .line 8
    new-instance p1, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/16 v1, 0xe

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {p1, v2, v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(ILkotlin/jvm/functions/Function2;I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 18
    .line 19
    new-instance p1, Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 20
    .line 21
    invoke-direct {p1, p0, p2}, Landroidx/compose/ui/focus/FocusInvalidationManager;-><init>(Landroidx/compose/ui/focus/FocusOwnerImpl;Landroidx/compose/ui/platform/AndroidComposeView;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 25
    .line 26
    new-instance p1, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;-><init>(Landroidx/compose/ui/focus/FocusOwnerImpl;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->modifier:Landroidx/compose/ui/focus/FocusOwnerImpl$modifier$1;

    .line 32
    .line 33
    new-instance p1, Landroidx/collection/MutableObjectList;

    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    invoke-direct {p1, p2}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->listeners:Landroidx/collection/MutableObjectList;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final clearFocus(Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_6

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 16
    .line 17
    .line 18
    if-eqz p1, :cond_c

    .line 19
    .line 20
    sget-object p0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 21
    .line 22
    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 23
    .line 24
    invoke-virtual {p1, p0, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 28
    .line 29
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 30
    .line 31
    if-nez p0, :cond_1

    .line 32
    .line 33
    const-string/jumbo p0, "visitAncestors called on an unattached node"

    .line 34
    .line 35
    .line 36
    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object p0, p1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 42
    .line 43
    invoke-static {p1}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    if-eqz p1, :cond_c

    .line 48
    .line 49
    iget-object v3, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 50
    .line 51
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v3, Landroidx/compose/ui/Modifier$Node;

    .line 54
    .line 55
    iget v3, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 56
    .line 57
    and-int/lit16 v3, v3, 0x400

    .line 58
    .line 59
    if-eqz v3, :cond_a

    .line 60
    .line 61
    :goto_1
    if-eqz p0, :cond_a

    .line 62
    .line 63
    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 64
    .line 65
    and-int/lit16 v3, v3, 0x400

    .line 66
    .line 67
    if-eqz v3, :cond_9

    .line 68
    .line 69
    move-object v3, p0

    .line 70
    move-object v4, v1

    .line 71
    :goto_2
    if-eqz v3, :cond_9

    .line 72
    .line 73
    instance-of v5, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 74
    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 78
    .line 79
    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 80
    .line 81
    invoke-virtual {v3, v5, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 82
    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_2
    iget v5, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 86
    .line 87
    and-int/lit16 v5, v5, 0x400

    .line 88
    .line 89
    if-eqz v5, :cond_8

    .line 90
    .line 91
    instance-of v5, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 92
    .line 93
    if-eqz v5, :cond_8

    .line 94
    .line 95
    move-object v5, v3

    .line 96
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 97
    .line 98
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 99
    .line 100
    const/4 v6, 0x0

    .line 101
    :goto_3
    if-eqz v5, :cond_7

    .line 102
    .line 103
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 104
    .line 105
    and-int/lit16 v7, v7, 0x400

    .line 106
    .line 107
    if-eqz v7, :cond_6

    .line 108
    .line 109
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    if-ne v6, v0, :cond_3

    .line 112
    .line 113
    move-object v3, v5

    .line 114
    goto :goto_4

    .line 115
    :cond_3
    if-nez v4, :cond_4

    .line 116
    .line 117
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 118
    .line 119
    const/16 v7, 0x10

    .line 120
    .line 121
    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 122
    .line 123
    invoke-direct {v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_4
    if-eqz v3, :cond_5

    .line 127
    .line 128
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    move-object v3, v1

    .line 132
    :cond_5
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    :goto_4
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_7
    if-ne v6, v0, :cond_8

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_8
    :goto_5
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    goto :goto_2

    .line 146
    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    if-eqz p1, :cond_b

    .line 154
    .line 155
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 156
    .line 157
    if-eqz p0, :cond_b

    .line 158
    .line 159
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast p0, Landroidx/compose/ui/node/TailModifierNode;

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_b
    move-object p0, v1

    .line 165
    goto :goto_0

    .line 166
    :cond_c
    :goto_6
    return v0
.end method

.method public final clearFocus-I7lrPNg(IZZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_3

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 5
    .line 6
    invoke-static {v1, p1}, Landroidx/compose/ui/focus/FocusTraversalKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p1, v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 27
    .line 28
    .line 29
    return p2

    .line 30
    :cond_1
    :goto_0
    move v0, p2

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus(Z)Z

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {p0, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus(Z)Z

    .line 37
    .line 38
    .line 39
    :goto_1
    if-eqz v0, :cond_4

    .line 40
    .line 41
    if-eqz p3, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearOwnerFocus()V

    .line 44
    .line 45
    .line 46
    :cond_4
    return v0
.end method

.method public final clearOwnerFocus()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void

    .line 35
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final dispatchKeyEvent-YhN2O0w(Landroid/view/KeyEvent;Lkotlin/jvm/functions/Function0;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    const-string v1, "FocusOwnerImpl:dispatchKeyEvent"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusInvalidationManager:Landroidx/compose/ui/focus/FocusInvalidationManager;

    .line 9
    .line 10
    iget-boolean v1, v1, Landroidx/compose/ui/focus/FocusInvalidationManager;->isInvalidationScheduled:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string p0, "FocusRelatedWarning: Dispatching key event while focus system is invalidated."

    .line 16
    .line 17
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 18
    .line 19
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->validateKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 33
    .line 34
    .line 35
    return v2

    .line 36
    :cond_1
    :try_start_2
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    const-string/jumbo v1, "visitAncestors called on an unattached node"

    .line 41
    .line 42
    .line 43
    const/16 v3, 0x10

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    const/4 v5, 0x1

    .line 47
    if-eqz p0, :cond_7

    .line 48
    .line 49
    :try_start_3
    iget-object v6, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 50
    .line 51
    iget-boolean v6, v6, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 52
    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    const-string/jumbo v6, "visitLocalDescendants called on an unattached node"

    .line 56
    .line 57
    .line 58
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v6, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 62
    .line 63
    iget v7, v6, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 64
    .line 65
    and-int/lit16 v7, v7, 0x2400

    .line 66
    .line 67
    if-eqz v7, :cond_5

    .line 68
    .line 69
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 70
    .line 71
    move-object v7, v4

    .line 72
    :goto_0
    if-eqz v6, :cond_6

    .line 73
    .line 74
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 75
    .line 76
    and-int/lit16 v9, v8, 0x2400

    .line 77
    .line 78
    if-eqz v9, :cond_4

    .line 79
    .line 80
    and-int/lit16 v8, v8, 0x400

    .line 81
    .line 82
    if-eqz v8, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move-object v7, v6

    .line 86
    :cond_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    move-object v7, v4

    .line 90
    :cond_6
    :goto_1
    if-nez v7, :cond_22

    .line 91
    .line 92
    :cond_7
    if-eqz p0, :cond_14

    .line 93
    .line 94
    iget-object v6, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 95
    .line 96
    iget-boolean v6, v6, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 97
    .line 98
    if-nez v6, :cond_8

    .line 99
    .line 100
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_8
    iget-object v6, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 104
    .line 105
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    :goto_2
    if-eqz p0, :cond_13

    .line 110
    .line 111
    iget-object v7, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 112
    .line 113
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 116
    .line 117
    iget v7, v7, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 118
    .line 119
    and-int/lit16 v7, v7, 0x2000

    .line 120
    .line 121
    if-eqz v7, :cond_11

    .line 122
    .line 123
    :goto_3
    if-eqz v6, :cond_11

    .line 124
    .line 125
    iget v7, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 126
    .line 127
    and-int/lit16 v7, v7, 0x2000

    .line 128
    .line 129
    if-eqz v7, :cond_10

    .line 130
    .line 131
    move-object v8, v4

    .line 132
    move-object v7, v6

    .line 133
    :goto_4
    if-eqz v7, :cond_10

    .line 134
    .line 135
    instance-of v9, v7, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 136
    .line 137
    if-eqz v9, :cond_9

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_9
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 141
    .line 142
    and-int/lit16 v9, v9, 0x2000

    .line 143
    .line 144
    if-eqz v9, :cond_f

    .line 145
    .line 146
    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 147
    .line 148
    if-eqz v9, :cond_f

    .line 149
    .line 150
    move-object v9, v7

    .line 151
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 152
    .line 153
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 154
    .line 155
    move v10, v2

    .line 156
    :goto_5
    if-eqz v9, :cond_e

    .line 157
    .line 158
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 159
    .line 160
    and-int/lit16 v11, v11, 0x2000

    .line 161
    .line 162
    if-eqz v11, :cond_d

    .line 163
    .line 164
    add-int/lit8 v10, v10, 0x1

    .line 165
    .line 166
    if-ne v10, v5, :cond_a

    .line 167
    .line 168
    move-object v7, v9

    .line 169
    goto :goto_6

    .line 170
    :cond_a
    if-nez v8, :cond_b

    .line 171
    .line 172
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 173
    .line 174
    new-array v11, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 175
    .line 176
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_b
    if-eqz v7, :cond_c

    .line 180
    .line 181
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    move-object v7, v4

    .line 185
    :cond_c
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_d
    :goto_6
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_e
    if-ne v10, v5, :cond_f

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_f
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    goto :goto_4

    .line 199
    :cond_10
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    if-eqz p0, :cond_12

    .line 207
    .line 208
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 209
    .line 210
    if-eqz v6, :cond_12

    .line 211
    .line 212
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v6, Landroidx/compose/ui/node/TailModifierNode;

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_12
    move-object v6, v4

    .line 218
    goto :goto_2

    .line 219
    :cond_13
    move-object v7, v4

    .line 220
    :goto_7
    check-cast v7, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 221
    .line 222
    if-eqz v7, :cond_14

    .line 223
    .line 224
    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 225
    .line 226
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 227
    .line 228
    goto/16 :goto_e

    .line 229
    .line 230
    :cond_14
    iget-object p0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 231
    .line 232
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 233
    .line 234
    if-nez p0, :cond_15

    .line 235
    .line 236
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_15
    iget-object p0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 240
    .line 241
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 242
    .line 243
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    :goto_8
    if-eqz v0, :cond_20

    .line 248
    .line 249
    iget-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 250
    .line 251
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 254
    .line 255
    iget v6, v6, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 256
    .line 257
    and-int/lit16 v6, v6, 0x2000

    .line 258
    .line 259
    if-eqz v6, :cond_1e

    .line 260
    .line 261
    :goto_9
    if-eqz p0, :cond_1e

    .line 262
    .line 263
    iget v6, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 264
    .line 265
    and-int/lit16 v6, v6, 0x2000

    .line 266
    .line 267
    if-eqz v6, :cond_1d

    .line 268
    .line 269
    move-object v6, p0

    .line 270
    move-object v7, v4

    .line 271
    :goto_a
    if-eqz v6, :cond_1d

    .line 272
    .line 273
    instance-of v8, v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 274
    .line 275
    if-eqz v8, :cond_16

    .line 276
    .line 277
    goto :goto_d

    .line 278
    :cond_16
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 279
    .line 280
    and-int/lit16 v8, v8, 0x2000

    .line 281
    .line 282
    if-eqz v8, :cond_1c

    .line 283
    .line 284
    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 285
    .line 286
    if-eqz v8, :cond_1c

    .line 287
    .line 288
    move-object v8, v6

    .line 289
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 290
    .line 291
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 292
    .line 293
    move v9, v2

    .line 294
    :goto_b
    if-eqz v8, :cond_1b

    .line 295
    .line 296
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 297
    .line 298
    and-int/lit16 v10, v10, 0x2000

    .line 299
    .line 300
    if-eqz v10, :cond_1a

    .line 301
    .line 302
    add-int/lit8 v9, v9, 0x1

    .line 303
    .line 304
    if-ne v9, v5, :cond_17

    .line 305
    .line 306
    move-object v6, v8

    .line 307
    goto :goto_c

    .line 308
    :cond_17
    if-nez v7, :cond_18

    .line 309
    .line 310
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 311
    .line 312
    new-array v10, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 313
    .line 314
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :cond_18
    if-eqz v6, :cond_19

    .line 318
    .line 319
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    move-object v6, v4

    .line 323
    :cond_19
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_1a
    :goto_c
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_1b
    if-ne v9, v5, :cond_1c

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_1c
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    goto :goto_a

    .line 337
    :cond_1d
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-eqz v0, :cond_1f

    .line 345
    .line 346
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 347
    .line 348
    if-eqz p0, :cond_1f

    .line 349
    .line 350
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast p0, Landroidx/compose/ui/node/TailModifierNode;

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_1f
    move-object p0, v4

    .line 356
    goto :goto_8

    .line 357
    :cond_20
    move-object v6, v4

    .line 358
    :goto_d
    check-cast v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 359
    .line 360
    if-eqz v6, :cond_21

    .line 361
    .line 362
    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 363
    .line 364
    iget-object v7, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 365
    .line 366
    goto :goto_e

    .line 367
    :cond_21
    move-object v7, v4

    .line 368
    :cond_22
    :goto_e
    if-eqz v7, :cond_45

    .line 369
    .line 370
    iget-object p0, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 371
    .line 372
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 373
    .line 374
    if-nez p0, :cond_23

    .line 375
    .line 376
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    :cond_23
    iget-object p0, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 380
    .line 381
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 382
    .line 383
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    move-object v1, v4

    .line 388
    :goto_f
    if-eqz v0, :cond_2f

    .line 389
    .line 390
    iget-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 391
    .line 392
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 395
    .line 396
    iget v6, v6, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 397
    .line 398
    and-int/lit16 v6, v6, 0x2000

    .line 399
    .line 400
    if-eqz v6, :cond_2d

    .line 401
    .line 402
    :goto_10
    if-eqz p0, :cond_2d

    .line 403
    .line 404
    iget v6, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 405
    .line 406
    and-int/lit16 v6, v6, 0x2000

    .line 407
    .line 408
    if-eqz v6, :cond_2c

    .line 409
    .line 410
    move-object v6, p0

    .line 411
    move-object v8, v4

    .line 412
    :goto_11
    if-eqz v6, :cond_2c

    .line 413
    .line 414
    instance-of v9, v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 415
    .line 416
    if-eqz v9, :cond_25

    .line 417
    .line 418
    if-nez v1, :cond_24

    .line 419
    .line 420
    new-instance v1, Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .line 424
    .line 425
    :cond_24
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move v9, v2

    .line 429
    goto :goto_12

    .line 430
    :cond_25
    move v9, v5

    .line 431
    :goto_12
    if-eqz v9, :cond_2b

    .line 432
    .line 433
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 434
    .line 435
    and-int/lit16 v9, v9, 0x2000

    .line 436
    .line 437
    if-eqz v9, :cond_2b

    .line 438
    .line 439
    instance-of v9, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 440
    .line 441
    if-eqz v9, :cond_2b

    .line 442
    .line 443
    move-object v9, v6

    .line 444
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 445
    .line 446
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 447
    .line 448
    move v10, v2

    .line 449
    :goto_13
    if-eqz v9, :cond_2a

    .line 450
    .line 451
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 452
    .line 453
    and-int/lit16 v11, v11, 0x2000

    .line 454
    .line 455
    if-eqz v11, :cond_29

    .line 456
    .line 457
    add-int/lit8 v10, v10, 0x1

    .line 458
    .line 459
    if-ne v10, v5, :cond_26

    .line 460
    .line 461
    move-object v6, v9

    .line 462
    goto :goto_14

    .line 463
    :cond_26
    if-nez v8, :cond_27

    .line 464
    .line 465
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 466
    .line 467
    new-array v11, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 468
    .line 469
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    :cond_27
    if-eqz v6, :cond_28

    .line 473
    .line 474
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 475
    .line 476
    .line 477
    move-object v6, v4

    .line 478
    :cond_28
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 479
    .line 480
    .line 481
    :cond_29
    :goto_14
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 482
    .line 483
    goto :goto_13

    .line 484
    :cond_2a
    if-ne v10, v5, :cond_2b

    .line 485
    .line 486
    goto :goto_11

    .line 487
    :cond_2b
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 488
    .line 489
    .line 490
    move-result-object v6

    .line 491
    goto :goto_11

    .line 492
    :cond_2c
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 493
    .line 494
    goto :goto_10

    .line 495
    :cond_2d
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    if-eqz v0, :cond_2e

    .line 500
    .line 501
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 502
    .line 503
    if-eqz p0, :cond_2e

    .line 504
    .line 505
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 506
    .line 507
    check-cast p0, Landroidx/compose/ui/node/TailModifierNode;

    .line 508
    .line 509
    goto :goto_f

    .line 510
    :cond_2e
    move-object p0, v4

    .line 511
    goto :goto_f

    .line 512
    :cond_2f
    if-eqz v1, :cond_32

    .line 513
    .line 514
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 515
    .line 516
    .line 517
    move-result p0

    .line 518
    add-int/lit8 p0, p0, -0x1

    .line 519
    .line 520
    if-ltz p0, :cond_32

    .line 521
    .line 522
    :goto_15
    add-int/lit8 v0, p0, -0x1

    .line 523
    .line 524
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object p0

    .line 528
    check-cast p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 529
    .line 530
    invoke-interface {p0, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 531
    .line 532
    .line 533
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 534
    if-eqz p0, :cond_30

    .line 535
    .line 536
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 537
    .line 538
    .line 539
    return v5

    .line 540
    :cond_30
    if-gez v0, :cond_31

    .line 541
    .line 542
    goto :goto_16

    .line 543
    :cond_31
    move p0, v0

    .line 544
    goto :goto_15

    .line 545
    :cond_32
    :goto_16
    :try_start_4
    iget-object p0, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 546
    .line 547
    move-object v0, v4

    .line 548
    :goto_17
    if-eqz p0, :cond_3a

    .line 549
    .line 550
    instance-of v6, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 551
    .line 552
    if-eqz v6, :cond_33

    .line 553
    .line 554
    check-cast p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 555
    .line 556
    invoke-interface {p0, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 557
    .line 558
    .line 559
    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 560
    if-eqz p0, :cond_39

    .line 561
    .line 562
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 563
    .line 564
    .line 565
    return v5

    .line 566
    :cond_33
    :try_start_5
    iget v6, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 567
    .line 568
    and-int/lit16 v6, v6, 0x2000

    .line 569
    .line 570
    if-eqz v6, :cond_39

    .line 571
    .line 572
    instance-of v6, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 573
    .line 574
    if-eqz v6, :cond_39

    .line 575
    .line 576
    move-object v6, p0

    .line 577
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 578
    .line 579
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 580
    .line 581
    move v8, v2

    .line 582
    :goto_18
    if-eqz v6, :cond_38

    .line 583
    .line 584
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 585
    .line 586
    and-int/lit16 v9, v9, 0x2000

    .line 587
    .line 588
    if-eqz v9, :cond_37

    .line 589
    .line 590
    add-int/lit8 v8, v8, 0x1

    .line 591
    .line 592
    if-ne v8, v5, :cond_34

    .line 593
    .line 594
    move-object p0, v6

    .line 595
    goto :goto_19

    .line 596
    :cond_34
    if-nez v0, :cond_35

    .line 597
    .line 598
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 599
    .line 600
    new-array v9, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 601
    .line 602
    invoke-direct {v0, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 603
    .line 604
    .line 605
    :cond_35
    if-eqz p0, :cond_36

    .line 606
    .line 607
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 608
    .line 609
    .line 610
    move-object p0, v4

    .line 611
    :cond_36
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    :cond_37
    :goto_19
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 615
    .line 616
    goto :goto_18

    .line 617
    :cond_38
    if-ne v8, v5, :cond_39

    .line 618
    .line 619
    goto :goto_17

    .line 620
    :cond_39
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 621
    .line 622
    .line 623
    move-result-object p0

    .line 624
    goto :goto_17

    .line 625
    :cond_3a
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object p0

    .line 629
    check-cast p0, Ljava/lang/Boolean;

    .line 630
    .line 631
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 632
    .line 633
    .line 634
    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 635
    if-eqz p0, :cond_3b

    .line 636
    .line 637
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 638
    .line 639
    .line 640
    return v5

    .line 641
    :cond_3b
    :try_start_6
    iget-object p0, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 642
    .line 643
    move-object p2, v4

    .line 644
    :goto_1a
    if-eqz p0, :cond_43

    .line 645
    .line 646
    instance-of v0, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 647
    .line 648
    if-eqz v0, :cond_3c

    .line 649
    .line 650
    check-cast p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 651
    .line 652
    invoke-interface {p0, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 653
    .line 654
    .line 655
    move-result p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 656
    if-eqz p0, :cond_42

    .line 657
    .line 658
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 659
    .line 660
    .line 661
    return v5

    .line 662
    :cond_3c
    :try_start_7
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 663
    .line 664
    and-int/lit16 v0, v0, 0x2000

    .line 665
    .line 666
    if-eqz v0, :cond_42

    .line 667
    .line 668
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 669
    .line 670
    if-eqz v0, :cond_42

    .line 671
    .line 672
    move-object v0, p0

    .line 673
    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 674
    .line 675
    iget-object v0, v0, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 676
    .line 677
    move v6, v2

    .line 678
    :goto_1b
    if-eqz v0, :cond_41

    .line 679
    .line 680
    iget v7, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 681
    .line 682
    and-int/lit16 v7, v7, 0x2000

    .line 683
    .line 684
    if-eqz v7, :cond_40

    .line 685
    .line 686
    add-int/lit8 v6, v6, 0x1

    .line 687
    .line 688
    if-ne v6, v5, :cond_3d

    .line 689
    .line 690
    move-object p0, v0

    .line 691
    goto :goto_1c

    .line 692
    :cond_3d
    if-nez p2, :cond_3e

    .line 693
    .line 694
    new-instance p2, Landroidx/compose/runtime/collection/MutableVector;

    .line 695
    .line 696
    new-array v7, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 697
    .line 698
    invoke-direct {p2, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    :cond_3e
    if-eqz p0, :cond_3f

    .line 702
    .line 703
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    move-object p0, v4

    .line 707
    :cond_3f
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 708
    .line 709
    .line 710
    :cond_40
    :goto_1c
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 711
    .line 712
    goto :goto_1b

    .line 713
    :cond_41
    if-ne v6, v5, :cond_42

    .line 714
    .line 715
    goto :goto_1a

    .line 716
    :cond_42
    invoke-static {p2}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 717
    .line 718
    .line 719
    move-result-object p0

    .line 720
    goto :goto_1a

    .line 721
    :cond_43
    if-eqz v1, :cond_45

    .line 722
    .line 723
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 724
    .line 725
    .line 726
    move-result p0

    .line 727
    move p2, v2

    .line 728
    :goto_1d
    if-ge p2, p0, :cond_45

    .line 729
    .line 730
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v0

    .line 734
    check-cast v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 735
    .line 736
    invoke-interface {v0, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 737
    .line 738
    .line 739
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 740
    if-eqz v0, :cond_44

    .line 741
    .line 742
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 743
    .line 744
    .line 745
    return v5

    .line 746
    :cond_44
    add-int/lit8 p2, p2, 0x1

    .line 747
    .line 748
    goto :goto_1d

    .line 749
    :cond_45
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 750
    .line 751
    .line 752
    return v2

    .line 753
    :catchall_0
    move-exception p0

    .line 754
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 755
    .line 756
    .line 757
    throw p0
.end method

.method public final focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 10
    .line 11
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v7, 0x4

    .line 16
    const/4 v8, 0x3

    .line 17
    const/4 v9, 0x6

    .line 18
    const/4 v10, 0x5

    .line 19
    const/4 v11, 0x2

    .line 20
    iget-object v13, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->owner:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 21
    .line 22
    const/16 v16, 0x0

    .line 23
    .line 24
    const/4 v15, 0x1

    .line 25
    if-eqz v5, :cond_25

    .line 26
    .line 27
    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 28
    .line 29
    .line 30
    move-result-object v17

    .line 31
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 32
    .line 33
    .line 34
    move-result-object v14

    .line 35
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->start:Landroidx/compose/ui/focus/FocusRequester;

    .line 36
    .line 37
    iget-object v12, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->end:Landroidx/compose/ui/focus/FocusRequester;

    .line 38
    .line 39
    if-ne v1, v15, :cond_0

    .line 40
    .line 41
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->next:Landroidx/compose/ui/focus/FocusRequester;

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_0
    if-ne v1, v11, :cond_1

    .line 46
    .line 47
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->previous:Landroidx/compose/ui/focus/FocusRequester;

    .line 48
    .line 49
    goto/16 :goto_4

    .line 50
    .line 51
    :cond_1
    if-ne v1, v10, :cond_2

    .line 52
    .line 53
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->up:Landroidx/compose/ui/focus/FocusRequester;

    .line 54
    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_2
    if-ne v1, v9, :cond_3

    .line 58
    .line 59
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->down:Landroidx/compose/ui/focus/FocusRequester;

    .line 60
    .line 61
    goto/16 :goto_4

    .line 62
    .line 63
    :cond_3
    if-ne v1, v8, :cond_7

    .line 64
    .line 65
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_5

    .line 70
    .line 71
    if-ne v9, v15, :cond_4

    .line 72
    .line 73
    move-object v6, v12

    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 76
    .line 77
    .line 78
    return-object v16

    .line 79
    :cond_5
    :goto_0
    sget-object v9, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 80
    .line 81
    if-ne v6, v9, :cond_6

    .line 82
    .line 83
    move-object/from16 v6, v16

    .line 84
    .line 85
    :cond_6
    if-nez v6, :cond_10

    .line 86
    .line 87
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->left:Landroidx/compose/ui/focus/FocusRequester;

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    if-ne v1, v7, :cond_b

    .line 91
    .line 92
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_9

    .line 97
    .line 98
    if-ne v9, v15, :cond_8

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_8
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 102
    .line 103
    .line 104
    return-object v16

    .line 105
    :cond_9
    move-object v6, v12

    .line 106
    :goto_1
    sget-object v9, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 107
    .line 108
    if-ne v6, v9, :cond_a

    .line 109
    .line 110
    move-object/from16 v6, v16

    .line 111
    .line 112
    :cond_a
    if-nez v6, :cond_10

    .line 113
    .line 114
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->right:Landroidx/compose/ui/focus/FocusRequester;

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_b
    const/4 v6, 0x7

    .line 118
    if-ne v1, v6, :cond_c

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_c
    const/16 v9, 0x8

    .line 122
    .line 123
    if-ne v1, v9, :cond_24

    .line 124
    .line 125
    :goto_2
    new-instance v9, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    .line 126
    .line 127
    invoke-direct {v9, v1}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    check-cast v12, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 135
    .line 136
    invoke-virtual {v12}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    check-cast v12, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 141
    .line 142
    invoke-virtual {v12}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    if-ne v1, v6, :cond_d

    .line 147
    .line 148
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onEnter:Lkotlin/jvm/functions/Function1;

    .line 149
    .line 150
    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_d
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onExit:Lkotlin/jvm/functions/Function1;

    .line 155
    .line 156
    invoke-interface {v6, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :goto_3
    iget-boolean v6, v9, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled:Z

    .line 160
    .line 161
    if-eqz v6, :cond_e

    .line 162
    .line 163
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_e
    invoke-virtual {v12}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    if-eq v10, v6, :cond_f

    .line 171
    .line 172
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Redirect:Landroidx/compose/ui/focus/FocusRequester;

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_f
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 176
    .line 177
    :cond_10
    :goto_4
    sget-object v9, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    .line 178
    .line 179
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_11

    .line 184
    .line 185
    goto/16 :goto_11

    .line 186
    .line 187
    :cond_11
    sget-object v10, Landroidx/compose/ui/focus/FocusRequester;->Redirect:Landroidx/compose/ui/focus/FocusRequester;

    .line 188
    .line 189
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v10

    .line 193
    if-eqz v10, :cond_12

    .line 194
    .line 195
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_31

    .line 200
    .line 201
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Ljava/lang/Boolean;

    .line 206
    .line 207
    return-object v0

    .line 208
    :cond_12
    sget-object v10, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 209
    .line 210
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    if-nez v12, :cond_26

    .line 215
    .line 216
    const-string v0, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    .line 217
    .line 218
    if-eq v6, v10, :cond_23

    .line 219
    .line 220
    if-eq v6, v9, :cond_22

    .line 221
    .line 222
    iget-object v0, v6, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 223
    .line 224
    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 225
    .line 226
    if-nez v1, :cond_13

    .line 227
    .line 228
    const-string v0, "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    .line 229
    .line 230
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    const/4 v15, 0x0

    .line 236
    goto/16 :goto_c

    .line 237
    .line 238
    :cond_13
    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 239
    .line 240
    const/4 v2, 0x0

    .line 241
    const/4 v4, 0x0

    .line 242
    :goto_5
    if-ge v2, v1, :cond_21

    .line 243
    .line 244
    aget-object v5, v0, v2

    .line 245
    .line 246
    check-cast v5, Landroidx/compose/ui/focus/FocusRequesterModifierNode;

    .line 247
    .line 248
    move-object v6, v5

    .line 249
    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 250
    .line 251
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 252
    .line 253
    iget-boolean v6, v6, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 254
    .line 255
    if-nez v6, :cond_14

    .line 256
    .line 257
    const-string/jumbo v6, "visitChildren called on an unattached node"

    .line 258
    .line 259
    .line 260
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_14
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 264
    .line 265
    const/16 v7, 0x10

    .line 266
    .line 267
    new-array v8, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 268
    .line 269
    invoke-direct {v6, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    .line 273
    .line 274
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 275
    .line 276
    iget-object v7, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 277
    .line 278
    if-nez v7, :cond_15

    .line 279
    .line 280
    invoke-static {v6, v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 281
    .line 282
    .line 283
    goto :goto_6

    .line 284
    :cond_15
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    :cond_16
    :goto_6
    iget v5, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 288
    .line 289
    if-eqz v5, :cond_20

    .line 290
    .line 291
    add-int/lit8 v5, v5, -0x1

    .line 292
    .line 293
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    .line 298
    .line 299
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 300
    .line 301
    and-int/lit16 v7, v7, 0x400

    .line 302
    .line 303
    if-nez v7, :cond_17

    .line 304
    .line 305
    invoke-static {v6, v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 306
    .line 307
    .line 308
    goto :goto_6

    .line 309
    :cond_17
    :goto_7
    if-eqz v5, :cond_16

    .line 310
    .line 311
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 312
    .line 313
    and-int/lit16 v7, v7, 0x400

    .line 314
    .line 315
    if-eqz v7, :cond_1f

    .line 316
    .line 317
    move-object/from16 v7, v16

    .line 318
    .line 319
    :goto_8
    if-eqz v5, :cond_16

    .line 320
    .line 321
    instance-of v8, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 322
    .line 323
    if-eqz v8, :cond_18

    .line 324
    .line 325
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 326
    .line 327
    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    check-cast v5, Ljava/lang/Boolean;

    .line 332
    .line 333
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-eqz v5, :cond_1e

    .line 338
    .line 339
    move v4, v15

    .line 340
    goto :goto_b

    .line 341
    :cond_18
    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 342
    .line 343
    and-int/lit16 v8, v8, 0x400

    .line 344
    .line 345
    if-eqz v8, :cond_1e

    .line 346
    .line 347
    instance-of v8, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 348
    .line 349
    if-eqz v8, :cond_1e

    .line 350
    .line 351
    move-object v8, v5

    .line 352
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 353
    .line 354
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 355
    .line 356
    const/4 v9, 0x0

    .line 357
    :goto_9
    if-eqz v8, :cond_1d

    .line 358
    .line 359
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 360
    .line 361
    and-int/lit16 v10, v10, 0x400

    .line 362
    .line 363
    if-eqz v10, :cond_1c

    .line 364
    .line 365
    add-int/lit8 v9, v9, 0x1

    .line 366
    .line 367
    if-ne v9, v15, :cond_19

    .line 368
    .line 369
    move-object v5, v8

    .line 370
    goto :goto_a

    .line 371
    :cond_19
    if-nez v7, :cond_1a

    .line 372
    .line 373
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 374
    .line 375
    const/16 v10, 0x10

    .line 376
    .line 377
    new-array v11, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 378
    .line 379
    invoke-direct {v7, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 380
    .line 381
    .line 382
    :cond_1a
    if-eqz v5, :cond_1b

    .line 383
    .line 384
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    move-object/from16 v5, v16

    .line 388
    .line 389
    :cond_1b
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    :cond_1c
    :goto_a
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_1d
    if-ne v9, v15, :cond_1e

    .line 396
    .line 397
    goto :goto_8

    .line 398
    :cond_1e
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    goto :goto_8

    .line 403
    :cond_1f
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 404
    .line 405
    goto :goto_7

    .line 406
    :cond_20
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 407
    .line 408
    goto/16 :goto_5

    .line 409
    .line 410
    :cond_21
    move v15, v4

    .line 411
    :goto_c
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    return-object v0

    .line 416
    :cond_22
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    return-object v16

    .line 420
    :cond_23
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    return-object v16

    .line 424
    :cond_24
    const-string v0, "invalid FocusDirection"

    .line 425
    .line 426
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    return-object v16

    .line 430
    :cond_25
    move-object/from16 v5, v16

    .line 431
    .line 432
    :cond_26
    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 433
    .line 434
    .line 435
    move-result-object v6

    .line 436
    new-instance v9, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    .line 437
    .line 438
    const/4 v10, 0x0

    .line 439
    invoke-direct {v9, v5, v0, v3, v10}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 440
    .line 441
    .line 442
    if-ne v1, v15, :cond_27

    .line 443
    .line 444
    goto :goto_d

    .line 445
    :cond_27
    if-ne v1, v11, :cond_2a

    .line 446
    .line 447
    :goto_d
    if-ne v1, v15, :cond_28

    .line 448
    .line 449
    invoke-static {v4, v9}, Landroidx/compose/ui/focus/FocusTraversalKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    .line 450
    .line 451
    .line 452
    move-result v0

    .line 453
    goto :goto_e

    .line 454
    :cond_28
    if-ne v1, v11, :cond_29

    .line 455
    .line 456
    invoke-static {v4, v9}, Landroidx/compose/ui/focus/FocusTraversalKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    return-object v0

    .line 465
    :cond_29
    const-string v0, "This function should only be used for 1-D focus search"

    .line 466
    .line 467
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    return-object v16

    .line 471
    :cond_2a
    if-ne v1, v8, :cond_2b

    .line 472
    .line 473
    goto :goto_f

    .line 474
    :cond_2b
    if-ne v1, v7, :cond_2c

    .line 475
    .line 476
    goto :goto_f

    .line 477
    :cond_2c
    const/4 v0, 0x5

    .line 478
    if-ne v1, v0, :cond_2d

    .line 479
    .line 480
    goto :goto_f

    .line 481
    :cond_2d
    const/4 v0, 0x6

    .line 482
    if-ne v1, v0, :cond_2e

    .line 483
    .line 484
    :goto_f
    invoke-static {v1, v9, v4, v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->twoDimensionalFocusSearch-sMXa3k8(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Ljava/lang/Boolean;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    return-object v0

    .line 489
    :cond_2e
    const/4 v0, 0x7

    .line 490
    if-ne v1, v0, :cond_32

    .line 491
    .line 492
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    if-eqz v0, :cond_30

    .line 497
    .line 498
    if-ne v0, v15, :cond_2f

    .line 499
    .line 500
    move v7, v8

    .line 501
    goto :goto_10

    .line 502
    :cond_2f
    invoke-static {}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m()V

    .line 503
    .line 504
    .line 505
    return-object v16

    .line 506
    :cond_30
    :goto_10
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    if-eqz v0, :cond_31

    .line 511
    .line 512
    invoke-static {v7, v9, v0, v2}, Landroidx/compose/ui/focus/FocusTraversalKt;->twoDimensionalFocusSearch-sMXa3k8(ILandroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/geometry/Rect;)Ljava/lang/Boolean;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    return-object v0

    .line 517
    :cond_31
    :goto_11
    return-object v16

    .line 518
    :cond_32
    const/16 v0, 0x8

    .line 519
    .line 520
    if-ne v1, v0, :cond_41

    .line 521
    .line 522
    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    if-eqz v0, :cond_3f

    .line 527
    .line 528
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 529
    .line 530
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 531
    .line 532
    if-nez v1, :cond_33

    .line 533
    .line 534
    const-string/jumbo v1, "visitAncestors called on an unattached node"

    .line 535
    .line 536
    .line 537
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    :cond_33
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 541
    .line 542
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 543
    .line 544
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    :goto_12
    if-eqz v0, :cond_3f

    .line 549
    .line 550
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 551
    .line 552
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    .line 555
    .line 556
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 557
    .line 558
    and-int/lit16 v2, v2, 0x400

    .line 559
    .line 560
    if-eqz v2, :cond_3d

    .line 561
    .line 562
    :goto_13
    if-eqz v1, :cond_3d

    .line 563
    .line 564
    iget v2, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 565
    .line 566
    and-int/lit16 v2, v2, 0x400

    .line 567
    .line 568
    if-eqz v2, :cond_3c

    .line 569
    .line 570
    move-object v2, v1

    .line 571
    move-object/from16 v3, v16

    .line 572
    .line 573
    :goto_14
    if-eqz v2, :cond_3c

    .line 574
    .line 575
    instance-of v5, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 576
    .line 577
    if-eqz v5, :cond_35

    .line 578
    .line 579
    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 580
    .line 581
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    iget-boolean v5, v5, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 586
    .line 587
    if-eqz v5, :cond_34

    .line 588
    .line 589
    move-object v15, v2

    .line 590
    goto/16 :goto_19

    .line 591
    .line 592
    :cond_34
    const/16 v7, 0x10

    .line 593
    .line 594
    goto :goto_18

    .line 595
    :cond_35
    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 596
    .line 597
    and-int/lit16 v5, v5, 0x400

    .line 598
    .line 599
    if-eqz v5, :cond_34

    .line 600
    .line 601
    instance-of v5, v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 602
    .line 603
    if-eqz v5, :cond_34

    .line 604
    .line 605
    move-object v5, v2

    .line 606
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 607
    .line 608
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 609
    .line 610
    move v6, v10

    .line 611
    :goto_15
    if-eqz v5, :cond_3a

    .line 612
    .line 613
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 614
    .line 615
    and-int/lit16 v7, v7, 0x400

    .line 616
    .line 617
    if-eqz v7, :cond_36

    .line 618
    .line 619
    add-int/lit8 v6, v6, 0x1

    .line 620
    .line 621
    if-ne v6, v15, :cond_37

    .line 622
    .line 623
    move-object v2, v5

    .line 624
    :cond_36
    const/16 v7, 0x10

    .line 625
    .line 626
    goto :goto_17

    .line 627
    :cond_37
    if-nez v3, :cond_38

    .line 628
    .line 629
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 630
    .line 631
    const/16 v7, 0x10

    .line 632
    .line 633
    new-array v8, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 634
    .line 635
    invoke-direct {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 636
    .line 637
    .line 638
    goto :goto_16

    .line 639
    :cond_38
    const/16 v7, 0x10

    .line 640
    .line 641
    :goto_16
    if-eqz v2, :cond_39

    .line 642
    .line 643
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    move-object/from16 v2, v16

    .line 647
    .line 648
    :cond_39
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 649
    .line 650
    .line 651
    :goto_17
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 652
    .line 653
    goto :goto_15

    .line 654
    :cond_3a
    const/16 v7, 0x10

    .line 655
    .line 656
    if-ne v6, v15, :cond_3b

    .line 657
    .line 658
    goto :goto_14

    .line 659
    :cond_3b
    :goto_18
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 660
    .line 661
    .line 662
    move-result-object v2

    .line 663
    goto :goto_14

    .line 664
    :cond_3c
    const/16 v7, 0x10

    .line 665
    .line 666
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 667
    .line 668
    goto :goto_13

    .line 669
    :cond_3d
    const/16 v7, 0x10

    .line 670
    .line 671
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    if-eqz v0, :cond_3e

    .line 676
    .line 677
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 678
    .line 679
    if-eqz v1, :cond_3e

    .line 680
    .line 681
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    .line 682
    .line 683
    check-cast v1, Landroidx/compose/ui/node/TailModifierNode;

    .line 684
    .line 685
    goto/16 :goto_12

    .line 686
    .line 687
    :cond_3e
    move-object/from16 v1, v16

    .line 688
    .line 689
    goto/16 :goto_12

    .line 690
    .line 691
    :cond_3f
    move-object/from16 v15, v16

    .line 692
    .line 693
    :goto_19
    if-eqz v15, :cond_40

    .line 694
    .line 695
    if-eq v15, v4, :cond_40

    .line 696
    .line 697
    invoke-virtual {v9, v15}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    check-cast v0, Ljava/lang/Boolean;

    .line 702
    .line 703
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 704
    .line 705
    .line 706
    move-result v15

    .line 707
    goto :goto_1a

    .line 708
    :cond_40
    move v15, v10

    .line 709
    :goto_1a
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    return-object v0

    .line 714
    :cond_41
    const-string v0, "Focus search invoked with invalid FocusDirection "

    .line 715
    .line 716
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusDirection;->toString-impl(I)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    invoke-static {v1, v0}, Landroidx/room/util/DBUtil$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    return-object v16
.end method

.method public final getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return-object p0
.end method

.method public final moveFocus-aToIllA(IZ)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->platformFocusOwner:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, v0, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost:Z

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->moveFocusInChildren-3ESFkO8(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getEmbeddedViewFocusRect()Landroidx/compose/ui/geometry/Rect;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v4, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$focusSearchSuccess$1;

    .line 39
    .line 40
    invoke-direct {v4, p1, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl$moveFocus$focusSearchSuccess$1;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1, v1, v4}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-eq v3, v4, :cond_1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_1
    const/4 v3, 0x0

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 66
    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v0, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    if-ne p1, v2, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/4 v0, 0x2

    .line 91
    if-ne p1, v0, :cond_6

    .line 92
    .line 93
    :goto_0
    if-eqz p2, :cond_6

    .line 94
    .line 95
    invoke-virtual {p0, p1, v3, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_6

    .line 100
    .line 101
    new-instance p2, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;

    .line 102
    .line 103
    invoke-direct {p2, p1, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;-><init>(II)V

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-eqz p0, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move p0, v3

    .line 119
    :goto_1
    if-eqz p0, :cond_6

    .line 120
    .line 121
    :goto_2
    return v2

    .line 122
    :cond_6
    :goto_3
    return v3
.end method

.method public final resetFocus-3ESFkO8(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearFocus-I7lrPNg(IZZ)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    new-instance v1, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v1, p1, v2}, Landroidx/compose/ui/focus/FocusOwnerImpl$takeFocus$1;-><init>(II)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {p0, p1, v2, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :cond_1
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearOwnerFocus()V

    .line 29
    .line 30
    .line 31
    :cond_2
    return v0
.end method

.method public final setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->activeFocusTargetNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->listeners:Landroidx/collection/MutableObjectList;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 8
    .line 9
    iget p0, p0, Landroidx/collection/MutableObjectList;->_size:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, p0, :cond_0

    .line 13
    .line 14
    aget-object v3, v1, v2

    .line 15
    .line 16
    check-cast v3, Landroidx/compose/ui/focus/FocusListener;

    .line 17
    .line 18
    invoke-interface {v3, v0, p1}, Landroidx/compose/ui/focus/FocusListener;->onFocusChanged(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public final validateKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/input/key/Key_androidKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x2

    .line 12
    const v10, -0x3361d2af    # -8.293031E7f

    .line 13
    .line 14
    .line 15
    const/16 v11, 0x20

    .line 16
    .line 17
    const-wide/16 v16, 0x0

    .line 18
    .line 19
    const-wide v18, 0x101010101010101L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    const-wide/16 v20, 0xfe

    .line 25
    .line 26
    const/16 p1, 0x6

    .line 27
    .line 28
    const/16 v5, 0x8

    .line 29
    .line 30
    const/16 v22, 0x0

    .line 31
    .line 32
    const-wide/16 v23, 0x1

    .line 33
    .line 34
    const/4 v6, 0x3

    .line 35
    const/4 v7, 0x1

    .line 36
    if-ne v3, v4, :cond_10

    .line 37
    .line 38
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    .line 39
    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    new-instance v3, Landroidx/collection/MutableLongSet;

    .line 43
    .line 44
    invoke-direct {v3, v6}, Landroidx/collection/MutableLongSet;-><init>(I)V

    .line 45
    .line 46
    .line 47
    iput-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    .line 48
    .line 49
    :cond_0
    move-object v4, v3

    .line 50
    ushr-long v25, v1, v11

    .line 51
    .line 52
    const/16 v27, 0x3f

    .line 53
    .line 54
    const/16 v28, 0x7

    .line 55
    .line 56
    xor-long v8, v1, v25

    .line 57
    .line 58
    long-to-int v0, v8

    .line 59
    mul-int/2addr v0, v10

    .line 60
    shl-int/lit8 v3, v0, 0x10

    .line 61
    .line 62
    xor-int/2addr v0, v3

    .line 63
    ushr-int/lit8 v8, v0, 0x7

    .line 64
    .line 65
    and-int/lit8 v9, v0, 0x7f

    .line 66
    .line 67
    iget v0, v4, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 68
    .line 69
    and-int v3, v8, v0

    .line 70
    .line 71
    move/from16 v26, v6

    .line 72
    .line 73
    move/from16 v25, v22

    .line 74
    .line 75
    :goto_0
    iget-object v6, v4, Landroidx/collection/MutableLongSet;->metadata:[J

    .line 76
    .line 77
    shr-int/lit8 v29, v3, 0x3

    .line 78
    .line 79
    and-int/lit8 v30, v3, 0x7

    .line 80
    .line 81
    move/from16 v31, v10

    .line 82
    .line 83
    shl-int/lit8 v10, v30, 0x3

    .line 84
    .line 85
    aget-wide v32, v6, v29

    .line 86
    .line 87
    ushr-long v32, v32, v10

    .line 88
    .line 89
    add-int/lit8 v29, v29, 0x1

    .line 90
    .line 91
    aget-wide v29, v6, v29

    .line 92
    .line 93
    rsub-int/lit8 v6, v10, 0x40

    .line 94
    .line 95
    shl-long v29, v29, v6

    .line 96
    .line 97
    move v6, v11

    .line 98
    const-wide/16 v34, 0xff

    .line 99
    .line 100
    int-to-long v11, v10

    .line 101
    neg-long v10, v11

    .line 102
    shr-long v10, v10, v27

    .line 103
    .line 104
    and-long v10, v29, v10

    .line 105
    .line 106
    or-long v10, v32, v10

    .line 107
    .line 108
    int-to-long v12, v9

    .line 109
    mul-long v29, v12, v18

    .line 110
    .line 111
    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    xor-long v14, v10, v29

    .line 117
    .line 118
    sub-long v29, v14, v18

    .line 119
    .line 120
    not-long v14, v14

    .line 121
    and-long v14, v29, v14

    .line 122
    .line 123
    and-long v14, v14, v32

    .line 124
    .line 125
    :goto_1
    cmp-long v29, v14, v16

    .line 126
    .line 127
    if-eqz v29, :cond_2

    .line 128
    .line 129
    invoke-static {v14, v15}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 130
    .line 131
    .line 132
    move-result v29

    .line 133
    shr-int/lit8 v29, v29, 0x3

    .line 134
    .line 135
    add-int v29, v3, v29

    .line 136
    .line 137
    and-int v29, v29, v0

    .line 138
    .line 139
    move/from16 v30, v6

    .line 140
    .line 141
    iget-object v6, v4, Landroidx/collection/MutableLongSet;->elements:[J

    .line 142
    .line 143
    aget-wide v36, v6, v29

    .line 144
    .line 145
    cmp-long v6, v36, v1

    .line 146
    .line 147
    if-nez v6, :cond_1

    .line 148
    .line 149
    move/from16 v38, v7

    .line 150
    .line 151
    goto/16 :goto_a

    .line 152
    .line 153
    :cond_1
    sub-long v36, v14, v23

    .line 154
    .line 155
    and-long v14, v14, v36

    .line 156
    .line 157
    move/from16 v6, v30

    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_2
    move/from16 v30, v6

    .line 161
    .line 162
    not-long v14, v10

    .line 163
    shl-long v14, v14, p1

    .line 164
    .line 165
    and-long/2addr v10, v14

    .line 166
    and-long v10, v10, v32

    .line 167
    .line 168
    cmp-long v6, v10, v16

    .line 169
    .line 170
    if-eqz v6, :cond_f

    .line 171
    .line 172
    invoke-virtual {v4, v8}, Landroidx/collection/MutableLongSet;->findFirstAvailableSlot(I)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    iget v3, v4, Landroidx/collection/MutableLongSet;->growthLimit:I

    .line 177
    .line 178
    if-nez v3, :cond_3

    .line 179
    .line 180
    iget-object v3, v4, Landroidx/collection/MutableLongSet;->metadata:[J

    .line 181
    .line 182
    shr-int/lit8 v6, v0, 0x3

    .line 183
    .line 184
    aget-wide v14, v3, v6

    .line 185
    .line 186
    and-int/lit8 v3, v0, 0x7

    .line 187
    .line 188
    shl-int/lit8 v3, v3, 0x3

    .line 189
    .line 190
    shr-long/2addr v14, v3

    .line 191
    and-long v14, v14, v34

    .line 192
    .line 193
    cmp-long v3, v14, v20

    .line 194
    .line 195
    if-nez v3, :cond_4

    .line 196
    .line 197
    :cond_3
    move/from16 v38, v7

    .line 198
    .line 199
    move-wide/from16 v36, v12

    .line 200
    .line 201
    const-wide/16 p0, 0x80

    .line 202
    .line 203
    goto/16 :goto_9

    .line 204
    .line 205
    :cond_4
    iget v0, v4, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 206
    .line 207
    if-le v0, v5, :cond_c

    .line 208
    .line 209
    iget v3, v4, Landroidx/collection/MutableLongSet;->_size:I

    .line 210
    .line 211
    int-to-long v14, v3

    .line 212
    const-wide/16 v18, 0x20

    .line 213
    .line 214
    mul-long v14, v14, v18

    .line 215
    .line 216
    move v11, v5

    .line 217
    int-to-long v5, v0

    .line 218
    const-wide/16 v18, 0x19

    .line 219
    .line 220
    mul-long v5, v5, v18

    .line 221
    .line 222
    const-wide/high16 v18, -0x8000000000000000L

    .line 223
    .line 224
    xor-long v14, v14, v18

    .line 225
    .line 226
    xor-long v5, v5, v18

    .line 227
    .line 228
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Long;->compare(JJ)I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-gtz v0, :cond_c

    .line 233
    .line 234
    iget-object v0, v4, Landroidx/collection/MutableLongSet;->metadata:[J

    .line 235
    .line 236
    iget v3, v4, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 237
    .line 238
    iget-object v5, v4, Landroidx/collection/MutableLongSet;->elements:[J

    .line 239
    .line 240
    add-int/lit8 v6, v3, 0x7

    .line 241
    .line 242
    shr-int/lit8 v6, v6, 0x3

    .line 243
    .line 244
    move/from16 v14, v22

    .line 245
    .line 246
    :goto_2
    if-ge v14, v6, :cond_5

    .line 247
    .line 248
    aget-wide v23, v0, v14

    .line 249
    .line 250
    const-wide/16 p0, 0x80

    .line 251
    .line 252
    and-long v9, v23, v32

    .line 253
    .line 254
    move-wide/from16 v36, v12

    .line 255
    .line 256
    move v13, v11

    .line 257
    not-long v11, v9

    .line 258
    ushr-long v9, v9, v28

    .line 259
    .line 260
    add-long/2addr v11, v9

    .line 261
    const-wide v9, -0x101010101010102L

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    and-long/2addr v9, v11

    .line 267
    aput-wide v9, v0, v14

    .line 268
    .line 269
    add-int/lit8 v14, v14, 0x1

    .line 270
    .line 271
    move v11, v13

    .line 272
    move-wide/from16 v12, v36

    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_5
    move-wide/from16 v36, v12

    .line 276
    .line 277
    const-wide/16 p0, 0x80

    .line 278
    .line 279
    move v13, v11

    .line 280
    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([J)I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    add-int/lit8 v9, v6, -0x1

    .line 285
    .line 286
    aget-wide v10, v0, v9

    .line 287
    .line 288
    const-wide v14, 0xffffffffffffffL

    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    and-long/2addr v10, v14

    .line 294
    const-wide/high16 v23, -0x100000000000000L

    .line 295
    .line 296
    or-long v10, v10, v23

    .line 297
    .line 298
    aput-wide v10, v0, v9

    .line 299
    .line 300
    aget-wide v9, v0, v22

    .line 301
    .line 302
    aput-wide v9, v0, v6

    .line 303
    .line 304
    move/from16 v6, v22

    .line 305
    .line 306
    :goto_3
    if-eq v6, v3, :cond_a

    .line 307
    .line 308
    shr-int/lit8 v9, v6, 0x3

    .line 309
    .line 310
    aget-wide v10, v0, v9

    .line 311
    .line 312
    and-int/lit8 v12, v6, 0x7

    .line 313
    .line 314
    shl-int/lit8 v12, v12, 0x3

    .line 315
    .line 316
    shr-long/2addr v10, v12

    .line 317
    and-long v10, v10, v34

    .line 318
    .line 319
    cmp-long v23, v10, p0

    .line 320
    .line 321
    if-nez v23, :cond_6

    .line 322
    .line 323
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 324
    .line 325
    goto :goto_3

    .line 326
    :cond_6
    cmp-long v10, v10, v20

    .line 327
    .line 328
    if-eqz v10, :cond_7

    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_7
    aget-wide v10, v5, v6

    .line 332
    .line 333
    ushr-long v23, v10, v30

    .line 334
    .line 335
    xor-long v10, v10, v23

    .line 336
    .line 337
    long-to-int v10, v10

    .line 338
    mul-int v10, v10, v31

    .line 339
    .line 340
    shl-int/lit8 v11, v10, 0x10

    .line 341
    .line 342
    xor-int/2addr v10, v11

    .line 343
    ushr-int/lit8 v11, v10, 0x7

    .line 344
    .line 345
    invoke-virtual {v4, v11}, Landroidx/collection/MutableLongSet;->findFirstAvailableSlot(I)I

    .line 346
    .line 347
    .line 348
    move-result v23

    .line 349
    and-int/2addr v11, v3

    .line 350
    sub-int v24, v23, v11

    .line 351
    .line 352
    and-int v24, v24, v3

    .line 353
    .line 354
    move/from16 v29, v13

    .line 355
    .line 356
    div-int/lit8 v13, v24, 0x8

    .line 357
    .line 358
    sub-int v11, v6, v11

    .line 359
    .line 360
    and-int/2addr v11, v3

    .line 361
    div-int/lit8 v11, v11, 0x8

    .line 362
    .line 363
    if-ne v13, v11, :cond_8

    .line 364
    .line 365
    and-int/lit8 v10, v10, 0x7f

    .line 366
    .line 367
    int-to-long v10, v10

    .line 368
    aget-wide v23, v0, v9

    .line 369
    .line 370
    move-wide/from16 v32, v14

    .line 371
    .line 372
    shl-long v14, v34, v12

    .line 373
    .line 374
    not-long v13, v14

    .line 375
    and-long v13, v23, v13

    .line 376
    .line 377
    shl-long/2addr v10, v12

    .line 378
    or-long/2addr v10, v13

    .line 379
    aput-wide v10, v0, v9

    .line 380
    .line 381
    array-length v9, v0

    .line 382
    sub-int/2addr v9, v7

    .line 383
    aget-wide v10, v0, v22

    .line 384
    .line 385
    and-long v10, v10, v32

    .line 386
    .line 387
    or-long v10, v10, v18

    .line 388
    .line 389
    aput-wide v10, v0, v9

    .line 390
    .line 391
    add-int/lit8 v6, v6, 0x1

    .line 392
    .line 393
    move/from16 v13, v29

    .line 394
    .line 395
    move-wide/from16 v14, v32

    .line 396
    .line 397
    goto :goto_3

    .line 398
    :cond_8
    move-wide/from16 v32, v14

    .line 399
    .line 400
    shr-int/lit8 v11, v23, 0x3

    .line 401
    .line 402
    aget-wide v13, v0, v11

    .line 403
    .line 404
    and-int/lit8 v15, v23, 0x7

    .line 405
    .line 406
    shl-int/lit8 v15, v15, 0x3

    .line 407
    .line 408
    shr-long v24, v13, v15

    .line 409
    .line 410
    and-long v24, v24, v34

    .line 411
    .line 412
    cmp-long v24, v24, p0

    .line 413
    .line 414
    if-nez v24, :cond_9

    .line 415
    .line 416
    and-int/lit8 v10, v10, 0x7f

    .line 417
    .line 418
    move/from16 v38, v7

    .line 419
    .line 420
    move/from16 v39, v8

    .line 421
    .line 422
    int-to-long v7, v10

    .line 423
    move-object/from16 v24, v5

    .line 424
    .line 425
    move/from16 v25, v6

    .line 426
    .line 427
    shl-long v5, v34, v15

    .line 428
    .line 429
    not-long v5, v5

    .line 430
    and-long/2addr v5, v13

    .line 431
    shl-long/2addr v7, v15

    .line 432
    or-long/2addr v5, v7

    .line 433
    aput-wide v5, v0, v11

    .line 434
    .line 435
    aget-wide v5, v0, v9

    .line 436
    .line 437
    shl-long v7, v34, v12

    .line 438
    .line 439
    not-long v7, v7

    .line 440
    and-long/2addr v5, v7

    .line 441
    shl-long v7, p0, v12

    .line 442
    .line 443
    or-long/2addr v5, v7

    .line 444
    aput-wide v5, v0, v9

    .line 445
    .line 446
    aget-wide v5, v24, v25

    .line 447
    .line 448
    aput-wide v5, v24, v23

    .line 449
    .line 450
    aput-wide v16, v24, v25

    .line 451
    .line 452
    move/from16 v6, v25

    .line 453
    .line 454
    goto :goto_5

    .line 455
    :cond_9
    move-object/from16 v24, v5

    .line 456
    .line 457
    move/from16 v25, v6

    .line 458
    .line 459
    move/from16 v38, v7

    .line 460
    .line 461
    move/from16 v39, v8

    .line 462
    .line 463
    and-int/lit8 v5, v10, 0x7f

    .line 464
    .line 465
    int-to-long v5, v5

    .line 466
    shl-long v7, v34, v15

    .line 467
    .line 468
    not-long v7, v7

    .line 469
    and-long/2addr v7, v13

    .line 470
    shl-long/2addr v5, v15

    .line 471
    or-long/2addr v5, v7

    .line 472
    aput-wide v5, v0, v11

    .line 473
    .line 474
    aget-wide v5, v24, v23

    .line 475
    .line 476
    aget-wide v7, v24, v25

    .line 477
    .line 478
    aput-wide v7, v24, v23

    .line 479
    .line 480
    aput-wide v5, v24, v25

    .line 481
    .line 482
    add-int/lit8 v6, v25, -0x1

    .line 483
    .line 484
    :goto_5
    array-length v5, v0

    .line 485
    add-int/lit8 v5, v5, -0x1

    .line 486
    .line 487
    aget-wide v7, v0, v22

    .line 488
    .line 489
    and-long v7, v7, v32

    .line 490
    .line 491
    or-long v7, v7, v18

    .line 492
    .line 493
    aput-wide v7, v0, v5

    .line 494
    .line 495
    add-int/lit8 v6, v6, 0x1

    .line 496
    .line 497
    move-object/from16 v5, v24

    .line 498
    .line 499
    move/from16 v13, v29

    .line 500
    .line 501
    move-wide/from16 v14, v32

    .line 502
    .line 503
    move/from16 v7, v38

    .line 504
    .line 505
    move/from16 v8, v39

    .line 506
    .line 507
    goto/16 :goto_3

    .line 508
    .line 509
    :cond_a
    move/from16 v38, v7

    .line 510
    .line 511
    move/from16 v39, v8

    .line 512
    .line 513
    iget v0, v4, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 514
    .line 515
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    iget v3, v4, Landroidx/collection/MutableLongSet;->_size:I

    .line 520
    .line 521
    sub-int/2addr v0, v3

    .line 522
    iput v0, v4, Landroidx/collection/MutableLongSet;->growthLimit:I

    .line 523
    .line 524
    :cond_b
    move/from16 v5, v39

    .line 525
    .line 526
    goto/16 :goto_8

    .line 527
    .line 528
    :cond_c
    move/from16 v38, v7

    .line 529
    .line 530
    move/from16 v39, v8

    .line 531
    .line 532
    move-wide/from16 v36, v12

    .line 533
    .line 534
    const-wide/16 p0, 0x80

    .line 535
    .line 536
    iget v0, v4, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 537
    .line 538
    invoke-static {v0}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    iget-object v3, v4, Landroidx/collection/MutableLongSet;->metadata:[J

    .line 543
    .line 544
    iget-object v5, v4, Landroidx/collection/MutableLongSet;->elements:[J

    .line 545
    .line 546
    iget v6, v4, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 547
    .line 548
    invoke-virtual {v4, v0}, Landroidx/collection/MutableLongSet;->initializeStorage(I)V

    .line 549
    .line 550
    .line 551
    iget-object v0, v4, Landroidx/collection/MutableLongSet;->metadata:[J

    .line 552
    .line 553
    iget-object v7, v4, Landroidx/collection/MutableLongSet;->elements:[J

    .line 554
    .line 555
    iget v8, v4, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 556
    .line 557
    move/from16 v9, v22

    .line 558
    .line 559
    :goto_6
    if-ge v9, v6, :cond_b

    .line 560
    .line 561
    shr-int/lit8 v10, v9, 0x3

    .line 562
    .line 563
    aget-wide v10, v3, v10

    .line 564
    .line 565
    and-int/lit8 v12, v9, 0x7

    .line 566
    .line 567
    shl-int/lit8 v12, v12, 0x3

    .line 568
    .line 569
    shr-long/2addr v10, v12

    .line 570
    and-long v10, v10, v34

    .line 571
    .line 572
    cmp-long v10, v10, p0

    .line 573
    .line 574
    if-gez v10, :cond_d

    .line 575
    .line 576
    aget-wide v10, v5, v9

    .line 577
    .line 578
    ushr-long v12, v10, v30

    .line 579
    .line 580
    xor-long/2addr v12, v10

    .line 581
    long-to-int v12, v12

    .line 582
    mul-int v12, v12, v31

    .line 583
    .line 584
    shl-int/lit8 v13, v12, 0x10

    .line 585
    .line 586
    xor-int/2addr v12, v13

    .line 587
    ushr-int/lit8 v13, v12, 0x7

    .line 588
    .line 589
    invoke-virtual {v4, v13}, Landroidx/collection/MutableLongSet;->findFirstAvailableSlot(I)I

    .line 590
    .line 591
    .line 592
    move-result v13

    .line 593
    and-int/lit8 v12, v12, 0x7f

    .line 594
    .line 595
    int-to-long v14, v12

    .line 596
    shr-int/lit8 v12, v13, 0x3

    .line 597
    .line 598
    and-int/lit8 v16, v13, 0x7

    .line 599
    .line 600
    shl-int/lit8 v16, v16, 0x3

    .line 601
    .line 602
    aget-wide v17, v0, v12

    .line 603
    .line 604
    move-object/from16 v19, v5

    .line 605
    .line 606
    move/from16 v20, v6

    .line 607
    .line 608
    shl-long v5, v34, v16

    .line 609
    .line 610
    not-long v5, v5

    .line 611
    and-long v5, v17, v5

    .line 612
    .line 613
    shl-long v14, v14, v16

    .line 614
    .line 615
    or-long/2addr v5, v14

    .line 616
    aput-wide v5, v0, v12

    .line 617
    .line 618
    add-int/lit8 v12, v13, -0x7

    .line 619
    .line 620
    and-int/2addr v12, v8

    .line 621
    and-int/lit8 v14, v8, 0x7

    .line 622
    .line 623
    add-int/2addr v12, v14

    .line 624
    shr-int/lit8 v12, v12, 0x3

    .line 625
    .line 626
    aput-wide v5, v0, v12

    .line 627
    .line 628
    aput-wide v10, v7, v13

    .line 629
    .line 630
    goto :goto_7

    .line 631
    :cond_d
    move-object/from16 v19, v5

    .line 632
    .line 633
    move/from16 v20, v6

    .line 634
    .line 635
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 636
    .line 637
    move-object/from16 v5, v19

    .line 638
    .line 639
    move/from16 v6, v20

    .line 640
    .line 641
    goto :goto_6

    .line 642
    :goto_8
    invoke-virtual {v4, v5}, Landroidx/collection/MutableLongSet;->findFirstAvailableSlot(I)I

    .line 643
    .line 644
    .line 645
    move-result v0

    .line 646
    :goto_9
    move/from16 v29, v0

    .line 647
    .line 648
    iget v0, v4, Landroidx/collection/MutableLongSet;->_size:I

    .line 649
    .line 650
    add-int/lit8 v0, v0, 0x1

    .line 651
    .line 652
    iput v0, v4, Landroidx/collection/MutableLongSet;->_size:I

    .line 653
    .line 654
    iget v0, v4, Landroidx/collection/MutableLongSet;->growthLimit:I

    .line 655
    .line 656
    iget-object v3, v4, Landroidx/collection/MutableLongSet;->metadata:[J

    .line 657
    .line 658
    shr-int/lit8 v5, v29, 0x3

    .line 659
    .line 660
    aget-wide v6, v3, v5

    .line 661
    .line 662
    and-int/lit8 v8, v29, 0x7

    .line 663
    .line 664
    shl-int/lit8 v8, v8, 0x3

    .line 665
    .line 666
    shr-long v9, v6, v8

    .line 667
    .line 668
    and-long v9, v9, v34

    .line 669
    .line 670
    cmp-long v9, v9, p0

    .line 671
    .line 672
    if-nez v9, :cond_e

    .line 673
    .line 674
    move/from16 v22, v38

    .line 675
    .line 676
    :cond_e
    sub-int v0, v0, v22

    .line 677
    .line 678
    iput v0, v4, Landroidx/collection/MutableLongSet;->growthLimit:I

    .line 679
    .line 680
    iget v0, v4, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 681
    .line 682
    shl-long v9, v34, v8

    .line 683
    .line 684
    not-long v9, v9

    .line 685
    and-long/2addr v6, v9

    .line 686
    shl-long v8, v36, v8

    .line 687
    .line 688
    or-long/2addr v6, v8

    .line 689
    aput-wide v6, v3, v5

    .line 690
    .line 691
    add-int/lit8 v5, v29, -0x7

    .line 692
    .line 693
    and-int/2addr v5, v0

    .line 694
    and-int/lit8 v0, v0, 0x7

    .line 695
    .line 696
    add-int/2addr v5, v0

    .line 697
    shr-int/lit8 v0, v5, 0x3

    .line 698
    .line 699
    aput-wide v6, v3, v0

    .line 700
    .line 701
    :goto_a
    iget-object v0, v4, Landroidx/collection/MutableLongSet;->elements:[J

    .line 702
    .line 703
    aput-wide v1, v0, v29

    .line 704
    .line 705
    return v38

    .line 706
    :cond_f
    move/from16 v29, v5

    .line 707
    .line 708
    move/from16 v38, v7

    .line 709
    .line 710
    move v5, v8

    .line 711
    add-int/lit8 v25, v25, 0x8

    .line 712
    .line 713
    add-int v3, v3, v25

    .line 714
    .line 715
    and-int/2addr v3, v0

    .line 716
    move/from16 v5, v29

    .line 717
    .line 718
    move/from16 v11, v30

    .line 719
    .line 720
    move/from16 v10, v31

    .line 721
    .line 722
    goto/16 :goto_0

    .line 723
    .line 724
    :cond_10
    move/from16 v29, v5

    .line 725
    .line 726
    move/from16 v26, v6

    .line 727
    .line 728
    move/from16 v31, v10

    .line 729
    .line 730
    move/from16 v30, v11

    .line 731
    .line 732
    const/16 v27, 0x3f

    .line 733
    .line 734
    const/16 v28, 0x7

    .line 735
    .line 736
    const-wide v32, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    const-wide/16 v34, 0xff

    .line 742
    .line 743
    if-ne v3, v7, :cond_16

    .line 744
    .line 745
    iget-object v3, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    .line 746
    .line 747
    if-eqz v3, :cond_15

    .line 748
    .line 749
    invoke-virtual {v3, v1, v2}, Landroidx/collection/MutableLongSet;->contains(J)Z

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    if-ne v3, v7, :cond_15

    .line 754
    .line 755
    iget-object v0, v0, Landroidx/compose/ui/focus/FocusOwnerImpl;->keysCurrentlyDown:Landroidx/collection/MutableLongSet;

    .line 756
    .line 757
    if-eqz v0, :cond_13

    .line 758
    .line 759
    ushr-long v3, v1, v30

    .line 760
    .line 761
    xor-long/2addr v3, v1

    .line 762
    long-to-int v3, v3

    .line 763
    mul-int v3, v3, v31

    .line 764
    .line 765
    shl-int/lit8 v4, v3, 0x10

    .line 766
    .line 767
    xor-int/2addr v3, v4

    .line 768
    and-int/lit8 v4, v3, 0x7f

    .line 769
    .line 770
    iget v5, v0, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 771
    .line 772
    ushr-int/lit8 v3, v3, 0x7

    .line 773
    .line 774
    :goto_b
    and-int/2addr v3, v5

    .line 775
    iget-object v6, v0, Landroidx/collection/MutableLongSet;->metadata:[J

    .line 776
    .line 777
    shr-int/lit8 v7, v3, 0x3

    .line 778
    .line 779
    and-int/lit8 v8, v3, 0x7

    .line 780
    .line 781
    shl-int/lit8 v8, v8, 0x3

    .line 782
    .line 783
    aget-wide v9, v6, v7

    .line 784
    .line 785
    ushr-long/2addr v9, v8

    .line 786
    const/16 v38, 0x1

    .line 787
    .line 788
    add-int/lit8 v7, v7, 0x1

    .line 789
    .line 790
    aget-wide v11, v6, v7

    .line 791
    .line 792
    rsub-int/lit8 v6, v8, 0x40

    .line 793
    .line 794
    shl-long v6, v11, v6

    .line 795
    .line 796
    int-to-long v11, v8

    .line 797
    neg-long v11, v11

    .line 798
    shr-long v11, v11, v27

    .line 799
    .line 800
    and-long/2addr v6, v11

    .line 801
    or-long/2addr v6, v9

    .line 802
    int-to-long v8, v4

    .line 803
    mul-long v8, v8, v18

    .line 804
    .line 805
    xor-long/2addr v8, v6

    .line 806
    sub-long v10, v8, v18

    .line 807
    .line 808
    not-long v8, v8

    .line 809
    and-long/2addr v8, v10

    .line 810
    and-long v8, v8, v32

    .line 811
    .line 812
    :goto_c
    cmp-long v10, v8, v16

    .line 813
    .line 814
    if-eqz v10, :cond_12

    .line 815
    .line 816
    invoke-static {v8, v9}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    .line 817
    .line 818
    .line 819
    move-result v10

    .line 820
    shr-int/lit8 v10, v10, 0x3

    .line 821
    .line 822
    add-int/2addr v10, v3

    .line 823
    and-int/2addr v10, v5

    .line 824
    iget-object v11, v0, Landroidx/collection/MutableLongSet;->elements:[J

    .line 825
    .line 826
    aget-wide v12, v11, v10

    .line 827
    .line 828
    cmp-long v11, v12, v1

    .line 829
    .line 830
    if-nez v11, :cond_11

    .line 831
    .line 832
    goto :goto_d

    .line 833
    :cond_11
    sub-long v10, v8, v23

    .line 834
    .line 835
    and-long/2addr v8, v10

    .line 836
    goto :goto_c

    .line 837
    :cond_12
    not-long v8, v6

    .line 838
    shl-long v8, v8, p1

    .line 839
    .line 840
    and-long/2addr v6, v8

    .line 841
    and-long v6, v6, v32

    .line 842
    .line 843
    cmp-long v6, v6, v16

    .line 844
    .line 845
    if-eqz v6, :cond_14

    .line 846
    .line 847
    const/4 v10, -0x1

    .line 848
    :goto_d
    if-ltz v10, :cond_13

    .line 849
    .line 850
    iget v1, v0, Landroidx/collection/MutableLongSet;->_size:I

    .line 851
    .line 852
    const/16 v38, 0x1

    .line 853
    .line 854
    add-int/lit8 v1, v1, -0x1

    .line 855
    .line 856
    iput v1, v0, Landroidx/collection/MutableLongSet;->_size:I

    .line 857
    .line 858
    iget-object v1, v0, Landroidx/collection/MutableLongSet;->metadata:[J

    .line 859
    .line 860
    iget v0, v0, Landroidx/collection/MutableLongSet;->_capacity:I

    .line 861
    .line 862
    shr-int/lit8 v2, v10, 0x3

    .line 863
    .line 864
    and-int/lit8 v3, v10, 0x7

    .line 865
    .line 866
    shl-int/lit8 v3, v3, 0x3

    .line 867
    .line 868
    aget-wide v4, v1, v2

    .line 869
    .line 870
    shl-long v6, v34, v3

    .line 871
    .line 872
    not-long v6, v6

    .line 873
    and-long/2addr v4, v6

    .line 874
    shl-long v6, v20, v3

    .line 875
    .line 876
    or-long/2addr v4, v6

    .line 877
    aput-wide v4, v1, v2

    .line 878
    .line 879
    add-int/lit8 v10, v10, -0x7

    .line 880
    .line 881
    and-int v2, v10, v0

    .line 882
    .line 883
    and-int/lit8 v0, v0, 0x7

    .line 884
    .line 885
    add-int/2addr v2, v0

    .line 886
    shr-int/lit8 v0, v2, 0x3

    .line 887
    .line 888
    aput-wide v4, v1, v0

    .line 889
    .line 890
    const/16 v38, 0x1

    .line 891
    .line 892
    return v38

    .line 893
    :cond_13
    const/16 v38, 0x1

    .line 894
    .line 895
    goto :goto_e

    .line 896
    :cond_14
    const/16 v38, 0x1

    .line 897
    .line 898
    add-int/lit8 v22, v22, 0x8

    .line 899
    .line 900
    add-int v3, v3, v22

    .line 901
    .line 902
    goto/16 :goto_b

    .line 903
    .line 904
    :cond_15
    return v22

    .line 905
    :cond_16
    move/from16 v38, v7

    .line 906
    .line 907
    :goto_e
    return v38
.end method
