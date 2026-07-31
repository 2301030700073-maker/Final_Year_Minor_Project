.class public final Landroidx/compose/ui/focus/FocusOwnerImpl;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

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
    iget-object v3, v3, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 52
    .line 53
    iget v3, v3, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 54
    .line 55
    and-int/lit16 v3, v3, 0x400

    .line 56
    .line 57
    if-eqz v3, :cond_a

    .line 58
    .line 59
    :goto_1
    if-eqz p0, :cond_a

    .line 60
    .line 61
    iget v3, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 62
    .line 63
    and-int/lit16 v3, v3, 0x400

    .line 64
    .line 65
    if-eqz v3, :cond_9

    .line 66
    .line 67
    move-object v3, p0

    .line 68
    move-object v4, v1

    .line 69
    :goto_2
    if-eqz v3, :cond_9

    .line 70
    .line 71
    instance-of v5, v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 72
    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    check-cast v3, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 76
    .line 77
    sget-object v5, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    .line 78
    .line 79
    invoke-virtual {v3, v5, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusStateImpl;Landroidx/compose/ui/focus/FocusStateImpl;)V

    .line 80
    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_2
    iget v5, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 84
    .line 85
    and-int/lit16 v5, v5, 0x400

    .line 86
    .line 87
    if-eqz v5, :cond_8

    .line 88
    .line 89
    instance-of v5, v3, Landroidx/compose/ui/node/DelegatingNode;

    .line 90
    .line 91
    if-eqz v5, :cond_8

    .line 92
    .line 93
    move-object v5, v3

    .line 94
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 95
    .line 96
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 97
    .line 98
    const/4 v6, 0x0

    .line 99
    :goto_3
    if-eqz v5, :cond_7

    .line 100
    .line 101
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 102
    .line 103
    and-int/lit16 v7, v7, 0x400

    .line 104
    .line 105
    if-eqz v7, :cond_6

    .line 106
    .line 107
    add-int/lit8 v6, v6, 0x1

    .line 108
    .line 109
    if-ne v6, v0, :cond_3

    .line 110
    .line 111
    move-object v3, v5

    .line 112
    goto :goto_4

    .line 113
    :cond_3
    if-nez v4, :cond_4

    .line 114
    .line 115
    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    .line 116
    .line 117
    const/16 v7, 0x10

    .line 118
    .line 119
    new-array v7, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 120
    .line 121
    invoke-direct {v4, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    if-eqz v3, :cond_5

    .line 125
    .line 126
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    move-object v3, v1

    .line 130
    :cond_5
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    :goto_4
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    if-ne v6, v0, :cond_8

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_8
    :goto_5
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    goto :goto_2

    .line 144
    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_b

    .line 152
    .line 153
    iget-object p0, p1, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 154
    .line 155
    if-eqz p0, :cond_b

    .line 156
    .line 157
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_b
    move-object p0, v1

    .line 161
    goto :goto_0

    .line 162
    :cond_c
    :goto_6
    return v0
.end method

.method public final clearFocus-I7lrPNg(IZZ)Z
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    if-nez p2, :cond_3

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl;->rootFocusNode:Landroidx/compose/ui/focus/FocusTargetNode;

    .line 5
    .line 6
    invoke-static {v0}, Lokio/Okio;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    if-eq v0, p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x3

    .line 23
    if-ne v0, p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 27
    .line 28
    .line 29
    return p2

    .line 30
    :cond_1
    :goto_0
    move p1, p2

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
    if-eqz p1, :cond_4

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
    return p1
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
    invoke-static {v0}, Lokio/Options$Companion;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

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
    iget-object v7, v7, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 114
    .line 115
    iget v7, v7, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 116
    .line 117
    and-int/lit16 v7, v7, 0x2000

    .line 118
    .line 119
    if-eqz v7, :cond_11

    .line 120
    .line 121
    :goto_3
    if-eqz v6, :cond_11

    .line 122
    .line 123
    iget v7, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 124
    .line 125
    and-int/lit16 v7, v7, 0x2000

    .line 126
    .line 127
    if-eqz v7, :cond_10

    .line 128
    .line 129
    move-object v8, v4

    .line 130
    move-object v7, v6

    .line 131
    :goto_4
    if-eqz v7, :cond_10

    .line 132
    .line 133
    instance-of v9, v7, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 134
    .line 135
    if-eqz v9, :cond_9

    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_9
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 139
    .line 140
    and-int/lit16 v9, v9, 0x2000

    .line 141
    .line 142
    if-eqz v9, :cond_f

    .line 143
    .line 144
    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    .line 145
    .line 146
    if-eqz v9, :cond_f

    .line 147
    .line 148
    move-object v9, v7

    .line 149
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 150
    .line 151
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 152
    .line 153
    move v10, v2

    .line 154
    :goto_5
    if-eqz v9, :cond_e

    .line 155
    .line 156
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 157
    .line 158
    and-int/lit16 v11, v11, 0x2000

    .line 159
    .line 160
    if-eqz v11, :cond_d

    .line 161
    .line 162
    add-int/lit8 v10, v10, 0x1

    .line 163
    .line 164
    if-ne v10, v5, :cond_a

    .line 165
    .line 166
    move-object v7, v9

    .line 167
    goto :goto_6

    .line 168
    :cond_a
    if-nez v8, :cond_b

    .line 169
    .line 170
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 171
    .line 172
    new-array v11, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 173
    .line 174
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_b
    if-eqz v7, :cond_c

    .line 178
    .line 179
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    move-object v7, v4

    .line 183
    :cond_c
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_d
    :goto_6
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_e
    if-ne v10, v5, :cond_f

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_f
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    goto :goto_4

    .line 197
    :cond_10
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 198
    .line 199
    goto :goto_3

    .line 200
    :cond_11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    if-eqz p0, :cond_12

    .line 205
    .line 206
    iget-object v6, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 207
    .line 208
    if-eqz v6, :cond_12

    .line 209
    .line 210
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_12
    move-object v6, v4

    .line 214
    goto :goto_2

    .line 215
    :cond_13
    move-object v7, v4

    .line 216
    :goto_7
    check-cast v7, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 217
    .line 218
    if-eqz v7, :cond_14

    .line 219
    .line 220
    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 221
    .line 222
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 223
    .line 224
    goto/16 :goto_e

    .line 225
    .line 226
    :cond_14
    iget-object p0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 227
    .line 228
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 229
    .line 230
    if-nez p0, :cond_15

    .line 231
    .line 232
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_15
    iget-object p0, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 236
    .line 237
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 238
    .line 239
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    :goto_8
    if-eqz v0, :cond_20

    .line 244
    .line 245
    iget-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 246
    .line 247
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 248
    .line 249
    iget v6, v6, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 250
    .line 251
    and-int/lit16 v6, v6, 0x2000

    .line 252
    .line 253
    if-eqz v6, :cond_1e

    .line 254
    .line 255
    :goto_9
    if-eqz p0, :cond_1e

    .line 256
    .line 257
    iget v6, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 258
    .line 259
    and-int/lit16 v6, v6, 0x2000

    .line 260
    .line 261
    if-eqz v6, :cond_1d

    .line 262
    .line 263
    move-object v6, p0

    .line 264
    move-object v7, v4

    .line 265
    :goto_a
    if-eqz v6, :cond_1d

    .line 266
    .line 267
    instance-of v8, v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 268
    .line 269
    if-eqz v8, :cond_16

    .line 270
    .line 271
    goto :goto_d

    .line 272
    :cond_16
    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 273
    .line 274
    and-int/lit16 v8, v8, 0x2000

    .line 275
    .line 276
    if-eqz v8, :cond_1c

    .line 277
    .line 278
    instance-of v8, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 279
    .line 280
    if-eqz v8, :cond_1c

    .line 281
    .line 282
    move-object v8, v6

    .line 283
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 284
    .line 285
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 286
    .line 287
    move v9, v2

    .line 288
    :goto_b
    if-eqz v8, :cond_1b

    .line 289
    .line 290
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 291
    .line 292
    and-int/lit16 v10, v10, 0x2000

    .line 293
    .line 294
    if-eqz v10, :cond_1a

    .line 295
    .line 296
    add-int/lit8 v9, v9, 0x1

    .line 297
    .line 298
    if-ne v9, v5, :cond_17

    .line 299
    .line 300
    move-object v6, v8

    .line 301
    goto :goto_c

    .line 302
    :cond_17
    if-nez v7, :cond_18

    .line 303
    .line 304
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 305
    .line 306
    new-array v10, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 307
    .line 308
    invoke-direct {v7, v10}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    :cond_18
    if-eqz v6, :cond_19

    .line 312
    .line 313
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    move-object v6, v4

    .line 317
    :cond_19
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_1a
    :goto_c
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 321
    .line 322
    goto :goto_b

    .line 323
    :cond_1b
    if-ne v9, v5, :cond_1c

    .line 324
    .line 325
    goto :goto_a

    .line 326
    :cond_1c
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    goto :goto_a

    .line 331
    :cond_1d
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 332
    .line 333
    goto :goto_9

    .line 334
    :cond_1e
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    if-eqz v0, :cond_1f

    .line 339
    .line 340
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 341
    .line 342
    if-eqz p0, :cond_1f

    .line 343
    .line 344
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_1f
    move-object p0, v4

    .line 348
    goto :goto_8

    .line 349
    :cond_20
    move-object v6, v4

    .line 350
    :goto_d
    check-cast v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 351
    .line 352
    if-eqz v6, :cond_21

    .line 353
    .line 354
    check-cast v6, Landroidx/compose/ui/Modifier$Node;

    .line 355
    .line 356
    iget-object v7, v6, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 357
    .line 358
    goto :goto_e

    .line 359
    :cond_21
    move-object v7, v4

    .line 360
    :cond_22
    :goto_e
    if-eqz v7, :cond_44

    .line 361
    .line 362
    iget-object p0, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 363
    .line 364
    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 365
    .line 366
    if-nez p0, :cond_23

    .line 367
    .line 368
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    :cond_23
    iget-object p0, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 372
    .line 373
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 374
    .line 375
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    move-object v1, v4

    .line 380
    :goto_f
    if-eqz v0, :cond_2f

    .line 381
    .line 382
    iget-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 383
    .line 384
    iget-object v6, v6, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 385
    .line 386
    iget v6, v6, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 387
    .line 388
    and-int/lit16 v6, v6, 0x2000

    .line 389
    .line 390
    if-eqz v6, :cond_2d

    .line 391
    .line 392
    :goto_10
    if-eqz p0, :cond_2d

    .line 393
    .line 394
    iget v6, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 395
    .line 396
    and-int/lit16 v6, v6, 0x2000

    .line 397
    .line 398
    if-eqz v6, :cond_2c

    .line 399
    .line 400
    move-object v6, p0

    .line 401
    move-object v8, v4

    .line 402
    :goto_11
    if-eqz v6, :cond_2c

    .line 403
    .line 404
    instance-of v9, v6, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 405
    .line 406
    if-eqz v9, :cond_25

    .line 407
    .line 408
    if-nez v1, :cond_24

    .line 409
    .line 410
    new-instance v1, Ljava/util/ArrayList;

    .line 411
    .line 412
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .line 414
    .line 415
    :cond_24
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move v9, v2

    .line 419
    goto :goto_12

    .line 420
    :cond_25
    move v9, v5

    .line 421
    :goto_12
    if-eqz v9, :cond_2b

    .line 422
    .line 423
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 424
    .line 425
    and-int/lit16 v9, v9, 0x2000

    .line 426
    .line 427
    if-eqz v9, :cond_2b

    .line 428
    .line 429
    instance-of v9, v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 430
    .line 431
    if-eqz v9, :cond_2b

    .line 432
    .line 433
    move-object v9, v6

    .line 434
    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    .line 435
    .line 436
    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 437
    .line 438
    move v10, v2

    .line 439
    :goto_13
    if-eqz v9, :cond_2a

    .line 440
    .line 441
    iget v11, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 442
    .line 443
    and-int/lit16 v11, v11, 0x2000

    .line 444
    .line 445
    if-eqz v11, :cond_29

    .line 446
    .line 447
    add-int/lit8 v10, v10, 0x1

    .line 448
    .line 449
    if-ne v10, v5, :cond_26

    .line 450
    .line 451
    move-object v6, v9

    .line 452
    goto :goto_14

    .line 453
    :cond_26
    if-nez v8, :cond_27

    .line 454
    .line 455
    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    .line 456
    .line 457
    new-array v11, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 458
    .line 459
    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 460
    .line 461
    .line 462
    :cond_27
    if-eqz v6, :cond_28

    .line 463
    .line 464
    invoke-virtual {v8, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 465
    .line 466
    .line 467
    move-object v6, v4

    .line 468
    :cond_28
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    :cond_29
    :goto_14
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 472
    .line 473
    goto :goto_13

    .line 474
    :cond_2a
    if-ne v10, v5, :cond_2b

    .line 475
    .line 476
    goto :goto_11

    .line 477
    :cond_2b
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 478
    .line 479
    .line 480
    move-result-object v6

    .line 481
    goto :goto_11

    .line 482
    :cond_2c
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 483
    .line 484
    goto :goto_10

    .line 485
    :cond_2d
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    if-eqz v0, :cond_2e

    .line 490
    .line 491
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 492
    .line 493
    if-eqz p0, :cond_2e

    .line 494
    .line 495
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 496
    .line 497
    goto :goto_f

    .line 498
    :cond_2e
    move-object p0, v4

    .line 499
    goto :goto_f

    .line 500
    :cond_2f
    if-eqz v1, :cond_31

    .line 501
    .line 502
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 503
    .line 504
    .line 505
    move-result p0

    .line 506
    add-int/lit8 p0, p0, -0x1

    .line 507
    .line 508
    if-ltz p0, :cond_31

    .line 509
    .line 510
    :goto_15
    add-int/lit8 v0, p0, -0x1

    .line 511
    .line 512
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object p0

    .line 516
    check-cast p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 517
    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 519
    .line 520
    .line 521
    if-gez v0, :cond_30

    .line 522
    .line 523
    goto :goto_16

    .line 524
    :cond_30
    move p0, v0

    .line 525
    goto :goto_15

    .line 526
    :cond_31
    :goto_16
    iget-object p0, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 527
    .line 528
    move-object v0, v4

    .line 529
    :goto_17
    if-eqz p0, :cond_39

    .line 530
    .line 531
    instance-of v6, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 532
    .line 533
    if-eqz v6, :cond_32

    .line 534
    .line 535
    check-cast p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 536
    .line 537
    goto :goto_1a

    .line 538
    :cond_32
    iget v6, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 539
    .line 540
    and-int/lit16 v6, v6, 0x2000

    .line 541
    .line 542
    if-eqz v6, :cond_38

    .line 543
    .line 544
    instance-of v6, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 545
    .line 546
    if-eqz v6, :cond_38

    .line 547
    .line 548
    move-object v6, p0

    .line 549
    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .line 550
    .line 551
    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 552
    .line 553
    move v8, v2

    .line 554
    :goto_18
    if-eqz v6, :cond_37

    .line 555
    .line 556
    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 557
    .line 558
    and-int/lit16 v9, v9, 0x2000

    .line 559
    .line 560
    if-eqz v9, :cond_36

    .line 561
    .line 562
    add-int/lit8 v8, v8, 0x1

    .line 563
    .line 564
    if-ne v8, v5, :cond_33

    .line 565
    .line 566
    move-object p0, v6

    .line 567
    goto :goto_19

    .line 568
    :cond_33
    if-nez v0, :cond_34

    .line 569
    .line 570
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 571
    .line 572
    new-array v9, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 573
    .line 574
    invoke-direct {v0, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    :cond_34
    if-eqz p0, :cond_35

    .line 578
    .line 579
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    move-object p0, v4

    .line 583
    :cond_35
    invoke-virtual {v0, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    :cond_36
    :goto_19
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 587
    .line 588
    goto :goto_18

    .line 589
    :cond_37
    if-ne v8, v5, :cond_38

    .line 590
    .line 591
    goto :goto_17

    .line 592
    :cond_38
    :goto_1a
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 593
    .line 594
    .line 595
    move-result-object p0

    .line 596
    goto :goto_17

    .line 597
    :cond_39
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object p0

    .line 601
    check-cast p0, Ljava/lang/Boolean;

    .line 602
    .line 603
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 604
    .line 605
    .line 606
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 607
    if-eqz p0, :cond_3a

    .line 608
    .line 609
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 610
    .line 611
    .line 612
    return v5

    .line 613
    :cond_3a
    :try_start_4
    iget-object p0, v7, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 614
    .line 615
    move-object p2, v4

    .line 616
    :goto_1b
    if-eqz p0, :cond_42

    .line 617
    .line 618
    instance-of v0, p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 619
    .line 620
    if-eqz v0, :cond_3b

    .line 621
    .line 622
    check-cast p0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 623
    .line 624
    invoke-interface {p0, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 625
    .line 626
    .line 627
    move-result p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 628
    if-eqz p0, :cond_41

    .line 629
    .line 630
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 631
    .line 632
    .line 633
    return v5

    .line 634
    :cond_3b
    :try_start_5
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 635
    .line 636
    and-int/lit16 v0, v0, 0x2000

    .line 637
    .line 638
    if-eqz v0, :cond_41

    .line 639
    .line 640
    instance-of v0, p0, Landroidx/compose/ui/node/DelegatingNode;

    .line 641
    .line 642
    if-eqz v0, :cond_41

    .line 643
    .line 644
    move-object v0, p0

    .line 645
    check-cast v0, Landroidx/compose/ui/node/DelegatingNode;

    .line 646
    .line 647
    iget-object v0, v0, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 648
    .line 649
    move v6, v2

    .line 650
    :goto_1c
    if-eqz v0, :cond_40

    .line 651
    .line 652
    iget v7, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 653
    .line 654
    and-int/lit16 v7, v7, 0x2000

    .line 655
    .line 656
    if-eqz v7, :cond_3f

    .line 657
    .line 658
    add-int/lit8 v6, v6, 0x1

    .line 659
    .line 660
    if-ne v6, v5, :cond_3c

    .line 661
    .line 662
    move-object p0, v0

    .line 663
    goto :goto_1d

    .line 664
    :cond_3c
    if-nez p2, :cond_3d

    .line 665
    .line 666
    new-instance p2, Landroidx/compose/runtime/collection/MutableVector;

    .line 667
    .line 668
    new-array v7, v3, [Landroidx/compose/ui/Modifier$Node;

    .line 669
    .line 670
    invoke-direct {p2, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    :cond_3d
    if-eqz p0, :cond_3e

    .line 674
    .line 675
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    move-object p0, v4

    .line 679
    :cond_3e
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    :cond_3f
    :goto_1d
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 683
    .line 684
    goto :goto_1c

    .line 685
    :cond_40
    if-ne v6, v5, :cond_41

    .line 686
    .line 687
    goto :goto_1b

    .line 688
    :cond_41
    invoke-static {p2}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 689
    .line 690
    .line 691
    move-result-object p0

    .line 692
    goto :goto_1b

    .line 693
    :cond_42
    if-eqz v1, :cond_44

    .line 694
    .line 695
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 696
    .line 697
    .line 698
    move-result p0

    .line 699
    move p2, v2

    .line 700
    :goto_1e
    if-ge p2, p0, :cond_44

    .line 701
    .line 702
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    check-cast v0, Landroidx/compose/ui/input/key/KeyInputModifierNode;

    .line 707
    .line 708
    invoke-interface {v0, p1}, Landroidx/compose/ui/input/key/KeyInputModifierNode;->onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z

    .line 709
    .line 710
    .line 711
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 712
    if-eqz v0, :cond_43

    .line 713
    .line 714
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 715
    .line 716
    .line 717
    return v5

    .line 718
    :cond_43
    add-int/lit8 p2, p2, 0x1

    .line 719
    .line 720
    goto :goto_1e

    .line 721
    :cond_44
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 722
    .line 723
    .line 724
    return v2

    .line 725
    :catchall_0
    move-exception p0

    .line 726
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 727
    .line 728
    .line 729
    throw p0
.end method

.method public final focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 19

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
    invoke-static {v4}, Lokio/Options$Companion;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

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
    const/16 v17, 0x0

    .line 25
    .line 26
    const/4 v15, 0x1

    .line 27
    if-eqz v5, :cond_24

    .line 28
    .line 29
    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 30
    .line 31
    .line 32
    move-result-object v18

    .line 33
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 34
    .line 35
    .line 36
    move-result-object v14

    .line 37
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->start:Landroidx/compose/ui/focus/FocusRequester;

    .line 38
    .line 39
    iget-object v12, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->end:Landroidx/compose/ui/focus/FocusRequester;

    .line 40
    .line 41
    if-ne v1, v15, :cond_0

    .line 42
    .line 43
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->next:Landroidx/compose/ui/focus/FocusRequester;

    .line 44
    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_0
    if-ne v1, v11, :cond_1

    .line 48
    .line 49
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->previous:Landroidx/compose/ui/focus/FocusRequester;

    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    if-ne v1, v10, :cond_2

    .line 54
    .line 55
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->up:Landroidx/compose/ui/focus/FocusRequester;

    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_2
    if-ne v1, v9, :cond_3

    .line 60
    .line 61
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->down:Landroidx/compose/ui/focus/FocusRequester;

    .line 62
    .line 63
    goto/16 :goto_4

    .line 64
    .line 65
    :cond_3
    if-ne v1, v8, :cond_7

    .line 66
    .line 67
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_5

    .line 72
    .line 73
    if-ne v9, v15, :cond_4

    .line 74
    .line 75
    move-object v6, v12

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 78
    .line 79
    .line 80
    return-object v17

    .line 81
    :cond_5
    :goto_0
    sget-object v9, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 82
    .line 83
    if-ne v6, v9, :cond_6

    .line 84
    .line 85
    move-object/from16 v6, v17

    .line 86
    .line 87
    :cond_6
    if-nez v6, :cond_f

    .line 88
    .line 89
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->left:Landroidx/compose/ui/focus/FocusRequester;

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_7
    if-ne v1, v7, :cond_b

    .line 93
    .line 94
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->ordinal()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    if-eqz v9, :cond_9

    .line 99
    .line 100
    if-ne v9, v15, :cond_8

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_8
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 104
    .line 105
    .line 106
    return-object v17

    .line 107
    :cond_9
    move-object v6, v12

    .line 108
    :goto_1
    sget-object v9, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 109
    .line 110
    if-ne v6, v9, :cond_a

    .line 111
    .line 112
    move-object/from16 v6, v17

    .line 113
    .line 114
    :cond_a
    if-nez v6, :cond_f

    .line 115
    .line 116
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->right:Landroidx/compose/ui/focus/FocusRequester;

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_b
    const/4 v6, 0x7

    .line 120
    if-ne v1, v6, :cond_c

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_c
    const/16 v9, 0x8

    .line 124
    .line 125
    if-ne v1, v9, :cond_23

    .line 126
    .line 127
    :goto_2
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    check-cast v9, Landroidx/compose/ui/platform/AndroidComposeView;

    .line 132
    .line 133
    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidComposeView;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    check-cast v9, Landroidx/compose/ui/focus/FocusOwnerImpl;

    .line 138
    .line 139
    invoke-virtual {v9}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 140
    .line 141
    .line 142
    move-result-object v12

    .line 143
    if-ne v1, v6, :cond_d

    .line 144
    .line 145
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onEnter:Landroidx/compose/ui/focus/FocusPropertiesImpl$onExit$1;

    .line 146
    .line 147
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_d
    iget-object v6, v14, Landroidx/compose/ui/focus/FocusPropertiesImpl;->onExit:Landroidx/compose/ui/focus/FocusPropertiesImpl$onExit$1;

    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    :goto_3
    invoke-virtual {v9}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    if-eq v12, v6, :cond_e

    .line 161
    .line 162
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Redirect:Landroidx/compose/ui/focus/FocusRequester;

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_e
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 166
    .line 167
    :cond_f
    :goto_4
    sget-object v9, Landroidx/compose/ui/focus/FocusRequester;->Cancel:Landroidx/compose/ui/focus/FocusRequester;

    .line 168
    .line 169
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v12

    .line 173
    if-eqz v12, :cond_10

    .line 174
    .line 175
    goto/16 :goto_11

    .line 176
    .line 177
    :cond_10
    sget-object v12, Landroidx/compose/ui/focus/FocusRequester;->Redirect:Landroidx/compose/ui/focus/FocusRequester;

    .line 178
    .line 179
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    if-eqz v12, :cond_11

    .line 184
    .line 185
    invoke-static {v4}, Lokio/Options$Companion;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_30

    .line 190
    .line 191
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Ljava/lang/Boolean;

    .line 196
    .line 197
    return-object v0

    .line 198
    :cond_11
    sget-object v12, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    .line 199
    .line 200
    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v14

    .line 204
    if-nez v14, :cond_25

    .line 205
    .line 206
    const-string v0, "\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n"

    .line 207
    .line 208
    if-eq v6, v12, :cond_22

    .line 209
    .line 210
    if-eq v6, v9, :cond_21

    .line 211
    .line 212
    iget-object v0, v6, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 213
    .line 214
    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 215
    .line 216
    if-nez v1, :cond_12

    .line 217
    .line 218
    const-string v0, "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    .line 219
    .line 220
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 221
    .line 222
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    goto/16 :goto_c

    .line 226
    .line 227
    :cond_12
    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 228
    .line 229
    move/from16 v2, v16

    .line 230
    .line 231
    move v4, v2

    .line 232
    :goto_5
    if-ge v2, v1, :cond_20

    .line 233
    .line 234
    aget-object v5, v0, v2

    .line 235
    .line 236
    check-cast v5, Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 237
    .line 238
    iget-object v6, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 239
    .line 240
    iget-boolean v6, v6, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 241
    .line 242
    if-nez v6, :cond_13

    .line 243
    .line 244
    const-string/jumbo v6, "visitChildren called on an unattached node"

    .line 245
    .line 246
    .line 247
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    :cond_13
    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    .line 251
    .line 252
    const/16 v7, 0x10

    .line 253
    .line 254
    new-array v8, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 255
    .line 256
    invoke-direct {v6, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 260
    .line 261
    iget-object v7, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 262
    .line 263
    if-nez v7, :cond_14

    .line 264
    .line 265
    invoke-static {v6, v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_14
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_15
    :goto_6
    iget v5, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 273
    .line 274
    if-eqz v5, :cond_1f

    .line 275
    .line 276
    add-int/lit8 v5, v5, -0x1

    .line 277
    .line 278
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    check-cast v5, Landroidx/compose/ui/Modifier$Node;

    .line 283
    .line 284
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 285
    .line 286
    and-int/lit16 v7, v7, 0x400

    .line 287
    .line 288
    if-nez v7, :cond_16

    .line 289
    .line 290
    invoke-static {v6, v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    .line 291
    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_16
    :goto_7
    if-eqz v5, :cond_15

    .line 295
    .line 296
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 297
    .line 298
    and-int/lit16 v7, v7, 0x400

    .line 299
    .line 300
    if-eqz v7, :cond_1e

    .line 301
    .line 302
    move-object/from16 v7, v17

    .line 303
    .line 304
    :goto_8
    if-eqz v5, :cond_15

    .line 305
    .line 306
    instance-of v8, v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 307
    .line 308
    if-eqz v8, :cond_17

    .line 309
    .line 310
    check-cast v5, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 311
    .line 312
    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    check-cast v5, Ljava/lang/Boolean;

    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    if-eqz v5, :cond_1d

    .line 323
    .line 324
    move v4, v15

    .line 325
    goto :goto_b

    .line 326
    :cond_17
    iget v8, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 327
    .line 328
    and-int/lit16 v8, v8, 0x400

    .line 329
    .line 330
    if-eqz v8, :cond_1d

    .line 331
    .line 332
    instance-of v8, v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 333
    .line 334
    if-eqz v8, :cond_1d

    .line 335
    .line 336
    move-object v8, v5

    .line 337
    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .line 338
    .line 339
    iget-object v8, v8, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 340
    .line 341
    move/from16 v9, v16

    .line 342
    .line 343
    :goto_9
    if-eqz v8, :cond_1c

    .line 344
    .line 345
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 346
    .line 347
    and-int/lit16 v10, v10, 0x400

    .line 348
    .line 349
    if-eqz v10, :cond_1b

    .line 350
    .line 351
    add-int/lit8 v9, v9, 0x1

    .line 352
    .line 353
    if-ne v9, v15, :cond_18

    .line 354
    .line 355
    move-object v5, v8

    .line 356
    goto :goto_a

    .line 357
    :cond_18
    if-nez v7, :cond_19

    .line 358
    .line 359
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    .line 360
    .line 361
    const/16 v10, 0x10

    .line 362
    .line 363
    new-array v11, v10, [Landroidx/compose/ui/Modifier$Node;

    .line 364
    .line 365
    invoke-direct {v7, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_19
    if-eqz v5, :cond_1a

    .line 369
    .line 370
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    move-object/from16 v5, v17

    .line 374
    .line 375
    :cond_1a
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :cond_1b
    :goto_a
    iget-object v8, v8, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 379
    .line 380
    goto :goto_9

    .line 381
    :cond_1c
    if-ne v9, v15, :cond_1d

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_1d
    invoke-static {v7}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    goto :goto_8

    .line 389
    :cond_1e
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 390
    .line 391
    goto :goto_7

    .line 392
    :cond_1f
    :goto_b
    add-int/lit8 v2, v2, 0x1

    .line 393
    .line 394
    goto/16 :goto_5

    .line 395
    .line 396
    :cond_20
    move/from16 v16, v4

    .line 397
    .line 398
    :goto_c
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    return-object v0

    .line 403
    :cond_21
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    return-object v17

    .line 407
    :cond_22
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    return-object v17

    .line 411
    :cond_23
    const-string v0, "invalid FocusDirection"

    .line 412
    .line 413
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    return-object v17

    .line 417
    :cond_24
    move-object/from16 v5, v17

    .line 418
    .line 419
    :cond_25
    invoke-virtual {v13}, Landroidx/compose/ui/platform/AndroidComposeView;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    new-instance v9, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    .line 424
    .line 425
    invoke-direct {v9, v5, v0, v3}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusOwnerImpl;Lkotlin/jvm/functions/Function1;)V

    .line 426
    .line 427
    .line 428
    if-ne v1, v15, :cond_26

    .line 429
    .line 430
    goto :goto_d

    .line 431
    :cond_26
    if-ne v1, v11, :cond_29

    .line 432
    .line 433
    :goto_d
    if-ne v1, v15, :cond_27

    .line 434
    .line 435
    invoke-static {v4, v9}, Lkotlin/io/CloseableKt;->forwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    goto :goto_e

    .line 440
    :cond_27
    if-ne v1, v11, :cond_28

    .line 441
    .line 442
    invoke-static {v4, v9}, Lkotlin/io/CloseableKt;->backwardFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;Lkotlin/jvm/functions/Function1;)Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    return-object v0

    .line 451
    :cond_28
    const-string v0, "This function should only be used for 1-D focus search"

    .line 452
    .line 453
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    return-object v17

    .line 457
    :cond_29
    if-ne v1, v8, :cond_2a

    .line 458
    .line 459
    goto :goto_f

    .line 460
    :cond_2a
    if-ne v1, v7, :cond_2b

    .line 461
    .line 462
    goto :goto_f

    .line 463
    :cond_2b
    if-ne v1, v10, :cond_2c

    .line 464
    .line 465
    goto :goto_f

    .line 466
    :cond_2c
    const/4 v0, 0x6

    .line 467
    if-ne v1, v0, :cond_2d

    .line 468
    .line 469
    :goto_f
    invoke-static {v4, v1, v2, v9}, Lokhttp3/Cookie$Companion;->twoDimensionalFocusSearch-sMXa3k8(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Ljava/lang/Boolean;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    return-object v0

    .line 474
    :cond_2d
    const/4 v0, 0x7

    .line 475
    if-ne v1, v0, :cond_31

    .line 476
    .line 477
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    if-eqz v0, :cond_2f

    .line 482
    .line 483
    if-ne v0, v15, :cond_2e

    .line 484
    .line 485
    move v7, v8

    .line 486
    goto :goto_10

    .line 487
    :cond_2e
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 488
    .line 489
    .line 490
    return-object v17

    .line 491
    :cond_2f
    :goto_10
    invoke-static {v4}, Lokio/Options$Companion;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    if-eqz v0, :cond_30

    .line 496
    .line 497
    invoke-static {v0, v7, v2, v9}, Lokhttp3/Cookie$Companion;->twoDimensionalFocusSearch-sMXa3k8(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;)Ljava/lang/Boolean;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    return-object v0

    .line 502
    :cond_30
    :goto_11
    return-object v17

    .line 503
    :cond_31
    const/16 v0, 0x8

    .line 504
    .line 505
    if-ne v1, v0, :cond_40

    .line 506
    .line 507
    invoke-static {v4}, Lokio/Options$Companion;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    if-eqz v0, :cond_3e

    .line 512
    .line 513
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 514
    .line 515
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    .line 516
    .line 517
    if-nez v1, :cond_32

    .line 518
    .line 519
    const-string/jumbo v1, "visitAncestors called on an unattached node"

    .line 520
    .line 521
    .line 522
    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    :cond_32
    iget-object v1, v0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    .line 526
    .line 527
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 528
    .line 529
    invoke-static {v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    :goto_12
    if-eqz v0, :cond_3e

    .line 534
    .line 535
    iget-object v2, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 536
    .line 537
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->head:Landroidx/compose/ui/Modifier$Node;

    .line 538
    .line 539
    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    .line 540
    .line 541
    and-int/lit16 v2, v2, 0x400

    .line 542
    .line 543
    if-eqz v2, :cond_3c

    .line 544
    .line 545
    :goto_13
    if-eqz v1, :cond_3c

    .line 546
    .line 547
    iget v2, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 548
    .line 549
    and-int/lit16 v2, v2, 0x400

    .line 550
    .line 551
    if-eqz v2, :cond_3b

    .line 552
    .line 553
    move-object v2, v1

    .line 554
    move-object/from16 v3, v17

    .line 555
    .line 556
    :goto_14
    if-eqz v2, :cond_3b

    .line 557
    .line 558
    instance-of v5, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 559
    .line 560
    if-eqz v5, :cond_34

    .line 561
    .line 562
    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    .line 563
    .line 564
    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusPropertiesImpl;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    iget-boolean v5, v5, Landroidx/compose/ui/focus/FocusPropertiesImpl;->canFocus:Z

    .line 569
    .line 570
    if-eqz v5, :cond_33

    .line 571
    .line 572
    move-object v15, v2

    .line 573
    goto/16 :goto_19

    .line 574
    .line 575
    :cond_33
    const/16 v7, 0x10

    .line 576
    .line 577
    goto :goto_18

    .line 578
    :cond_34
    iget v5, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 579
    .line 580
    and-int/lit16 v5, v5, 0x400

    .line 581
    .line 582
    if-eqz v5, :cond_33

    .line 583
    .line 584
    instance-of v5, v2, Landroidx/compose/ui/node/DelegatingNode;

    .line 585
    .line 586
    if-eqz v5, :cond_33

    .line 587
    .line 588
    move-object v5, v2

    .line 589
    check-cast v5, Landroidx/compose/ui/node/DelegatingNode;

    .line 590
    .line 591
    iget-object v5, v5, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    .line 592
    .line 593
    move/from16 v6, v16

    .line 594
    .line 595
    :goto_15
    if-eqz v5, :cond_39

    .line 596
    .line 597
    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    .line 598
    .line 599
    and-int/lit16 v7, v7, 0x400

    .line 600
    .line 601
    if-eqz v7, :cond_35

    .line 602
    .line 603
    add-int/lit8 v6, v6, 0x1

    .line 604
    .line 605
    if-ne v6, v15, :cond_36

    .line 606
    .line 607
    move-object v2, v5

    .line 608
    :cond_35
    const/16 v7, 0x10

    .line 609
    .line 610
    goto :goto_17

    .line 611
    :cond_36
    if-nez v3, :cond_37

    .line 612
    .line 613
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    .line 614
    .line 615
    const/16 v7, 0x10

    .line 616
    .line 617
    new-array v8, v7, [Landroidx/compose/ui/Modifier$Node;

    .line 618
    .line 619
    invoke-direct {v3, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 620
    .line 621
    .line 622
    goto :goto_16

    .line 623
    :cond_37
    const/16 v7, 0x10

    .line 624
    .line 625
    :goto_16
    if-eqz v2, :cond_38

    .line 626
    .line 627
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    move-object/from16 v2, v17

    .line 631
    .line 632
    :cond_38
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    .line 633
    .line 634
    .line 635
    :goto_17
    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    .line 636
    .line 637
    goto :goto_15

    .line 638
    :cond_39
    const/16 v7, 0x10

    .line 639
    .line 640
    if-ne v6, v15, :cond_3a

    .line 641
    .line 642
    goto :goto_14

    .line 643
    :cond_3a
    :goto_18
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    goto :goto_14

    .line 648
    :cond_3b
    const/16 v7, 0x10

    .line 649
    .line 650
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    .line 651
    .line 652
    goto :goto_13

    .line 653
    :cond_3c
    const/16 v7, 0x10

    .line 654
    .line 655
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    .line 656
    .line 657
    .line 658
    move-result-object v0

    .line 659
    if-eqz v0, :cond_3d

    .line 660
    .line 661
    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    .line 662
    .line 663
    if-eqz v1, :cond_3d

    .line 664
    .line 665
    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->tail:Landroidx/compose/ui/node/TailModifierNode;

    .line 666
    .line 667
    goto/16 :goto_12

    .line 668
    .line 669
    :cond_3d
    move-object/from16 v1, v17

    .line 670
    .line 671
    goto/16 :goto_12

    .line 672
    .line 673
    :cond_3e
    move-object/from16 v15, v17

    .line 674
    .line 675
    :goto_19
    if-eqz v15, :cond_3f

    .line 676
    .line 677
    if-eq v15, v4, :cond_3f

    .line 678
    .line 679
    invoke-virtual {v9, v15}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    check-cast v0, Ljava/lang/Boolean;

    .line 684
    .line 685
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 686
    .line 687
    .line 688
    move-result v16

    .line 689
    :cond_3f
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    return-object v0

    .line 694
    :cond_40
    const-string v0, "Focus search invoked with invalid FocusDirection "

    .line 695
    .line 696
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusDirection;->toString-impl(I)Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v1

    .line 700
    invoke-static {v1, v0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    return-object v17
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
    new-instance v1, Landroidx/compose/ui/focus/FocusOwnerImpl$resetFocus$successfulReset$1;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Landroidx/compose/ui/focus/FocusOwnerImpl$resetFocus$successfulReset$1;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, p1, v2, v1}, Landroidx/compose/ui/focus/FocusOwnerImpl;->focusSearch-ULY8qGw(ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :cond_1
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->clearOwnerFocus()V

    .line 28
    .line 29
    .line 30
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
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 8
    .line 9
    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

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
    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-static/range {p1 .. p1}, Lkotlin/text/CharsKt;->getType-ZmokQxo(Landroid/view/KeyEvent;)I

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
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([J)I

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
