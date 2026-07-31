.class public final Landroidx/compose/runtime/GapComposer;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/runtime/Composer;


# instance fields
.field public _compositionData:Landroidx/compose/runtime/GapCompositionDataImpl;

.field public final abandonSet:Landroidx/collection/MutableSetWrapper;

.field public final applier:Lorg/acra/util/ProcessFinisher;

.field public final applyCoroutineContext:Lkotlin/coroutines/CoroutineContext;

.field public final changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

.field public final changes:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public childrenComposing:I

.field public compositeKeyHashCode:J

.field public final composition:Landroidx/compose/runtime/CompositionImpl;

.field public compositionToken:I

.field public deferredChanges:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public final derivedStateObserver:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

.field public final entersStack:Landroidx/compose/runtime/IntStack;

.field public final errorContext:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

.field public forceRecomposeScopes:Z

.field public groupNodeCount:I

.field public insertAnchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

.field public insertFixups:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

.field public insertTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

.field public inserting:Z

.field public final invalidateStack:Ljava/util/ArrayList;

.field public final invalidations:Ljava/util/ArrayList;

.field public isComposing:Z

.field public final lateChanges:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

.field public nodeCountOverrides:[I

.field public nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

.field public nodeExpected:Z

.field public nodeIndex:I

.field public final observerHolder:Landroidx/appcompat/widget/PopupMenu$1;

.field public final parentContext:Landroidx/compose/runtime/CompositionContext;

.field public final parentStateStack:Landroidx/compose/runtime/IntStack;

.field public pending:Landroidx/compose/runtime/GapPending;

.field public final pendingStack:Ljava/util/ArrayList;

.field public providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

.field public providerUpdates:Landroidx/collection/MutableIntObjectMap;

.field public providersInvalid:Z

.field public final providersInvalidStack:Landroidx/compose/runtime/IntStack;

.field public rGroupIndex:I

.field public reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

.field public reusing:Z

.field public reusingGroup:I

.field public rootProvider:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

.field public shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

.field public final slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

.field public sourceMarkersEnabled:Z

.field public writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

.field public writerHasAProvider:Z


# direct methods
.method public constructor <init>(Lorg/acra/util/ProcessFinisher;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Landroidx/collection/MutableSetWrapper;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;Landroidx/appcompat/widget/PopupMenu$1;Landroidx/compose/runtime/CompositionImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->applier:Lorg/acra/util/ProcessFinisher;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/runtime/GapComposer;->abandonSet:Landroidx/collection/MutableSetWrapper;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/runtime/GapComposer;->changes:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/runtime/GapComposer;->lateChanges:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/runtime/GapComposer;->observerHolder:Landroidx/appcompat/widget/PopupMenu$1;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/runtime/GapComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 19
    .line 20
    new-instance p1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->pendingStack:Ljava/util/ArrayList;

    .line 26
    .line 27
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 28
    .line 29
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 40
    .line 41
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 42
    .line 43
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->entersStack:Landroidx/compose/runtime/IntStack;

    .line 47
    .line 48
    sget-object p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->Empty:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 49
    .line 50
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->rootProvider:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 51
    .line 52
    new-instance p1, Landroidx/compose/runtime/IntStack;

    .line 53
    .line 54
    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 58
    .line 59
    const/4 p1, -0x1

    .line 60
    iput p1, p0, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 61
    .line 62
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const/4 p4, 0x0

    .line 67
    const/4 p6, 0x1

    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move p1, p4

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    move p1, p6

    .line 80
    :goto_1
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->sourceMarkersEnabled:Z

    .line 81
    .line 82
    new-instance p1, Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    .line 83
    .line 84
    invoke-direct {p1, p0, p4}, Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->derivedStateObserver:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    .line 88
    .line 89
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->invalidateStack:Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-virtual {p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 101
    .line 102
    .line 103
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 104
    .line 105
    new-instance p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 106
    .line 107
    invoke-direct {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime()Z

    .line 111
    .line 112
    .line 113
    move-result p3

    .line 114
    if-eqz p3, :cond_2

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->collectSourceInformation()V

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime()Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-eqz p3, :cond_3

    .line 124
    .line 125
    new-instance p3, Landroidx/collection/MutableIntObjectMap;

    .line 126
    .line 127
    invoke-direct {p3}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object p3, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    .line 131
    .line 132
    :cond_3
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->insertTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openWriter()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1, p6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    .line 139
    .line 140
    .line 141
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 142
    .line 143
    new-instance p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 144
    .line 145
    invoke-direct {p1, p0, p5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;-><init>(Landroidx/compose/runtime/GapComposer;Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;)V

    .line 146
    .line 147
    .line 148
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 149
    .line 150
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->insertTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :try_start_0
    invoke-virtual {p1, p4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 157
    .line 158
    .line 159
    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 161
    .line 162
    .line 163
    iput-object p3, p0, Landroidx/compose/runtime/GapComposer;->insertAnchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 164
    .line 165
    new-instance p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 166
    .line 167
    invoke-direct {p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;-><init>()V

    .line 168
    .line 169
    .line 170
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->insertFixups:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 171
    .line 172
    new-instance p1, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 173
    .line 174
    invoke-direct {p1, p0}, Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;-><init>(Landroidx/compose/runtime/GapComposer;)V

    .line 175
    .line 176
    .line 177
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->errorContext:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 178
    .line 179
    invoke-virtual {p2}, Landroidx/compose/runtime/CompositionContext;->getEffectCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    if-eqz p2, :cond_4

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_4
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 191
    .line 192
    :goto_2
    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->applyCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 197
    .line 198
    return-void

    .line 199
    :catchall_0
    move-exception p0

    .line 200
    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 201
    .line 202
    .line 203
    throw p0
.end method

.method public static final reportFreeMovableContent$movableContentReferenceFor(Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/MovableContentStateReference;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 10
    .line 11
    invoke-virtual {v1, v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x78cc281

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-ne v0, v2, :cond_3

    .line 20
    .line 21
    instance-of v0, v1, Landroidx/compose/runtime/MovableContent;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->containsMark(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/GapComposer;->reportFreeMovableContent$movableContentReferenceFor$traverseGroups(Landroidx/compose/runtime/GapComposer;Ljava/util/ArrayList;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    move-object v12, v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move-object v12, v3

    .line 50
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 51
    .line 52
    iget-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-object v5, v0

    .line 62
    check-cast v5, Landroidx/compose/runtime/MovableContent;

    .line 63
    .line 64
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, p1, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupGet(II)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 78
    .line 79
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 80
    .line 81
    mul-int/lit8 v1, p1, 0x5

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x3

    .line 84
    .line 85
    aget v0, v0, v1

    .line 86
    .line 87
    add-int/2addr v0, p1

    .line 88
    new-instance v10, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-static {p1, v1}, Landroidx/compose/runtime/Updater;->findLocation(ILjava/util/List;)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-gez v2, :cond_1

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x1

    .line 102
    .line 103
    neg-int v2, v2

    .line 104
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-ge v2, v3, :cond_2

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Landroidx/compose/runtime/Invalidation;

    .line 115
    .line 116
    iget v4, v3, Landroidx/compose/runtime/Invalidation;->location:I

    .line 117
    .line 118
    if-ge v4, v0, :cond_2

    .line 119
    .line 120
    iget-object v4, v3, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 121
    .line 122
    iget-object v3, v3, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 123
    .line 124
    new-instance v7, Lkotlin/Pair;

    .line 125
    .line 126
    invoke-direct {v7, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    new-instance v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 136
    .line 137
    iget-object v7, p0, Landroidx/compose/runtime/GapComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 138
    .line 139
    iget-object v8, p0, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 140
    .line 141
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope(I)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    invoke-direct/range {v4 .. v12}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;Ljava/util/List;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/util/ArrayList;)V

    .line 146
    .line 147
    .line 148
    return-object v4

    .line 149
    :cond_3
    return-object v3
.end method

.method public static final reportFreeMovableContent$movableContentReferenceFor$traverseGroups(Landroidx/compose/runtime/GapComposer;Ljava/util/ArrayList;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 4
    .line 5
    mul-int/lit8 v1, p2, 0x5

    .line 6
    .line 7
    add-int/lit8 v1, v1, 0x3

    .line 8
    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    add-int/2addr v0, p2

    .line 12
    add-int/lit8 p2, p2, 0x1

    .line 13
    .line 14
    :goto_0
    if-ge p2, v0, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hasMark(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {p0, p2}, Landroidx/compose/runtime/GapComposer;->reportFreeMovableContent$movableContentReferenceFor(Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/MovableContentStateReference;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->containsMark(I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/GapComposer;->reportFreeMovableContent$movableContentReferenceFor$traverseGroups(Landroidx/compose/runtime/GapComposer;Ljava/util/ArrayList;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 48
    .line 49
    mul-int/lit8 v2, p2, 0x5

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x3

    .line 52
    .line 53
    aget v1, v1, v2

    .line 54
    .line 55
    add-int/2addr p2, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method public static final reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/GapComposer;IIZI)I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 10
    .line 11
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hasMark(I)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eqz v5, :cond_11

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupKey(I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    iget-object v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 23
    .line 24
    invoke-virtual {v4, v8, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    const v9, 0x78cc281

    .line 29
    .line 30
    .line 31
    if-ne v5, v9, :cond_4

    .line 32
    .line 33
    instance-of v9, v8, Landroidx/compose/runtime/MovableContent;

    .line 34
    .line 35
    if-eqz v9, :cond_4

    .line 36
    .line 37
    invoke-static {v0, v2}, Landroidx/compose/runtime/GapComposer;->reportFreeMovableContent$movableContentReferenceFor(Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/MovableContentStateReference;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 44
    .line 45
    invoke-virtual {v8, v5}, Landroidx/compose/runtime/CompositionContext;->deletedMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 46
    .line 47
    .line 48
    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 49
    .line 50
    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    .line 51
    .line 52
    .line 53
    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 54
    .line 55
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 56
    .line 57
    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 58
    .line 59
    iget-object v8, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 60
    .line 61
    iget-object v8, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 62
    .line 63
    sget-object v11, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ReleaseMovableGroupAtCurrent;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ReleaseMovableGroupAtCurrent;

    .line 64
    .line 65
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v8, v9, v10, v5}, Lokio/Okio;->setObjects-JOGOPjs(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    if-eqz p3, :cond_3

    .line 72
    .line 73
    if-eq v2, v1, :cond_3

    .line 74
    .line 75
    iget-object v0, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/GapComposer;

    .line 84
    .line 85
    iget-object v4, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 86
    .line 87
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_1

    .line 92
    .line 93
    const/4 v7, 0x1

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->nodeCount(I)I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    :goto_0
    if-lez v7, :cond_2

    .line 102
    .line 103
    invoke-virtual {v0, v3, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 104
    .line 105
    .line 106
    :cond_2
    return v6

    .line 107
    :cond_3
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->nodeCount(I)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    return v0

    .line 112
    :cond_4
    const/16 v1, 0xce

    .line 113
    .line 114
    if-ne v5, v1, :cond_f

    .line 115
    .line 116
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->reference:Landroidx/compose/runtime/OpaqueKey;

    .line 117
    .line 118
    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_f

    .line 123
    .line 124
    invoke-virtual {v4, v2, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupGet(II)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    instance-of v3, v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 129
    .line 130
    const/4 v5, 0x0

    .line 131
    if-eqz v3, :cond_5

    .line 132
    .line 133
    check-cast v1, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    move-object v1, v5

    .line 137
    :goto_1
    if-eqz v1, :cond_6

    .line 138
    .line 139
    iget-object v1, v1, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    move-object v1, v5

    .line 143
    :goto_2
    instance-of v3, v1, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 144
    .line 145
    if-eqz v3, :cond_7

    .line 146
    .line 147
    move-object v5, v1

    .line 148
    check-cast v5, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;

    .line 149
    .line 150
    :cond_7
    if-eqz v5, :cond_e

    .line 151
    .line 152
    iget-object v1, v5, Landroidx/compose/runtime/GapComposer$CompositionContextHolder;->ref:Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 153
    .line 154
    iget-object v1, v1, Landroidx/compose/runtime/GapComposer$CompositionContextImpl;->composers:Landroidx/collection/MutableScatterSet;

    .line 155
    .line 156
    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 157
    .line 158
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 159
    .line 160
    array-length v5, v1

    .line 161
    add-int/lit8 v5, v5, -0x2

    .line 162
    .line 163
    if-ltz v5, :cond_e

    .line 164
    .line 165
    move v8, v6

    .line 166
    :goto_3
    aget-wide v9, v1, v8

    .line 167
    .line 168
    not-long v11, v9

    .line 169
    const/4 v13, 0x7

    .line 170
    shl-long/2addr v11, v13

    .line 171
    and-long/2addr v11, v9

    .line 172
    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    and-long/2addr v11, v13

    .line 178
    cmp-long v11, v11, v13

    .line 179
    .line 180
    if-eqz v11, :cond_d

    .line 181
    .line 182
    sub-int v11, v8, v5

    .line 183
    .line 184
    not-int v11, v11

    .line 185
    ushr-int/lit8 v11, v11, 0x1f

    .line 186
    .line 187
    const/16 v12, 0x8

    .line 188
    .line 189
    rsub-int/lit8 v11, v11, 0x8

    .line 190
    .line 191
    move v13, v6

    .line 192
    :goto_4
    if-ge v13, v11, :cond_c

    .line 193
    .line 194
    const-wide/16 v14, 0xff

    .line 195
    .line 196
    and-long/2addr v14, v9

    .line 197
    const-wide/16 v16, 0x80

    .line 198
    .line 199
    cmp-long v14, v14, v16

    .line 200
    .line 201
    if-gez v14, :cond_b

    .line 202
    .line 203
    shl-int/lit8 v14, v8, 0x3

    .line 204
    .line 205
    add-int/2addr v14, v13

    .line 206
    aget-object v14, v3, v14

    .line 207
    .line 208
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 209
    .line 210
    iget-object v15, v14, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 211
    .line 212
    const/16 v16, 0x1

    .line 213
    .line 214
    iget v7, v15, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groupsSize:I

    .line 215
    .line 216
    if-lez v7, :cond_a

    .line 217
    .line 218
    iget-object v7, v15, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groups:[I

    .line 219
    .line 220
    aget v7, v7, v16

    .line 221
    .line 222
    const/high16 v15, 0x4000000

    .line 223
    .line 224
    and-int/2addr v7, v15

    .line 225
    if-eqz v7, :cond_a

    .line 226
    .line 227
    iget-object v7, v14, Landroidx/compose/runtime/GapComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 228
    .line 229
    iget-object v15, v7, Landroidx/compose/runtime/CompositionImpl;->lock:Ljava/lang/Object;

    .line 230
    .line 231
    monitor-enter v15

    .line 232
    :try_start_0
    invoke-virtual {v7}, Landroidx/compose/runtime/CompositionImpl;->drainPendingModificationsOutOfBandLocked()V

    .line 233
    .line 234
    .line 235
    move/from16 p1, v12

    .line 236
    .line 237
    iget-object v12, v7, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 238
    .line 239
    invoke-static {}, Lorg/jsoup/Jsoup;->constructor-impl$default()Landroidx/collection/MutableScatterMap;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    iput-object v6, v7, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 244
    .line 245
    :try_start_1
    iget-object v6, v7, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/GapComposer;

    .line 246
    .line 247
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->updateComposerInvalidations-RY85e9Y$runtime(Landroidx/collection/MutableScatterMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 248
    .line 249
    .line 250
    monitor-exit v15

    .line 251
    new-instance v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 252
    .line 253
    invoke-direct {v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    .line 254
    .line 255
    .line 256
    iput-object v6, v14, Landroidx/compose/runtime/GapComposer;->deferredChanges:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 257
    .line 258
    iget-object v7, v14, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 259
    .line 260
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    :try_start_2
    iput-object v7, v14, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 265
    .line 266
    iget-object v12, v14, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 267
    .line 268
    iget-object v15, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    .line 270
    :try_start_3
    iput-object v6, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 271
    .line 272
    const/4 v6, 0x0

    .line 273
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->reportFreeMovableContent(I)V

    .line 274
    .line 275
    .line 276
    iget-object v6, v14, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 277
    .line 278
    invoke-virtual {v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 279
    .line 280
    .line 281
    move-object/from16 p3, v1

    .line 282
    .line 283
    iget-boolean v1, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 284
    .line 285
    if-eqz v1, :cond_8

    .line 286
    .line 287
    iget-object v1, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 288
    .line 289
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 290
    .line 291
    move-object/from16 p4, v3

    .line 292
    .line 293
    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;

    .line 294
    .line 295
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 296
    .line 297
    .line 298
    iget-boolean v1, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 299
    .line 300
    if-eqz v1, :cond_9

    .line 301
    .line 302
    const/4 v1, 0x0

    .line 303
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 307
    .line 308
    .line 309
    iget-object v3, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 310
    .line 311
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 312
    .line 313
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;

    .line 314
    .line 315
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 316
    .line 317
    .line 318
    const/4 v1, 0x0

    .line 319
    iput-boolean v1, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->startedGroup:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 320
    .line 321
    goto :goto_5

    .line 322
    :cond_8
    move-object/from16 p4, v3

    .line 323
    .line 324
    :cond_9
    const/4 v1, 0x0

    .line 325
    :goto_5
    :try_start_4
    iput-object v15, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 326
    .line 327
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 328
    .line 329
    .line 330
    goto :goto_7

    .line 331
    :catchall_0
    move-exception v0

    .line 332
    goto :goto_6

    .line 333
    :catchall_1
    move-exception v0

    .line 334
    :try_start_5
    iput-object v15, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 335
    .line 336
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 337
    :goto_6
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 338
    .line 339
    .line 340
    throw v0

    .line 341
    :catchall_2
    move-exception v0

    .line 342
    :try_start_6
    iput-object v12, v7, Landroidx/compose/runtime/CompositionImpl;->invalidations:Landroidx/collection/MutableScatterMap;

    .line 343
    .line 344
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 345
    :catchall_3
    move-exception v0

    .line 346
    monitor-exit v15

    .line 347
    throw v0

    .line 348
    :cond_a
    move-object/from16 p3, v1

    .line 349
    .line 350
    move-object/from16 p4, v3

    .line 351
    .line 352
    move v1, v6

    .line 353
    move/from16 p1, v12

    .line 354
    .line 355
    :goto_7
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 356
    .line 357
    iget-object v6, v14, Landroidx/compose/runtime/GapComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 358
    .line 359
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/CompositionContext;->reportRemovedComposition$runtime(Landroidx/compose/runtime/CompositionImpl;)V

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_b
    move-object/from16 p3, v1

    .line 364
    .line 365
    move-object/from16 p4, v3

    .line 366
    .line 367
    move v1, v6

    .line 368
    move/from16 p1, v12

    .line 369
    .line 370
    const/16 v16, 0x1

    .line 371
    .line 372
    :goto_8
    shr-long v9, v9, p1

    .line 373
    .line 374
    add-int/lit8 v13, v13, 0x1

    .line 375
    .line 376
    move/from16 v12, p1

    .line 377
    .line 378
    move-object/from16 v3, p4

    .line 379
    .line 380
    move v6, v1

    .line 381
    move-object/from16 v1, p3

    .line 382
    .line 383
    goto/16 :goto_4

    .line 384
    .line 385
    :cond_c
    move-object/from16 p3, v1

    .line 386
    .line 387
    move-object/from16 p4, v3

    .line 388
    .line 389
    move v1, v6

    .line 390
    move v3, v12

    .line 391
    const/16 v16, 0x1

    .line 392
    .line 393
    if-ne v11, v3, :cond_e

    .line 394
    .line 395
    goto :goto_9

    .line 396
    :cond_d
    move-object/from16 p3, v1

    .line 397
    .line 398
    move-object/from16 p4, v3

    .line 399
    .line 400
    move v1, v6

    .line 401
    const/16 v16, 0x1

    .line 402
    .line 403
    :goto_9
    if-eq v8, v5, :cond_e

    .line 404
    .line 405
    add-int/lit8 v8, v8, 0x1

    .line 406
    .line 407
    move-object/from16 v3, p4

    .line 408
    .line 409
    move v6, v1

    .line 410
    move-object/from16 v1, p3

    .line 411
    .line 412
    goto/16 :goto_3

    .line 413
    .line 414
    :cond_e
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->nodeCount(I)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    return v0

    .line 419
    :cond_f
    const/16 v16, 0x1

    .line 420
    .line 421
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    if-eqz v0, :cond_10

    .line 426
    .line 427
    goto/16 :goto_e

    .line 428
    .line 429
    :cond_10
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->nodeCount(I)I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    return v0

    .line 434
    :cond_11
    move/from16 v17, v6

    .line 435
    .line 436
    const/16 v16, 0x1

    .line 437
    .line 438
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->containsMark(I)Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-eqz v5, :cond_19

    .line 443
    .line 444
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 445
    .line 446
    mul-int/lit8 v6, v2, 0x5

    .line 447
    .line 448
    add-int/lit8 v6, v6, 0x3

    .line 449
    .line 450
    aget v5, v5, v6

    .line 451
    .line 452
    add-int/2addr v5, v2

    .line 453
    add-int/lit8 v6, v2, 0x1

    .line 454
    .line 455
    move/from16 v7, v17

    .line 456
    .line 457
    :goto_a
    if-ge v6, v5, :cond_17

    .line 458
    .line 459
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 460
    .line 461
    .line 462
    move-result v8

    .line 463
    if-eqz v8, :cond_12

    .line 464
    .line 465
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 466
    .line 467
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 468
    .line 469
    .line 470
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 471
    .line 472
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->node(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 477
    .line 478
    .line 479
    iget-object v9, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    :cond_12
    if-nez v8, :cond_14

    .line 485
    .line 486
    if-eqz p3, :cond_13

    .line 487
    .line 488
    goto :goto_b

    .line 489
    :cond_13
    move/from16 v9, v17

    .line 490
    .line 491
    goto :goto_c

    .line 492
    :cond_14
    :goto_b
    move/from16 v9, v16

    .line 493
    .line 494
    :goto_c
    if-eqz v8, :cond_15

    .line 495
    .line 496
    move/from16 v10, v17

    .line 497
    .line 498
    goto :goto_d

    .line 499
    :cond_15
    add-int v10, v3, v7

    .line 500
    .line 501
    :goto_d
    invoke-static {v0, v1, v6, v9, v10}, Landroidx/compose/runtime/GapComposer;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/GapComposer;IIZI)I

    .line 502
    .line 503
    .line 504
    move-result v9

    .line 505
    add-int/2addr v7, v9

    .line 506
    if-eqz v8, :cond_16

    .line 507
    .line 508
    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 509
    .line 510
    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 511
    .line 512
    .line 513
    iget-object v8, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 514
    .line 515
    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveUp()V

    .line 516
    .line 517
    .line 518
    :cond_16
    iget-object v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 519
    .line 520
    mul-int/lit8 v9, v6, 0x5

    .line 521
    .line 522
    add-int/lit8 v9, v9, 0x3

    .line 523
    .line 524
    aget v8, v8, v9

    .line 525
    .line 526
    add-int/2addr v6, v8

    .line 527
    goto :goto_a

    .line 528
    :cond_17
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    if-eqz v0, :cond_18

    .line 533
    .line 534
    goto :goto_e

    .line 535
    :cond_18
    return v7

    .line 536
    :cond_19
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    if-eqz v0, :cond_1a

    .line 541
    .line 542
    :goto_e
    return v16

    .line 543
    :cond_1a
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->nodeCount(I)I

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    return v0
.end method


# virtual methods
.method public final abortRoot()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->cleanUpCompose()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->pendingStack:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->entersStack:Landroidx/compose/runtime/IntStack;

    .line 15
    .line 16
    iput v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 19
    .line 20
    iput v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->insertFixups:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 26
    .line 27
    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->clear()V

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x0

    .line 38
    .line 39
    iput-wide v2, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 40
    .line 41
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->childrenComposing:I

    .line 42
    .line 43
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 46
    .line 47
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 48
    .line 49
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 50
    .line 51
    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 55
    .line 56
    iget-boolean v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->closed:Z

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 64
    .line 65
    iget-boolean v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->closed:Z

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->forceFreshInsertTable()V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public final apply(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->insertFixups:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 11
    .line 12
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v3, p1}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v2, p2}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 38
    .line 39
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateNode;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v3, p1, v2, p2}, Lokio/Okio;->setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final changed(F)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->nextSlot()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Float;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
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
    cmpg-float v0, p1, v0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public final changed(I)Z
    .locals 2

    .line 40
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 41
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changed(J)Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 37
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 38
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changed(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final changed(Z)Z
    .locals 2

    .line 30
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->nextSlot()Ljava/lang/Object;

    move-result-object v0

    .line 31
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 33
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final changedInstance(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->nextSlot()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    .line 8
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

.method public final cleanUpCompose()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 6
    .line 7
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    iput-wide v2, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 16
    .line 17
    iput-boolean v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 18
    .line 19
    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 20
    .line 21
    iput v1, v3, Landroidx/compose/runtime/IntStack;->tos:I

    .line 22
    .line 23
    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    iput-boolean v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 27
    .line 28
    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pendingUps:I

    .line 29
    .line 30
    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    const/4 v3, -0x1

    .line 36
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->removeFrom:I

    .line 37
    .line 38
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveFrom:I

    .line 39
    .line 40
    iput v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveTo:I

    .line 41
    .line 42
    iput v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->invalidateStack:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 50
    .line 51
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    .line 52
    .line 53
    return-void
.end method

.method public final consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final createNode(Lkotlin/jvm/functions/Function0;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 12
    .line 13
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const-string v1, "createNode() can only be called when inserting"

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    .line 23
    .line 24
    iget-object v2, v1, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 25
    .line 26
    iget v1, v1, Landroidx/compose/runtime/IntStack;->tos:I

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    sub-int/2addr v1, v3

    .line 30
    aget v1, v2, v1

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 33
    .line 34
    iget v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 35
    .line 36
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget v4, p0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 41
    .line 42
    add-int/2addr v4, v3

    .line 43
    iput v4, p0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->insertFixups:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 46
    .line 47
    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 48
    .line 49
    sget-object v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;->INSTANCE$1:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;

    .line 50
    .line 51
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v4, v0, p1}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgs:[I

    .line 58
    .line 59
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 60
    .line 61
    iget-object v6, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 62
    .line 63
    iget v7, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 64
    .line 65
    sub-int/2addr v7, v3

    .line 66
    aget-object v6, v6, v7

    .line 67
    .line 68
    iget v6, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 69
    .line 70
    sub-int/2addr v5, v6

    .line 71
    aput v1, p1, v5

    .line 72
    .line 73
    invoke-static {v4, v3, v2}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 77
    .line 78
    sget-object p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;->INSTANCE$2:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgs:[I

    .line 84
    .line 85
    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 86
    .line 87
    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 88
    .line 89
    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 90
    .line 91
    sub-int/2addr v6, v3

    .line 92
    aget-object v3, v5, v6

    .line 93
    .line 94
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 95
    .line 96
    sub-int/2addr v4, v3

    .line 97
    aput v1, p1, v4

    .line 98
    .line 99
    invoke-static {p0, v0, v2}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 1

    .line 133
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    if-eqz v0, :cond_0

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 135
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 136
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope(I)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object p0

    return-object p0
.end method

.method public final currentCompositionLocalScope(I)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    .line 4
    .line 5
    const/16 v2, 0xca

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->writerHasAProvider:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 14
    .line 15
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 16
    .line 17
    :goto_0
    if-lez v0, :cond_1

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupKey(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ne v3, v2, :cond_0

    .line 26
    .line 27
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 28
    .line 29
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupAux(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    check-cast p1, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 49
    .line 50
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 51
    .line 52
    return-object p1

    .line 53
    :cond_0
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 54
    .line 55
    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    .line 56
    .line 57
    invoke-virtual {v3, v4, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 63
    .line 64
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 65
    .line 66
    if-lez v0, :cond_5

    .line 67
    .line 68
    :goto_1
    if-lez p1, :cond_5

    .line 69
    .line 70
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupKey(I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-ne v0, v2, :cond_4

    .line 77
    .line 78
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 79
    .line 80
    iget-object v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 81
    .line 82
    invoke-virtual {v0, v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 93
    .line 94
    if-eqz v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 101
    .line 102
    if-nez v0, :cond_3

    .line 103
    .line 104
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 105
    .line 106
    iget-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 107
    .line 108
    invoke-virtual {v0, v1, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->aux([II)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-object v0, p1

    .line 116
    check-cast v0, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 117
    .line 118
    :cond_3
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 119
    .line 120
    return-object v0

    .line 121
    :cond_4
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    goto :goto_1

    .line 128
    :cond_5
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->rootProvider:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 129
    .line 130
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 131
    .line 132
    return-object p1
.end method

.method public final currentStackTrace()Landroidx/compose/runtime/tooling/ComposeStackTrace;
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getStackTraceEnabled$runtime()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-static {}, Lorg/jsoup/Jsoup;->createListBuilder()Lkotlin/collections/builders/ListBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 15
    .line 16
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    .line 17
    .line 18
    invoke-static {v2, v1, v3, v1}, Landroidx/core/os/BundleKt;->buildTrace(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/lang/Integer;ILjava/lang/Integer;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 26
    .line 27
    iget-boolean v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->closed:Z

    .line 28
    .line 29
    iget-object v3, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    new-instance v2, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Landroidx/compose/runtime/tooling/ReaderTraceBuilder;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 43
    .line 44
    iget v5, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 45
    .line 46
    invoke-static {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$slotAnchor([II)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    sub-int/2addr v5, v6

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :goto_0
    if-ltz v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hasObjectKey(I)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_0

    .line 62
    .line 63
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 69
    .line 70
    :goto_1
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupKey(I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    iget-object v8, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 75
    .line 76
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->sourceInformationOf(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v2, v7, v6, v8, v5}, Lorg/koin/core/logger/Logger;->processEdge(ILjava/lang/Object;Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, v2, Lorg/koin/core/logger/Logger;->level:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Ljava/util/ArrayList;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 98
    .line 99
    :goto_2
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->parentStackTrace$runtime()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->sourceMarkersEnabled:Z

    .line 114
    .line 115
    new-instance v1, Landroidx/compose/runtime/tooling/ComposeStackTrace;

    .line 116
    .line 117
    invoke-direct {v1, v0, p0}, Landroidx/compose/runtime/tooling/ComposeStackTrace;-><init>(Ljava/util/List;Z)V

    .line 118
    .line 119
    .line 120
    :cond_3
    return-object v1
.end method

.method public final doCompose-aFTiNEg(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;)V
    .locals 7

    .line 1
    const-string v0, "Check failed"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v2, "Reentrant composition is not supported"

    .line 10
    .line 11
    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->observerHolder:Landroidx/appcompat/widget/PopupMenu$1;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/appcompat/widget/PopupMenu$1;->current()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Compose:recompose"

    .line 20
    .line 21
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    const/16 v4, 0x20

    .line 33
    .line 34
    ushr-long v4, v2, v4

    .line 35
    .line 36
    xor-long/2addr v2, v4

    .line 37
    long-to-int v2, v2

    .line 38
    iput v2, p0, Landroidx/compose/runtime/GapComposer;->compositionToken:I

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updateComposerInvalidations-RY85e9Y$runtime(Landroidx/collection/MutableScatterMap;)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    iput p1, p0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    iput-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 51
    .line 52
    :try_start_1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->startRoot()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->nextSlot()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eq v3, p2, :cond_1

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p2

    .line 68
    goto :goto_3

    .line 69
    :cond_1
    :goto_0
    iget-object v4, p0, Landroidx/compose/runtime/GapComposer;->derivedStateObserver:Landroidx/compose/runtime/GapComposer$derivedStateObserver$1;

    .line 70
    .line 71
    invoke-static {}, Landroidx/compose/runtime/Updater;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    .line 72
    .line 73
    .line 74
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    .line 77
    .line 78
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    .line 79
    .line 80
    const/16 v6, 0xc8

    .line 81
    .line 82
    if-eqz p2, :cond_2

    .line 83
    .line 84
    :try_start_3
    invoke-virtual {p0, v6, v4}, Landroidx/compose/runtime/GapComposer;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p2}, Landroidx/compose/runtime/internal/Expect_jvmKt;->invokeComposable(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_1
    move-exception p2

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    iget-boolean p2, p0, Landroidx/compose/runtime/GapComposer;->providersInvalid:Z

    .line 97
    .line 98
    if-eqz p2, :cond_3

    .line 99
    .line 100
    if-eqz v3, :cond_3

    .line 101
    .line 102
    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 103
    .line 104
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_3

    .line 109
    .line 110
    invoke-virtual {p0, v6, v4}, Landroidx/compose/runtime/GapComposer;->startGroup(ILandroidx/compose/runtime/OpaqueKey;)V

    .line 111
    .line 112
    .line 113
    const/4 p2, 0x2

    .line 114
    invoke-static {p2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 118
    .line 119
    invoke-static {p0, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->invokeComposable(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->skipCurrentGroup()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    .line 128
    .line 129
    :goto_1
    :try_start_4
    iget p2, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 130
    .line 131
    sub-int/2addr p2, v2

    .line 132
    invoke-virtual {v5, p2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->endRoot()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    .line 137
    .line 138
    :try_start_5
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 144
    .line 145
    iget-boolean p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->closed:Z

    .line 146
    .line 147
    if-nez p1, :cond_4

    .line 148
    .line 149
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->forceFreshInsertTable()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 153
    .line 154
    .line 155
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 156
    .line 157
    .line 158
    return-void

    .line 159
    :goto_2
    :try_start_6
    iget v3, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    .line 160
    .line 161
    sub-int/2addr v3, v2

    .line 162
    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 166
    :goto_3
    :try_start_7
    new-instance v2, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda2;

    .line 167
    .line 168
    invoke-direct {v2, p0, p1}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/GapComposer;I)V

    .line 169
    .line 170
    .line 171
    invoke-static {p2, v2}, Landroidx/work/OperationKt;->tryAttachComposeStackTrace(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 172
    .line 173
    .line 174
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 175
    :catchall_2
    move-exception p2

    .line 176
    :try_start_8
    iput-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->abortRoot()V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 185
    .line 186
    iget-boolean p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->closed:Z

    .line 187
    .line 188
    if-nez p1, :cond_5

    .line 189
    .line 190
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->forceFreshInsertTable()V

    .line 194
    .line 195
    .line 196
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 197
    :catchall_3
    move-exception p0

    .line 198
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 199
    .line 200
    .line 201
    throw p0
.end method

.method public final doRecordDownsFor(II)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    if-eq p1, p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, v0, p2}, Landroidx/compose/runtime/GapComposer;->doRecordDownsFor(II)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->node(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final end(Z)V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/runtime/IntStack;->slots:[I

    .line 6
    .line 7
    iget v3, v1, Landroidx/compose/runtime/IntStack;->tos:I

    .line 8
    .line 9
    add-int/lit8 v3, v3, -0x2

    .line 10
    .line 11
    aget v2, v2, v3

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    sub-int/2addr v2, v3

    .line 15
    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 16
    .line 17
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 18
    .line 19
    const/16 v6, 0xcf

    .line 20
    .line 21
    const/4 v7, 0x3

    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 25
    .line 26
    iget v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 27
    .line 28
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupKey(I)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 33
    .line 34
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupObjectKey(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 39
    .line 40
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupAux(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    if-nez v9, :cond_1

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    if-ne v4, v6, :cond_0

    .line 49
    .line 50
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_0

    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 61
    .line 62
    int-to-long v8, v2

    .line 63
    xor-long/2addr v5, v8

    .line 64
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 65
    .line 66
    .line 67
    move-result-wide v5

    .line 68
    int-to-long v8, v4

    .line 69
    xor-long/2addr v5, v8

    .line 70
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_0
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 79
    .line 80
    int-to-long v8, v2

    .line 81
    xor-long/2addr v5, v8

    .line 82
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    int-to-long v8, v4

    .line 87
    xor-long/2addr v5, v8

    .line 88
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    :goto_0
    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 93
    .line 94
    goto/16 :goto_4

    .line 95
    .line 96
    :cond_1
    instance-of v2, v9, Ljava/lang/Enum;

    .line 97
    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    check-cast v9, Ljava/lang/Enum;

    .line 101
    .line 102
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    :goto_1
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 107
    .line 108
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 109
    .line 110
    .line 111
    move-result-wide v4

    .line 112
    int-to-long v8, v2

    .line 113
    xor-long/2addr v4, v8

    .line 114
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 115
    .line 116
    .line 117
    move-result-wide v4

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    goto :goto_1

    .line 124
    :cond_3
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 125
    .line 126
    iget v8, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 127
    .line 128
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupKey(I)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 133
    .line 134
    iget-object v10, v9, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 135
    .line 136
    invoke-virtual {v9, v10, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    iget-object v10, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 141
    .line 142
    iget-object v11, v10, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 143
    .line 144
    invoke-virtual {v10, v11, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->aux([II)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    if-nez v9, :cond_5

    .line 149
    .line 150
    if-eqz v8, :cond_4

    .line 151
    .line 152
    if-ne v4, v6, :cond_4

    .line 153
    .line 154
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-nez v5, :cond_4

    .line 159
    .line 160
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 165
    .line 166
    int-to-long v8, v2

    .line 167
    xor-long/2addr v5, v8

    .line 168
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 169
    .line 170
    .line 171
    move-result-wide v5

    .line 172
    int-to-long v8, v4

    .line 173
    xor-long/2addr v5, v8

    .line 174
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_4
    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 182
    .line 183
    int-to-long v8, v2

    .line 184
    xor-long/2addr v5, v8

    .line 185
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 186
    .line 187
    .line 188
    move-result-wide v5

    .line 189
    int-to-long v8, v4

    .line 190
    xor-long/2addr v5, v8

    .line 191
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 192
    .line 193
    .line 194
    move-result-wide v4

    .line 195
    :goto_2
    iput-wide v4, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_5
    instance-of v2, v9, Ljava/lang/Enum;

    .line 199
    .line 200
    if-eqz v2, :cond_6

    .line 201
    .line 202
    check-cast v9, Ljava/lang/Enum;

    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    :goto_3
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 209
    .line 210
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 211
    .line 212
    .line 213
    move-result-wide v4

    .line 214
    int-to-long v8, v2

    .line 215
    xor-long/2addr v4, v8

    .line 216
    invoke-static {v4, v5, v7}, Ljava/lang/Long;->rotateRight(JI)J

    .line 217
    .line 218
    .line 219
    move-result-wide v4

    .line 220
    goto :goto_2

    .line 221
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    goto :goto_3

    .line 226
    :goto_4
    iget v2, v0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 227
    .line 228
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 229
    .line 230
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 231
    .line 232
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 233
    .line 234
    if-eqz v4, :cond_22

    .line 235
    .line 236
    iget-object v10, v4, Landroidx/compose/runtime/GapPending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 237
    .line 238
    iget v11, v4, Landroidx/compose/runtime/GapPending;->startIndex:I

    .line 239
    .line 240
    iget-object v12, v4, Landroidx/compose/runtime/GapPending;->keyInfos:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    if-lez v13, :cond_22

    .line 247
    .line 248
    iget-object v13, v4, Landroidx/compose/runtime/GapPending;->usedKeys:Ljava/util/ArrayList;

    .line 249
    .line 250
    new-instance v14, Ljava/util/HashSet;

    .line 251
    .line 252
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 253
    .line 254
    .line 255
    move-result v15

    .line 256
    invoke-direct {v14, v15}, Ljava/util/HashSet;-><init>(I)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    move/from16 v16, v7

    .line 264
    .line 265
    const/4 v7, 0x0

    .line 266
    :goto_5
    if-ge v7, v15, :cond_7

    .line 267
    .line 268
    const/16 v17, -0x1

    .line 269
    .line 270
    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v14, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    add-int/lit8 v7, v7, 0x1

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_7
    const/16 v17, -0x1

    .line 281
    .line 282
    sget-object v6, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 283
    .line 284
    new-instance v6, Landroidx/collection/MutableScatterSet;

    .line 285
    .line 286
    invoke-direct {v6}, Landroidx/collection/MutableScatterSet;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 294
    .line 295
    .line 296
    move-result v15

    .line 297
    move/from16 v18, v3

    .line 298
    .line 299
    const/4 v3, 0x0

    .line 300
    const/16 v19, 0x0

    .line 301
    .line 302
    const/16 v20, 0x0

    .line 303
    .line 304
    :goto_6
    if-ge v3, v15, :cond_21

    .line 305
    .line 306
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v21

    .line 310
    move-object/from16 v8, v21

    .line 311
    .line 312
    check-cast v8, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 313
    .line 314
    invoke-virtual {v14, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v21

    .line 318
    if-nez v21, :cond_9

    .line 319
    .line 320
    move-object/from16 v21, v1

    .line 321
    .line 322
    iget v1, v8, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->location:I

    .line 323
    .line 324
    invoke-virtual {v10, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    check-cast v1, Landroidx/compose/runtime/composer/GroupInfo;

    .line 329
    .line 330
    if-eqz v1, :cond_8

    .line 331
    .line 332
    iget v1, v1, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 333
    .line 334
    move/from16 v22, v1

    .line 335
    .line 336
    goto :goto_7

    .line 337
    :cond_8
    move/from16 v22, v17

    .line 338
    .line 339
    :goto_7
    iget v1, v8, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->location:I

    .line 340
    .line 341
    move/from16 v23, v3

    .line 342
    .line 343
    add-int v3, v22, v11

    .line 344
    .line 345
    iget v8, v8, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->nodes:I

    .line 346
    .line 347
    invoke-virtual {v9, v3, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 348
    .line 349
    .line 350
    const/4 v3, 0x0

    .line 351
    invoke-virtual {v4, v1, v3}, Landroidx/compose/runtime/GapPending;->updateNodeCount(II)Z

    .line 352
    .line 353
    .line 354
    iget v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 355
    .line 356
    iget-object v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/GapComposer;

    .line 357
    .line 358
    iget-object v8, v8, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 359
    .line 360
    iget v8, v8, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 361
    .line 362
    sub-int v8, v1, v8

    .line 363
    .line 364
    add-int/2addr v8, v3

    .line 365
    iput v8, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 366
    .line 367
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 368
    .line 369
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->reposition(I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->recordDelete()V

    .line 373
    .line 374
    .line 375
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 376
    .line 377
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->skipGroup()I

    .line 378
    .line 379
    .line 380
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 381
    .line 382
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 383
    .line 384
    mul-int/lit8 v8, v1, 0x5

    .line 385
    .line 386
    add-int/lit8 v8, v8, 0x3

    .line 387
    .line 388
    aget v3, v3, v8

    .line 389
    .line 390
    add-int/2addr v3, v1

    .line 391
    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/Updater;->access$removeRange(Ljava/util/List;II)V

    .line 392
    .line 393
    .line 394
    :goto_8
    add-int/lit8 v3, v23, 0x1

    .line 395
    .line 396
    :goto_9
    move-object/from16 v1, v21

    .line 397
    .line 398
    goto :goto_6

    .line 399
    :cond_9
    move-object/from16 v21, v1

    .line 400
    .line 401
    move/from16 v23, v3

    .line 402
    .line 403
    invoke-virtual {v6, v8}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    if-eqz v1, :cond_a

    .line 408
    .line 409
    goto :goto_8

    .line 410
    :cond_a
    move/from16 v1, v19

    .line 411
    .line 412
    if-ge v1, v7, :cond_20

    .line 413
    .line 414
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 419
    .line 420
    if-eq v3, v8, :cond_1e

    .line 421
    .line 422
    iget v8, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->location:I

    .line 423
    .line 424
    invoke-virtual {v10, v8}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v8

    .line 428
    check-cast v8, Landroidx/compose/runtime/composer/GroupInfo;

    .line 429
    .line 430
    if-eqz v8, :cond_b

    .line 431
    .line 432
    iget v8, v8, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 433
    .line 434
    goto :goto_a

    .line 435
    :cond_b
    move/from16 v8, v17

    .line 436
    .line 437
    :goto_a
    invoke-virtual {v6, v3}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move/from16 v19, v1

    .line 441
    .line 442
    move/from16 v1, v20

    .line 443
    .line 444
    move-object/from16 v20, v4

    .line 445
    .line 446
    if-eq v8, v1, :cond_1c

    .line 447
    .line 448
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->location:I

    .line 449
    .line 450
    invoke-virtual {v10, v4}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v4

    .line 454
    check-cast v4, Landroidx/compose/runtime/composer/GroupInfo;

    .line 455
    .line 456
    if-eqz v4, :cond_c

    .line 457
    .line 458
    iget v4, v4, Landroidx/compose/runtime/composer/GroupInfo;->nodeCount:I

    .line 459
    .line 460
    :goto_b
    move-object/from16 v22, v6

    .line 461
    .line 462
    goto :goto_c

    .line 463
    :cond_c
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->nodes:I

    .line 464
    .line 465
    goto :goto_b

    .line 466
    :goto_c
    add-int v6, v8, v11

    .line 467
    .line 468
    move/from16 v24, v7

    .line 469
    .line 470
    add-int v7, v1, v11

    .line 471
    .line 472
    if-lez v4, :cond_f

    .line 473
    .line 474
    move/from16 v25, v11

    .line 475
    .line 476
    iget v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    .line 477
    .line 478
    if-lez v11, :cond_d

    .line 479
    .line 480
    move/from16 v26, v11

    .line 481
    .line 482
    iget v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveFrom:I

    .line 483
    .line 484
    move-object/from16 v27, v12

    .line 485
    .line 486
    sub-int v12, v6, v26

    .line 487
    .line 488
    if-ne v11, v12, :cond_e

    .line 489
    .line 490
    iget v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveTo:I

    .line 491
    .line 492
    sub-int v12, v7, v26

    .line 493
    .line 494
    if-ne v11, v12, :cond_e

    .line 495
    .line 496
    add-int v11, v26, v4

    .line 497
    .line 498
    iput v11, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    .line 499
    .line 500
    goto :goto_d

    .line 501
    :cond_d
    move-object/from16 v27, v12

    .line 502
    .line 503
    :cond_e
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 504
    .line 505
    .line 506
    iput v6, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveFrom:I

    .line 507
    .line 508
    iput v7, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveTo:I

    .line 509
    .line 510
    iput v4, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveCount:I

    .line 511
    .line 512
    goto :goto_d

    .line 513
    :cond_f
    move/from16 v25, v11

    .line 514
    .line 515
    move-object/from16 v27, v12

    .line 516
    .line 517
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 518
    .line 519
    .line 520
    :goto_d
    const/16 v26, 0x7

    .line 521
    .line 522
    const-wide v28, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    const-wide/16 v30, 0x80

    .line 528
    .line 529
    if-le v8, v1, :cond_16

    .line 530
    .line 531
    iget-object v7, v10, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 532
    .line 533
    const-wide/16 v32, 0xff

    .line 534
    .line 535
    iget-object v11, v10, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 536
    .line 537
    array-length v12, v11

    .line 538
    add-int/lit8 v12, v12, -0x2

    .line 539
    .line 540
    if-ltz v12, :cond_15

    .line 541
    .line 542
    move-object/from16 v35, v13

    .line 543
    .line 544
    move-object/from16 v36, v14

    .line 545
    .line 546
    const/4 v6, 0x0

    .line 547
    :goto_e
    const/16 v34, 0x8

    .line 548
    .line 549
    aget-wide v13, v11, v6

    .line 550
    .line 551
    move/from16 v38, v4

    .line 552
    .line 553
    move-object/from16 v37, v5

    .line 554
    .line 555
    not-long v4, v13

    .line 556
    shl-long v4, v4, v26

    .line 557
    .line 558
    and-long/2addr v4, v13

    .line 559
    and-long v4, v4, v28

    .line 560
    .line 561
    cmp-long v4, v4, v28

    .line 562
    .line 563
    if-eqz v4, :cond_14

    .line 564
    .line 565
    sub-int v4, v6, v12

    .line 566
    .line 567
    not-int v4, v4

    .line 568
    ushr-int/lit8 v4, v4, 0x1f

    .line 569
    .line 570
    rsub-int/lit8 v4, v4, 0x8

    .line 571
    .line 572
    const/4 v5, 0x0

    .line 573
    :goto_f
    if-ge v5, v4, :cond_13

    .line 574
    .line 575
    and-long v39, v13, v32

    .line 576
    .line 577
    cmp-long v39, v39, v30

    .line 578
    .line 579
    if-gez v39, :cond_11

    .line 580
    .line 581
    shl-int/lit8 v39, v6, 0x3

    .line 582
    .line 583
    add-int v39, v39, v5

    .line 584
    .line 585
    aget-object v39, v7, v39

    .line 586
    .line 587
    move/from16 v40, v5

    .line 588
    .line 589
    move-object/from16 v5, v39

    .line 590
    .line 591
    check-cast v5, Landroidx/compose/runtime/composer/GroupInfo;

    .line 592
    .line 593
    move-object/from16 v39, v7

    .line 594
    .line 595
    iget v7, v5, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 596
    .line 597
    move-object/from16 v41, v11

    .line 598
    .line 599
    if-gt v8, v7, :cond_10

    .line 600
    .line 601
    add-int v11, v8, v38

    .line 602
    .line 603
    if-ge v7, v11, :cond_10

    .line 604
    .line 605
    sub-int/2addr v7, v8

    .line 606
    add-int/2addr v7, v1

    .line 607
    iput v7, v5, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 608
    .line 609
    goto :goto_10

    .line 610
    :cond_10
    if-gt v1, v7, :cond_12

    .line 611
    .line 612
    if-ge v7, v8, :cond_12

    .line 613
    .line 614
    add-int v7, v7, v38

    .line 615
    .line 616
    iput v7, v5, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 617
    .line 618
    goto :goto_10

    .line 619
    :cond_11
    move/from16 v40, v5

    .line 620
    .line 621
    move-object/from16 v39, v7

    .line 622
    .line 623
    move-object/from16 v41, v11

    .line 624
    .line 625
    :cond_12
    :goto_10
    shr-long v13, v13, v34

    .line 626
    .line 627
    add-int/lit8 v5, v40, 0x1

    .line 628
    .line 629
    move-object/from16 v7, v39

    .line 630
    .line 631
    move-object/from16 v11, v41

    .line 632
    .line 633
    goto :goto_f

    .line 634
    :cond_13
    move-object/from16 v39, v7

    .line 635
    .line 636
    move-object/from16 v41, v11

    .line 637
    .line 638
    move/from16 v5, v34

    .line 639
    .line 640
    if-ne v4, v5, :cond_1d

    .line 641
    .line 642
    goto :goto_11

    .line 643
    :cond_14
    move-object/from16 v39, v7

    .line 644
    .line 645
    move-object/from16 v41, v11

    .line 646
    .line 647
    :goto_11
    if-eq v6, v12, :cond_1d

    .line 648
    .line 649
    add-int/lit8 v6, v6, 0x1

    .line 650
    .line 651
    move-object/from16 v5, v37

    .line 652
    .line 653
    move/from16 v4, v38

    .line 654
    .line 655
    move-object/from16 v7, v39

    .line 656
    .line 657
    move-object/from16 v11, v41

    .line 658
    .line 659
    goto :goto_e

    .line 660
    :cond_15
    move-object/from16 v37, v5

    .line 661
    .line 662
    goto/16 :goto_17

    .line 663
    .line 664
    :cond_16
    move/from16 v38, v4

    .line 665
    .line 666
    move-object/from16 v37, v5

    .line 667
    .line 668
    move-object/from16 v35, v13

    .line 669
    .line 670
    move-object/from16 v36, v14

    .line 671
    .line 672
    const-wide/16 v32, 0xff

    .line 673
    .line 674
    if-le v1, v8, :cond_1d

    .line 675
    .line 676
    iget-object v4, v10, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 677
    .line 678
    iget-object v5, v10, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 679
    .line 680
    array-length v6, v5

    .line 681
    add-int/lit8 v6, v6, -0x2

    .line 682
    .line 683
    if-ltz v6, :cond_1d

    .line 684
    .line 685
    const/4 v7, 0x0

    .line 686
    :goto_12
    aget-wide v11, v5, v7

    .line 687
    .line 688
    not-long v13, v11

    .line 689
    shl-long v13, v13, v26

    .line 690
    .line 691
    and-long/2addr v13, v11

    .line 692
    and-long v13, v13, v28

    .line 693
    .line 694
    cmp-long v13, v13, v28

    .line 695
    .line 696
    if-eqz v13, :cond_1b

    .line 697
    .line 698
    sub-int v13, v7, v6

    .line 699
    .line 700
    not-int v13, v13

    .line 701
    ushr-int/lit8 v13, v13, 0x1f

    .line 702
    .line 703
    const/16 v34, 0x8

    .line 704
    .line 705
    rsub-int/lit8 v13, v13, 0x8

    .line 706
    .line 707
    const/4 v14, 0x0

    .line 708
    :goto_13
    if-ge v14, v13, :cond_1a

    .line 709
    .line 710
    and-long v39, v11, v32

    .line 711
    .line 712
    cmp-long v39, v39, v30

    .line 713
    .line 714
    if-gez v39, :cond_19

    .line 715
    .line 716
    shl-int/lit8 v39, v7, 0x3

    .line 717
    .line 718
    add-int v39, v39, v14

    .line 719
    .line 720
    aget-object v39, v4, v39

    .line 721
    .line 722
    move-object/from16 v40, v4

    .line 723
    .line 724
    move-object/from16 v4, v39

    .line 725
    .line 726
    check-cast v4, Landroidx/compose/runtime/composer/GroupInfo;

    .line 727
    .line 728
    move-object/from16 v39, v5

    .line 729
    .line 730
    iget v5, v4, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 731
    .line 732
    move/from16 v41, v8

    .line 733
    .line 734
    if-gt v8, v5, :cond_17

    .line 735
    .line 736
    add-int v8, v41, v38

    .line 737
    .line 738
    if-ge v5, v8, :cond_17

    .line 739
    .line 740
    sub-int v5, v5, v41

    .line 741
    .line 742
    add-int/2addr v5, v1

    .line 743
    iput v5, v4, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 744
    .line 745
    goto :goto_14

    .line 746
    :cond_17
    add-int/lit8 v8, v41, 0x1

    .line 747
    .line 748
    if-gt v8, v5, :cond_18

    .line 749
    .line 750
    if-ge v5, v1, :cond_18

    .line 751
    .line 752
    sub-int v5, v5, v38

    .line 753
    .line 754
    iput v5, v4, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 755
    .line 756
    :cond_18
    :goto_14
    const/16 v5, 0x8

    .line 757
    .line 758
    goto :goto_15

    .line 759
    :cond_19
    move-object/from16 v40, v4

    .line 760
    .line 761
    move-object/from16 v39, v5

    .line 762
    .line 763
    move/from16 v41, v8

    .line 764
    .line 765
    goto :goto_14

    .line 766
    :goto_15
    shr-long/2addr v11, v5

    .line 767
    add-int/lit8 v14, v14, 0x1

    .line 768
    .line 769
    move-object/from16 v5, v39

    .line 770
    .line 771
    move-object/from16 v4, v40

    .line 772
    .line 773
    move/from16 v8, v41

    .line 774
    .line 775
    goto :goto_13

    .line 776
    :cond_1a
    move-object/from16 v40, v4

    .line 777
    .line 778
    move-object/from16 v39, v5

    .line 779
    .line 780
    move/from16 v41, v8

    .line 781
    .line 782
    const/16 v5, 0x8

    .line 783
    .line 784
    if-ne v13, v5, :cond_1d

    .line 785
    .line 786
    goto :goto_16

    .line 787
    :cond_1b
    move-object/from16 v40, v4

    .line 788
    .line 789
    move-object/from16 v39, v5

    .line 790
    .line 791
    move/from16 v41, v8

    .line 792
    .line 793
    const/16 v5, 0x8

    .line 794
    .line 795
    :goto_16
    if-eq v7, v6, :cond_1d

    .line 796
    .line 797
    add-int/lit8 v7, v7, 0x1

    .line 798
    .line 799
    move-object/from16 v5, v39

    .line 800
    .line 801
    move-object/from16 v4, v40

    .line 802
    .line 803
    move/from16 v8, v41

    .line 804
    .line 805
    goto :goto_12

    .line 806
    :cond_1c
    move-object/from16 v37, v5

    .line 807
    .line 808
    move-object/from16 v22, v6

    .line 809
    .line 810
    move/from16 v24, v7

    .line 811
    .line 812
    move/from16 v25, v11

    .line 813
    .line 814
    move-object/from16 v27, v12

    .line 815
    .line 816
    :goto_17
    move-object/from16 v35, v13

    .line 817
    .line 818
    move-object/from16 v36, v14

    .line 819
    .line 820
    :cond_1d
    move/from16 v4, v23

    .line 821
    .line 822
    goto :goto_18

    .line 823
    :cond_1e
    move/from16 v19, v1

    .line 824
    .line 825
    move-object/from16 v37, v5

    .line 826
    .line 827
    move-object/from16 v22, v6

    .line 828
    .line 829
    move/from16 v24, v7

    .line 830
    .line 831
    move/from16 v25, v11

    .line 832
    .line 833
    move-object/from16 v27, v12

    .line 834
    .line 835
    move-object/from16 v35, v13

    .line 836
    .line 837
    move-object/from16 v36, v14

    .line 838
    .line 839
    move/from16 v1, v20

    .line 840
    .line 841
    move-object/from16 v20, v4

    .line 842
    .line 843
    add-int/lit8 v4, v23, 0x1

    .line 844
    .line 845
    :goto_18
    add-int/lit8 v19, v19, 0x1

    .line 846
    .line 847
    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->location:I

    .line 848
    .line 849
    invoke-virtual {v10, v5}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    check-cast v5, Landroidx/compose/runtime/composer/GroupInfo;

    .line 854
    .line 855
    if-eqz v5, :cond_1f

    .line 856
    .line 857
    iget v3, v5, Landroidx/compose/runtime/composer/GroupInfo;->nodeCount:I

    .line 858
    .line 859
    goto :goto_19

    .line 860
    :cond_1f
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->nodes:I

    .line 861
    .line 862
    :goto_19
    add-int/2addr v1, v3

    .line 863
    move v3, v4

    .line 864
    move-object/from16 v4, v20

    .line 865
    .line 866
    move-object/from16 v6, v22

    .line 867
    .line 868
    move/from16 v7, v24

    .line 869
    .line 870
    move/from16 v11, v25

    .line 871
    .line 872
    move-object/from16 v12, v27

    .line 873
    .line 874
    move-object/from16 v13, v35

    .line 875
    .line 876
    move-object/from16 v14, v36

    .line 877
    .line 878
    move-object/from16 v5, v37

    .line 879
    .line 880
    move/from16 v20, v1

    .line 881
    .line 882
    goto/16 :goto_9

    .line 883
    .line 884
    :cond_20
    move/from16 v19, v1

    .line 885
    .line 886
    move/from16 v1, v20

    .line 887
    .line 888
    move-object/from16 v1, v21

    .line 889
    .line 890
    move/from16 v3, v23

    .line 891
    .line 892
    goto/16 :goto_6

    .line 893
    .line 894
    :cond_21
    move-object/from16 v21, v1

    .line 895
    .line 896
    move-object/from16 v37, v5

    .line 897
    .line 898
    move-object/from16 v27, v12

    .line 899
    .line 900
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 901
    .line 902
    .line 903
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    if-lez v1, :cond_23

    .line 908
    .line 909
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 910
    .line 911
    iget v3, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 912
    .line 913
    iget v4, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 914
    .line 915
    iget-object v5, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/GapComposer;

    .line 916
    .line 917
    iget-object v5, v5, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 918
    .line 919
    iget v5, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 920
    .line 921
    sub-int/2addr v3, v5

    .line 922
    add-int/2addr v3, v4

    .line 923
    iput v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 924
    .line 925
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->skipToGroupEnd()V

    .line 926
    .line 927
    .line 928
    goto :goto_1a

    .line 929
    :cond_22
    move-object/from16 v21, v1

    .line 930
    .line 931
    move/from16 v18, v3

    .line 932
    .line 933
    move-object/from16 v37, v5

    .line 934
    .line 935
    const/16 v17, -0x1

    .line 936
    .line 937
    :cond_23
    :goto_1a
    iget-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 938
    .line 939
    if-nez v1, :cond_25

    .line 940
    .line 941
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 942
    .line 943
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 944
    .line 945
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 946
    .line 947
    sub-int/2addr v4, v3

    .line 948
    if-lez v4, :cond_25

    .line 949
    .line 950
    if-lez v4, :cond_24

    .line 951
    .line 952
    const/4 v3, 0x0

    .line 953
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    .line 957
    .line 958
    .line 959
    iget-object v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 960
    .line 961
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 962
    .line 963
    sget-object v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$TrimParentValues;

    .line 964
    .line 965
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 966
    .line 967
    .line 968
    iget-object v5, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgs:[I

    .line 969
    .line 970
    iget v6, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 971
    .line 972
    iget-object v7, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 973
    .line 974
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 975
    .line 976
    add-int/lit8 v3, v3, -0x1

    .line 977
    .line 978
    aget-object v3, v7, v3

    .line 979
    .line 980
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 981
    .line 982
    sub-int/2addr v6, v3

    .line 983
    aput v4, v5, v6

    .line 984
    .line 985
    goto :goto_1b

    .line 986
    :cond_24
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 987
    .line 988
    .line 989
    :cond_25
    :goto_1b
    iget v3, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 990
    .line 991
    :goto_1c
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 992
    .line 993
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 994
    .line 995
    if-lez v5, :cond_26

    .line 996
    .line 997
    goto :goto_1d

    .line 998
    :cond_26
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 999
    .line 1000
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 1001
    .line 1002
    if-ne v5, v4, :cond_34

    .line 1003
    .line 1004
    :goto_1d
    if-eqz v1, :cond_2d

    .line 1005
    .line 1006
    if-eqz p1, :cond_28

    .line 1007
    .line 1008
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->insertFixups:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1009
    .line 1010
    iget-object v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1011
    .line 1012
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 1013
    .line 1014
    if-eqz v4, :cond_27

    .line 1015
    .line 1016
    goto :goto_1e

    .line 1017
    :cond_27
    const-string v4, "Cannot end node insertion, there are no pending operations that can be realized."

    .line 1018
    .line 1019
    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    :goto_1e
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1023
    .line 1024
    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 1025
    .line 1026
    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 1027
    .line 1028
    add-int/lit8 v5, v5, -0x1

    .line 1029
    .line 1030
    iput v5, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 1031
    .line 1032
    aget-object v6, v4, v5

    .line 1033
    .line 1034
    const/4 v7, 0x0

    .line 1035
    aput-object v7, v4, v5

    .line 1036
    .line 1037
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1038
    .line 1039
    .line 1040
    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 1041
    .line 1042
    iget-object v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 1043
    .line 1044
    iget v8, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgsSize:I

    .line 1045
    .line 1046
    iget v10, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->objects:I

    .line 1047
    .line 1048
    sub-int/2addr v8, v10

    .line 1049
    iget v11, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgsSize:I

    .line 1050
    .line 1051
    sub-int v12, v11, v10

    .line 1052
    .line 1053
    sub-int/2addr v11, v12

    .line 1054
    invoke-static {v4, v12, v5, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1055
    .line 1056
    .line 1057
    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 1058
    .line 1059
    iget v5, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgsSize:I

    .line 1060
    .line 1061
    sub-int v8, v5, v10

    .line 1062
    .line 1063
    invoke-static {v4, v8, v5, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 1064
    .line 1065
    .line 1066
    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgs:[I

    .line 1067
    .line 1068
    iget-object v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgs:[I

    .line 1069
    .line 1070
    iget v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 1071
    .line 1072
    iget v6, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 1073
    .line 1074
    sub-int/2addr v2, v6

    .line 1075
    iget v7, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 1076
    .line 1077
    sub-int v8, v7, v6

    .line 1078
    .line 1079
    invoke-static {v2, v8, v7, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto(III[I[I)V

    .line 1080
    .line 1081
    .line 1082
    iget v2, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgsSize:I

    .line 1083
    .line 1084
    sub-int/2addr v2, v10

    .line 1085
    iput v2, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgsSize:I

    .line 1086
    .line 1087
    iget v2, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 1088
    .line 1089
    sub-int/2addr v2, v6

    .line 1090
    iput v2, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 1091
    .line 1092
    move/from16 v2, v18

    .line 1093
    .line 1094
    :cond_28
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1095
    .line 1096
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 1097
    .line 1098
    if-lez v4, :cond_29

    .line 1099
    .line 1100
    goto :goto_1f

    .line 1101
    :cond_29
    const-string v4, "Unbalanced begin/end empty"

    .line 1102
    .line 1103
    invoke-static {v4}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    :goto_1f
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 1107
    .line 1108
    add-int/lit8 v4, v4, -0x1

    .line 1109
    .line 1110
    iput v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 1111
    .line 1112
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 1113
    .line 1114
    iget v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 1115
    .line 1116
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endGroup()V

    .line 1117
    .line 1118
    .line 1119
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1120
    .line 1121
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 1122
    .line 1123
    if-lez v3, :cond_2a

    .line 1124
    .line 1125
    goto/16 :goto_22

    .line 1126
    .line 1127
    :cond_2a
    rsub-int/lit8 v3, v4, -0x2

    .line 1128
    .line 1129
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 1130
    .line 1131
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endInsert()V

    .line 1132
    .line 1133
    .line 1134
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 1135
    .line 1136
    move/from16 v5, v18

    .line 1137
    .line 1138
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    .line 1139
    .line 1140
    .line 1141
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->insertAnchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 1142
    .line 1143
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->insertFixups:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1144
    .line 1145
    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1146
    .line 1147
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->isEmpty()Z

    .line 1148
    .line 1149
    .line 1150
    move-result v5

    .line 1151
    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->insertTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 1152
    .line 1153
    if-eqz v5, :cond_2b

    .line 1154
    .line 1155
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 1156
    .line 1157
    .line 1158
    const/4 v5, 0x0

    .line 1159
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 1160
    .line 1161
    .line 1162
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 1166
    .line 1167
    .line 1168
    iget-object v7, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1169
    .line 1170
    iget-object v7, v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1171
    .line 1172
    sget-object v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlots;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlots;

    .line 1173
    .line 1174
    invoke-virtual {v7, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1175
    .line 1176
    .line 1177
    const/4 v8, 0x1

    .line 1178
    invoke-static {v7, v5, v4, v8, v6}, Lokio/Okio;->setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 1179
    .line 1180
    .line 1181
    goto :goto_20

    .line 1182
    :cond_2b
    const/4 v5, 0x0

    .line 1183
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->insertFixups:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1184
    .line 1185
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual {v9, v5}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    .line 1192
    .line 1193
    .line 1194
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 1195
    .line 1196
    .line 1197
    iget-object v5, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1198
    .line 1199
    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1200
    .line 1201
    sget-object v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlotsWithFixups;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$InsertSlotsWithFixups;

    .line 1202
    .line 1203
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1204
    .line 1205
    .line 1206
    invoke-static {v5, v4, v6, v7}, Lokio/Okio;->setObjects-JOGOPjs(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1207
    .line 1208
    .line 1209
    new-instance v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1210
    .line 1211
    invoke-direct {v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;-><init>()V

    .line 1212
    .line 1213
    .line 1214
    iput-object v4, v0, Landroidx/compose/runtime/GapComposer;->insertFixups:Landroidx/compose/runtime/composer/gapbuffer/changelist/FixupList;

    .line 1215
    .line 1216
    const/4 v5, 0x0

    .line 1217
    :goto_20
    iput-boolean v5, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 1218
    .line 1219
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 1220
    .line 1221
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groupsSize:I

    .line 1222
    .line 1223
    if-nez v4, :cond_2c

    .line 1224
    .line 1225
    goto :goto_22

    .line 1226
    :cond_2c
    invoke-virtual {v0, v3, v5}, Landroidx/compose/runtime/GapComposer;->updateNodeCount(II)V

    .line 1227
    .line 1228
    .line 1229
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->updateNodeCountOverrides(II)V

    .line 1230
    .line 1231
    .line 1232
    goto :goto_22

    .line 1233
    :cond_2d
    if-eqz p1, :cond_2e

    .line 1234
    .line 1235
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveUp()V

    .line 1236
    .line 1237
    .line 1238
    :cond_2e
    iget-object v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/GapComposer;

    .line 1239
    .line 1240
    iget-object v3, v3, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1241
    .line 1242
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 1243
    .line 1244
    iget-object v4, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 1245
    .line 1246
    move/from16 v6, v17

    .line 1247
    .line 1248
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    .line 1249
    .line 1250
    .line 1251
    move-result v5

    .line 1252
    if-gt v5, v3, :cond_2f

    .line 1253
    .line 1254
    goto :goto_21

    .line 1255
    :cond_2f
    const-string v5, "Missed recording an endGroup"

    .line 1256
    .line 1257
    invoke-static {v5}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    :goto_21
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    .line 1261
    .line 1262
    .line 1263
    move-result v5

    .line 1264
    if-ne v5, v3, :cond_30

    .line 1265
    .line 1266
    const/4 v7, 0x0

    .line 1267
    invoke-virtual {v9, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v4}, Landroidx/compose/runtime/IntStack;->pop()I

    .line 1271
    .line 1272
    .line 1273
    iget-object v3, v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 1274
    .line 1275
    iget-object v3, v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 1276
    .line 1277
    sget-object v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;

    .line 1278
    .line 1279
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 1280
    .line 1281
    .line 1282
    :cond_30
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1283
    .line 1284
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 1285
    .line 1286
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updatedNodeCount(I)I

    .line 1287
    .line 1288
    .line 1289
    move-result v4

    .line 1290
    if-eq v2, v4, :cond_31

    .line 1291
    .line 1292
    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->updateNodeCountOverrides(II)V

    .line 1293
    .line 1294
    .line 1295
    :cond_31
    if-eqz p1, :cond_32

    .line 1296
    .line 1297
    const/4 v2, 0x1

    .line 1298
    :cond_32
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1299
    .line 1300
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->endGroup()V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v9}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 1304
    .line 1305
    .line 1306
    :goto_22
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->pendingStack:Ljava/util/ArrayList;

    .line 1307
    .line 1308
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1309
    .line 1310
    .line 1311
    move-result v4

    .line 1312
    const/16 v18, 0x1

    .line 1313
    .line 1314
    add-int/lit8 v4, v4, -0x1

    .line 1315
    .line 1316
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    check-cast v3, Landroidx/compose/runtime/GapPending;

    .line 1321
    .line 1322
    if-eqz v3, :cond_33

    .line 1323
    .line 1324
    if-nez v1, :cond_33

    .line 1325
    .line 1326
    iget v1, v3, Landroidx/compose/runtime/GapPending;->groupIndex:I

    .line 1327
    .line 1328
    add-int/lit8 v1, v1, 0x1

    .line 1329
    .line 1330
    iput v1, v3, Landroidx/compose/runtime/GapPending;->groupIndex:I

    .line 1331
    .line 1332
    :cond_33
    iput-object v3, v0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 1333
    .line 1334
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/IntStack;->pop()I

    .line 1335
    .line 1336
    .line 1337
    move-result v1

    .line 1338
    add-int/2addr v1, v2

    .line 1339
    iput v1, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 1340
    .line 1341
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/IntStack;->pop()I

    .line 1342
    .line 1343
    .line 1344
    move-result v1

    .line 1345
    iput v1, v0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 1346
    .line 1347
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/IntStack;->pop()I

    .line 1348
    .line 1349
    .line 1350
    move-result v1

    .line 1351
    add-int/2addr v1, v2

    .line 1352
    iput v1, v0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 1353
    .line 1354
    return-void

    .line 1355
    :cond_34
    move/from16 v6, v17

    .line 1356
    .line 1357
    const/4 v7, 0x0

    .line 1358
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->recordDelete()V

    .line 1359
    .line 1360
    .line 1361
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1362
    .line 1363
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->skipGroup()I

    .line 1364
    .line 1365
    .line 1366
    move-result v4

    .line 1367
    invoke-virtual {v9, v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 1368
    .line 1369
    .line 1370
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 1371
    .line 1372
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 1373
    .line 1374
    move-object/from16 v8, v37

    .line 1375
    .line 1376
    invoke-static {v8, v5, v4}, Landroidx/compose/runtime/Updater;->access$removeRange(Ljava/util/List;II)V

    .line 1377
    .line 1378
    .line 1379
    goto/16 :goto_1c
.end method

.method public final endDefaults()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 12
    .line 13
    and-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x2

    .line 18
    .line 19
    iput v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->invalidateStack:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    sub-int/2addr v2, v3

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    if-eqz v1, :cond_7

    .line 26
    .line 27
    iget v5, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 28
    .line 29
    and-int/lit8 v5, v5, -0x9

    .line 30
    .line 31
    iput v5, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 32
    .line 33
    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->observerHolder:Landroidx/appcompat/widget/PopupMenu$1;

    .line 34
    .line 35
    invoke-virtual {v5}, Landroidx/appcompat/widget/PopupMenu$1;->current()V

    .line 36
    .line 37
    .line 38
    iget v5, v0, Landroidx/compose/runtime/GapComposer;->compositionToken:I

    .line 39
    .line 40
    iget-object v6, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    .line 41
    .line 42
    if-eqz v6, :cond_5

    .line 43
    .line 44
    iget v7, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 45
    .line 46
    and-int/lit8 v7, v7, 0x10

    .line 47
    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_1
    iget-object v7, v6, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    .line 52
    .line 53
    iget-object v8, v6, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 54
    .line 55
    iget-object v9, v6, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    .line 56
    .line 57
    array-length v10, v9

    .line 58
    add-int/lit8 v10, v10, -0x2

    .line 59
    .line 60
    if-ltz v10, :cond_5

    .line 61
    .line 62
    const/4 v11, 0x0

    .line 63
    :goto_1
    aget-wide v12, v9, v11

    .line 64
    .line 65
    not-long v14, v12

    .line 66
    const/16 v16, 0x7

    .line 67
    .line 68
    shl-long v14, v14, v16

    .line 69
    .line 70
    and-long/2addr v14, v12

    .line 71
    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    and-long v14, v14, v16

    .line 77
    .line 78
    cmp-long v14, v14, v16

    .line 79
    .line 80
    if-eqz v14, :cond_4

    .line 81
    .line 82
    sub-int v14, v11, v10

    .line 83
    .line 84
    not-int v14, v14

    .line 85
    ushr-int/lit8 v14, v14, 0x1f

    .line 86
    .line 87
    const/16 v15, 0x8

    .line 88
    .line 89
    rsub-int/lit8 v14, v14, 0x8

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    :goto_2
    if-ge v4, v14, :cond_3

    .line 93
    .line 94
    const-wide/16 v17, 0xff

    .line 95
    .line 96
    and-long v17, v12, v17

    .line 97
    .line 98
    const-wide/16 v19, 0x80

    .line 99
    .line 100
    cmp-long v17, v17, v19

    .line 101
    .line 102
    if-gez v17, :cond_2

    .line 103
    .line 104
    shl-int/lit8 v17, v11, 0x3

    .line 105
    .line 106
    add-int v17, v17, v4

    .line 107
    .line 108
    aget-object v18, v7, v17

    .line 109
    .line 110
    aget v2, v8, v17

    .line 111
    .line 112
    if-eq v2, v5, :cond_2

    .line 113
    .line 114
    new-instance v2, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    invoke-direct {v2, v1, v5, v6}, Landroidx/compose/runtime/RecomposeScopeImpl$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_2
    shr-long/2addr v12, v15

    .line 121
    add-int/lit8 v4, v4, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    if-ne v14, v15, :cond_5

    .line 125
    .line 126
    :cond_4
    if-eq v11, v10, :cond_5

    .line 127
    .line 128
    add-int/lit8 v11, v11, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    :goto_3
    const/4 v2, 0x0

    .line 132
    :goto_4
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 133
    .line 134
    if-eqz v2, :cond_6

    .line 135
    .line 136
    iget-object v5, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 137
    .line 138
    iget-object v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 139
    .line 140
    sget-object v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCompositionScope;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCompositionScope;

    .line 141
    .line 142
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 143
    .line 144
    .line 145
    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 146
    .line 147
    const/4 v7, 0x0

    .line 148
    invoke-static {v5, v7, v2, v3, v6}, Lokio/Okio;->setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_6
    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 152
    .line 153
    and-int/lit16 v5, v2, 0x200

    .line 154
    .line 155
    if-eqz v5, :cond_7

    .line 156
    .line 157
    and-int/lit16 v2, v2, -0x201

    .line 158
    .line 159
    iput v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 160
    .line 161
    iget-object v2, v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 162
    .line 163
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 164
    .line 165
    sget-object v4, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndResumingScope;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndResumingScope;

    .line 166
    .line 167
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 168
    .line 169
    .line 170
    const/4 v7, 0x0

    .line 171
    invoke-static {v2, v7, v1}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 175
    .line 176
    and-int/lit16 v4, v2, -0x81

    .line 177
    .line 178
    iput v4, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 179
    .line 180
    and-int/lit16 v4, v2, 0x400

    .line 181
    .line 182
    if-eqz v4, :cond_7

    .line 183
    .line 184
    and-int/lit16 v2, v2, -0x481

    .line 185
    .line 186
    iput v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 187
    .line 188
    iget v2, v0, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 189
    .line 190
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 191
    .line 192
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 193
    .line 194
    if-ne v2, v4, :cond_7

    .line 195
    .line 196
    const/4 v7, 0x0

    .line 197
    iput-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 198
    .line 199
    const/4 v2, -0x1

    .line 200
    iput v2, v0, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 201
    .line 202
    :cond_7
    if-eqz v1, :cond_c

    .line 203
    .line 204
    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 205
    .line 206
    and-int/lit8 v4, v2, 0x10

    .line 207
    .line 208
    if-eqz v4, :cond_8

    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_8
    and-int/2addr v2, v3

    .line 212
    if-eqz v2, :cond_9

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->forceRecomposeScopes:Z

    .line 216
    .line 217
    if-eqz v2, :cond_c

    .line 218
    .line 219
    :goto_5
    iget-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 220
    .line 221
    if-nez v2, :cond_b

    .line 222
    .line 223
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 224
    .line 225
    if-eqz v2, :cond_a

    .line 226
    .line 227
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 228
    .line 229
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    goto :goto_6

    .line 236
    :cond_a
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 237
    .line 238
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 239
    .line 240
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    :goto_6
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 245
    .line 246
    :cond_b
    iget v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 247
    .line 248
    and-int/lit8 v2, v2, -0x5

    .line 249
    .line 250
    iput v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 251
    .line 252
    move-object v4, v1

    .line 253
    :goto_7
    const/4 v7, 0x0

    .line 254
    goto :goto_9

    .line 255
    :cond_c
    :goto_8
    const/4 v4, 0x0

    .line 256
    goto :goto_7

    .line 257
    :goto_9
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 258
    .line 259
    .line 260
    return-object v4
.end method

.method public final endReuseFromRoot$runtime()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "Cannot disable reuse from root if it was caused by other groups"

    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 20
    .line 21
    return-void
.end method

.method public final endRoot()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->doneComposing$runtime()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 14
    .line 15
    iget-boolean v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 26
    .line 27
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 28
    .line 29
    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndCurrentGroup;

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 32
    .line 33
    .line 34
    iput-boolean v0, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->startedGroup:Z

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    .line 40
    .line 41
    iget v1, v1, Landroidx/compose/runtime/IntStack;->tos:I

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "Missed recording an endGroup()"

    .line 47
    .line 48
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->pendingStack:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    const-string v1, "Start/end imbalance"

    .line 60
    .line 61
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->cleanUpCompose()V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    :cond_3
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->providersInvalid:Z

    .line 82
    .line 83
    return-void
.end method

.method public final enterGroup(ZLandroidx/compose/runtime/GapPending;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->pendingStack:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 9
    .line 10
    iget p2, p0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->parentStateStack:Landroidx/compose/runtime/IntStack;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 15
    .line 16
    .line 17
    iget p2, p0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iput p2, p0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 31
    .line 32
    :cond_0
    iput p2, p0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 33
    .line 34
    iput p2, p0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 35
    .line 36
    return-void
.end method

.method public final forceFreshInsertTable()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->sourceMarkersEnabled:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->collectSourceInformation()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCollectingCallByInformation$runtime()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    new-instance v1, Landroidx/collection/MutableIntObjectMap;

    .line 22
    .line 23
    invoke-direct {v1}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    .line 27
    .line 28
    :cond_1
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->insertTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openWriter()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 39
    .line 40
    return-void
.end method

.method public final getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->_compositionData:Landroidx/compose/runtime/GapCompositionDataImpl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/runtime/GapCompositionDataImpl;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/compose/runtime/GapCompositionDataImpl;-><init>(Landroidx/compose/runtime/Composition;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->_compositionData:Landroidx/compose/runtime/GapCompositionDataImpl;

    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method public final getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->childrenComposing:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->invalidateStack:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {v0, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final getDefaultsInvalid()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->providersInvalid:Z

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 18
    .line 19
    and-int/lit8 p0, p0, 0x4

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method public final getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionContext;->getStackTraceEnabled$runtime()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->errorContext:Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public final getSkipping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->providersInvalid:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    iget p0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 20
    .line 21
    and-int/lit8 p0, p0, 0x8

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final insertMovableContentGuarded(Ljava/util/ArrayList;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v7, v1, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 4
    .line 5
    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->lateChanges:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 6
    .line 7
    iget-object v8, v1, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 8
    .line 9
    iget-object v9, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 10
    .line 11
    :try_start_0
    iput-object v0, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 14
    .line 15
    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ResetSlots;

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 18
    .line 19
    .line 20
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    .line 21
    .line 22
    .line 23
    move-result v10

    .line 24
    const/4 v11, 0x0

    .line 25
    move v12, v11

    .line 26
    :goto_0
    if-ge v12, v10, :cond_f

    .line 27
    .line 28
    move-object/from16 v13, p1

    .line 29
    .line 30
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lkotlin/Pair;

    .line 35
    .line 36
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    move-object v4, v2

    .line 41
    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    .line 42
    .line 43
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/compose/runtime/MovableContentStateReference;

    .line 48
    .line 49
    iget-object v2, v4, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 50
    .line 51
    invoke-static {v2}, Landroidx/sqlite/SQLite;->asGapAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v3, v4, Landroidx/compose/runtime/MovableContentStateReference;->slotStorage:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 56
    .line 57
    invoke-static {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->asGapBufferSlotTable(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    new-instance v14, Landroidx/compose/runtime/internal/IntRef;

    .line 66
    .line 67
    invoke-direct {v14}, Landroidx/compose/runtime/internal/IntRef;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 71
    .line 72
    .line 73
    iget-object v6, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 74
    .line 75
    iget-object v6, v6, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 76
    .line 77
    sget-object v15, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DetermineMovableContentNodeIndex;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$DetermineMovableContentNodeIndex;

    .line 78
    .line 79
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 80
    .line 81
    .line 82
    const/4 v15, 0x1

    .line 83
    invoke-static {v6, v11, v14, v15, v2}, Lokio/Okio;->setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->insertTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 89
    .line 90
    if-eq v3, v0, :cond_0

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_0
    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 94
    .line 95
    iget-boolean v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->closed:Z

    .line 96
    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    const-string v0, "Check failed"

    .line 100
    .line 101
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->forceFreshInsertTable()V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 108
    .line 109
    .line 110
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->reposition(I)V

    .line 112
    .line 113
    .line 114
    iput v5, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 115
    .line 116
    new-instance v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 117
    .line 118
    invoke-direct {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v0, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 125
    .line 126
    .line 127
    move-object v6, v0

    .line 128
    move-object v0, v2

    .line 129
    move-object/from16 v16, v3

    .line 130
    .line 131
    :try_start_2
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    const/4 v3, 0x0

    .line 135
    const/4 v2, 0x0

    .line 136
    move-object/from16 v1, p0

    .line 137
    .line 138
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/runtime/GapComposer;->recomposeMovableContent(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/CompositionImpl;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    iget-object v2, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object v3, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 147
    .line 148
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->isEmpty()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-nez v3, :cond_2

    .line 153
    .line 154
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 155
    .line 156
    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v11, v0, v15, v14}, Lokio/Okio;->setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    goto :goto_3

    .line 167
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 168
    .line 169
    .line 170
    move-object/from16 v19, v7

    .line 171
    .line 172
    move v0, v10

    .line 173
    move/from16 v16, v12

    .line 174
    .line 175
    goto/16 :goto_b

    .line 176
    .line 177
    :catchall_1
    move-exception v0

    .line 178
    goto/16 :goto_10

    .line 179
    .line 180
    :catchall_2
    move-exception v0

    .line 181
    move-object/from16 v16, v3

    .line 182
    .line 183
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_3
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/CompositionContext;->movableContentStateResolve$runtime(Landroidx/compose/runtime/MovableContentStateReference;)Landroidx/compose/runtime/MovableContentState;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    if-eqz v5, :cond_4

    .line 192
    .line 193
    iget-object v6, v5, Landroidx/compose/runtime/MovableContentState;->slotStorage:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 194
    .line 195
    invoke-static {v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->asGapBufferSlotTable(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    goto :goto_4

    .line 200
    :cond_4
    const/4 v6, 0x0

    .line 201
    :goto_4
    if-nez v6, :cond_5

    .line 202
    .line 203
    iget-object v15, v0, Landroidx/compose/runtime/MovableContentStateReference;->slotStorage:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 204
    .line 205
    invoke-static {v15}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->asGapBufferSlotTable(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    goto :goto_5

    .line 210
    :cond_5
    move-object v15, v6

    .line 211
    :goto_5
    if-eqz v6, :cond_9

    .line 212
    .line 213
    iget-boolean v11, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->writer:Z

    .line 214
    .line 215
    if-eqz v11, :cond_6

    .line 216
    .line 217
    const-string/jumbo v11, "use active SlotWriter to create an anchor location instead"

    .line 218
    .line 219
    .line 220
    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    :cond_6
    iget v11, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groupsSize:I

    .line 224
    .line 225
    if-lez v11, :cond_7

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_7
    const-string v11, "Parameter index is out of range"

    .line 229
    .line 230
    invoke-static {v11}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :goto_6
    iget-object v11, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchors:Ljava/util/ArrayList;

    .line 234
    .line 235
    iget v6, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->groupsSize:I

    .line 236
    .line 237
    move-object/from16 v18, v5

    .line 238
    .line 239
    const/4 v5, 0x0

    .line 240
    invoke-static {v11, v5, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-gez v6, :cond_8

    .line 245
    .line 246
    move-object/from16 v19, v7

    .line 247
    .line 248
    new-instance v7, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 249
    .line 250
    invoke-direct {v7, v5}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;-><init>(I)V

    .line 251
    .line 252
    .line 253
    add-int/lit8 v6, v6, 0x1

    .line 254
    .line 255
    neg-int v5, v6

    .line 256
    invoke-virtual {v11, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_8
    move-object/from16 v19, v7

    .line 261
    .line 262
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    move-object v7, v5

    .line 267
    check-cast v7, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 268
    .line 269
    :goto_7
    if-eqz v7, :cond_a

    .line 270
    .line 271
    goto :goto_8

    .line 272
    :cond_9
    move-object/from16 v18, v5

    .line 273
    .line 274
    move-object/from16 v19, v7

    .line 275
    .line 276
    :cond_a
    iget-object v7, v0, Landroidx/compose/runtime/MovableContentStateReference;->anchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 277
    .line 278
    :goto_8
    invoke-static {v7}, Landroidx/sqlite/SQLite;->asGapAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    new-instance v6, Ljava/util/ArrayList;

    .line 283
    .line 284
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v15}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 288
    .line 289
    .line 290
    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    :try_start_4
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    invoke-static {v7, v6, v11}, Landroidx/compose/runtime/Updater;->collectNodesFrom$lambda$0$collectFromGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Ljava/util/ArrayList;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    .line 296
    .line 297
    .line 298
    :try_start_5
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    if-nez v7, :cond_d

    .line 306
    .line 307
    iget-object v7, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 308
    .line 309
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    if-nez v11, :cond_b

    .line 317
    .line 318
    iget-object v7, v7, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 319
    .line 320
    sget-object v11, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;

    .line 321
    .line 322
    invoke-virtual {v7, v11}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 323
    .line 324
    .line 325
    move-object/from16 v20, v5

    .line 326
    .line 327
    const/4 v5, 0x0

    .line 328
    const/4 v11, 0x1

    .line 329
    invoke-static {v7, v11, v6, v5, v14}, Lokio/Okio;->setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_b
    move-object/from16 v20, v5

    .line 334
    .line 335
    :goto_9
    iget-object v5, v1, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 336
    .line 337
    if-eq v3, v5, :cond_c

    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_c
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->updatedNodeCount(I)I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    add-int/2addr v3, v5

    .line 353
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->updateNodeCount(II)V

    .line 354
    .line 355
    .line 356
    goto :goto_a

    .line 357
    :cond_d
    move-object/from16 v20, v5

    .line 358
    .line 359
    :goto_a
    iget-object v2, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 360
    .line 361
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 362
    .line 363
    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$CopySlotTableToAnchorLocation;

    .line 364
    .line 365
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 366
    .line 367
    .line 368
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgsSize:I

    .line 369
    .line 370
    iget-object v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 371
    .line 372
    iget v6, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 373
    .line 374
    const/16 v17, 0x1

    .line 375
    .line 376
    add-int/lit8 v6, v6, -0x1

    .line 377
    .line 378
    aget-object v5, v5, v6

    .line 379
    .line 380
    iget v5, v5, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->objects:I

    .line 381
    .line 382
    sub-int/2addr v3, v5

    .line 383
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 384
    .line 385
    aput-object v18, v2, v3

    .line 386
    .line 387
    add-int/lit8 v5, v3, 0x1

    .line 388
    .line 389
    aput-object v19, v2, v5

    .line 390
    .line 391
    add-int/lit8 v5, v3, 0x3

    .line 392
    .line 393
    aput-object v4, v2, v5

    .line 394
    .line 395
    add-int/lit8 v3, v3, 0x2

    .line 396
    .line 397
    aput-object v0, v2, v3

    .line 398
    .line 399
    invoke-virtual {v15}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 400
    .line 401
    .line 402
    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 403
    :try_start_6
    iget-object v11, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 404
    .line 405
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 406
    .line 407
    iget-object v3, v1, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 408
    .line 409
    const/4 v5, 0x0

    .line 410
    iput-object v5, v1, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 411
    .line 412
    iput-object v5, v1, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    .line 413
    .line 414
    :try_start_7
    iput-object v7, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 415
    .line 416
    invoke-static/range {v20 .. v20}, Landroidx/sqlite/SQLite;->asGapAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 417
    .line 418
    .line 419
    move-result-object v5

    .line 420
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->reposition(I)V

    .line 425
    .line 426
    .line 427
    iput v5, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 428
    .line 429
    new-instance v15, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 430
    .line 431
    invoke-direct {v15}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;-><init>()V

    .line 432
    .line 433
    .line 434
    iget-object v5, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 435
    .line 436
    :try_start_8
    iput-object v15, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 437
    .line 438
    iget-boolean v6, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 439
    .line 440
    move-object/from16 v16, v2

    .line 441
    .line 442
    const/4 v2, 0x0

    .line 443
    :try_start_9
    iput-boolean v2, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 444
    .line 445
    iget-object v2, v0, Landroidx/compose/runtime/MovableContentStateReference;->composition:Landroidx/compose/runtime/CompositionImpl;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 446
    .line 447
    move-object/from16 v18, v3

    .line 448
    .line 449
    :try_start_a
    iget-object v3, v4, Landroidx/compose/runtime/MovableContentStateReference;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 450
    .line 451
    move-object/from16 v20, v2

    .line 452
    .line 453
    iget v2, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 454
    .line 455
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    iget-object v0, v0, Landroidx/compose/runtime/MovableContentStateReference;->invalidations:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 460
    .line 461
    move/from16 v21, v6

    .line 462
    .line 463
    :try_start_b
    new-instance v6, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 464
    .line 465
    move-object/from16 v22, v0

    .line 466
    .line 467
    const/16 v0, 0x8

    .line 468
    .line 469
    invoke-direct {v6, v1, v4, v0}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 470
    .line 471
    .line 472
    move-object v4, v2

    .line 473
    move-object/from16 v23, v7

    .line 474
    .line 475
    move v0, v10

    .line 476
    move-object/from16 v7, v16

    .line 477
    .line 478
    move-object/from16 v10, v18

    .line 479
    .line 480
    move-object/from16 v2, v20

    .line 481
    .line 482
    move/from16 v13, v21

    .line 483
    .line 484
    move/from16 v16, v12

    .line 485
    .line 486
    move-object v12, v5

    .line 487
    move-object/from16 v5, v22

    .line 488
    .line 489
    :try_start_c
    invoke-virtual/range {v1 .. v6}, Landroidx/compose/runtime/GapComposer;->recomposeMovableContent(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/CompositionImpl;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 490
    .line 491
    .line 492
    :try_start_d
    iput-boolean v13, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 493
    .line 494
    :try_start_e
    iput-object v12, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 495
    .line 496
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    .line 498
    .line 499
    iget-object v2, v15, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 500
    .line 501
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->isEmpty()Z

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-nez v2, :cond_e

    .line 506
    .line 507
    iget-object v2, v12, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 508
    .line 509
    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$ApplyChangeList;

    .line 510
    .line 511
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 512
    .line 513
    .line 514
    const/4 v3, 0x1

    .line 515
    const/4 v5, 0x0

    .line 516
    invoke-static {v2, v5, v15, v3, v14}, Lokio/Okio;->setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 517
    .line 518
    .line 519
    :cond_e
    :try_start_f
    iput-object v11, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 520
    .line 521
    iput-object v7, v1, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 522
    .line 523
    iput-object v10, v1, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 524
    .line 525
    :try_start_10
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 526
    .line 527
    .line 528
    :goto_b
    iget-object v2, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 529
    .line 530
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 531
    .line 532
    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$SkipToEndOfCurrentGroup;

    .line 533
    .line 534
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 535
    .line 536
    .line 537
    add-int/lit8 v12, v16, 0x1

    .line 538
    .line 539
    move v10, v0

    .line 540
    move-object/from16 v7, v19

    .line 541
    .line 542
    const/4 v11, 0x0

    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :catchall_3
    move-exception v0

    .line 546
    goto :goto_f

    .line 547
    :catchall_4
    move-exception v0

    .line 548
    goto :goto_e

    .line 549
    :catchall_5
    move-exception v0

    .line 550
    goto :goto_d

    .line 551
    :catchall_6
    move-exception v0

    .line 552
    goto :goto_c

    .line 553
    :catchall_7
    move-exception v0

    .line 554
    move-object v12, v5

    .line 555
    move-object/from16 v23, v7

    .line 556
    .line 557
    move-object/from16 v7, v16

    .line 558
    .line 559
    move-object/from16 v10, v18

    .line 560
    .line 561
    move/from16 v13, v21

    .line 562
    .line 563
    goto :goto_c

    .line 564
    :catchall_8
    move-exception v0

    .line 565
    move-object v12, v5

    .line 566
    move v13, v6

    .line 567
    move-object/from16 v23, v7

    .line 568
    .line 569
    move-object/from16 v7, v16

    .line 570
    .line 571
    move-object/from16 v10, v18

    .line 572
    .line 573
    goto :goto_c

    .line 574
    :catchall_9
    move-exception v0

    .line 575
    move-object v10, v3

    .line 576
    move-object v12, v5

    .line 577
    move v13, v6

    .line 578
    move-object/from16 v23, v7

    .line 579
    .line 580
    move-object/from16 v7, v16

    .line 581
    .line 582
    :goto_c
    :try_start_11
    iput-boolean v13, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    .line 583
    .line 584
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 585
    :catchall_a
    move-exception v0

    .line 586
    move-object v10, v3

    .line 587
    move-object v12, v5

    .line 588
    move-object/from16 v23, v7

    .line 589
    .line 590
    move-object v7, v2

    .line 591
    :goto_d
    :try_start_12
    iput-object v12, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 592
    .line 593
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 594
    :catchall_b
    move-exception v0

    .line 595
    move-object v10, v3

    .line 596
    move-object/from16 v23, v7

    .line 597
    .line 598
    move-object v7, v2

    .line 599
    :goto_e
    :try_start_13
    iput-object v11, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 600
    .line 601
    iput-object v7, v1, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 602
    .line 603
    iput-object v10, v1, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 604
    .line 605
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 606
    :catchall_c
    move-exception v0

    .line 607
    move-object/from16 v23, v7

    .line 608
    .line 609
    :goto_f
    :try_start_14
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 610
    .line 611
    .line 612
    throw v0

    .line 613
    :catchall_d
    move-exception v0

    .line 614
    invoke-virtual {v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 615
    .line 616
    .line 617
    throw v0

    .line 618
    :cond_f
    invoke-virtual {v8}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 619
    .line 620
    .line 621
    iget-object v0, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 622
    .line 623
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 624
    .line 625
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndMovableContentPlacement;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$EndMovableContentPlacement;

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 628
    .line 629
    .line 630
    const/4 v5, 0x0

    .line 631
    iput v5, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 632
    .line 633
    iput-object v9, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 634
    .line 635
    return-void

    .line 636
    :goto_10
    iput-object v9, v8, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 637
    .line 638
    throw v0
.end method

.method public final invokeMovableContentLambda(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/lang/Object;Z)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v4, p3

    .line 8
    .line 9
    const v2, 0x78cc281

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->startMovableGroup(ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->nextSlot()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-wide v11, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 22
    .line 23
    const-wide/32 v5, 0x78cc281

    .line 24
    .line 25
    .line 26
    const/4 v13, 0x0

    .line 27
    const/4 v14, 0x1

    .line 28
    const/4 v15, 0x0

    .line 29
    :try_start_0
    iput-wide v5, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 30
    .line 31
    iget-boolean v2, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 36
    .line 37
    invoke-static {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->markGroup$default(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_3

    .line 43
    :cond_0
    :goto_0
    iget-boolean v2, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 44
    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    :cond_1
    move v2, v15

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v2, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getGroupAux()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_1

    .line 60
    .line 61
    move v2, v14

    .line 62
    :goto_1
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->recordProviderUpdate(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    sget-object v5, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Landroidx/compose/runtime/OpaqueKey;

    .line 68
    .line 69
    const/16 v6, 0xca

    .line 70
    .line 71
    invoke-virtual {v1, v6, v5, v0, v15}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    iput-object v13, v1, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 75
    .line 76
    iget-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    if-nez p4, :cond_4

    .line 81
    .line 82
    iput-boolean v14, v1, Landroidx/compose/runtime/GapComposer;->writerHasAProvider:Z

    .line 83
    .line 84
    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 85
    .line 86
    iget v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    .line 87
    .line 88
    iget-object v5, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    .line 89
    .line 90
    invoke-virtual {v0, v5, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    new-instance v2, Landroidx/compose/runtime/MovableContentStateReference;

    .line 99
    .line 100
    iget-object v5, v1, Landroidx/compose/runtime/GapComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 101
    .line 102
    iget-object v6, v1, Landroidx/compose/runtime/GapComposer;->insertTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 103
    .line 104
    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->currentCompositionLocalScope()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    const/4 v10, 0x0

    .line 111
    invoke-direct/range {v2 .. v10}, Landroidx/compose/runtime/MovableContentStateReference;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;Ljava/util/List;Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Ljava/util/ArrayList;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v1, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/CompositionContext;->insertMovableContent$runtime(Landroidx/compose/runtime/MovableContentStateReference;)V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->providersInvalid:Z

    .line 121
    .line 122
    iput-boolean v2, v1, Landroidx/compose/runtime/GapComposer;->providersInvalid:Z

    .line 123
    .line 124
    new-instance v2, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;

    .line 125
    .line 126
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/Updater$$ExternalSyntheticLambda0;-><init>(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 130
    .line 131
    const v4, -0x3873acb

    .line 132
    .line 133
    .line 134
    invoke-direct {v3, v4, v14, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v3}, Landroidx/compose/runtime/internal/Expect_jvmKt;->invokeComposable(Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;)V

    .line 138
    .line 139
    .line 140
    iput-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->providersInvalid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .line 142
    :goto_2
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 143
    .line 144
    .line 145
    iput-object v13, v1, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 146
    .line 147
    iput-wide v11, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 148
    .line 149
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :goto_3
    :try_start_1
    new-instance v2, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda2;

    .line 154
    .line 155
    invoke-direct {v2, v1, v14}, Landroidx/compose/runtime/GapComposer$$ExternalSyntheticLambda2;-><init>(Landroidx/compose/runtime/GapComposer;I)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v2}, Landroidx/work/OperationKt;->tryAttachComposeStackTrace(Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)Z

    .line 159
    .line 160
    .line 161
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    :catchall_1
    move-exception v0

    .line 163
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 164
    .line 165
    .line 166
    iput-object v13, v1, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 167
    .line 168
    iput-wide v11, v1, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 169
    .line 170
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->end(Z)V

    .line 171
    .line 172
    .line 173
    throw v0
.end method

.method public final nextSlot()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    instance-of p0, v0, Landroidx/compose/runtime/ReusableGapRememberObserverHolder;

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    :cond_1
    return-object v1

    .line 32
    :cond_2
    return-object v0
.end method

.method public final parentStackTrace$runtime()Ljava/util/List;
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getComposition$runtime()Landroidx/compose/runtime/Composition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Landroidx/compose/runtime/CompositionImpl;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v1, v0, Landroidx/compose/runtime/CompositionImpl;->slotStorage:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->asGapBufferSlotTable(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :try_start_0
    iget v3, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static {v2, p0, v4, v3}, Landroidx/core/os/BundleKt;->findSubcompositionContextGroup$lambda$0$scanGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;Landroidx/compose/runtime/CompositionContext;II)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 38
    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-static {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->asGapBufferSlotTable(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1, p0, v2}, Landroidx/core/os/BundleKt;->traceForGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;ILjava/lang/Integer;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Landroidx/compose/runtime/CompositionImpl;->composer:Landroidx/compose/runtime/GapComposer;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->parentStackTrace$runtime()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/util/List;)Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 82
    .line 83
    return-object p0

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->close()V

    .line 86
    .line 87
    .line 88
    throw p0
.end method

.method public final rGroupIndexOf(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v0, p1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hasObjectKey(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 23
    .line 24
    iget-object v2, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 25
    .line 26
    mul-int/lit8 v3, v0, 0x5

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x3

    .line 29
    .line 30
    aget v2, v2, v3

    .line 31
    .line 32
    add-int/2addr v0, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v1
.end method

.method public final recomposeMovableContent(Landroidx/compose/runtime/CompositionImpl;Landroidx/compose/runtime/CompositionImpl;Ljava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    iput-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 10
    .line 11
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    move v4, v2

    .line 16
    :goto_0
    const/4 v5, 0x0

    .line 17
    if-ge v4, v3, :cond_1

    .line 18
    .line 19
    invoke-interface {p4, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Lkotlin/Pair;

    .line 24
    .line 25
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    check-cast v7, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 30
    .line 31
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0, v7, v6}, Landroidx/compose/runtime/GapComposer;->tryImminentInvalidation$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_4

    .line 43
    :cond_0
    invoke-virtual {p0, v7, v5}, Landroidx/compose/runtime/GapComposer;->tryImminentInvalidation$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-eqz p1, :cond_4

    .line 50
    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 p3, -0x1

    .line 59
    :goto_2
    if-eqz p2, :cond_3

    .line 60
    .line 61
    if-eq p2, p1, :cond_3

    .line 62
    .line 63
    if-ltz p3, :cond_3

    .line 64
    .line 65
    iput-object p2, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 66
    .line 67
    iput p3, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    :try_start_1
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :try_start_2
    iput-object v5, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 74
    .line 75
    iput v2, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :catchall_1
    move-exception p2

    .line 79
    iput-object v5, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegate:Landroidx/compose/runtime/CompositionImpl;

    .line 80
    .line 81
    iput v2, p1, Landroidx/compose/runtime/CompositionImpl;->invalidationDelegateGroup:I

    .line 82
    .line 83
    throw p2

    .line 84
    :cond_3
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    :goto_3
    if-nez p2, :cond_5

    .line 89
    .line 90
    :cond_4
    invoke-interface {p5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_5
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 95
    .line 96
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 97
    .line 98
    return-object p2

    .line 99
    :goto_4
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 100
    .line 101
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 102
    .line 103
    throw p1
.end method

.method public final recomposeToGroupEnd()V
    .locals 40

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$3:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 4
    .line 5
    iget-boolean v2, v0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    iput-boolean v3, v0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 9
    .line 10
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 11
    .line 12
    iget v5, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 13
    .line 14
    iget-object v6, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 15
    .line 16
    mul-int/lit8 v7, v5, 0x5

    .line 17
    .line 18
    const/4 v8, 0x3

    .line 19
    add-int/2addr v7, v8

    .line 20
    aget v6, v6, v7

    .line 21
    .line 22
    add-int/2addr v6, v5

    .line 23
    iget v9, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 24
    .line 25
    iget-wide v10, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 26
    .line 27
    iget v12, v0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 28
    .line 29
    iget v13, v0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 30
    .line 31
    iget v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 32
    .line 33
    iget-object v14, v0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {v4, v14}, Landroidx/compose/runtime/Updater;->findLocation(ILjava/util/List;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-gez v4, :cond_0

    .line 40
    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    neg-int v4, v4

    .line 44
    :cond_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    move/from16 v16, v8

    .line 49
    .line 50
    if-ge v4, v15, :cond_1

    .line 51
    .line 52
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroidx/compose/runtime/Invalidation;

    .line 57
    .line 58
    iget v15, v4, Landroidx/compose/runtime/Invalidation;->location:I

    .line 59
    .line 60
    if-ge v15, v6, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v4, 0x0

    .line 64
    :goto_0
    move/from16 v18, v3

    .line 65
    .line 66
    move v3, v5

    .line 67
    const/16 v17, 0x0

    .line 68
    .line 69
    :goto_1
    if-eqz v4, :cond_2b

    .line 70
    .line 71
    iget-object v15, v4, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 72
    .line 73
    iget v8, v4, Landroidx/compose/runtime/Invalidation;->location:I

    .line 74
    .line 75
    move-object/from16 v20, v1

    .line 76
    .line 77
    invoke-static {v8, v14}, Landroidx/compose/runtime/Updater;->findLocation(ILjava/util/List;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ltz v1, :cond_2

    .line 82
    .line 83
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroidx/compose/runtime/Invalidation;

    .line 88
    .line 89
    :cond_2
    iget-object v1, v4, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 90
    .line 91
    const-wide/16 v21, 0x80

    .line 92
    .line 93
    const-wide/16 v23, 0xff

    .line 94
    .line 95
    const/16 v25, 0x7

    .line 96
    .line 97
    const-wide v26, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move/from16 v34, v6

    .line 108
    .line 109
    move/from16 v29, v7

    .line 110
    .line 111
    move/from16 v30, v9

    .line 112
    .line 113
    :goto_2
    move/from16 v32, v12

    .line 114
    .line 115
    move/from16 v33, v13

    .line 116
    .line 117
    :cond_3
    :goto_3
    move/from16 v1, v18

    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_4
    const/16 v28, 0x8

    .line 122
    .line 123
    iget-object v4, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedDependencies:Landroidx/collection/MutableScatterMap;

    .line 124
    .line 125
    if-nez v4, :cond_5

    .line 126
    .line 127
    move/from16 v34, v6

    .line 128
    .line 129
    move/from16 v29, v7

    .line 130
    .line 131
    move/from16 v30, v9

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    move/from16 v29, v7

    .line 135
    .line 136
    instance-of v7, v1, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 137
    .line 138
    if-eqz v7, :cond_7

    .line 139
    .line 140
    check-cast v1, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 141
    .line 142
    iget-object v7, v1, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 143
    .line 144
    if-nez v7, :cond_6

    .line 145
    .line 146
    move-object/from16 v7, v20

    .line 147
    .line 148
    :cond_6
    move/from16 v30, v9

    .line 149
    .line 150
    invoke-virtual {v1}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    iget-object v9, v9, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 155
    .line 156
    invoke-virtual {v4, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v7, v9, v1}, Landroidx/compose/runtime/NeverEqualPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    xor-int/lit8 v1, v1, 0x1

    .line 165
    .line 166
    move/from16 v34, v6

    .line 167
    .line 168
    move/from16 v32, v12

    .line 169
    .line 170
    move/from16 v33, v13

    .line 171
    .line 172
    goto/16 :goto_6

    .line 173
    .line 174
    :cond_7
    move/from16 v30, v9

    .line 175
    .line 176
    instance-of v7, v1, Landroidx/collection/ScatterSet;

    .line 177
    .line 178
    if-eqz v7, :cond_f

    .line 179
    .line 180
    check-cast v1, Landroidx/collection/ScatterSet;

    .line 181
    .line 182
    invoke-virtual {v1}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    if-eqz v7, :cond_d

    .line 187
    .line 188
    iget-object v7, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 189
    .line 190
    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    .line 191
    .line 192
    array-length v9, v1

    .line 193
    add-int/lit8 v9, v9, -0x2

    .line 194
    .line 195
    if-ltz v9, :cond_d

    .line 196
    .line 197
    move-object/from16 v31, v1

    .line 198
    .line 199
    move/from16 v32, v12

    .line 200
    .line 201
    move/from16 v33, v13

    .line 202
    .line 203
    const/4 v1, 0x0

    .line 204
    :goto_4
    aget-wide v12, v31, v1

    .line 205
    .line 206
    move/from16 v34, v6

    .line 207
    .line 208
    move-object/from16 v35, v7

    .line 209
    .line 210
    not-long v6, v12

    .line 211
    shl-long v6, v6, v25

    .line 212
    .line 213
    and-long/2addr v6, v12

    .line 214
    and-long v6, v6, v26

    .line 215
    .line 216
    cmp-long v6, v6, v26

    .line 217
    .line 218
    if-eqz v6, :cond_c

    .line 219
    .line 220
    sub-int v6, v1, v9

    .line 221
    .line 222
    not-int v6, v6

    .line 223
    ushr-int/lit8 v6, v6, 0x1f

    .line 224
    .line 225
    rsub-int/lit8 v6, v6, 0x8

    .line 226
    .line 227
    const/4 v7, 0x0

    .line 228
    :goto_5
    if-ge v7, v6, :cond_b

    .line 229
    .line 230
    and-long v36, v12, v23

    .line 231
    .line 232
    cmp-long v36, v36, v21

    .line 233
    .line 234
    if-gez v36, :cond_9

    .line 235
    .line 236
    shl-int/lit8 v36, v1, 0x3

    .line 237
    .line 238
    add-int v36, v36, v7

    .line 239
    .line 240
    move/from16 v37, v7

    .line 241
    .line 242
    aget-object v7, v35, v36

    .line 243
    .line 244
    move-wide/from16 v38, v12

    .line 245
    .line 246
    instance-of v12, v7, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 247
    .line 248
    if-eqz v12, :cond_3

    .line 249
    .line 250
    check-cast v7, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 251
    .line 252
    iget-object v12, v7, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 253
    .line 254
    if-nez v12, :cond_8

    .line 255
    .line 256
    move-object/from16 v12, v20

    .line 257
    .line 258
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    .line 259
    .line 260
    .line 261
    move-result-object v13

    .line 262
    iget-object v13, v13, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    .line 263
    .line 264
    invoke-virtual {v4, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-virtual {v12, v13, v7}, Landroidx/compose/runtime/NeverEqualPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    if-nez v7, :cond_a

    .line 273
    .line 274
    goto/16 :goto_3

    .line 275
    .line 276
    :cond_9
    move/from16 v37, v7

    .line 277
    .line 278
    move-wide/from16 v38, v12

    .line 279
    .line 280
    :cond_a
    shr-long v12, v38, v28

    .line 281
    .line 282
    add-int/lit8 v7, v37, 0x1

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_b
    move/from16 v7, v28

    .line 286
    .line 287
    if-ne v6, v7, :cond_e

    .line 288
    .line 289
    :cond_c
    if-eq v1, v9, :cond_e

    .line 290
    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 292
    .line 293
    move/from16 v6, v34

    .line 294
    .line 295
    move-object/from16 v7, v35

    .line 296
    .line 297
    const/16 v28, 0x8

    .line 298
    .line 299
    goto :goto_4

    .line 300
    :cond_d
    move/from16 v34, v6

    .line 301
    .line 302
    move/from16 v32, v12

    .line 303
    .line 304
    move/from16 v33, v13

    .line 305
    .line 306
    :cond_e
    const/4 v1, 0x0

    .line 307
    goto :goto_6

    .line 308
    :cond_f
    move/from16 v34, v6

    .line 309
    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :goto_6
    if-eqz v1, :cond_22

    .line 313
    .line 314
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 315
    .line 316
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->reposition(I)V

    .line 317
    .line 318
    .line 319
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 320
    .line 321
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 322
    .line 323
    invoke-virtual {v0, v3, v1, v5}, Landroidx/compose/runtime/GapComposer;->recordUpsAndDowns(III)V

    .line 324
    .line 325
    .line 326
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 327
    .line 328
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    :goto_7
    if-eq v3, v5, :cond_10

    .line 333
    .line 334
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 335
    .line 336
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-nez v4, :cond_10

    .line 341
    .line 342
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 343
    .line 344
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    goto :goto_7

    .line 349
    :cond_10
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 350
    .line 351
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    if-eqz v4, :cond_11

    .line 356
    .line 357
    const/4 v4, 0x0

    .line 358
    goto :goto_8

    .line 359
    :cond_11
    move/from16 v4, v30

    .line 360
    .line 361
    :goto_8
    if-ne v3, v1, :cond_12

    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_12
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updatedNodeCount(I)I

    .line 365
    .line 366
    .line 367
    move-result v6

    .line 368
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 369
    .line 370
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->nodeCount(I)I

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    sub-int/2addr v6, v7

    .line 375
    add-int/2addr v6, v4

    .line 376
    :cond_13
    if-ge v4, v6, :cond_15

    .line 377
    .line 378
    if-eq v3, v8, :cond_15

    .line 379
    .line 380
    add-int/lit8 v3, v3, 0x1

    .line 381
    .line 382
    :goto_9
    if-ge v3, v8, :cond_15

    .line 383
    .line 384
    iget-object v7, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 385
    .line 386
    iget-object v9, v7, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 387
    .line 388
    mul-int/lit8 v12, v3, 0x5

    .line 389
    .line 390
    add-int/lit8 v12, v12, 0x3

    .line 391
    .line 392
    aget v9, v9, v12

    .line 393
    .line 394
    add-int/2addr v9, v3

    .line 395
    if-lt v8, v9, :cond_13

    .line 396
    .line 397
    invoke-virtual {v7, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 398
    .line 399
    .line 400
    move-result v7

    .line 401
    if-eqz v7, :cond_14

    .line 402
    .line 403
    move/from16 v3, v18

    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_14
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->updatedNodeCount(I)I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    :goto_a
    add-int/2addr v4, v3

    .line 411
    move v3, v9

    .line 412
    goto :goto_9

    .line 413
    :cond_15
    :goto_b
    iput v4, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->rGroupIndexOf(I)I

    .line 416
    .line 417
    .line 418
    move-result v3

    .line 419
    iput v3, v0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 420
    .line 421
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 422
    .line 423
    invoke-virtual {v3, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    const-wide/16 v6, 0x0

    .line 428
    .line 429
    move/from16 v8, v16

    .line 430
    .line 431
    const/4 v4, 0x0

    .line 432
    :goto_c
    if-ltz v3, :cond_16

    .line 433
    .line 434
    if-ne v3, v5, :cond_17

    .line 435
    .line 436
    invoke-static {v10, v11, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 437
    .line 438
    .line 439
    move-result-wide v3

    .line 440
    xor-long/2addr v6, v3

    .line 441
    :cond_16
    move/from16 v17, v1

    .line 442
    .line 443
    goto/16 :goto_12

    .line 444
    .line 445
    :cond_17
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 446
    .line 447
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hasObjectKey(I)Z

    .line 448
    .line 449
    .line 450
    move-result v12

    .line 451
    iget-object v13, v9, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 452
    .line 453
    move/from16 v17, v1

    .line 454
    .line 455
    if-eqz v12, :cond_1b

    .line 456
    .line 457
    invoke-virtual {v9, v13, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v9

    .line 461
    if-eqz v9, :cond_1a

    .line 462
    .line 463
    instance-of v12, v9, Ljava/lang/Enum;

    .line 464
    .line 465
    if-eqz v12, :cond_18

    .line 466
    .line 467
    check-cast v9, Ljava/lang/Enum;

    .line 468
    .line 469
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 470
    .line 471
    .line 472
    move-result v9

    .line 473
    :goto_d
    move v1, v9

    .line 474
    :goto_e
    const v9, 0x78cc281

    .line 475
    .line 476
    .line 477
    goto :goto_10

    .line 478
    :cond_18
    instance-of v12, v9, Landroidx/compose/runtime/MovableContent;

    .line 479
    .line 480
    if-eqz v12, :cond_19

    .line 481
    .line 482
    const v1, 0x78cc281

    .line 483
    .line 484
    .line 485
    goto :goto_e

    .line 486
    :cond_19
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    .line 487
    .line 488
    .line 489
    move-result v9

    .line 490
    goto :goto_d

    .line 491
    :cond_1a
    const/4 v1, 0x0

    .line 492
    goto :goto_e

    .line 493
    :cond_1b
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupKey(I)I

    .line 494
    .line 495
    .line 496
    move-result v12

    .line 497
    const/16 v1, 0xcf

    .line 498
    .line 499
    if-ne v12, v1, :cond_1d

    .line 500
    .line 501
    invoke-virtual {v9, v13, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->aux([II)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    if-eqz v1, :cond_1d

    .line 506
    .line 507
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 508
    .line 509
    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v9

    .line 513
    if-eqz v9, :cond_1c

    .line 514
    .line 515
    goto :goto_f

    .line 516
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 517
    .line 518
    .line 519
    move-result v1

    .line 520
    goto :goto_e

    .line 521
    :cond_1d
    :goto_f
    move v1, v12

    .line 522
    goto :goto_e

    .line 523
    :goto_10
    if-ne v1, v9, :cond_1e

    .line 524
    .line 525
    int-to-long v8, v1

    .line 526
    invoke-static {v8, v9, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 527
    .line 528
    .line 529
    move-result-wide v3

    .line 530
    xor-long/2addr v6, v3

    .line 531
    goto :goto_12

    .line 532
    :cond_1e
    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 533
    .line 534
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hasObjectKey(I)Z

    .line 535
    .line 536
    .line 537
    move-result v9

    .line 538
    if-eqz v9, :cond_1f

    .line 539
    .line 540
    const/4 v9, 0x0

    .line 541
    goto :goto_11

    .line 542
    :cond_1f
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->rGroupIndexOf(I)I

    .line 543
    .line 544
    .line 545
    move-result v9

    .line 546
    :goto_11
    int-to-long v12, v1

    .line 547
    invoke-static {v12, v13, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 548
    .line 549
    .line 550
    move-result-wide v12

    .line 551
    xor-long/2addr v6, v12

    .line 552
    int-to-long v12, v9

    .line 553
    invoke-static {v12, v13, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 554
    .line 555
    .line 556
    move-result-wide v12

    .line 557
    xor-long/2addr v6, v12

    .line 558
    add-int/lit8 v8, v8, 0x6

    .line 559
    .line 560
    rem-int/lit8 v8, v8, 0x40

    .line 561
    .line 562
    add-int/lit8 v4, v4, 0x6

    .line 563
    .line 564
    rem-int/lit8 v4, v4, 0x40

    .line 565
    .line 566
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 567
    .line 568
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    move/from16 v1, v17

    .line 573
    .line 574
    goto/16 :goto_c

    .line 575
    .line 576
    :goto_12
    iput-wide v6, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 577
    .line 578
    const/4 v1, 0x0

    .line 579
    iput-object v1, v0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 580
    .line 581
    iget-object v3, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    .line 582
    .line 583
    if-eqz v3, :cond_21

    .line 584
    .line 585
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v4

    .line 589
    invoke-interface {v3, v0, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    iput-object v1, v0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 593
    .line 594
    iget-object v3, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 595
    .line 596
    iget-object v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 597
    .line 598
    aget v4, v4, v29

    .line 599
    .line 600
    add-int/2addr v4, v5

    .line 601
    iget v6, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 602
    .line 603
    if-lt v6, v5, :cond_20

    .line 604
    .line 605
    if-gt v6, v4, :cond_20

    .line 606
    .line 607
    goto :goto_13

    .line 608
    :cond_20
    new-instance v7, Ljava/lang/StringBuilder;

    .line 609
    .line 610
    const-string v8, "Index "

    .line 611
    .line 612
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    const-string v8, " is not a parent of "

    .line 619
    .line 620
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v6

    .line 630
    invoke-static {v6}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    :goto_13
    iput v5, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 634
    .line 635
    iput v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 636
    .line 637
    const/4 v4, 0x0

    .line 638
    iput v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 639
    .line 640
    iput v4, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlotEnd:I

    .line 641
    .line 642
    move/from16 v19, v2

    .line 643
    .line 644
    move v1, v4

    .line 645
    move/from16 v3, v17

    .line 646
    .line 647
    move/from16 v17, v18

    .line 648
    .line 649
    goto/16 :goto_1c

    .line 650
    .line 651
    :cond_21
    const-string v0, "Invalid restart scope"

    .line 652
    .line 653
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$2(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    return-void

    .line 657
    :cond_22
    const/4 v1, 0x0

    .line 658
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->invalidateStack:Ljava/util/ArrayList;

    .line 659
    .line 660
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    iget-object v6, v0, Landroidx/compose/runtime/GapComposer;->observerHolder:Landroidx/appcompat/widget/PopupMenu$1;

    .line 664
    .line 665
    invoke-virtual {v6}, Landroidx/appcompat/widget/PopupMenu$1;->current()V

    .line 666
    .line 667
    .line 668
    iget-object v6, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->owner:Landroidx/compose/runtime/RecomposeScopeOwner;

    .line 669
    .line 670
    if-eqz v6, :cond_27

    .line 671
    .line 672
    iget-object v7, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->trackedInstances:Landroidx/collection/MutableObjectIntMap;

    .line 673
    .line 674
    if-eqz v7, :cond_27

    .line 675
    .line 676
    move/from16 v8, v18

    .line 677
    .line 678
    invoke-virtual {v15, v8}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    .line 679
    .line 680
    .line 681
    :try_start_0
    iget-object v8, v7, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    .line 682
    .line 683
    iget-object v9, v7, Landroidx/collection/MutableObjectIntMap;->values:[I

    .line 684
    .line 685
    iget-object v7, v7, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    .line 686
    .line 687
    array-length v12, v7

    .line 688
    add-int/lit8 v12, v12, -0x2

    .line 689
    .line 690
    move/from16 v19, v2

    .line 691
    .line 692
    if-ltz v12, :cond_25

    .line 693
    .line 694
    const/4 v13, 0x0

    .line 695
    :goto_14
    aget-wide v1, v7, v13

    .line 696
    .line 697
    move-object/from16 v36, v7

    .line 698
    .line 699
    move-object/from16 v35, v8

    .line 700
    .line 701
    not-long v7, v1

    .line 702
    shl-long v7, v7, v25

    .line 703
    .line 704
    and-long/2addr v7, v1

    .line 705
    and-long v7, v7, v26

    .line 706
    .line 707
    cmp-long v7, v7, v26

    .line 708
    .line 709
    if-eqz v7, :cond_26

    .line 710
    .line 711
    sub-int v7, v13, v12

    .line 712
    .line 713
    not-int v7, v7

    .line 714
    ushr-int/lit8 v7, v7, 0x1f

    .line 715
    .line 716
    const/16 v28, 0x8

    .line 717
    .line 718
    rsub-int/lit8 v7, v7, 0x8

    .line 719
    .line 720
    const/4 v8, 0x0

    .line 721
    :goto_15
    if-ge v8, v7, :cond_24

    .line 722
    .line 723
    and-long v37, v1, v23

    .line 724
    .line 725
    cmp-long v37, v37, v21

    .line 726
    .line 727
    if-gez v37, :cond_23

    .line 728
    .line 729
    shl-int/lit8 v37, v13, 0x3

    .line 730
    .line 731
    add-int v37, v37, v8

    .line 732
    .line 733
    move-wide/from16 v38, v1

    .line 734
    .line 735
    aget-object v1, v35, v37

    .line 736
    .line 737
    aget v2, v9, v37

    .line 738
    .line 739
    invoke-interface {v6, v1}, Landroidx/compose/runtime/RecomposeScopeOwner;->recordReadOf(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    .line 741
    .line 742
    :goto_16
    const/16 v1, 0x8

    .line 743
    .line 744
    goto :goto_17

    .line 745
    :catchall_0
    move-exception v0

    .line 746
    const/4 v1, 0x0

    .line 747
    goto :goto_1a

    .line 748
    :cond_23
    move-wide/from16 v38, v1

    .line 749
    .line 750
    goto :goto_16

    .line 751
    :goto_17
    shr-long v37, v38, v1

    .line 752
    .line 753
    add-int/lit8 v8, v8, 0x1

    .line 754
    .line 755
    move-wide/from16 v1, v37

    .line 756
    .line 757
    goto :goto_15

    .line 758
    :cond_24
    const/16 v1, 0x8

    .line 759
    .line 760
    if-ne v7, v1, :cond_25

    .line 761
    .line 762
    goto :goto_18

    .line 763
    :cond_25
    const/4 v1, 0x0

    .line 764
    goto :goto_19

    .line 765
    :cond_26
    const/16 v1, 0x8

    .line 766
    .line 767
    :goto_18
    if-eq v13, v12, :cond_25

    .line 768
    .line 769
    add-int/lit8 v13, v13, 0x1

    .line 770
    .line 771
    move-object/from16 v8, v35

    .line 772
    .line 773
    move-object/from16 v7, v36

    .line 774
    .line 775
    goto :goto_14

    .line 776
    :goto_19
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    .line 777
    .line 778
    .line 779
    goto :goto_1b

    .line 780
    :goto_1a
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->setRereading(Z)V

    .line 781
    .line 782
    .line 783
    throw v0

    .line 784
    :cond_27
    move/from16 v19, v2

    .line 785
    .line 786
    const/4 v1, 0x0

    .line 787
    :goto_1b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 788
    .line 789
    .line 790
    move-result v2

    .line 791
    const/16 v18, 0x1

    .line 792
    .line 793
    add-int/lit8 v2, v2, -0x1

    .line 794
    .line 795
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    :goto_1c
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 799
    .line 800
    iget v2, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 801
    .line 802
    invoke-static {v2, v14}, Landroidx/compose/runtime/Updater;->findLocation(ILjava/util/List;)I

    .line 803
    .line 804
    .line 805
    move-result v2

    .line 806
    if-gez v2, :cond_28

    .line 807
    .line 808
    add-int/lit8 v2, v2, 0x1

    .line 809
    .line 810
    neg-int v2, v2

    .line 811
    :cond_28
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 812
    .line 813
    .line 814
    move-result v4

    .line 815
    if-ge v2, v4, :cond_29

    .line 816
    .line 817
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v2

    .line 821
    check-cast v2, Landroidx/compose/runtime/Invalidation;

    .line 822
    .line 823
    iget v4, v2, Landroidx/compose/runtime/Invalidation;->location:I

    .line 824
    .line 825
    move/from16 v6, v34

    .line 826
    .line 827
    if-ge v4, v6, :cond_2a

    .line 828
    .line 829
    move-object v4, v2

    .line 830
    goto :goto_1d

    .line 831
    :cond_29
    move/from16 v6, v34

    .line 832
    .line 833
    :cond_2a
    const/4 v4, 0x0

    .line 834
    :goto_1d
    move/from16 v2, v19

    .line 835
    .line 836
    move-object/from16 v1, v20

    .line 837
    .line 838
    move/from16 v7, v29

    .line 839
    .line 840
    move/from16 v9, v30

    .line 841
    .line 842
    move/from16 v12, v32

    .line 843
    .line 844
    move/from16 v13, v33

    .line 845
    .line 846
    goto/16 :goto_1

    .line 847
    .line 848
    :cond_2b
    move/from16 v19, v2

    .line 849
    .line 850
    move/from16 v30, v9

    .line 851
    .line 852
    move/from16 v32, v12

    .line 853
    .line 854
    move/from16 v33, v13

    .line 855
    .line 856
    if-eqz v17, :cond_2c

    .line 857
    .line 858
    invoke-virtual {v0, v3, v5, v5}, Landroidx/compose/runtime/GapComposer;->recordUpsAndDowns(III)V

    .line 859
    .line 860
    .line 861
    iget-object v1, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 862
    .line 863
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->skipToGroupEnd()V

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->updatedNodeCount(I)I

    .line 867
    .line 868
    .line 869
    move-result v1

    .line 870
    add-int v9, v30, v1

    .line 871
    .line 872
    iput v9, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 873
    .line 874
    add-int v12, v32, v1

    .line 875
    .line 876
    iput v12, v0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 877
    .line 878
    move/from16 v1, v33

    .line 879
    .line 880
    iput v1, v0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 881
    .line 882
    goto :goto_1e

    .line 883
    :cond_2c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->skipReaderToGroupEnd()V

    .line 884
    .line 885
    .line 886
    :goto_1e
    iput-wide v10, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 887
    .line 888
    move/from16 v1, v19

    .line 889
    .line 890
    iput-boolean v1, v0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 891
    .line 892
    return-void
.end method

.method public final recordDelete()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->reportFreeMovableContent(I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 20
    .line 21
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveCurrentGroup;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RemoveCurrentGroup;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/GapComposer;

    .line 29
    .line 30
    iget-object v1, v1, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 31
    .line 32
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 33
    .line 34
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 35
    .line 36
    mul-int/lit8 v1, v1, 0x5

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x3

    .line 39
    .line 40
    aget v1, v2, v1

    .line 41
    .line 42
    add-int/2addr v1, v0

    .line 43
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 44
    .line 45
    return-void
.end method

.method public final recordProviderUpdate(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    .line 6
    .line 7
    invoke-direct {v0}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->providerUpdates:Landroidx/collection/MutableIntObjectMap;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 13
    .line 14
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 15
    .line 16
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final recordUpsAndDowns(III)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-eq p1, p3, :cond_9

    .line 7
    .line 8
    if-ne p2, p3, :cond_1

    .line 9
    .line 10
    goto/16 :goto_6

    .line 11
    .line 12
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-ne v1, p2, :cond_2

    .line 17
    .line 18
    move p3, p2

    .line 19
    goto/16 :goto_6

    .line 20
    .line 21
    :cond_2
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v1, p1, :cond_3

    .line 26
    .line 27
    :goto_0
    move p3, p1

    .line 28
    goto :goto_6

    .line 29
    :cond_3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ne v1, v2, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    goto :goto_6

    .line 44
    :cond_4
    const/4 v1, 0x0

    .line 45
    move v2, p1

    .line 46
    move v3, v1

    .line 47
    :goto_1
    if-lez v2, :cond_5

    .line 48
    .line 49
    if-eq v2, p3, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    move v2, p2

    .line 59
    move v4, v1

    .line 60
    :goto_2
    if-lez v2, :cond_6

    .line 61
    .line 62
    if-eq v2, p3, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_6
    sub-int p3, v3, v4

    .line 72
    .line 73
    move v5, p1

    .line 74
    move v2, v1

    .line 75
    :goto_3
    if-ge v2, p3, :cond_7

    .line 76
    .line 77
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_7
    sub-int/2addr v4, v3

    .line 85
    move p3, p2

    .line 86
    :goto_4
    if-ge v1, v4, :cond_8

    .line 87
    .line 88
    invoke-virtual {v0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_8
    move v1, p3

    .line 96
    move p3, v5

    .line 97
    :goto_5
    if-eq p3, v1, :cond_9

    .line 98
    .line 99
    invoke-virtual {v0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    goto :goto_5

    .line 108
    :cond_9
    :goto_6
    if-lez p1, :cond_b

    .line 109
    .line 110
    if-eq p1, p3, :cond_b

    .line 111
    .line 112
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_a

    .line 117
    .line 118
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveUp()V

    .line 121
    .line 122
    .line 123
    :cond_a
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    goto :goto_6

    .line 128
    :cond_b
    invoke-virtual {p0, p2, p3}, Landroidx/compose/runtime/GapComposer;->doRecordDownsFor(II)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final rememberedValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 8
    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    const-string p0, "A call to createNode(), emitNode() or useNode() expected"

    .line 12
    .line 13
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    instance-of p0, v0, Landroidx/compose/runtime/ReusableGapRememberObserverHolder;

    .line 28
    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    :cond_1
    return-object v1

    .line 32
    :cond_2
    instance-of p0, v0, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 33
    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    check-cast v0, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 37
    .line 38
    iget-object p0, v0, Landroidx/compose/runtime/GapRememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    return-object v0
.end method

.method public final reportFreeMovableContent(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->node(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 21
    .line 22
    .line 23
    iget-object v3, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    invoke-static {p0, p1, p1, v0, v2}, Landroidx/compose/runtime/GapComposer;->reportFreeMovableContent$reportGroup(Landroidx/compose/runtime/GapComposer;IIZI)I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->moveUp()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final shouldExecute(IZ)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_5

    .line 5
    .line 6
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 11
    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->shouldPauseCallback:Landroidx/compose/runtime/ShouldPauseCallback;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/ShouldPauseCallback;->shouldPause()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_7

    .line 31
    .line 32
    iget p1, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 33
    .line 34
    and-int/lit16 v2, p1, 0x200

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    return v0

    .line 39
    :cond_3
    or-int/lit8 v0, p1, 0x1

    .line 40
    .line 41
    iput v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 42
    .line 43
    iget-boolean v2, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 44
    .line 45
    if-eqz v2, :cond_4

    .line 46
    .line 47
    or-int/lit16 p1, p1, 0x81

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    and-int/lit16 p1, v0, -0x81

    .line 51
    .line 52
    :goto_0
    or-int/lit16 p1, p1, 0x100

    .line 53
    .line 54
    iput p1, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 55
    .line 56
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 57
    .line 58
    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 59
    .line 60
    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 61
    .line 62
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$RememberPausingScope;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v1, p2}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 71
    .line 72
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/CompositionContext;->reportPausedScope$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :cond_5
    if-nez p2, :cond_7

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getSkipping()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-nez p0, :cond_6

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_6
    return v1

    .line 86
    :cond_7
    :goto_1
    return v0
.end method

.method public final skipCurrentGroup()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->skipGroup()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getGroupKey()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 28
    .line 29
    iget v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 30
    .line 31
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-ge v3, v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v3, v5

    .line 42
    :goto_0
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getGroupAux()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget v6, p0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 47
    .line 48
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 49
    .line 50
    const/16 v8, 0xcf

    .line 51
    .line 52
    const/4 v9, 0x3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    if-ne v1, v8, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    if-nez v10, :cond_2

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    iget-wide v11, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 70
    .line 71
    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    int-to-long v13, v10

    .line 76
    xor-long/2addr v11, v13

    .line 77
    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 78
    .line 79
    .line 80
    move-result-wide v10

    .line 81
    int-to-long v12, v6

    .line 82
    xor-long/2addr v10, v12

    .line 83
    iput-wide v10, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    iget-wide v10, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 87
    .line 88
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 89
    .line 90
    .line 91
    move-result-wide v10

    .line 92
    int-to-long v12, v1

    .line 93
    xor-long/2addr v10, v12

    .line 94
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 95
    .line 96
    .line 97
    move-result-wide v10

    .line 98
    int-to-long v12, v6

    .line 99
    xor-long/2addr v10, v12

    .line 100
    :goto_1
    iput-wide v10, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    instance-of v10, v3, Ljava/lang/Enum;

    .line 104
    .line 105
    if-eqz v10, :cond_4

    .line 106
    .line 107
    move-object v10, v3

    .line 108
    check-cast v10, Ljava/lang/Enum;

    .line 109
    .line 110
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 111
    .line 112
    .line 113
    move-result v10

    .line 114
    :goto_2
    iget-wide v11, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 115
    .line 116
    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 117
    .line 118
    .line 119
    move-result-wide v11

    .line 120
    int-to-long v13, v10

    .line 121
    xor-long/2addr v11, v13

    .line 122
    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 123
    .line 124
    .line 125
    move-result-wide v10

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v10

    .line 131
    goto :goto_2

    .line 132
    :goto_3
    iget v10, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 133
    .line 134
    mul-int/lit8 v10, v10, 0x5

    .line 135
    .line 136
    const/4 v11, 0x1

    .line 137
    add-int/2addr v10, v11

    .line 138
    aget v2, v2, v10

    .line 139
    .line 140
    const/high16 v10, 0x40000000    # 2.0f

    .line 141
    .line 142
    and-int/2addr v2, v10

    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    goto :goto_4

    .line 146
    :cond_5
    const/4 v11, 0x0

    .line 147
    :goto_4
    invoke-virtual {p0, v5, v11}, Landroidx/compose/runtime/GapComposer;->startReaderGroup(Ljava/lang/Object;Z)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->recomposeToGroupEnd()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->endGroup()V

    .line 154
    .line 155
    .line 156
    if-nez v3, :cond_7

    .line 157
    .line 158
    if-eqz v4, :cond_6

    .line 159
    .line 160
    if-ne v1, v8, :cond_6

    .line 161
    .line 162
    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_6

    .line 167
    .line 168
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    iget-wide v1, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 173
    .line 174
    int-to-long v3, v6

    .line 175
    xor-long/2addr v1, v3

    .line 176
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 177
    .line 178
    .line 179
    move-result-wide v1

    .line 180
    int-to-long v3, v0

    .line 181
    xor-long/2addr v1, v3

    .line 182
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 183
    .line 184
    .line 185
    move-result-wide v0

    .line 186
    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 187
    .line 188
    return-void

    .line 189
    :cond_6
    iget-wide v2, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 190
    .line 191
    int-to-long v4, v6

    .line 192
    xor-long/2addr v2, v4

    .line 193
    invoke-static {v2, v3, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 194
    .line 195
    .line 196
    move-result-wide v2

    .line 197
    int-to-long v0, v1

    .line 198
    xor-long/2addr v0, v2

    .line 199
    invoke-static {v0, v1, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 200
    .line 201
    .line 202
    move-result-wide v0

    .line 203
    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 204
    .line 205
    return-void

    .line 206
    :cond_7
    instance-of v0, v3, Ljava/lang/Enum;

    .line 207
    .line 208
    if-eqz v0, :cond_8

    .line 209
    .line 210
    check-cast v3, Ljava/lang/Enum;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    iget-wide v1, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 217
    .line 218
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 219
    .line 220
    .line 221
    move-result-wide v1

    .line 222
    int-to-long v3, v0

    .line 223
    xor-long/2addr v1, v3

    .line 224
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 225
    .line 226
    .line 227
    move-result-wide v0

    .line 228
    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 229
    .line 230
    return-void

    .line 231
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    iget-wide v1, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 236
    .line 237
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 238
    .line 239
    .line 240
    move-result-wide v1

    .line 241
    int-to-long v3, v0

    .line 242
    xor-long/2addr v1, v3

    .line 243
    invoke-static {v1, v2, v9}, Ljava/lang/Long;->rotateRight(JI)J

    .line 244
    .line 245
    .line 246
    move-result-wide v0

    .line 247
    iput-wide v0, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 248
    .line 249
    return-void
.end method

.method public final skipReaderToGroupEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 2
    .line 3
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 4
    .line 5
    if-ltz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 8
    .line 9
    mul-int/lit8 v1, v1, 0x5

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    aget v1, v2, v1

    .line 14
    .line 15
    const v2, 0x3ffffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    iput v1, p0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->skipToGroupEnd()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final skipToGroupEnd()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->groupNodeCount:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "No nodes can be emitted before calling skipAndEndGroup"

    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 12
    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getCurrentRecomposeScope$runtime()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 22
    .line 23
    and-int/lit16 v2, v1, 0x80

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    or-int/lit8 v1, v1, 0x10

    .line 29
    .line 30
    iput v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 31
    .line 32
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->skipReaderToGroupEnd()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->recomposeToGroupEnd()V

    .line 45
    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public final start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 27

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
    move/from16 v4, p4

    .line 10
    .line 11
    const/4 v5, -0x1

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v6

    .line 16
    iget-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 17
    .line 18
    if-eqz v7, :cond_0

    .line 19
    .line 20
    const-string v7, "A call to createNode(), emitNode() or useNode() expected"

    .line 21
    .line 22
    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget v7, v0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 26
    .line 27
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 28
    .line 29
    const/4 v9, 0x3

    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/16 v10, 0xcf

    .line 35
    .line 36
    if-ne v1, v10, :cond_1

    .line 37
    .line 38
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    if-nez v10, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    iget-wide v11, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 49
    .line 50
    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    int-to-long v13, v10

    .line 55
    xor-long/2addr v11, v13

    .line 56
    invoke-static {v11, v12, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 57
    .line 58
    .line 59
    move-result-wide v9

    .line 60
    int-to-long v11, v7

    .line 61
    xor-long/2addr v9, v11

    .line 62
    iput-wide v9, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget-wide v10, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 66
    .line 67
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 68
    .line 69
    .line 70
    move-result-wide v10

    .line 71
    int-to-long v12, v1

    .line 72
    xor-long/2addr v10, v12

    .line 73
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    int-to-long v11, v7

    .line 78
    xor-long/2addr v9, v11

    .line 79
    :goto_0
    iput-wide v9, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    instance-of v7, v2, Ljava/lang/Enum;

    .line 83
    .line 84
    if-eqz v7, :cond_3

    .line 85
    .line 86
    move-object v7, v2

    .line 87
    check-cast v7, Ljava/lang/Enum;

    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    :goto_1
    iget-wide v10, v0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 94
    .line 95
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 96
    .line 97
    .line 98
    move-result-wide v10

    .line 99
    int-to-long v12, v7

    .line 100
    xor-long/2addr v10, v12

    .line 101
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 102
    .line 103
    .line 104
    move-result-wide v9

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    goto :goto_1

    .line 111
    :goto_2
    const/4 v7, 0x1

    .line 112
    if-nez v2, :cond_4

    .line 113
    .line 114
    iget v9, v0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 115
    .line 116
    add-int/2addr v9, v7

    .line 117
    iput v9, v0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 118
    .line 119
    :cond_4
    const/4 v9, 0x0

    .line 120
    if-eqz v4, :cond_5

    .line 121
    .line 122
    move v10, v7

    .line 123
    goto :goto_3

    .line 124
    :cond_5
    move v10, v9

    .line 125
    :goto_3
    iget-boolean v11, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 126
    .line 127
    const/4 v12, 0x0

    .line 128
    if-eqz v11, :cond_b

    .line 129
    .line 130
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 131
    .line 132
    iget v11, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 133
    .line 134
    add-int/2addr v11, v7

    .line 135
    iput v11, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 136
    .line 137
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 138
    .line 139
    iget v11, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    .line 140
    .line 141
    if-eqz v10, :cond_6

    .line 142
    .line 143
    invoke-virtual {v4, v1, v8, v8, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_6
    if-eqz v3, :cond_8

    .line 148
    .line 149
    if-nez v2, :cond_7

    .line 150
    .line 151
    move-object v2, v8

    .line 152
    :cond_7
    invoke-virtual {v4, v1, v2, v3, v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_8
    if-nez v2, :cond_9

    .line 157
    .line 158
    move-object v2, v8

    .line 159
    :cond_9
    invoke-virtual {v4, v1, v2, v8, v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 160
    .line 161
    .line 162
    :goto_4
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 163
    .line 164
    if-eqz v2, :cond_a

    .line 165
    .line 166
    new-instance v3, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 167
    .line 168
    rsub-int/lit8 v4, v11, -0x2

    .line 169
    .line 170
    invoke-direct {v3, v1, v4, v5, v6}, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;-><init>(IIILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget v1, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 174
    .line 175
    iget v6, v2, Landroidx/compose/runtime/GapPending;->startIndex:I

    .line 176
    .line 177
    sub-int/2addr v1, v6

    .line 178
    iget-object v6, v2, Landroidx/compose/runtime/GapPending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 179
    .line 180
    new-instance v7, Landroidx/compose/runtime/composer/GroupInfo;

    .line 181
    .line 182
    invoke-direct {v7, v5, v1, v9}, Landroidx/compose/runtime/composer/GroupInfo;-><init>(III)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v4, v7}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, v2, Landroidx/compose/runtime/GapPending;->usedKeys:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    :cond_a
    invoke-virtual {v0, v10, v12}, Landroidx/compose/runtime/GapComposer;->enterGroup(ZLandroidx/compose/runtime/GapPending;)V

    .line 194
    .line 195
    .line 196
    return-void

    .line 197
    :cond_b
    if-eq v4, v7, :cond_c

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_c
    iget-boolean v4, v0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 201
    .line 202
    if-eqz v4, :cond_d

    .line 203
    .line 204
    move v4, v7

    .line 205
    goto :goto_6

    .line 206
    :cond_d
    :goto_5
    move v4, v9

    .line 207
    :goto_6
    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 208
    .line 209
    if-nez v11, :cond_f

    .line 210
    .line 211
    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 212
    .line 213
    invoke-virtual {v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getGroupKey()I

    .line 214
    .line 215
    .line 216
    move-result v11

    .line 217
    if-nez v4, :cond_10

    .line 218
    .line 219
    if-ne v11, v1, :cond_10

    .line 220
    .line 221
    iget-object v11, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 222
    .line 223
    iget v13, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 224
    .line 225
    iget v14, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 226
    .line 227
    if-ge v13, v14, :cond_e

    .line 228
    .line 229
    iget-object v14, v11, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 230
    .line 231
    invoke-virtual {v11, v14, v13}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    goto :goto_7

    .line 236
    :cond_e
    move-object v11, v12

    .line 237
    :goto_7
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-eqz v11, :cond_10

    .line 242
    .line 243
    invoke-virtual {v0, v3, v10}, Landroidx/compose/runtime/GapComposer;->startReaderGroup(Ljava/lang/Object;Z)V

    .line 244
    .line 245
    .line 246
    :cond_f
    move/from16 p4, v4

    .line 247
    .line 248
    goto :goto_b

    .line 249
    :cond_10
    new-instance v11, Landroidx/compose/runtime/GapPending;

    .line 250
    .line 251
    iget-object v13, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 252
    .line 253
    iget-object v14, v13, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 254
    .line 255
    new-instance v15, Ljava/util/ArrayList;

    .line 256
    .line 257
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .line 259
    .line 260
    iget v5, v13, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 261
    .line 262
    if-lez v5, :cond_12

    .line 263
    .line 264
    :cond_11
    move/from16 p4, v4

    .line 265
    .line 266
    goto :goto_a

    .line 267
    :cond_12
    iget v5, v13, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 268
    .line 269
    :goto_8
    iget v12, v13, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 270
    .line 271
    if-ge v5, v12, :cond_11

    .line 272
    .line 273
    new-instance v12, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 274
    .line 275
    mul-int/lit8 v17, v5, 0x5

    .line 276
    .line 277
    aget v7, v14, v17

    .line 278
    .line 279
    invoke-virtual {v13, v14, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->objectKey([II)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    add-int/lit8 v19, v17, 0x1

    .line 284
    .line 285
    aget v19, v14, v19

    .line 286
    .line 287
    const/high16 v20, 0x40000000    # 2.0f

    .line 288
    .line 289
    and-int v20, v19, v20

    .line 290
    .line 291
    if-eqz v20, :cond_13

    .line 292
    .line 293
    move/from16 p4, v4

    .line 294
    .line 295
    const/4 v4, 0x1

    .line 296
    goto :goto_9

    .line 297
    :cond_13
    const v20, 0x3ffffff

    .line 298
    .line 299
    .line 300
    and-int v19, v19, v20

    .line 301
    .line 302
    move/from16 p4, v4

    .line 303
    .line 304
    move/from16 v4, v19

    .line 305
    .line 306
    :goto_9
    invoke-direct {v12, v7, v5, v4, v9}, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;-><init>(IIILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    add-int/lit8 v17, v17, 0x3

    .line 313
    .line 314
    aget v4, v14, v17

    .line 315
    .line 316
    add-int/2addr v5, v4

    .line 317
    move/from16 v4, p4

    .line 318
    .line 319
    const/4 v7, 0x1

    .line 320
    const/4 v9, 0x0

    .line 321
    goto :goto_8

    .line 322
    :goto_a
    iget v4, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 323
    .line 324
    invoke-direct {v11, v4, v15}, Landroidx/compose/runtime/GapPending;-><init>(ILjava/util/ArrayList;)V

    .line 325
    .line 326
    .line 327
    iput-object v11, v0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 328
    .line 329
    :goto_b
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 330
    .line 331
    if-eqz v4, :cond_29

    .line 332
    .line 333
    iget-object v5, v4, Landroidx/compose/runtime/GapPending;->usedKeys:Ljava/util/ArrayList;

    .line 334
    .line 335
    iget-object v7, v4, Landroidx/compose/runtime/GapPending;->groupInfos:Landroidx/collection/MutableIntObjectMap;

    .line 336
    .line 337
    iget v9, v4, Landroidx/compose/runtime/GapPending;->startIndex:I

    .line 338
    .line 339
    if-eqz v2, :cond_14

    .line 340
    .line 341
    new-instance v11, Landroidx/compose/runtime/JoinedKey;

    .line 342
    .line 343
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v12

    .line 347
    invoke-direct {v11, v12, v2}, Landroidx/compose/runtime/JoinedKey;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    goto :goto_c

    .line 351
    :cond_14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v11

    .line 355
    :goto_c
    iget-object v12, v4, Landroidx/compose/runtime/GapPending;->keyMap$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 356
    .line 357
    invoke-virtual {v12}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v12

    .line 361
    check-cast v12, Landroidx/compose/runtime/collection/MultiValueMap;

    .line 362
    .line 363
    iget-object v12, v12, Landroidx/compose/runtime/collection/MultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    .line 364
    .line 365
    invoke-virtual {v12, v11}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v13

    .line 369
    if-nez v13, :cond_15

    .line 370
    .line 371
    const/4 v13, 0x0

    .line 372
    goto :goto_d

    .line 373
    :cond_15
    instance-of v14, v13, Landroidx/collection/MutableObjectList;

    .line 374
    .line 375
    if-eqz v14, :cond_18

    .line 376
    .line 377
    check-cast v13, Landroidx/collection/MutableObjectList;

    .line 378
    .line 379
    const/4 v14, 0x0

    .line 380
    invoke-virtual {v13, v14}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v15

    .line 384
    invoke-virtual {v13}, Landroidx/collection/ObjectList;->isEmpty()Z

    .line 385
    .line 386
    .line 387
    move-result v14

    .line 388
    if-eqz v14, :cond_16

    .line 389
    .line 390
    invoke-virtual {v12, v11}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    :cond_16
    iget v14, v13, Landroidx/collection/ObjectList;->_size:I

    .line 394
    .line 395
    const/4 v2, 0x1

    .line 396
    if-ne v14, v2, :cond_17

    .line 397
    .line 398
    invoke-virtual {v13}, Landroidx/collection/ObjectList;->first()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-virtual {v12, v11, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    :cond_17
    move-object v13, v15

    .line 406
    goto :goto_d

    .line 407
    :cond_18
    invoke-virtual {v12, v11}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    :goto_d
    check-cast v13, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 411
    .line 412
    if-nez p4, :cond_2a

    .line 413
    .line 414
    if-eqz v13, :cond_2a

    .line 415
    .line 416
    iget v1, v13, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;->location:I

    .line 417
    .line 418
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    check-cast v2, Landroidx/compose/runtime/composer/GroupInfo;

    .line 426
    .line 427
    if-eqz v2, :cond_19

    .line 428
    .line 429
    iget v2, v2, Landroidx/compose/runtime/composer/GroupInfo;->nodeIndex:I

    .line 430
    .line 431
    goto :goto_e

    .line 432
    :cond_19
    const/4 v2, -0x1

    .line 433
    :goto_e
    add-int/2addr v2, v9

    .line 434
    iput v2, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 435
    .line 436
    invoke-virtual {v7, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    check-cast v2, Landroidx/compose/runtime/composer/GroupInfo;

    .line 441
    .line 442
    if-eqz v2, :cond_1a

    .line 443
    .line 444
    iget v5, v2, Landroidx/compose/runtime/composer/GroupInfo;->slotIndex:I

    .line 445
    .line 446
    goto :goto_f

    .line 447
    :cond_1a
    const/4 v5, -0x1

    .line 448
    :goto_f
    iget v2, v4, Landroidx/compose/runtime/GapPending;->groupIndex:I

    .line 449
    .line 450
    sub-int v4, v5, v2

    .line 451
    .line 452
    const/16 v15, 0x8

    .line 453
    .line 454
    if-le v5, v2, :cond_21

    .line 455
    .line 456
    const/16 p1, 0x7

    .line 457
    .line 458
    iget-object v6, v7, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 459
    .line 460
    iget-object v7, v7, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 461
    .line 462
    const-wide/16 v19, 0x80

    .line 463
    .line 464
    array-length v8, v7

    .line 465
    add-int/lit8 v8, v8, -0x2

    .line 466
    .line 467
    if-ltz v8, :cond_20

    .line 468
    .line 469
    const/4 v9, 0x0

    .line 470
    const-wide/16 v21, 0xff

    .line 471
    .line 472
    :goto_10
    aget-wide v11, v7, v9

    .line 473
    .line 474
    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    not-long v13, v11

    .line 480
    shl-long v13, v13, p1

    .line 481
    .line 482
    and-long/2addr v13, v11

    .line 483
    and-long v13, v13, v23

    .line 484
    .line 485
    cmp-long v13, v13, v23

    .line 486
    .line 487
    if-eqz v13, :cond_1f

    .line 488
    .line 489
    sub-int v13, v9, v8

    .line 490
    .line 491
    not-int v13, v13

    .line 492
    ushr-int/lit8 v13, v13, 0x1f

    .line 493
    .line 494
    rsub-int/lit8 v13, v13, 0x8

    .line 495
    .line 496
    const/4 v14, 0x0

    .line 497
    :goto_11
    if-ge v14, v13, :cond_1e

    .line 498
    .line 499
    and-long v25, v11, v21

    .line 500
    .line 501
    cmp-long v16, v25, v19

    .line 502
    .line 503
    if-gez v16, :cond_1c

    .line 504
    .line 505
    shl-int/lit8 v16, v9, 0x3

    .line 506
    .line 507
    add-int v16, v16, v14

    .line 508
    .line 509
    aget-object v16, v6, v16

    .line 510
    .line 511
    move/from16 p2, v15

    .line 512
    .line 513
    move-object/from16 v15, v16

    .line 514
    .line 515
    check-cast v15, Landroidx/compose/runtime/composer/GroupInfo;

    .line 516
    .line 517
    move/from16 p4, v4

    .line 518
    .line 519
    iget v4, v15, Landroidx/compose/runtime/composer/GroupInfo;->slotIndex:I

    .line 520
    .line 521
    if-ne v4, v5, :cond_1b

    .line 522
    .line 523
    iput v2, v15, Landroidx/compose/runtime/composer/GroupInfo;->slotIndex:I

    .line 524
    .line 525
    goto :goto_12

    .line 526
    :cond_1b
    if-gt v2, v4, :cond_1d

    .line 527
    .line 528
    if-ge v4, v5, :cond_1d

    .line 529
    .line 530
    add-int/lit8 v4, v4, 0x1

    .line 531
    .line 532
    iput v4, v15, Landroidx/compose/runtime/composer/GroupInfo;->slotIndex:I

    .line 533
    .line 534
    goto :goto_12

    .line 535
    :cond_1c
    move/from16 p4, v4

    .line 536
    .line 537
    move/from16 p2, v15

    .line 538
    .line 539
    :cond_1d
    :goto_12
    shr-long v11, v11, p2

    .line 540
    .line 541
    add-int/lit8 v14, v14, 0x1

    .line 542
    .line 543
    move/from16 v15, p2

    .line 544
    .line 545
    move/from16 v4, p4

    .line 546
    .line 547
    goto :goto_11

    .line 548
    :cond_1e
    move/from16 p4, v4

    .line 549
    .line 550
    move v4, v15

    .line 551
    if-ne v13, v4, :cond_27

    .line 552
    .line 553
    goto :goto_13

    .line 554
    :cond_1f
    move/from16 p4, v4

    .line 555
    .line 556
    :goto_13
    if-eq v9, v8, :cond_27

    .line 557
    .line 558
    add-int/lit8 v9, v9, 0x1

    .line 559
    .line 560
    move/from16 v4, p4

    .line 561
    .line 562
    const/16 v15, 0x8

    .line 563
    .line 564
    goto :goto_10

    .line 565
    :cond_20
    move/from16 p4, v4

    .line 566
    .line 567
    goto/16 :goto_1a

    .line 568
    .line 569
    :cond_21
    move/from16 p4, v4

    .line 570
    .line 571
    const/16 p1, 0x7

    .line 572
    .line 573
    const-wide/16 v19, 0x80

    .line 574
    .line 575
    const-wide/16 v21, 0xff

    .line 576
    .line 577
    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    if-le v2, v5, :cond_27

    .line 583
    .line 584
    iget-object v4, v7, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    .line 585
    .line 586
    iget-object v6, v7, Landroidx/collection/IntObjectMap;->metadata:[J

    .line 587
    .line 588
    array-length v7, v6

    .line 589
    add-int/lit8 v7, v7, -0x2

    .line 590
    .line 591
    if-ltz v7, :cond_27

    .line 592
    .line 593
    const/4 v8, 0x0

    .line 594
    :goto_14
    aget-wide v11, v6, v8

    .line 595
    .line 596
    not-long v13, v11

    .line 597
    shl-long v13, v13, p1

    .line 598
    .line 599
    and-long/2addr v13, v11

    .line 600
    and-long v13, v13, v23

    .line 601
    .line 602
    cmp-long v9, v13, v23

    .line 603
    .line 604
    if-eqz v9, :cond_26

    .line 605
    .line 606
    sub-int v9, v8, v7

    .line 607
    .line 608
    not-int v9, v9

    .line 609
    ushr-int/lit8 v9, v9, 0x1f

    .line 610
    .line 611
    const/16 v13, 0x8

    .line 612
    .line 613
    rsub-int/lit8 v15, v9, 0x8

    .line 614
    .line 615
    const/4 v9, 0x0

    .line 616
    :goto_15
    if-ge v9, v15, :cond_25

    .line 617
    .line 618
    and-long v13, v11, v21

    .line 619
    .line 620
    cmp-long v13, v13, v19

    .line 621
    .line 622
    if-gez v13, :cond_24

    .line 623
    .line 624
    shl-int/lit8 v13, v8, 0x3

    .line 625
    .line 626
    add-int/2addr v13, v9

    .line 627
    aget-object v13, v4, v13

    .line 628
    .line 629
    check-cast v13, Landroidx/compose/runtime/composer/GroupInfo;

    .line 630
    .line 631
    iget v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->slotIndex:I

    .line 632
    .line 633
    if-ne v14, v5, :cond_22

    .line 634
    .line 635
    iput v2, v13, Landroidx/compose/runtime/composer/GroupInfo;->slotIndex:I

    .line 636
    .line 637
    goto :goto_17

    .line 638
    :cond_22
    move-object/from16 v16, v4

    .line 639
    .line 640
    add-int/lit8 v4, v5, 0x1

    .line 641
    .line 642
    if-gt v4, v14, :cond_23

    .line 643
    .line 644
    if-ge v14, v2, :cond_23

    .line 645
    .line 646
    add-int/lit8 v14, v14, -0x1

    .line 647
    .line 648
    iput v14, v13, Landroidx/compose/runtime/composer/GroupInfo;->slotIndex:I

    .line 649
    .line 650
    :cond_23
    :goto_16
    const/16 v13, 0x8

    .line 651
    .line 652
    goto :goto_18

    .line 653
    :cond_24
    :goto_17
    move-object/from16 v16, v4

    .line 654
    .line 655
    goto :goto_16

    .line 656
    :goto_18
    shr-long/2addr v11, v13

    .line 657
    add-int/lit8 v9, v9, 0x1

    .line 658
    .line 659
    move-object/from16 v4, v16

    .line 660
    .line 661
    goto :goto_15

    .line 662
    :cond_25
    move-object/from16 v16, v4

    .line 663
    .line 664
    const/16 v13, 0x8

    .line 665
    .line 666
    if-ne v15, v13, :cond_27

    .line 667
    .line 668
    goto :goto_19

    .line 669
    :cond_26
    move-object/from16 v16, v4

    .line 670
    .line 671
    const/16 v13, 0x8

    .line 672
    .line 673
    :goto_19
    if-eq v8, v7, :cond_27

    .line 674
    .line 675
    add-int/lit8 v8, v8, 0x1

    .line 676
    .line 677
    move-object/from16 v4, v16

    .line 678
    .line 679
    goto :goto_14

    .line 680
    :cond_27
    :goto_1a
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 681
    .line 682
    iget v4, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 683
    .line 684
    iget-object v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/GapComposer;

    .line 685
    .line 686
    iget-object v5, v5, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 687
    .line 688
    iget v5, v5, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 689
    .line 690
    sub-int v5, v1, v5

    .line 691
    .line 692
    add-int/2addr v5, v4

    .line 693
    iput v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 694
    .line 695
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 696
    .line 697
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->reposition(I)V

    .line 698
    .line 699
    .line 700
    if-lez p4, :cond_28

    .line 701
    .line 702
    const/4 v14, 0x0

    .line 703
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->recordSlotEditing()V

    .line 707
    .line 708
    .line 709
    iget-object v1, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 710
    .line 711
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 712
    .line 713
    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveCurrentGroup;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$MoveCurrentGroup;

    .line 714
    .line 715
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 716
    .line 717
    .line 718
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgs:[I

    .line 719
    .line 720
    iget v4, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 721
    .line 722
    iget-object v5, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 723
    .line 724
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 725
    .line 726
    const/16 v18, 0x1

    .line 727
    .line 728
    add-int/lit8 v1, v1, -0x1

    .line 729
    .line 730
    aget-object v1, v5, v1

    .line 731
    .line 732
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 733
    .line 734
    sub-int/2addr v4, v1

    .line 735
    aput p4, v2, v4

    .line 736
    .line 737
    :cond_28
    invoke-virtual {v0, v3, v10}, Landroidx/compose/runtime/GapComposer;->startReaderGroup(Ljava/lang/Object;Z)V

    .line 738
    .line 739
    .line 740
    :cond_29
    const/4 v2, 0x0

    .line 741
    goto/16 :goto_20

    .line 742
    .line 743
    :cond_2a
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 744
    .line 745
    iget v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 746
    .line 747
    const/4 v11, 0x1

    .line 748
    add-int/2addr v4, v11

    .line 749
    iput v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 750
    .line 751
    iput-boolean v11, v0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 752
    .line 753
    const/4 v2, 0x0

    .line 754
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 755
    .line 756
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 757
    .line 758
    iget-boolean v4, v4, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->closed:Z

    .line 759
    .line 760
    if-eqz v4, :cond_2b

    .line 761
    .line 762
    iget-object v4, v0, Landroidx/compose/runtime/GapComposer;->insertTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 763
    .line 764
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openWriter()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 765
    .line 766
    .line 767
    move-result-object v4

    .line 768
    iput-object v4, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 769
    .line 770
    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->skipToGroupEnd()V

    .line 771
    .line 772
    .line 773
    const/4 v14, 0x0

    .line 774
    iput-boolean v14, v0, Landroidx/compose/runtime/GapComposer;->writerHasAProvider:Z

    .line 775
    .line 776
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 777
    .line 778
    :cond_2b
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 779
    .line 780
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->beginInsert()V

    .line 781
    .line 782
    .line 783
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 784
    .line 785
    iget v4, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    .line 786
    .line 787
    if-eqz v10, :cond_2c

    .line 788
    .line 789
    const/4 v11, 0x1

    .line 790
    invoke-virtual {v2, v1, v8, v8, v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 791
    .line 792
    .line 793
    const/4 v14, 0x0

    .line 794
    goto :goto_1e

    .line 795
    :cond_2c
    if-eqz v3, :cond_2e

    .line 796
    .line 797
    if-nez p2, :cond_2d

    .line 798
    .line 799
    :goto_1b
    const/4 v14, 0x0

    .line 800
    goto :goto_1c

    .line 801
    :cond_2d
    move-object/from16 v8, p2

    .line 802
    .line 803
    goto :goto_1b

    .line 804
    :goto_1c
    invoke-virtual {v2, v1, v8, v3, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 805
    .line 806
    .line 807
    goto :goto_1e

    .line 808
    :cond_2e
    const/4 v14, 0x0

    .line 809
    if-nez p2, :cond_2f

    .line 810
    .line 811
    move-object v3, v8

    .line 812
    goto :goto_1d

    .line 813
    :cond_2f
    move-object/from16 v3, p2

    .line 814
    .line 815
    :goto_1d
    invoke-virtual {v2, v1, v3, v8, v14}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 816
    .line 817
    .line 818
    :goto_1e
    iget-object v2, v0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 819
    .line 820
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    iput-object v2, v0, Landroidx/compose/runtime/GapComposer;->insertAnchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 825
    .line 826
    new-instance v2, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;

    .line 827
    .line 828
    rsub-int/lit8 v3, v4, -0x2

    .line 829
    .line 830
    const/4 v4, -0x1

    .line 831
    invoke-direct {v2, v1, v3, v4, v6}, Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;-><init>(IIILjava/lang/Object;)V

    .line 832
    .line 833
    .line 834
    iget v1, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 835
    .line 836
    sub-int/2addr v1, v9

    .line 837
    new-instance v6, Landroidx/compose/runtime/composer/GroupInfo;

    .line 838
    .line 839
    invoke-direct {v6, v4, v1, v14}, Landroidx/compose/runtime/composer/GroupInfo;-><init>(III)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v7, v3, v6}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    new-instance v12, Landroidx/compose/runtime/GapPending;

    .line 849
    .line 850
    new-instance v1, Ljava/util/ArrayList;

    .line 851
    .line 852
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .line 854
    .line 855
    if-eqz v10, :cond_30

    .line 856
    .line 857
    move v9, v14

    .line 858
    goto :goto_1f

    .line 859
    :cond_30
    iget v9, v0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 860
    .line 861
    :goto_1f
    invoke-direct {v12, v9, v1}, Landroidx/compose/runtime/GapPending;-><init>(ILjava/util/ArrayList;)V

    .line 862
    .line 863
    .line 864
    goto :goto_21

    .line 865
    :goto_20
    move-object v12, v2

    .line 866
    :goto_21
    invoke-virtual {v0, v10, v12}, Landroidx/compose/runtime/GapComposer;->enterGroup(ZLandroidx/compose/runtime/GapPending;)V

    .line 867
    .line 868
    .line 869
    return-void
.end method

.method public final startDefaults()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v2, -0x7f

    .line 4
    .line 5
    invoke-virtual {p0, v2, v0, v0, v1}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final startGroup(ILandroidx/compose/runtime/OpaqueKey;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startMovableGroup(ILjava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startReaderGroup(Ljava/lang/Object;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 4
    .line 5
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 6
    .line 7
    if-gtz p1, :cond_1

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 10
    .line 11
    iget p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 12
    .line 13
    mul-int/lit8 p2, p2, 0x5

    .line 14
    .line 15
    add-int/lit8 p2, p2, 0x1

    .line 16
    .line 17
    aget p1, p1, p2

    .line 18
    .line 19
    const/high16 p2, 0x40000000    # 2.0f

    .line 20
    .line 21
    and-int/2addr p1, p2

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string p1, "Expected a node group"

    .line 26
    .line 27
    invoke-static {p1}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->startGroup()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void

    .line 34
    :cond_2
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 37
    .line 38
    invoke-virtual {p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getGroupAux()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eq p2, p1, :cond_3

    .line 43
    .line 44
    iget-object p2, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 54
    .line 55
    iget-object p2, p2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 56
    .line 57
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAuxData;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateAuxData;

    .line 58
    .line 59
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 60
    .line 61
    .line 62
    invoke-static {p2, v0, p1}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->startGroup()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final startReplaceGroup(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->pending:Landroidx/compose/runtime/GapPending;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, v2, v2, v1}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const-string v0, "A call to createNode(), emitNode() or useNode() expected"

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 21
    .line 22
    iget-wide v3, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    int-to-long v6, p1

    .line 30
    xor-long/2addr v3, v6

    .line 31
    invoke-static {v3, v4, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    int-to-long v5, v0

    .line 36
    xor-long/2addr v3, v5

    .line 37
    iput-wide v3, p0, Landroidx/compose/runtime/GapComposer;->compositeKeyHashCode:J

    .line 38
    .line 39
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    add-int/2addr v0, v3

    .line 43
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 46
    .line 47
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 48
    .line 49
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 54
    .line 55
    add-int/2addr v4, v3

    .line 56
    iput v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 59
    .line 60
    invoke-virtual {v0, p1, v5, v5, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/GapComposer;->enterGroup(ZLandroidx/compose/runtime/GapPending;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getGroupKey()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-ne v4, p1, :cond_4

    .line 72
    .line 73
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 74
    .line 75
    iget v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 76
    .line 77
    if-ge v4, v6, :cond_3

    .line 78
    .line 79
    iget-object v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 80
    .line 81
    mul-int/lit8 v4, v4, 0x5

    .line 82
    .line 83
    add-int/2addr v4, v3

    .line 84
    aget v4, v6, v4

    .line 85
    .line 86
    const/high16 v6, 0x20000000

    .line 87
    .line 88
    and-int/2addr v4, v6

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->startGroup()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/GapComposer;->enterGroup(ZLandroidx/compose/runtime/GapPending;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    :goto_0
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 100
    .line 101
    if-lez v4, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 105
    .line 106
    iget v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentEnd:I

    .line 107
    .line 108
    if-ne v4, v6, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    iget v6, p0, Landroidx/compose/runtime/GapComposer;->nodeIndex:I

    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->recordDelete()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->skipGroup()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    iget-object v8, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 121
    .line 122
    invoke-virtual {v8, v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->removeNode(II)V

    .line 123
    .line 124
    .line 125
    iget-object v6, p0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 126
    .line 127
    iget v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 128
    .line 129
    invoke-static {v6, v4, v7}, Landroidx/compose/runtime/Updater;->access$removeRange(Ljava/util/List;II)V

    .line 130
    .line 131
    .line 132
    :goto_1
    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 133
    .line 134
    add-int/2addr v4, v3

    .line 135
    iput v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->emptyCount:I

    .line 136
    .line 137
    iput-boolean v3, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 138
    .line 139
    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 140
    .line 141
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 142
    .line 143
    iget-boolean v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->closed:Z

    .line 144
    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->insertTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openWriter()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->skipToGroupEnd()V

    .line 156
    .line 157
    .line 158
    iput-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->writerHasAProvider:Z

    .line 159
    .line 160
    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 161
    .line 162
    :cond_7
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 163
    .line 164
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->beginInsert()V

    .line 165
    .line 166
    .line 167
    iget v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    .line 168
    .line 169
    invoke-virtual {v0, p1, v5, v5, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iput-object p1, p0, Landroidx/compose/runtime/GapComposer;->insertAnchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 177
    .line 178
    invoke-virtual {p0, v1, v2}, Landroidx/compose/runtime/GapComposer;->enterGroup(ZLandroidx/compose/runtime/GapPending;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public final startRestartGroup(I)Landroidx/compose/runtime/GapComposer;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->startReplaceGroup(I)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->observerHolder:Landroidx/appcompat/widget/PopupMenu$1;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->invalidateStack:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->composition:Landroidx/compose/runtime/CompositionImpl;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 15
    .line 16
    invoke-direct {p1, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Landroidx/compose/runtime/GapComposer;->compositionToken:I

    .line 26
    .line 27
    iput v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    .line 28
    .line 29
    iget v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 30
    .line 31
    and-int/lit8 v1, v1, -0x11

    .line 32
    .line 33
    iput v1, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu$1;->current()V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 40
    .line 41
    iget p1, p1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-static {p1, v3}, Landroidx/compose/runtime/Updater;->findLocation(ILjava/util/List;)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-ltz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroidx/compose/runtime/Invalidation;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 66
    .line 67
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_2

    .line 72
    .line 73
    new-instance v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 74
    .line 75
    invoke-direct {v3, v2}, Landroidx/compose/runtime/RecomposeScopeImpl;-><init>(Landroidx/compose/runtime/RecomposeScopeOwner;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    check-cast v3, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 86
    .line 87
    :goto_1
    const/4 v2, 0x0

    .line 88
    const/4 v4, 0x1

    .line 89
    if-nez p1, :cond_6

    .line 90
    .line 91
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 92
    .line 93
    and-int/lit8 v5, p1, 0x40

    .line 94
    .line 95
    if-eqz v5, :cond_3

    .line 96
    .line 97
    move v5, v4

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v5, v2

    .line 100
    :goto_2
    if-eqz v5, :cond_4

    .line 101
    .line 102
    and-int/lit8 p1, p1, -0x41

    .line 103
    .line 104
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 105
    .line 106
    :cond_4
    if-eqz v5, :cond_5

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_5
    move p1, v2

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    :goto_3
    move p1, v4

    .line 112
    :goto_4
    iget v5, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    or-int/lit8 p1, v5, 0x8

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_7
    and-int/lit8 p1, v5, -0x9

    .line 120
    .line 121
    :goto_5
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 122
    .line 123
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iget p1, p0, Landroidx/compose/runtime/GapComposer;->compositionToken:I

    .line 127
    .line 128
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->currentToken:I

    .line 129
    .line 130
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 131
    .line 132
    and-int/lit8 p1, p1, -0x11

    .line 133
    .line 134
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 135
    .line 136
    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu$1;->current()V

    .line 137
    .line 138
    .line 139
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 140
    .line 141
    and-int/lit16 v0, p1, 0x100

    .line 142
    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    and-int/lit16 p1, p1, -0x101

    .line 146
    .line 147
    or-int/lit16 p1, p1, 0x200

    .line 148
    .line 149
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 150
    .line 151
    iget-object p1, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 152
    .line 153
    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 154
    .line 155
    iget-object p1, p1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 156
    .line 157
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$StartResumingScope;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$StartResumingScope;

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 160
    .line 161
    .line 162
    invoke-static {p1, v2, v3}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-boolean p1, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 166
    .line 167
    if-nez p1, :cond_8

    .line 168
    .line 169
    iget p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 170
    .line 171
    and-int/lit16 v0, p1, 0x80

    .line 172
    .line 173
    if-eqz v0, :cond_8

    .line 174
    .line 175
    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 176
    .line 177
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 178
    .line 179
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 180
    .line 181
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 182
    .line 183
    or-int/lit16 p1, p1, 0x400

    .line 184
    .line 185
    iput p1, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->flags:I

    .line 186
    .line 187
    :cond_8
    return-object p0
.end method

.method public final startReusableGroup(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2
    .line 3
    const/16 v1, 0xcf

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getGroupKey()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getGroupAux()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget v0, p0, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 28
    .line 29
    if-gez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 32
    .line 33
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 34
    .line 35
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->reusingGroup:I

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 39
    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, v1, v0, p1, v2}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final startReusableNode()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/16 v2, 0x7d

    .line 4
    .line 5
    invoke-virtual {p0, v2, v0, v0, v1}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 10
    .line 11
    return-void
.end method

.method public final startRoot()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->slotTable:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openReader()Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 11
    .line 12
    const/16 v1, 0x64

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2, v2, v0}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->parentContext:Landroidx/compose/runtime/CompositionContext;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->startComposing$runtime()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCompositionLocalScope$runtime()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Landroidx/compose/runtime/GapComposer;->providersInvalidStack:Landroidx/compose/runtime/IntStack;

    .line 28
    .line 29
    iget-boolean v5, p0, Landroidx/compose/runtime/GapComposer;->providersInvalid:Z

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/IntStack;->push(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/GapComposer;->changed(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->providersInvalid:Z

    .line 39
    .line 40
    iput-object v2, p0, Landroidx/compose/runtime/GapComposer;->providerCache:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 41
    .line 42
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->forceRecomposeScopes:Z

    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCollectingParameterInformation$runtime()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->forceRecomposeScopes:Z

    .line 51
    .line 52
    :cond_0
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->sourceMarkersEnabled:Z

    .line 53
    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCollectingSourceInformation$runtime()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iput-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->sourceMarkersEnabled:Z

    .line 61
    .line 62
    :cond_1
    iget-boolean v4, p0, Landroidx/compose/runtime/GapComposer;->sourceMarkersEnabled:Z

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    sget-object v4, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->LocalCompositionErrorContext:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    new-instance v5, Landroidx/compose/runtime/StaticValueHolder;

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getErrorContext$runtime()Landroidx/compose/runtime/tooling/CompositionErrorContextImpl;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-direct {v5, v6}, Landroidx/compose/runtime/StaticValueHolder;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, v4, v5}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->putValue(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :cond_2
    iput-object v3, p0, Landroidx/compose/runtime/GapComposer;->rootProvider:Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 85
    .line 86
    sget-object v4, Landroidx/compose/runtime/tooling/InspectionTablesKt;->LocalInspectionTables:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 87
    .line 88
    invoke-static {v3, v4}, Landroidx/compose/runtime/Updater;->read(Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Ljava/util/Set;

    .line 93
    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->getCompositionData()Landroidx/compose/runtime/tooling/CompositionData;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/CompositionContext;->recordInspectionTable$runtime(Ljava/util/Set;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionContext;->getCompositeKeyHashCode$runtime()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    const/16 v1, 0x20

    .line 111
    .line 112
    ushr-long v5, v3, v1

    .line 113
    .line 114
    xor-long/2addr v3, v5

    .line 115
    long-to-int v1, v3

    .line 116
    invoke-virtual {p0, v1, v2, v2, v0}, Landroidx/compose/runtime/GapComposer;->start-AzEfcrM(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 117
    .line 118
    .line 119
    return-void
.end method

.method public final tryImminentInvalidation$runtime(Landroidx/compose/runtime/RecomposeScopeImpl;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/sqlite/SQLite;->asGapAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->isComposing:Z

    .line 19
    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 23
    .line 24
    iget v1, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentGroup:I

    .line 25
    .line 26
    if-lt v0, v1, :cond_6

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-static {v0, p0}, Landroidx/compose/runtime/Updater;->findLocation(ILjava/util/List;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    if-gez v1, :cond_2

    .line 37
    .line 38
    add-int/2addr v1, v2

    .line 39
    neg-int v1, v1

    .line 40
    instance-of v4, p2, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 41
    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p2, v3

    .line 46
    :goto_0
    new-instance v3, Landroidx/compose/runtime/Invalidation;

    .line 47
    .line 48
    invoke-direct {v3, p1, v0, p2}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroidx/compose/runtime/Invalidation;

    .line 60
    .line 61
    instance-of p1, p2, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 62
    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    iget-object p1, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 66
    .line 67
    if-nez p1, :cond_3

    .line 68
    .line 69
    iput-object p2, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 70
    .line 71
    return v2

    .line 72
    :cond_3
    instance-of v0, p1, Landroidx/collection/MutableScatterSet;

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    check-cast p1, Landroidx/collection/MutableScatterSet;

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :cond_4
    sget-object v0, Landroidx/collection/ScatterSetKt;->EmptyScatterSet:Landroidx/collection/MutableScatterSet;

    .line 83
    .line 84
    new-instance v0, Landroidx/collection/MutableScatterSet;

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterSet;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->plusAssign(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 97
    .line 98
    return v2

    .line 99
    :cond_5
    iput-object v3, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    .line 100
    .line 101
    return v2

    .line 102
    :cond_6
    :goto_1
    const/4 p0, 0x0

    .line 103
    return p0
.end method

.method public final updateComposerInvalidations-RY85e9Y$runtime(Landroidx/collection/MutableScatterMap;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/compose/runtime/GapComposer;->invalidations:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {v0}, Lorg/jsoup/Jsoup;->getLastIndex(Ljava/util/List;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    :goto_0
    const/4 v4, -0x1

    .line 12
    if-ge v4, v2, :cond_3

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Landroidx/compose/runtime/Invalidation;

    .line 19
    .line 20
    iget-object v5, v4, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 21
    .line 22
    iget-object v5, v5, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 23
    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    invoke-static {v5}, Landroidx/sqlite/SQLite;->asGapAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_1
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->getValid()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_1

    .line 39
    .line 40
    iget v5, v4, Landroidx/compose/runtime/Invalidation;->location:I

    .line 41
    .line 42
    iget v3, v3, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->location:I

    .line 43
    .line 44
    if-eq v5, v3, :cond_2

    .line 45
    .line 46
    iput v3, v4, Landroidx/compose/runtime/Invalidation;->location:I

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget-object v2, v1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v4, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    .line 58
    .line 59
    iget-object v1, v1, Landroidx/collection/MutableScatterMap;->metadata:[J

    .line 60
    .line 61
    array-length v5, v1

    .line 62
    add-int/lit8 v5, v5, -0x2

    .line 63
    .line 64
    if-ltz v5, :cond_8

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    move v7, v6

    .line 68
    :goto_3
    aget-wide v8, v1, v7

    .line 69
    .line 70
    not-long v10, v8

    .line 71
    const/4 v12, 0x7

    .line 72
    shl-long/2addr v10, v12

    .line 73
    and-long/2addr v10, v8

    .line 74
    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    and-long/2addr v10, v12

    .line 80
    cmp-long v10, v10, v12

    .line 81
    .line 82
    if-eqz v10, :cond_7

    .line 83
    .line 84
    sub-int v10, v7, v5

    .line 85
    .line 86
    not-int v10, v10

    .line 87
    ushr-int/lit8 v10, v10, 0x1f

    .line 88
    .line 89
    const/16 v11, 0x8

    .line 90
    .line 91
    rsub-int/lit8 v10, v10, 0x8

    .line 92
    .line 93
    move v12, v6

    .line 94
    :goto_4
    if-ge v12, v10, :cond_6

    .line 95
    .line 96
    const-wide/16 v13, 0xff

    .line 97
    .line 98
    and-long/2addr v13, v8

    .line 99
    const-wide/16 v15, 0x80

    .line 100
    .line 101
    cmp-long v13, v13, v15

    .line 102
    .line 103
    if-gez v13, :cond_5

    .line 104
    .line 105
    shl-int/lit8 v13, v7, 0x3

    .line 106
    .line 107
    add-int/2addr v13, v12

    .line 108
    aget-object v14, v2, v13

    .line 109
    .line 110
    aget-object v13, v4, v13

    .line 111
    .line 112
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    check-cast v14, Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 116
    .line 117
    iget-object v15, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->anchor:Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 118
    .line 119
    if-eqz v15, :cond_5

    .line 120
    .line 121
    invoke-static {v15}, Landroidx/sqlite/SQLite;->asGapAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    iget v15, v15, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->location:I

    .line 126
    .line 127
    sget-object v3, Landroidx/compose/runtime/NeverEqualPolicy;->INSTANCE$2:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 128
    .line 129
    if-ne v13, v3, :cond_4

    .line 130
    .line 131
    const/4 v13, 0x0

    .line 132
    :cond_4
    new-instance v3, Landroidx/compose/runtime/Invalidation;

    .line 133
    .line 134
    invoke-direct {v3, v14, v15, v13}, Landroidx/compose/runtime/Invalidation;-><init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    :cond_5
    shr-long/2addr v8, v11

    .line 141
    add-int/lit8 v12, v12, 0x1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    if-ne v10, v11, :cond_8

    .line 145
    .line 146
    :cond_7
    if-eq v7, v5, :cond_8

    .line 147
    .line 148
    add-int/lit8 v7, v7, 0x1

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_8
    sget-object v1, Landroidx/compose/runtime/Updater;->InvalidationLocationAscending:Landroidx/compose/ui/node/LayoutNode$$ExternalSyntheticLambda3;

    .line 152
    .line 153
    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/Comparator;Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public final updateNodeCount(II)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updatedNodeCount(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p2, :cond_3

    .line 6
    .line 7
    if-gez p1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/collection/MutableIntIntMap;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/collection/MutableIntIntMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/compose/runtime/GapComposer;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 29
    .line 30
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groupsSize:I

    .line 31
    .line 32
    new-array v1, v0, [I

    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 40
    .line 41
    move-object v0, v1

    .line 42
    :cond_2
    aput p2, v0, p1

    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method public final updateNodeCountOverrides(II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updatedNodeCount(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p2, :cond_3

    .line 6
    .line 7
    sub-int/2addr p2, v0

    .line 8
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->pendingStack:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    :goto_0
    const/4 v2, -0x1

    .line 17
    if-eq p1, v2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updatedNodeCount(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    add-int/2addr v3, p2

    .line 24
    invoke-virtual {p0, p1, v3}, Landroidx/compose/runtime/GapComposer;->updateNodeCount(II)V

    .line 25
    .line 26
    .line 27
    move v4, v1

    .line 28
    :goto_1
    if-ge v2, v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroidx/compose/runtime/GapPending;

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-virtual {v5, p1, v3}, Landroidx/compose/runtime/GapPending;->updateNodeCount(II)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    add-int/lit8 v4, v4, -0x1

    .line 45
    .line 46
    move v1, v4

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_2
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 52
    .line 53
    if-gez p1, :cond_2

    .line 54
    .line 55
    iget p1, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->isNode(I)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 65
    .line 66
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    return-void
.end method

.method public final updateRememberedValue(Ljava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/RememberObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Landroidx/compose/runtime/GapRememberObserverHolder;

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Landroidx/compose/runtime/RememberObserver;

    .line 9
    .line 10
    iget v2, p0, Landroidx/compose/runtime/GapComposer;->rGroupIndex:I

    .line 11
    .line 12
    add-int/lit8 v2, v2, -0x1

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/GapRememberObserverHolder;-><init>(Landroidx/compose/runtime/RememberObserver;I)V

    .line 15
    .line 16
    .line 17
    iget-boolean v1, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 22
    .line 23
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 24
    .line 25
    iget-object v1, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 26
    .line 27
    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Remember;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$Remember;

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-static {v1, v2, v0}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->abandonSet:Landroidx/collection/MutableSetWrapper;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroidx/collection/MutableSetWrapper;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-object p1, v0

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->updateValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final updateValue(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->writer:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->update(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 12
    .line 13
    iget-boolean v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->hadNext:Z

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->currentSlot:I

    .line 22
    .line 23
    iget-object v5, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->groups:[I

    .line 24
    .line 25
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 26
    .line 27
    invoke-static {v5, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$slotAnchor([II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sub-int/2addr v1, v0

    .line 32
    sub-int/2addr v1, v4

    .line 33
    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/GapComposer;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 36
    .line 37
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 38
    .line 39
    iget v5, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    .line 40
    .line 41
    sub-int/2addr v0, v5

    .line 42
    if-gez v0, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 45
    .line 46
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 55
    .line 56
    sget-object v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;->INSTANCE$3:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v0, v3, p1, v4, p0}, Lokio/Okio;->setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgs:[I

    .line 65
    .line 66
    iget p1, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 67
    .line 68
    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 69
    .line 70
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 71
    .line 72
    sub-int/2addr v0, v4

    .line 73
    aget-object v0, v2, v0

    .line 74
    .line 75
    iget v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 76
    .line 77
    sub-int/2addr p1, v0

    .line 78
    aput v1, p0, p1

    .line 79
    .line 80
    return-void

    .line 81
    :cond_1
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeOperationLocation(Z)V

    .line 82
    .line 83
    .line 84
    iget-object p0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 85
    .line 86
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 87
    .line 88
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UpdateValue;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p0, v3, p1}, Lokio/Okio;->setObject-sGr0YRc(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgs:[I

    .line 97
    .line 98
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->intArgsSize:I

    .line 99
    .line 100
    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodes:[Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;

    .line 101
    .line 102
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->opCodesSize:I

    .line 103
    .line 104
    sub-int/2addr p0, v4

    .line 105
    aget-object p0, v2, p0

    .line 106
    .line 107
    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;->ints:I

    .line 108
    .line 109
    sub-int/2addr v0, p0

    .line 110
    aput v1, p1, v0

    .line 111
    .line 112
    return-void

    .line 113
    :cond_2
    iget p0, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 114
    .line 115
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    iget-object v0, v2, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 120
    .line 121
    iget-object v0, v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 122
    .line 123
    sget-object v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$AppendValue;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0, v3, p0, v4, p1}, Lokio/Okio;->setObjects-EsEZvaA(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final updatedNodeCount(I)I
    .locals 2

    .line 1
    if-gez p1, :cond_2

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->nodeCountVirtualOverrides:Landroidx/collection/MutableIntIntMap;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntIntMap;->findKeyIndex(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ltz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntIntMap;->findKeyIndex(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ltz v1, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/collection/MutableIntIntMap;->values:[I

    .line 21
    .line 22
    aget p0, p0, v1

    .line 23
    .line 24
    return p0

    .line 25
    :cond_0
    const-string p0, "Cannot find value for key "

    .line 26
    .line 27
    invoke-static {p1, p0}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return v0

    .line 35
    :cond_2
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->nodeCountOverrides:[I

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    aget v0, v0, p1

    .line 40
    .line 41
    if-ltz v0, :cond_3

    .line 42
    .line 43
    return v0

    .line 44
    :cond_3
    iget-object p0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->nodeCount(I)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public final useNode()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "A call to createNode(), emitNode() or useNode() expected was not expected"

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->nodeExpected:Z

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/compose/runtime/GapComposer;->inserting:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string/jumbo v0, "useNode() called while inserting"

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/GapComposer;->reader:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    .line 24
    .line 25
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->parent:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->node(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Landroidx/compose/runtime/GapComposer;->changeListWriter:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    .line 34
    .line 35
    .line 36
    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-boolean p0, p0, Landroidx/compose/runtime/GapComposer;->reusing:Z

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    instance-of p0, v0, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    .line 46
    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    .line 50
    .line 51
    .line 52
    iget-object p0, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    .line 53
    .line 54
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;->operations:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;

    .line 55
    .line 56
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UseCurrentNode;->INSTANCE:Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation$UseCurrentNode;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/changelist/Operations;->pushOp(Landroidx/compose/runtime/composer/gapbuffer/changelist/Operation;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method
