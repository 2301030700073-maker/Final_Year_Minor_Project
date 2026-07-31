.class public final Landroidx/paging/FlattenedPageEventStorage;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public mediatorStates:Ljava/lang/Object;

.field public final pages:Ljava/util/List;

.field public placeholdersAfter:I

.field public placeholdersBefore:I

.field public receivedFirstEvent:Z

.field public final sourceStates:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/paging/FlattenedPageEventStorage;->pages:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/caverock/androidsvg/SVG;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVG;-><init>(I)V

    iput-object v0, p0, Landroidx/paging/FlattenedPageEventStorage;->sourceStates:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/PrefetchHandleProvider$HandleAndRequestImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/FlattenedPageEventStorage;->mediatorStates:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/paging/FlattenedPageEventStorage;->pages:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    new-array p1, p1, [Ljava/util/List;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/paging/FlattenedPageEventStorage;->sourceStates:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string p0, "NestedPrefetchController shouldn\'t be created with no states"

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Landroidx/paging/PageEvent;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/paging/FlattenedPageEventStorage;->pages:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/paging/FlattenedPageEventStorage;->sourceStates:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/caverock/androidsvg/SVG;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Landroidx/paging/FlattenedPageEventStorage;->receivedFirstEvent:Z

    .line 14
    .line 15
    instance-of v3, p1, Landroidx/paging/PageEvent$Insert;

    .line 16
    .line 17
    if-eqz v3, :cond_4

    .line 18
    .line 19
    check-cast p1, Landroidx/paging/PageEvent$Insert;

    .line 20
    .line 21
    iget-object v3, p1, Landroidx/paging/PageEvent$Insert;->sourceLoadStates:Landroidx/paging/LoadStates;

    .line 22
    .line 23
    iget v4, p1, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 24
    .line 25
    iget v5, p1, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 26
    .line 27
    iget-object v6, p1, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadStates;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p1, Landroidx/paging/PageEvent$Insert;->mediatorLoadStates:Landroidx/paging/LoadStates;

    .line 33
    .line 34
    iput-object v1, p0, Landroidx/paging/FlattenedPageEventStorage;->mediatorStates:Ljava/lang/Object;

    .line 35
    .line 36
    iget-object p1, p1, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 37
    .line 38
    sget-object v1, Landroidx/paging/FlattenedPageEventStorage$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    aget p1, v1, p1

    .line 45
    .line 46
    if-eq p1, v2, :cond_2

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    if-eq p1, v1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    if-ne p1, v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 55
    .line 56
    .line 57
    iput v5, p0, Landroidx/paging/FlattenedPageEventStorage;->placeholdersAfter:I

    .line 58
    .line 59
    iput v4, p0, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I

    .line 60
    .line 61
    invoke-virtual {v0, v6}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iput v5, p0, Landroidx/paging/FlattenedPageEventStorage;->placeholdersAfter:I

    .line 70
    .line 71
    invoke-virtual {v0, v6}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    iput v4, p0, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I

    .line 76
    .line 77
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    sub-int/2addr p0, v2

    .line 82
    const/4 p1, 0x0

    .line 83
    const/4 v1, -0x1

    .line 84
    invoke-static {p0, p1, v1}, Lcoil3/util/ContextsKt;->getProgressionLastElement(III)I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    new-instance v2, Lkotlin/ranges/IntProgressionIterator;

    .line 89
    .line 90
    invoke-direct {v2, p0, p1, v1}, Lkotlin/ranges/IntProgressionIterator;-><init>(III)V

    .line 91
    .line 92
    .line 93
    :goto_0
    iget-boolean p0, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    .line 94
    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-interface {v6, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {v0, p0}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    return-void

    .line 110
    :cond_4
    instance-of v0, p1, Landroidx/paging/PageEvent$Drop;

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    if-nez v0, :cond_7

    .line 114
    .line 115
    instance-of v0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    .line 116
    .line 117
    if-eqz v0, :cond_5

    .line 118
    .line 119
    check-cast p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    .line 120
    .line 121
    iget-object v0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->source:Landroidx/paging/LoadStates;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadStates;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->mediator:Landroidx/paging/LoadStates;

    .line 127
    .line 128
    iput-object p1, p0, Landroidx/paging/FlattenedPageEventStorage;->mediatorStates:Ljava/lang/Object;

    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    instance-of p0, p1, Landroidx/paging/PageEvent$StaticList;

    .line 132
    .line 133
    if-nez p0, :cond_6

    .line 134
    .line 135
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :cond_6
    throw v2

    .line 140
    :cond_7
    sget-object p0, Landroidx/paging/LoadState$NotLoading;->Incomplete:Landroidx/paging/LoadState$NotLoading;

    .line 141
    .line 142
    invoke-virtual {v1, v2, p0}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 143
    .line 144
    .line 145
    sget-object p0, Landroidx/paging/FlattenedPageEventStorage$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 146
    .line 147
    throw v2
.end method

.method public getAsEvents()Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/paging/FlattenedPageEventStorage;->pages:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/paging/FlattenedPageEventStorage;->receivedFirstEvent:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Landroidx/paging/FlattenedPageEventStorage;->sourceStates:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lcom/caverock/androidsvg/SVG;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->snapshot()Landroidx/paging/LoadStates;

    .line 22
    .line 23
    .line 24
    move-result-object v8

    .line 25
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    iget v6, p0, Landroidx/paging/FlattenedPageEventStorage;->placeholdersBefore:I

    .line 36
    .line 37
    iget v7, p0, Landroidx/paging/FlattenedPageEventStorage;->placeholdersAfter:I

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/paging/FlattenedPageEventStorage;->mediatorStates:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v9, p0

    .line 42
    check-cast v9, Landroidx/paging/LoadStates;

    .line 43
    .line 44
    new-instance v3, Landroidx/paging/PageEvent$Insert;

    .line 45
    .line 46
    sget-object v4, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 47
    .line 48
    invoke-direct/range {v3 .. v9}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_1
    new-instance v0, Landroidx/paging/PageEvent$LoadStateUpdate;

    .line 56
    .line 57
    iget-object p0, p0, Landroidx/paging/FlattenedPageEventStorage;->mediatorStates:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Landroidx/paging/LoadStates;

    .line 60
    .line 61
    invoke-direct {v0, v8, p0}, Landroidx/paging/PageEvent$LoadStateUpdate;-><init>(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    return-object v1
.end method
