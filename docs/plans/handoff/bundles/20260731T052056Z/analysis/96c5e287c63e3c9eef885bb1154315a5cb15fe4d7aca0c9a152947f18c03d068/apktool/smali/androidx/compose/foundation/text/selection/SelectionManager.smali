.class public final Landroidx/compose/foundation/text/selection/SelectionManager;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _isInTouchMode:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final _selection:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

.field public coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final currentDragPosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final derivedContentRect$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final dragBeginPosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final dragTotalDistance$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final endHandlePosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final focusRequester:Landroidx/compose/ui/focus/FocusRequester;

.field public hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final hasFocus$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public isLongPressOrClickSelection:Z

.field public onCopyHandler:Lkotlin/jvm/functions/Function1;

.field public onSelectionChange:Lkotlin/jvm/functions/Function1;

.field public platformSelectionBehaviors:Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors;

.field public final positionChangeState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public previousPosition:Landroidx/compose/ui/geometry/Offset;

.field public previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

.field public final selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

.field public showToolbar:Z

.field public final startHandlePosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final toolbarRequester:Landroidx/cardview/widget/CardView$1;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 12
    .line 13
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 20
    .line 21
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    const/4 v2, 0x7

    .line 24
    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    new-instance v1, Landroidx/cardview/widget/CardView$1;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Landroidx/cardview/widget/CardView$1;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarRequester:Landroidx/cardview/widget/CardView$1;

    .line 35
    .line 36
    new-instance v1, Landroidx/compose/ui/focus/FocusRequester;

    .line 37
    .line 38
    invoke-direct {v1}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 42
    .line 43
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    .line 45
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 50
    .line 51
    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-direct {v1, p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->derivedContentRect$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 62
    .line 63
    sget-object v1, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 64
    .line 65
    new-instance v2, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 66
    .line 67
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 68
    .line 69
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/NeverEqualPolicy;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->positionChangeState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 73
    .line 74
    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    .line 75
    .line 76
    const-wide/16 v2, 0x0

    .line 77
    .line 78
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragBeginPosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 86
    .line 87
    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    .line 88
    .line 89
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->dragTotalDistance$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 97
    .line 98
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 103
    .line 104
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 109
    .line 110
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 115
    .line 116
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 121
    .line 122
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;

    .line 123
    .line 124
    const/16 v1, 0x8

    .line 125
    .line 126
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 127
    .line 128
    .line 129
    iput-object v0, p1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onPositionChangeCallback:Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;

    .line 130
    .line 131
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    const/4 v1, 0x1

    .line 134
    invoke-direct {v0, v1, p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    iput-object v0, p1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateStartCallback:Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;

    .line 138
    .line 139
    new-instance v0, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;

    .line 140
    .line 141
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;-><init>(ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iput-object v0, p1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateCallback:Lorg/wikipedia/search/SearchResultsFragment$$ExternalSyntheticLambda15;

    .line 145
    .line 146
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;

    .line 147
    .line 148
    const/4 v1, 0x3

    .line 149
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 150
    .line 151
    .line 152
    iput-object v0, p1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectionUpdateEndCallback:Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda1;

    .line 153
    .line 154
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    const/4 v2, 0x2

    .line 157
    invoke-direct {v0, p0, v2}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->onSelectableChangeCallback:Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;

    .line 161
    .line 162
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;

    .line 163
    .line 164
    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/foundation/text/selection/SelectionManager;I)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->afterSelectableUnsubscribe:Landroidx/compose/foundation/text/selection/SelectionManager$$ExternalSyntheticLambda0;

    .line 168
    .line 169
    return-void
.end method


# virtual methods
.method public final convertToContainerCoordinates-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0

    .line 21
    :cond_1
    :goto_0
    const-wide p0, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    return-wide p0
.end method

.method public final copy$foundation()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget v2, v2, Landroidx/collection/MutableLongObjectMap;->_size:I

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_1
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 22
    .line 23
    invoke-direct {v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    :cond_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/4 v6, -0x1

    .line 47
    if-eqz v5, :cond_3

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    iget-wide v8, v5, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 60
    .line 61
    invoke-virtual {v7, v8, v9}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Landroidx/compose/foundation/text/selection/Selection;

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    iget-object v7, v5, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 70
    .line 71
    iget v7, v7, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 72
    .line 73
    iget-object v5, v5, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 74
    .line 75
    iget v5, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 76
    .line 77
    if-eq v7, v5, :cond_2

    .line 78
    .line 79
    invoke-interface {v4}, Ljava/util/ListIterator;->nextIndex()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move v4, v6

    .line 85
    :goto_0
    if-eq v4, v6, :cond_6

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/4 v6, 0x0

    .line 92
    move v7, v6

    .line 93
    :goto_1
    if-ge v7, v5, :cond_6

    .line 94
    .line 95
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    check-cast v8, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    iget-wide v10, v8, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 106
    .line 107
    invoke-virtual {v9, v10, v11}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    check-cast v9, Landroidx/compose/foundation/text/selection/Selection;

    .line 112
    .line 113
    if-eqz v9, :cond_5

    .line 114
    .line 115
    invoke-virtual {v8}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 116
    .line 117
    .line 118
    move-result-object v8

    .line 119
    iget-object v10, v9, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 120
    .line 121
    iget v10, v10, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 122
    .line 123
    iget-object v9, v9, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 124
    .line 125
    iget v9, v9, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 126
    .line 127
    invoke-static {v10, v9}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 128
    .line 129
    .line 130
    move-result-wide v9

    .line 131
    if-lt v7, v4, :cond_4

    .line 132
    .line 133
    const/4 v11, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    move v11, v6

    .line 136
    :goto_2
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    invoke-static {v9, v10}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    invoke-virtual {v2, v8, v12, v9}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;II)V

    .line 145
    .line 146
    .line 147
    if-nez v11, :cond_5

    .line 148
    .line 149
    const/16 v8, 0xa

    .line 150
    .line 151
    iget-object v9, v2, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_6
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    :goto_3
    if-eqz v0, :cond_8

    .line 164
    .line 165
    iget-object v2, v0, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-lez v2, :cond_7

    .line 172
    .line 173
    move-object v1, v0

    .line 174
    :cond_7
    if-eqz v1, :cond_8

    .line 175
    .line 176
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onCopyHandler:Lkotlin/jvm/functions/Function1;

    .line 177
    .line 178
    if-eqz p0, :cond_8

    .line 179
    .line 180
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    :cond_8
    return-void
.end method

.method public final getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectableMap:Landroidx/collection/MutableLongObjectMap;

    .line 4
    .line 5
    iget-wide v0, p1, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 12
    .line 13
    return-object p0
.end method

.method public final getContextTextAndSelection$foundation()Lkotlin/Pair;
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectables:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_0
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 20
    .line 21
    invoke-direct {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, -0x1

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-wide v6, v3, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 58
    .line 59
    invoke-virtual {v5, v6, v7}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroidx/compose/foundation/text/selection/Selection;

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    iget-object v5, v3, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 68
    .line 69
    iget v5, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 70
    .line 71
    iget-object v3, v3, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 72
    .line 73
    iget v3, v3, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 74
    .line 75
    if-eq v5, v3, :cond_1

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v2, v4

    .line 83
    :goto_0
    if-eq v2, v4, :cond_7

    .line 84
    .line 85
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/4 v5, 0x0

    .line 90
    move v7, v4

    .line 91
    move v8, v7

    .line 92
    move v6, v5

    .line 93
    :goto_1
    if-ge v6, v3, :cond_8

    .line 94
    .line 95
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    check-cast v9, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    iget-wide v11, v9, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 106
    .line 107
    invoke-virtual {v10, v11, v12}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    check-cast v10, Landroidx/compose/foundation/text/selection/Selection;

    .line 112
    .line 113
    if-eqz v10, :cond_6

    .line 114
    .line 115
    invoke-virtual {v9}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    iget-object v11, v10, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 120
    .line 121
    iget v11, v11, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 122
    .line 123
    iget-object v10, v10, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 124
    .line 125
    iget v10, v10, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 126
    .line 127
    invoke-static {v11, v10}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 128
    .line 129
    .line 130
    move-result-wide v10

    .line 131
    if-lt v6, v2, :cond_3

    .line 132
    .line 133
    const/4 v12, 0x1

    .line 134
    goto :goto_2

    .line 135
    :cond_3
    move v12, v5

    .line 136
    :goto_2
    if-ne v7, v4, :cond_4

    .line 137
    .line 138
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    invoke-virtual {v1, v9, v5, v13}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;II)V

    .line 147
    .line 148
    .line 149
    :cond_4
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    invoke-virtual {v1, v9, v13, v14}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;II)V

    .line 158
    .line 159
    .line 160
    iget-object v13, v1, Landroidx/compose/ui/text/AnnotatedString$Builder;->text:Ljava/lang/StringBuilder;

    .line 161
    .line 162
    if-nez v12, :cond_5

    .line 163
    .line 164
    const/16 v9, 0xa

    .line 165
    .line 166
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    iget-object v11, v9, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    invoke-virtual {v1, v9, v10, v11}, Landroidx/compose/ui/text/AnnotatedString$Builder;->append(Landroidx/compose/ui/text/AnnotatedString;II)V

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_7
    move v7, v4

    .line 191
    move v8, v7

    .line 192
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    if-eq v7, v4, :cond_a

    .line 197
    .line 198
    if-ne v8, v4, :cond_9

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_9
    new-instance v0, Lkotlin/Pair;

    .line 202
    .line 203
    invoke-static {v7, v8}, Landroidx/compose/ui/text/ParagraphKt;->TextRange(II)J

    .line 204
    .line 205
    .line 206
    move-result-wide v1

    .line 207
    new-instance v3, Landroidx/compose/ui/text/TextRange;

    .line 208
    .line 209
    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/text/TextRange;-><init>(J)V

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, p0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    return-object v0

    .line 216
    :cond_a
    :goto_4
    const/4 p0, 0x0

    .line 217
    return-object p0
.end method

.method public final getDraggingHandle()Landroidx/compose/foundation/text/Handle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/foundation/text/Handle;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getSelection()Landroidx/compose/foundation/text/selection/Selection;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/foundation/text/selection/Selection;

    .line 8
    .line 9
    return-object p0
.end method

.method public final isInTouchMode()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final isNonEmptySelection$foundation()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 12
    .line 13
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    iget-wide v3, v0, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    .line 21
    .line 22
    iget-wide v5, v2, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    .line 23
    .line 24
    cmp-long v0, v3, v5

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    move v3, v1

    .line 44
    :goto_0
    if-ge v3, v2, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->getSubselections()Landroidx/collection/MutableLongObjectMap;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget-wide v6, v4, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 57
    .line 58
    invoke-virtual {v5, v6, v7}, Landroidx/collection/MutableLongObjectMap;->get(J)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroidx/compose/foundation/text/selection/Selection;

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    iget-object v5, v4, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 67
    .line 68
    iget v5, v5, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 69
    .line 70
    iget-object v4, v4, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 71
    .line 72
    iget v4, v4, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 73
    .line 74
    if-eq v5, v4, :cond_3

    .line 75
    .line 76
    :goto_1
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    :goto_2
    return v1
.end method

.method public final onRelease()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/collection/LongObjectMapKt;->EmptyLongObjectMap:Landroidx/collection/MutableLongObjectMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->subselections$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 38
    .line 39
    if-eqz p0, :cond_0

    .line 40
    .line 41
    const/16 v0, 0x9

    .line 42
    .line 43
    check-cast p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public final requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v0, "unattached coordinates"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0

    .line 18
    :cond_1
    const-string p0, "null coordinates"

    .line 19
    .line 20
    invoke-static {p0}, Landroidx/compose/foundation/lazy/LazyItemScope$-CC;->m(Ljava/lang/String;)Lcoil3/network/HttpException;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    throw p0
.end method

.method public final setInTouchMode(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_isInTouchMode:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq v1, p1, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateSelectionToolbar()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final setSelection(Landroidx/compose/foundation/text/selection/Selection;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->_selection:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->updateHandleOffsets()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final updateHandleOffsets()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v4, v1, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 13
    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v4, v3

    .line 22
    :goto_0
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v5, v1, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 25
    .line 26
    if-eqz v5, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v5, v3

    .line 34
    :goto_1
    if-eqz v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {v4}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v6, v3

    .line 42
    :goto_2
    if-eqz v5, :cond_3

    .line 43
    .line 44
    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move-object v7, v3

    .line 50
    :goto_3
    iget-object v8, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->endHandlePosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 51
    .line 52
    iget-object v9, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->startHandlePosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 53
    .line 54
    if-eqz v1, :cond_c

    .line 55
    .line 56
    if-eqz v2, :cond_c

    .line 57
    .line 58
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    if-eqz v10, :cond_c

    .line 63
    .line 64
    if-nez v6, :cond_4

    .line 65
    .line 66
    if-nez v7, :cond_4

    .line 67
    .line 68
    goto :goto_7

    .line 69
    :cond_4
    invoke-static {v2}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    const-wide v13, 0x7fffffff7fffffffL

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    if-eqz v6, :cond_6

    .line 79
    .line 80
    const/4 v15, 0x1

    .line 81
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v1, v15}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    .line 87
    .line 88
    .line 89
    move-result-wide v11

    .line 90
    and-long v18, v11, v13

    .line 91
    .line 92
    cmp-long v4, v18, v16

    .line 93
    .line 94
    if-nez v4, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    invoke-interface {v2, v6, v11, v12}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 98
    .line 99
    .line 100
    move-result-wide v11

    .line 101
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    .line 102
    .line 103
    invoke-direct {v4, v11, v12}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    sget-object v15, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    .line 111
    .line 112
    if-eq v6, v15, :cond_8

    .line 113
    .line 114
    invoke-static {v10, v11, v12}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_7

    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_6
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    :cond_7
    :goto_4
    move-object v4, v3

    .line 127
    :cond_8
    :goto_5
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    if-eqz v7, :cond_b

    .line 131
    .line 132
    const/4 v4, 0x0

    .line 133
    invoke-virtual {v5, v1, v4}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J

    .line 134
    .line 135
    .line 136
    move-result-wide v4

    .line 137
    and-long v11, v4, v13

    .line 138
    .line 139
    cmp-long v1, v11, v16

    .line 140
    .line 141
    if-nez v1, :cond_9

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_9
    invoke-interface {v2, v7, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 145
    .line 146
    .line 147
    move-result-wide v1

    .line 148
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    .line 149
    .line 150
    invoke-direct {v4, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget-object v5, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    .line 158
    .line 159
    if-eq v0, v5, :cond_a

    .line 160
    .line 161
    invoke-static {v10, v1, v2}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_b

    .line 166
    .line 167
    :cond_a
    move-object v3, v4

    .line 168
    :cond_b
    :goto_6
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_c
    :goto_7
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method

.method public final updateSelection-jyLRC_s$foundation(JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;)Z
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    .line 9
    .line 10
    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->draggingHandle$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    .line 16
    .line 17
    move-wide/from16 v3, p1

    .line 18
    .line 19
    invoke-direct {v1, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->currentDragPosition$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->requireContainerCoordinates$foundation()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->selectionRegistrar:Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;

    .line 32
    .line 33
    invoke-virtual {v1, v7}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    sget v2, Landroidx/collection/LongIntMapKt;->$r8$clinit:I

    .line 38
    .line 39
    new-instance v2, Landroidx/collection/MutableLongIntMap;

    .line 40
    .line 41
    const/4 v5, 0x6

    .line 42
    invoke-direct {v2, v5}, Landroidx/collection/MutableLongIntMap;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const/4 v6, 0x0

    .line 50
    :goto_1
    if-ge v6, v5, :cond_1

    .line 51
    .line 52
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    check-cast v8, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 57
    .line 58
    iget-wide v8, v8, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 59
    .line 60
    invoke-virtual {v2, v8, v9, v6}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    new-instance v10, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;

    .line 67
    .line 68
    const/4 v13, 0x1

    .line 69
    invoke-direct {v10, v13, v2}, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const-wide v14, 0x7fffffff7fffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    and-long v5, p3, v14

    .line 78
    .line 79
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    cmp-long v2, v5, v16

    .line 85
    .line 86
    const/16 v18, 0x0

    .line 87
    .line 88
    if-nez v2, :cond_2

    .line 89
    .line 90
    move-object/from16 v9, v18

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v9, v2

    .line 98
    :goto_2
    new-instance v21, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;

    .line 99
    .line 100
    move-wide/from16 v5, p3

    .line 101
    .line 102
    move/from16 v8, p5

    .line 103
    .line 104
    move-object/from16 v2, v21

    .line 105
    .line 106
    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;-><init>(JJLandroidx/compose/ui/layout/LayoutCoordinates;ZLandroidx/compose/foundation/text/selection/Selection;Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    const/4 v4, 0x0

    .line 114
    :goto_3
    iget-object v6, v2, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->selectableIdToInfoListIndex:Landroidx/collection/MutableLongIntMap;

    .line 115
    .line 116
    iget-object v7, v2, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->infoList:Ljava/util/ArrayList;

    .line 117
    .line 118
    if-ge v4, v3, :cond_17

    .line 119
    .line 120
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 125
    .line 126
    invoke-virtual {v8}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    if-nez v9, :cond_3

    .line 131
    .line 132
    :goto_4
    move-object/from16 v31, v1

    .line 133
    .line 134
    move/from16 p2, v3

    .line 135
    .line 136
    move/from16 p5, v4

    .line 137
    .line 138
    move-object/from16 v30, v11

    .line 139
    .line 140
    move/from16 p3, v13

    .line 141
    .line 142
    move-wide/from16 v27, v14

    .line 143
    .line 144
    const/16 v29, 0x0

    .line 145
    .line 146
    move-object v14, v2

    .line 147
    goto/16 :goto_13

    .line 148
    .line 149
    :cond_3
    iget-object v10, v8, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->layoutResultCallback:Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;

    .line 150
    .line 151
    invoke-virtual {v10}, Landroidx/compose/foundation/text/modifiers/SelectionController$$ExternalSyntheticLambda0;->invoke()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v10

    .line 155
    check-cast v10, Landroidx/compose/ui/text/TextLayoutResult;

    .line 156
    .line 157
    if-nez v10, :cond_4

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_4
    move-wide/from16 v27, v14

    .line 161
    .line 162
    const-wide/16 v14, 0x0

    .line 163
    .line 164
    const/16 v29, 0x0

    .line 165
    .line 166
    iget-object v12, v2, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->containerCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 167
    .line 168
    invoke-interface {v12, v9, v14, v15}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 169
    .line 170
    .line 171
    move-result-wide v14

    .line 172
    move-object v9, v6

    .line 173
    iget-wide v5, v2, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->currentPosition:J

    .line 174
    .line 175
    invoke-static {v5, v6, v14, v15}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 176
    .line 177
    .line 178
    move-result-wide v5

    .line 179
    move v12, v13

    .line 180
    move-wide/from16 p2, v14

    .line 181
    .line 182
    iget-wide v13, v2, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->previousHandlePosition:J

    .line 183
    .line 184
    and-long v19, v13, v27

    .line 185
    .line 186
    cmp-long v15, v19, v16

    .line 187
    .line 188
    if-nez v15, :cond_5

    .line 189
    .line 190
    move/from16 p2, v3

    .line 191
    .line 192
    move v15, v4

    .line 193
    move-wide/from16 v3, v16

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_5
    move v15, v4

    .line 197
    move-wide/from16 v32, p2

    .line 198
    .line 199
    move/from16 p2, v3

    .line 200
    .line 201
    move-wide/from16 v3, v32

    .line 202
    .line 203
    invoke-static {v13, v14, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    .line 204
    .line 205
    .line 206
    move-result-wide v3

    .line 207
    :goto_5
    iget-wide v13, v8, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->selectableId:J

    .line 208
    .line 209
    move/from16 p3, v12

    .line 210
    .line 211
    move-wide/from16 v22, v13

    .line 212
    .line 213
    iget-wide v12, v10, Landroidx/compose/ui/text/TextLayoutResult;->size:J

    .line 214
    .line 215
    move-object/from16 p4, v9

    .line 216
    .line 217
    const/16 p5, 0x20

    .line 218
    .line 219
    shr-long v8, v12, p5

    .line 220
    .line 221
    long-to-int v8, v8

    .line 222
    int-to-float v8, v8

    .line 223
    const-wide v19, 0xffffffffL

    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    and-long v12, v12, v19

    .line 229
    .line 230
    long-to-int v9, v12

    .line 231
    int-to-float v9, v9

    .line 232
    shr-long v12, v5, p5

    .line 233
    .line 234
    long-to-int v12, v12

    .line 235
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    const/4 v14, 0x0

    .line 240
    cmpg-float v13, v13, v14

    .line 241
    .line 242
    if-gez v13, :cond_6

    .line 243
    .line 244
    sget-object v8, Landroidx/compose/foundation/text/selection/Direction;->BEFORE:Landroidx/compose/foundation/text/selection/Direction;

    .line 245
    .line 246
    goto :goto_6

    .line 247
    :cond_6
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 248
    .line 249
    .line 250
    move-result v12

    .line 251
    cmpl-float v8, v12, v8

    .line 252
    .line 253
    if-lez v8, :cond_7

    .line 254
    .line 255
    sget-object v8, Landroidx/compose/foundation/text/selection/Direction;->AFTER:Landroidx/compose/foundation/text/selection/Direction;

    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_7
    sget-object v8, Landroidx/compose/foundation/text/selection/Direction;->ON:Landroidx/compose/foundation/text/selection/Direction;

    .line 259
    .line 260
    :goto_6
    and-long v12, v5, v19

    .line 261
    .line 262
    long-to-int v12, v12

    .line 263
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 264
    .line 265
    .line 266
    move-result v13

    .line 267
    cmpg-float v13, v13, v14

    .line 268
    .line 269
    if-gez v13, :cond_8

    .line 270
    .line 271
    sget-object v9, Landroidx/compose/foundation/text/selection/Direction;->BEFORE:Landroidx/compose/foundation/text/selection/Direction;

    .line 272
    .line 273
    :goto_7
    move-object/from16 v20, v9

    .line 274
    .line 275
    goto :goto_8

    .line 276
    :cond_8
    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 277
    .line 278
    .line 279
    move-result v12

    .line 280
    cmpl-float v9, v12, v9

    .line 281
    .line 282
    if-lez v9, :cond_9

    .line 283
    .line 284
    sget-object v9, Landroidx/compose/foundation/text/selection/Direction;->AFTER:Landroidx/compose/foundation/text/selection/Direction;

    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_9
    sget-object v9, Landroidx/compose/foundation/text/selection/Direction;->ON:Landroidx/compose/foundation/text/selection/Direction;

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :goto_8
    iget-boolean v9, v2, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->isStartHandle:Z

    .line 291
    .line 292
    iget-object v12, v2, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->previousSelection:Landroidx/compose/foundation/text/selection/Selection;

    .line 293
    .line 294
    if-eqz v9, :cond_b

    .line 295
    .line 296
    if-eqz v12, :cond_a

    .line 297
    .line 298
    iget-object v13, v12, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 299
    .line 300
    move-object/from16 v24, v13

    .line 301
    .line 302
    :goto_9
    move-object/from16 v21, v2

    .line 303
    .line 304
    move-object/from16 v19, v8

    .line 305
    .line 306
    goto :goto_a

    .line 307
    :cond_a
    move-object/from16 v24, v18

    .line 308
    .line 309
    goto :goto_9

    .line 310
    :goto_a
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->appendSelectableInfo_Parwq6A$otherDirection(Landroidx/compose/foundation/text/selection/Direction;Landroidx/compose/foundation/text/selection/Direction;Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Direction;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    move-object/from16 v31, v1

    .line 315
    .line 316
    move-object v1, v8

    .line 317
    move-object/from16 v30, v11

    .line 318
    .line 319
    move/from16 p5, v15

    .line 320
    .line 321
    move-object/from16 v2, v19

    .line 322
    .line 323
    move-object/from16 v13, v20

    .line 324
    .line 325
    move-object v15, v13

    .line 326
    move-object v11, v1

    .line 327
    move/from16 v19, v9

    .line 328
    .line 329
    move-object v9, v2

    .line 330
    :goto_b
    move-object/from16 v14, v21

    .line 331
    .line 332
    goto :goto_e

    .line 333
    :cond_b
    move-object/from16 v19, v8

    .line 334
    .line 335
    if-eqz v12, :cond_c

    .line 336
    .line 337
    iget-object v8, v12, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 338
    .line 339
    move-object/from16 v24, v8

    .line 340
    .line 341
    :goto_c
    move-object/from16 v21, v2

    .line 342
    .line 343
    goto :goto_d

    .line 344
    :cond_c
    move-object/from16 v24, v18

    .line 345
    .line 346
    goto :goto_c

    .line 347
    :goto_d
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->appendSelectableInfo_Parwq6A$otherDirection(Landroidx/compose/foundation/text/selection/Direction;Landroidx/compose/foundation/text/selection/Direction;Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Direction;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    move-object/from16 v2, v19

    .line 352
    .line 353
    move-object/from16 v13, v20

    .line 354
    .line 355
    move-object/from16 v31, v1

    .line 356
    .line 357
    move/from16 v19, v9

    .line 358
    .line 359
    move-object/from16 v30, v11

    .line 360
    .line 361
    move-object v1, v13

    .line 362
    move/from16 p5, v15

    .line 363
    .line 364
    move-object v11, v2

    .line 365
    move-object v9, v8

    .line 366
    move-object v15, v9

    .line 367
    goto :goto_b

    .line 368
    :goto_e
    invoke-static {v2, v13}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->resolve2dDirection(Landroidx/compose/foundation/text/selection/Direction;Landroidx/compose/foundation/text/selection/Direction;)Landroidx/compose/foundation/text/selection/Direction;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    sget-object v13, Landroidx/compose/foundation/text/selection/Direction;->ON:Landroidx/compose/foundation/text/selection/Direction;

    .line 373
    .line 374
    if-eq v2, v13, :cond_d

    .line 375
    .line 376
    if-eq v2, v8, :cond_16

    .line 377
    .line 378
    :cond_d
    iget-object v2, v10, Landroidx/compose/ui/text/TextLayoutResult;->layoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 379
    .line 380
    iget-object v2, v2, Landroidx/compose/ui/text/TextLayoutInput;->text:Landroidx/compose/ui/text/AnnotatedString;

    .line 381
    .line 382
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    iget-object v8, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->selectableIdOrderingComparator:Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;

    .line 389
    .line 390
    if-eqz v19, :cond_11

    .line 391
    .line 392
    invoke-static {v5, v6, v10}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->getOffsetForPosition-3MmeM6k(JLandroidx/compose/ui/text/TextLayoutResult;)I

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-eqz v12, :cond_10

    .line 397
    .line 398
    iget-object v6, v12, Landroidx/compose/foundation/text/selection/Selection;->end:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 399
    .line 400
    if-eqz v6, :cond_10

    .line 401
    .line 402
    iget-wide v12, v6, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    .line 403
    .line 404
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 405
    .line 406
    .line 407
    move-result-object v12

    .line 408
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 409
    .line 410
    .line 411
    move-result-object v13

    .line 412
    invoke-virtual {v8, v12, v13}, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 413
    .line 414
    .line 415
    move-result v8

    .line 416
    if-gez v8, :cond_e

    .line 417
    .line 418
    move/from16 v2, v29

    .line 419
    .line 420
    goto :goto_f

    .line 421
    :cond_e
    if-lez v8, :cond_f

    .line 422
    .line 423
    goto :goto_f

    .line 424
    :cond_f
    iget v2, v6, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 425
    .line 426
    goto :goto_f

    .line 427
    :cond_10
    move v2, v5

    .line 428
    :goto_f
    move/from16 v24, v2

    .line 429
    .line 430
    goto :goto_11

    .line 431
    :cond_11
    invoke-static {v5, v6, v10}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->getOffsetForPosition-3MmeM6k(JLandroidx/compose/ui/text/TextLayoutResult;)I

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    if-eqz v12, :cond_14

    .line 436
    .line 437
    iget-object v6, v12, Landroidx/compose/foundation/text/selection/Selection;->start:Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 438
    .line 439
    if-eqz v6, :cond_14

    .line 440
    .line 441
    iget-wide v12, v6, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->selectableId:J

    .line 442
    .line 443
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 444
    .line 445
    .line 446
    move-result-object v12

    .line 447
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 448
    .line 449
    .line 450
    move-result-object v13

    .line 451
    invoke-virtual {v8, v12, v13}, Lorg/wikipedia/feed/HomeViewModel$getPlacesCards$$inlined$sortedBy$1;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 452
    .line 453
    .line 454
    move-result v8

    .line 455
    if-gez v8, :cond_12

    .line 456
    .line 457
    move/from16 v2, v29

    .line 458
    .line 459
    goto :goto_10

    .line 460
    :cond_12
    if-lez v8, :cond_13

    .line 461
    .line 462
    goto :goto_10

    .line 463
    :cond_13
    iget v2, v6, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->offset:I

    .line 464
    .line 465
    goto :goto_10

    .line 466
    :cond_14
    move v2, v5

    .line 467
    :goto_10
    move/from16 v24, v5

    .line 468
    .line 469
    move v5, v2

    .line 470
    :goto_11
    and-long v12, v3, v27

    .line 471
    .line 472
    cmp-long v2, v12, v16

    .line 473
    .line 474
    if-nez v2, :cond_15

    .line 475
    .line 476
    const/16 v25, -0x1

    .line 477
    .line 478
    goto :goto_12

    .line 479
    :cond_15
    invoke-static {v3, v4, v10}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->getOffsetForPosition-3MmeM6k(JLandroidx/compose/ui/text/TextLayoutResult;)I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    move/from16 v25, v2

    .line 484
    .line 485
    :goto_12
    iget v2, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->currentSlot:I

    .line 486
    .line 487
    add-int/lit8 v2, v2, 0x2

    .line 488
    .line 489
    iput v2, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->currentSlot:I

    .line 490
    .line 491
    new-instance v19, Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 492
    .line 493
    move-object/from16 v26, v10

    .line 494
    .line 495
    move-wide/from16 v20, v22

    .line 496
    .line 497
    move/from16 v22, v2

    .line 498
    .line 499
    move/from16 v23, v5

    .line 500
    .line 501
    invoke-direct/range {v19 .. v26}, Landroidx/compose/foundation/text/selection/SelectableInfo;-><init>(JIIIILandroidx/compose/ui/text/TextLayoutResult;)V

    .line 502
    .line 503
    .line 504
    move-object/from16 v4, v19

    .line 505
    .line 506
    move-wide/from16 v2, v20

    .line 507
    .line 508
    iget v5, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->startSlot:I

    .line 509
    .line 510
    invoke-virtual {v14, v5, v9, v15}, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->updateSlot(ILandroidx/compose/foundation/text/selection/Direction;Landroidx/compose/foundation/text/selection/Direction;)I

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    iput v5, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->startSlot:I

    .line 515
    .line 516
    iget v5, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->endSlot:I

    .line 517
    .line 518
    invoke-virtual {v14, v5, v11, v1}, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->updateSlot(ILandroidx/compose/foundation/text/selection/Direction;Landroidx/compose/foundation/text/selection/Direction;)I

    .line 519
    .line 520
    .line 521
    move-result v1

    .line 522
    iput v1, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->endSlot:I

    .line 523
    .line 524
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    move-object/from16 v9, p4

    .line 529
    .line 530
    invoke-virtual {v9, v2, v3, v1}, Landroidx/collection/MutableLongIntMap;->set(JI)V

    .line 531
    .line 532
    .line 533
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    :cond_16
    :goto_13
    add-int/lit8 v4, p5, 0x1

    .line 537
    .line 538
    move/from16 v3, p2

    .line 539
    .line 540
    move/from16 v13, p3

    .line 541
    .line 542
    move-object v2, v14

    .line 543
    move-wide/from16 v14, v27

    .line 544
    .line 545
    move-object/from16 v11, v30

    .line 546
    .line 547
    move-object/from16 v1, v31

    .line 548
    .line 549
    goto/16 :goto_3

    .line 550
    .line 551
    :cond_17
    move-object/from16 v31, v1

    .line 552
    .line 553
    move-object v14, v2

    .line 554
    move-object v9, v6

    .line 555
    move/from16 p3, v13

    .line 556
    .line 557
    const/16 v29, 0x0

    .line 558
    .line 559
    iget v1, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->currentSlot:I

    .line 560
    .line 561
    add-int/lit8 v1, v1, 0x1

    .line 562
    .line 563
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    if-eqz v2, :cond_1d

    .line 568
    .line 569
    move/from16 v12, p3

    .line 570
    .line 571
    if-eq v2, v12, :cond_1a

    .line 572
    .line 573
    new-instance v19, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;

    .line 574
    .line 575
    iget v2, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->startSlot:I

    .line 576
    .line 577
    const/4 v3, -0x1

    .line 578
    if-ne v2, v3, :cond_18

    .line 579
    .line 580
    move/from16 v22, v1

    .line 581
    .line 582
    goto :goto_14

    .line 583
    :cond_18
    move/from16 v22, v2

    .line 584
    .line 585
    :goto_14
    iget v2, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->endSlot:I

    .line 586
    .line 587
    if-ne v2, v3, :cond_19

    .line 588
    .line 589
    move/from16 v23, v1

    .line 590
    .line 591
    goto :goto_15

    .line 592
    :cond_19
    move/from16 v23, v2

    .line 593
    .line 594
    :goto_15
    iget-boolean v1, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->isStartHandle:Z

    .line 595
    .line 596
    iget-object v2, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->previousSelection:Landroidx/compose/foundation/text/selection/Selection;

    .line 597
    .line 598
    move/from16 v24, v1

    .line 599
    .line 600
    move-object/from16 v25, v2

    .line 601
    .line 602
    move-object/from16 v21, v7

    .line 603
    .line 604
    move-object/from16 v20, v9

    .line 605
    .line 606
    invoke-direct/range {v19 .. v25}, Landroidx/compose/foundation/text/selection/MultiSelectionLayout;-><init>(Landroidx/collection/MutableLongIntMap;Ljava/util/ArrayList;IIZLandroidx/compose/foundation/text/selection/Selection;)V

    .line 607
    .line 608
    .line 609
    move-object/from16 v4, v19

    .line 610
    .line 611
    goto :goto_18

    .line 612
    :cond_1a
    move-object/from16 v21, v7

    .line 613
    .line 614
    const/4 v3, -0x1

    .line 615
    invoke-static/range {v21 .. v21}, Lkotlin/collections/CollectionsKt;->single(Ljava/util/List;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    move-object v9, v2

    .line 620
    check-cast v9, Landroidx/compose/foundation/text/selection/SelectableInfo;

    .line 621
    .line 622
    iget v2, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->startSlot:I

    .line 623
    .line 624
    if-ne v2, v3, :cond_1b

    .line 625
    .line 626
    move v6, v1

    .line 627
    goto :goto_16

    .line 628
    :cond_1b
    move v6, v2

    .line 629
    :goto_16
    iget v2, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->endSlot:I

    .line 630
    .line 631
    if-ne v2, v3, :cond_1c

    .line 632
    .line 633
    move v7, v1

    .line 634
    goto :goto_17

    .line 635
    :cond_1c
    move v7, v2

    .line 636
    :goto_17
    new-instance v4, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;

    .line 637
    .line 638
    iget-boolean v5, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->isStartHandle:Z

    .line 639
    .line 640
    iget-object v8, v14, Landroidx/compose/foundation/text/selection/SelectionLayoutBuilder;->previousSelection:Landroidx/compose/foundation/text/selection/Selection;

    .line 641
    .line 642
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/text/selection/SingleSelectionLayout;-><init>(ZIILandroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/SelectableInfo;)V

    .line 643
    .line 644
    .line 645
    goto :goto_18

    .line 646
    :cond_1d
    move-object/from16 v4, v18

    .line 647
    .line 648
    :goto_18
    if-nez v4, :cond_1e

    .line 649
    .line 650
    goto :goto_19

    .line 651
    :cond_1e
    iget-object v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 652
    .line 653
    invoke-interface {v4, v1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->shouldRecomputeSelection(Landroidx/compose/foundation/text/selection/SelectionLayout;)Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-nez v1, :cond_1f

    .line 658
    .line 659
    :goto_19
    return v29

    .line 660
    :cond_1f
    move-object/from16 v1, p6

    .line 661
    .line 662
    invoke-virtual {v1, v4}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$$ExternalSyntheticLambda0;->adjust(Landroidx/compose/foundation/text/selection/SelectionLayout;)Landroidx/compose/foundation/text/selection/Selection;

    .line 663
    .line 664
    .line 665
    move-result-object v1

    .line 666
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    if-nez v2, :cond_23

    .line 675
    .line 676
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    .line 677
    .line 678
    .line 679
    move-result v2

    .line 680
    if-eqz v2, :cond_21

    .line 681
    .line 682
    move-object/from16 v2, v31

    .line 683
    .line 684
    iget-object v3, v2, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->_selectables:Ljava/util/ArrayList;

    .line 685
    .line 686
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 687
    .line 688
    .line 689
    move-result v5

    .line 690
    move/from16 v6, v29

    .line 691
    .line 692
    :goto_1a
    if-ge v6, v5, :cond_22

    .line 693
    .line 694
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v7

    .line 698
    check-cast v7, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;

    .line 699
    .line 700
    invoke-virtual {v7}, Landroidx/compose/foundation/text/selection/MultiWidgetSelectionDelegate;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 701
    .line 702
    .line 703
    move-result-object v7

    .line 704
    iget-object v7, v7, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 705
    .line 706
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 707
    .line 708
    .line 709
    move-result v7

    .line 710
    if-lez v7, :cond_20

    .line 711
    .line 712
    iget-object v3, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->hapticFeedBack:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    .line 713
    .line 714
    if-eqz v3, :cond_22

    .line 715
    .line 716
    const/16 v5, 0x9

    .line 717
    .line 718
    check-cast v3, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;

    .line 719
    .line 720
    invoke-virtual {v3, v5}, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 721
    .line 722
    .line 723
    goto :goto_1b

    .line 724
    :cond_20
    add-int/lit8 v6, v6, 0x1

    .line 725
    .line 726
    goto :goto_1a

    .line 727
    :cond_21
    move-object/from16 v2, v31

    .line 728
    .line 729
    :cond_22
    :goto_1b
    invoke-interface {v4, v1}, Landroidx/compose/foundation/text/selection/SelectionLayout;->createSubSelections(Landroidx/compose/foundation/text/selection/Selection;)Landroidx/collection/MutableLongObjectMap;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    iget-object v2, v2, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->subselections$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 734
    .line 735
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    iget-object v2, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->onSelectionChange:Lkotlin/jvm/functions/Function1;

    .line 739
    .line 740
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move/from16 v1, v29

    .line 744
    .line 745
    iput-boolean v1, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->isLongPressOrClickSelection:Z

    .line 746
    .line 747
    :cond_23
    iput-object v4, v0, Landroidx/compose/foundation/text/selection/SelectionManager;->previousSelectionLayout:Landroidx/compose/foundation/text/selection/SelectionLayout;

    .line 748
    .line 749
    const/4 v12, 0x1

    .line 750
    return v12
.end method

.method public final updateSelectionToolbar()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->hasFocus$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->showToolbar:Z

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->toolbarRequester:Landroidx/cardview/widget/CardView$1;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->isInTouchMode()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionManager;->derivedContentRect$delegate:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroidx/compose/ui/geometry/Rect;

    .line 35
    .line 36
    if-nez p0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$1;->show()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    iget-object p0, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;

    .line 46
    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->textToolbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuToolbarHandlerNode;->textToolbarJob:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 59
    .line 60
    :cond_4
    :goto_0
    return-void
.end method
