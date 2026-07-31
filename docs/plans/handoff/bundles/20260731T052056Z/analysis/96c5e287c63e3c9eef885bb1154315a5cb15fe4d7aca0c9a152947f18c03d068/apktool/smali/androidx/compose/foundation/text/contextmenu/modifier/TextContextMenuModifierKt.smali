.class public abstract Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public static final addTextContextMenuComponentsWithContext(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextElement;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/foundation/text/contextmenu/modifier/AddTextContextMenuDataComponentsWithContextElement;-><init>(Lkotlin/jvm/functions/Function2;)V

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
    const/4 v7, 0x4

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
    new-instance v1, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 21
    .line 22
    const/16 v3, 0x17

    .line 23
    .line 24
    invoke-direct {v1, v3, v2}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;

    .line 28
    .line 29
    const/16 v4, 0x18

    .line 30
    .line 31
    invoke-direct {v3, v4, v1, v0}, Landroidx/compose/material3/AppBarKt$$ExternalSyntheticLambda11;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;

    .line 35
    .line 36
    invoke-static {p0, v0, v3}, Landroidx/compose/ui/node/HitTestResultKt;->traverseAncestors(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 37
    .line 38
    .line 39
    new-instance p0, Landroidx/collection/MutableObjectList;

    .line 40
    .line 41
    invoke-direct {p0}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v0, v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->components:Landroidx/collection/MutableObjectList;

    .line 45
    .line 46
    iget-object v1, v0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 47
    .line 48
    iget v0, v0, Landroidx/collection/MutableObjectList;->_size:I

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x1

    .line 52
    const/4 v5, 0x0

    .line 53
    move v6, v3

    .line 54
    move v7, v4

    .line 55
    move-object v8, v5

    .line 56
    :goto_0
    sget-object v9, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->INSTANCE:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    .line 57
    .line 58
    if-ge v6, v0, :cond_6

    .line 59
    .line 60
    aget-object v10, v1, v6

    .line 61
    .line 62
    check-cast v10, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .line 63
    .line 64
    if-eqz v7, :cond_0

    .line 65
    .line 66
    if-eq v10, v9, :cond_5

    .line 67
    .line 68
    :cond_0
    if-ne v10, v9, :cond_1

    .line 69
    .line 70
    if-ne v8, v9, :cond_1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_1
    if-ne v10, v9, :cond_2

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    iget-object v7, v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->filters:Landroidx/collection/MutableObjectList;

    .line 77
    .line 78
    iget-object v9, v7, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 79
    .line 80
    iget v7, v7, Landroidx/collection/MutableObjectList;->_size:I

    .line 81
    .line 82
    move v11, v3

    .line 83
    :goto_1
    if-ge v11, v7, :cond_4

    .line 84
    .line 85
    aget-object v12, v9, v11

    .line 86
    .line 87
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 88
    .line 89
    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    check-cast v12, Ljava/lang/Boolean;

    .line 94
    .line 95
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    .line 96
    .line 97
    .line 98
    move-result v12

    .line 99
    if-nez v12, :cond_3

    .line 100
    .line 101
    :goto_2
    move v7, v3

    .line 102
    goto :goto_4

    .line 103
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    :goto_3
    invoke-virtual {p0, v10}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    move v7, v3

    .line 110
    move-object v8, v10

    .line 111
    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    invoke-virtual {p0}, Landroidx/collection/MutableObjectList;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_7

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_7
    iget-object v0, p0, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 122
    .line 123
    iget v1, p0, Landroidx/collection/MutableObjectList;->_size:I

    .line 124
    .line 125
    sub-int/2addr v1, v4

    .line 126
    aget-object v5, v0, v1

    .line 127
    .line 128
    :goto_5
    check-cast v5, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    .line 129
    .line 130
    if-ne v5, v9, :cond_8

    .line 131
    .line 132
    iget v0, p0, Landroidx/collection/MutableObjectList;->_size:I

    .line 133
    .line 134
    sub-int/2addr v0, v4

    .line 135
    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    :cond_8
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    .line 139
    .line 140
    iget-object v1, p0, Landroidx/collection/MutableObjectList;->list:Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 141
    .line 142
    if-eqz v1, :cond_9

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_9
    new-instance v1, Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 146
    .line 147
    invoke-direct {v1, v3, p0}, Landroidx/collection/MutableObjectList$ObjectListMutableList;-><init>(ILjava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iput-object v1, p0, Landroidx/collection/MutableObjectList;->list:Landroidx/collection/MutableObjectList$ObjectListMutableList;

    .line 151
    .line 152
    :goto_6
    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;-><init>(Ljava/util/List;)V

    .line 153
    .line 154
    .line 155
    return-object v0
.end method

.method public static final showTextContextMenuOnSecondaryClick(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureElement;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuGestureElement;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final textContextMenuToolbarHandler(Landroidx/compose/ui/Modifier;Landroidx/cardview/widget/CardView$1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$contextMenuAreaModifier$3;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerElement;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerElement;-><init>(Landroidx/cardview/widget/CardView$1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

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

.method public static final translateRootToDestination(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 2

    .line 1
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {p1}, Landroidx/compose/ui/layout/RulerKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p2, p1, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-static {p1, p2, v0, v1}, Lcoil3/util/UtilsKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    :goto_0
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    .line 36
    .line 37
    return-object p0
.end method
