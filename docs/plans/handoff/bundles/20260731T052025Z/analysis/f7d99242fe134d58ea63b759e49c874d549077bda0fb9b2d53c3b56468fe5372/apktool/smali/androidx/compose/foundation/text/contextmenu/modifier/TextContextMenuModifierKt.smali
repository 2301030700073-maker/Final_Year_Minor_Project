.class public abstract Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static final addTextContextMenuComponentsWithContext(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextElement;-><init>(Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda3;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final collectTextContextMenuData(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;
    .locals 13

    .line 1
    new-instance v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 2
    .line 3
    invoke-direct {v2}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/room/InvalidationTracker$implementation$1;

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const/4 v7, 0x6

    .line 10
    const/4 v1, 0x1

    .line 11
    const-class v3, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    .line 12
    .line 13
    const-string v4, "addFilter"

    .line 14
    .line 15
    const-string v5, "addFilter$foundation(Lkotlin/jvm/functions/Function1;)V"

    .line 16
    .line 17
    invoke-direct/range {v0 .. v7}, Landroidx/room/InvalidationTracker$implementation$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 21
    .line 22
    const/16 v3, 0x19

    .line 23
    .line 24
    invoke-direct {v1, v3, v2}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    .line 28
    .line 29
    invoke-direct {v3, v1, v0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;Landroidx/room/InvalidationTracker$implementation$1;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;

    .line 33
    .line 34
    invoke-static {p0, v0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->traverseAncestors(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    new-instance p0, Landroidx/collection/MutableObjectList;

    .line 38
    .line 39
    invoke-direct {p0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v0, v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    .line 43
    .line 44
    iget-object v1, v0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 45
    .line 46
    iget v0, v0, Landroidx/collection/MutableObjectList;->_size:I

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    const/4 v4, 0x1

    .line 50
    const/4 v5, 0x0

    .line 51
    move v6, v3

    .line 52
    move v7, v4

    .line 53
    move-object v8, v5

    .line 54
    :goto_0
    sget-object v9, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    .line 55
    .line 56
    if-ge v6, v0, :cond_6

    .line 57
    .line 58
    aget-object v10, v1, v6

    .line 59
    .line 60
    check-cast v10, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .line 61
    .line 62
    if-eqz v7, :cond_0

    .line 63
    .line 64
    if-eq v10, v9, :cond_5

    .line 65
    .line 66
    :cond_0
    if-ne v10, v9, :cond_1

    .line 67
    .line 68
    if-ne v8, v9, :cond_1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    if-ne v10, v9, :cond_2

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_2
    iget-object v7, v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->filters:Landroidx/collection/MutableObjectList;

    .line 75
    .line 76
    iget-object v9, v7, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 77
    .line 78
    iget v7, v7, Landroidx/collection/MutableObjectList;->_size:I

    .line 79
    .line 80
    move v11, v3

    .line 81
    :goto_1
    if-ge v11, v7, :cond_4

    .line 82
    .line 83
    aget-object v12, v9, v11

    .line 84
    .line 85
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 86
    .line 87
    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    check-cast v12, Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 94
    .line 95
    .line 96
    move-result v12

    .line 97
    if-nez v12, :cond_3

    .line 98
    .line 99
    :goto_2
    move v7, v3

    .line 100
    goto :goto_4

    .line 101
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    :goto_3
    invoke-virtual {p0, v10}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    move v7, v3

    .line 108
    move-object v8, v10

    .line 109
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    invoke-virtual {p0}, Landroidx/collection/MutableObjectList;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    iget-object v0, p0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 120
    .line 121
    iget v1, p0, Landroidx/collection/MutableObjectList;->_size:I

    .line 122
    .line 123
    sub-int/2addr v1, v4

    .line 124
    aget-object v5, v0, v1

    .line 125
    .line 126
    :goto_5
    check-cast v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .line 127
    .line 128
    if-ne v5, v9, :cond_8

    .line 129
    .line 130
    iget v0, p0, Landroidx/collection/MutableObjectList;->_size:I

    .line 131
    .line 132
    sub-int/2addr v0, v4

    .line 133
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    :cond_8
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 137
    .line 138
    iget-object v1, p0, Landroidx/collection/MutableObjectList;->list:Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 139
    .line 140
    if-eqz v1, :cond_9

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_9
    new-instance v1, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 144
    .line 145
    invoke-direct {v1, v3, p0}, Landroidx/collection/MutableObjectList$ObjectListMutableList;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    iput-object v1, p0, Landroidx/collection/MutableObjectList;->list:Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 149
    .line 150
    :goto_6
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;-><init>(Ljava/util/List;)V

    .line 151
    .line 152
    .line 153
    return-object v0
.end method

.method public static final showTextContextMenuOnSecondaryClick(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureElement;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureElement;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$cut$1;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final textContextMenuToolbarHandler(Landroidx/compose/ui/Modifier;Landroidx/cardview/widget/CardView$1;Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerElement;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerElement;-><init>(Landroidx/cardview/widget/CardView$1;Landroidx/datastore/core/DataStoreImpl$doWithWriteFileLock$2;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;Landroidx/compose/foundation/text/CoreTextFieldKt$$ExternalSyntheticLambda7;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
