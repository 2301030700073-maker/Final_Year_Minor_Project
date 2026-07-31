.class public final Landroidx/paging/PageStore;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final INITIAL:Landroidx/paging/PageStore;


# instance fields
.field public dataCount:I

.field public final pages:Ljava/util/ArrayList;

.field public placeholdersAfter:I

.field public placeholdersBefore:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/paging/PageStore;

    .line 2
    .line 3
    new-instance v1, Landroidx/paging/TransformablePage;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 7
    .line 8
    invoke-direct {v1, v3, v2}, Landroidx/paging/TransformablePage;-><init>(Ljava/util/List;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    new-instance v9, Landroidx/paging/LoadStates;

    .line 16
    .line 17
    sget-object v1, Landroidx/paging/LoadState$NotLoading;->Incomplete:Landroidx/paging/LoadState$NotLoading;

    .line 18
    .line 19
    sget-object v2, Landroidx/paging/LoadState$NotLoading;->Complete:Landroidx/paging/LoadState$NotLoading;

    .line 20
    .line 21
    invoke-direct {v9, v1, v2, v2}, Landroidx/paging/LoadStates;-><init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Landroidx/paging/PageEvent$Insert;

    .line 25
    .line 26
    sget-object v5, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v8, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    invoke-direct/range {v4 .. v10}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v4}, Landroidx/paging/PageStore;-><init>(Landroidx/paging/PageEvent$Insert;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Landroidx/paging/PageStore;->INITIAL:Landroidx/paging/PageStore;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>(IILjava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroidx/paging/TransformablePage;

    .line 30
    .line 31
    iget-object v1, v1, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    add-int/2addr v0, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput v0, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 40
    .line 41
    iput p1, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 42
    .line 43
    iput p2, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroidx/paging/PageEvent$Insert;)V
    .locals 2

    .line 46
    iget-object v0, p1, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 47
    iget v1, p1, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 48
    iget p1, p1, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 49
    invoke-direct {p0, v1, p1, v0}, Landroidx/paging/PageStore;-><init>(IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public final createAccessHintForIndex(I)Landroidx/paging/ViewportHint$Access;
    .locals 10

    .line 1
    iget v0, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 2
    .line 3
    sub-int v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    check-cast v3, Landroidx/paging/TransformablePage;

    .line 13
    .line 14
    iget-object v3, v3, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-lt v0, v3, :cond_0

    .line 21
    .line 22
    invoke-static {v2}, Landroidx/room/Room;->getLastIndex(Ljava/util/List;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-ge v1, v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/paging/TransformablePage;

    .line 33
    .line 34
    iget-object v2, v2, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sub-int/2addr v0, v2

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/paging/TransformablePage;

    .line 49
    .line 50
    iget v2, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 51
    .line 52
    sub-int v6, p1, v2

    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getSize()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    sub-int/2addr v2, p1

    .line 59
    iget p1, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 60
    .line 61
    sub-int/2addr v2, p1

    .line 62
    add-int/lit8 v7, v2, -0x1

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getOriginalPageOffsetFirst()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getOriginalPageOffsetLast()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    new-instance v3, Landroidx/paging/ViewportHint$Access;

    .line 73
    .line 74
    iget v4, v1, Landroidx/paging/TransformablePage;->hintOriginalPageOffset:I

    .line 75
    .line 76
    iget-object p0, v1, Landroidx/paging/TransformablePage;->hintOriginalIndices:Ljava/util/List;

    .line 77
    .line 78
    if-eqz p0, :cond_1

    .line 79
    .line 80
    invoke-static {p0}, Landroidx/room/Room;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ltz v0, :cond_1

    .line 85
    .line 86
    iget p1, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 87
    .line 88
    if-gt v0, p1, :cond_1

    .line 89
    .line 90
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Ljava/lang/Number;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    :cond_1
    move v5, v0

    .line 101
    invoke-direct/range {v3 .. v9}, Landroidx/paging/ViewportHint$Access;-><init>(IIIIII)V

    .line 102
    .line 103
    .line 104
    return-object v3
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Landroidx/paging/PageStore;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getOriginalPageOffsetFirst()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    check-cast p1, Landroidx/paging/PageStore;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/paging/PageStore;->getOriginalPageOffsetFirst()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getOriginalPageOffsetLast()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1}, Landroidx/paging/PageStore;->getOriginalPageOffsetLast()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    iget v0, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 32
    .line 33
    iget v1, p1, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 34
    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    .line 37
    iget v0, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 38
    .line 39
    iget v1, p1, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 44
    .line 45
    iget-object p1, p1, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/paging/TransformablePage;

    .line 15
    .line 16
    iget-object v2, v2, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-le v2, p1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sub-int/2addr p1, v2

    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroidx/paging/TransformablePage;

    .line 34
    .line 35
    iget-object p0, p0, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method public final getOriginalPageOffsetFirst()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/paging/TransformablePage;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 10
    .line 11
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->minOrNull([I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method

.method public final getOriginalPageOffsetLast()I
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/paging/TransformablePage;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    array-length v0, p0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    aget v0, p0, v0

    .line 21
    .line 22
    array-length v1, p0

    .line 23
    const/4 v2, 0x1

    .line 24
    sub-int/2addr v1, v2

    .line 25
    if-gt v2, v1, :cond_2

    .line 26
    .line 27
    :goto_0
    aget v3, p0, v2

    .line 28
    .line 29
    if-ge v0, v3, :cond_1

    .line 30
    .line 31
    move v0, v3

    .line 32
    :cond_1
    if-eq v2, v1, :cond_2

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public final getSize()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget p0, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 7
    .line 8
    add-int/2addr v0, p0

    .line 9
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getOriginalPageOffsetFirst()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/paging/PageStore;->getOriginalPageOffsetLast()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    mul-int/lit8 v1, v1, 0x1f

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    iget v0, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 15
    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    iget v1, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x1f

    .line 22
    .line 23
    add-int/2addr v1, v0

    .line 24
    iget-object p0, p0, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    mul-int/lit8 p0, p0, 0x1f

    .line 31
    .line 32
    add-int/2addr p0, v1

    .line 33
    return p0
.end method

.method public final processEvent(Landroidx/paging/PageEvent;)Landroidx/paging/FlowExtKt;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Landroidx/paging/PageEvent$Insert;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    iget-object v4, p0, Landroidx/paging/PageStore;->pages:Ljava/util/ArrayList;

    .line 10
    .line 11
    if-eqz v0, :cond_6

    .line 12
    .line 13
    check-cast p1, Landroidx/paging/PageEvent$Insert;

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/paging/PageEvent$Insert;->pages:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    move v6, v2

    .line 22
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    if-eqz v7, :cond_0

    .line 27
    .line 28
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    check-cast v7, Landroidx/paging/TransformablePage;

    .line 33
    .line 34
    iget-object v7, v7, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    add-int/2addr v6, v7

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v5, p1, Landroidx/paging/PageEvent$Insert;->loadType:Landroidx/paging/LoadType;

    .line 43
    .line 44
    sget-object v7, Landroidx/paging/PageStore$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    aget v5, v7, v5

    .line 51
    .line 52
    if-eq v5, v3, :cond_5

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    if-eq v5, v3, :cond_3

    .line 56
    .line 57
    const/4 v2, 0x3

    .line 58
    if-ne v5, v2, :cond_2

    .line 59
    .line 60
    iget v1, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 61
    .line 62
    iget v2, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    iget v3, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 72
    .line 73
    add-int/2addr v3, v6

    .line 74
    iput v3, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 75
    .line 76
    iget p1, p1, Landroidx/paging/PageEvent$Insert;->placeholdersAfter:I

    .line 77
    .line 78
    iput p1, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 79
    .line 80
    iget p1, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 81
    .line 82
    add-int/2addr p1, v2

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Landroidx/paging/TransformablePage;

    .line 103
    .line 104
    iget-object v3, v3, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 105
    .line 106
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iget p0, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 111
    .line 112
    new-instance v0, Landroidx/paging/PagingDataEvent$Append;

    .line 113
    .line 114
    invoke-direct {v0, p1, v2, p0, v1}, Landroidx/paging/PagingDataEvent$Append;-><init>(ILjava/util/ArrayList;II)V

    .line 115
    .line 116
    .line 117
    return-object v0

    .line 118
    :cond_2
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 119
    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_3
    iget v1, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 123
    .line 124
    invoke-virtual {v4, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    iget v2, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 128
    .line 129
    add-int/2addr v2, v6

    .line 130
    iput v2, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 131
    .line 132
    iget p1, p1, Landroidx/paging/PageEvent$Insert;->placeholdersBefore:I

    .line 133
    .line 134
    iput p1, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 135
    .line 136
    new-instance p1, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Landroidx/paging/TransformablePage;

    .line 156
    .line 157
    iget-object v2, v2, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 158
    .line 159
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    iget p0, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 164
    .line 165
    new-instance v0, Landroidx/paging/PagingDataEvent$Prepend;

    .line 166
    .line 167
    invoke-direct {v0, p1, p0, v1}, Landroidx/paging/PagingDataEvent$Prepend;-><init>(Ljava/util/ArrayList;II)V

    .line 168
    .line 169
    .line 170
    return-object v0

    .line 171
    :cond_5
    const-string p0, "Paging received a refresh event in the middle of an actively loading generation\nof PagingData. If you see this exception, it is most likely a bug in the library.\nPlease file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106"

    .line 172
    .line 173
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v1

    .line 177
    :cond_6
    instance-of p1, p1, Landroidx/paging/PageEvent$Drop;

    .line 178
    .line 179
    if-eqz p1, :cond_b

    .line 180
    .line 181
    new-instance p1, Lkotlin/ranges/IntRange;

    .line 182
    .line 183
    invoke-direct {p1, v2, v2, v3}, Lkotlin/ranges/IntProgression;-><init>(III)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move v1, v2

    .line 191
    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-eqz v3, :cond_9

    .line 196
    .line 197
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    check-cast v3, Landroidx/paging/TransformablePage;

    .line 202
    .line 203
    iget-object v4, v3, Landroidx/paging/TransformablePage;->originalPageOffsets:[I

    .line 204
    .line 205
    array-length v5, v4

    .line 206
    move v6, v2

    .line 207
    :goto_4
    if-ge v6, v5, :cond_7

    .line 208
    .line 209
    aget v7, v4, v6

    .line 210
    .line 211
    iget v8, p1, Lkotlin/ranges/IntProgression;->first:I

    .line 212
    .line 213
    if-gt v8, v7, :cond_8

    .line 214
    .line 215
    iget v8, p1, Lkotlin/ranges/IntProgression;->last:I

    .line 216
    .line 217
    if-gt v7, v8, :cond_8

    .line 218
    .line 219
    iget-object v3, v3, Landroidx/paging/TransformablePage;->data:Ljava/util/List;

    .line 220
    .line 221
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    add-int/2addr v1, v3

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 227
    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_9
    iget p1, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 234
    .line 235
    sub-int/2addr p1, v1

    .line 236
    iput p1, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 237
    .line 238
    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 239
    .line 240
    if-nez v0, :cond_a

    .line 241
    .line 242
    iget p1, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 243
    .line 244
    iput v2, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 245
    .line 246
    new-instance p0, Landroidx/paging/PagingDataEvent$DropPrepend;

    .line 247
    .line 248
    invoke-direct {p0, v1, v2, p1}, Landroidx/paging/PagingDataEvent$DropPrepend;-><init>(III)V

    .line 249
    .line 250
    .line 251
    return-object p0

    .line 252
    :cond_a
    iget v0, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 253
    .line 254
    iput v2, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 255
    .line 256
    new-instance v3, Landroidx/paging/PagingDataEvent$DropAppend;

    .line 257
    .line 258
    iget p0, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 259
    .line 260
    add-int/2addr p0, p1

    .line 261
    invoke-direct {v3, p0, v1, v2, v0}, Landroidx/paging/PagingDataEvent$DropAppend;-><init>(IIII)V

    .line 262
    .line 263
    .line 264
    return-object v3

    .line 265
    :cond_b
    const-string p0, "Paging received an event to process StaticList or LoadStateUpdate while\nprocessing Inserts and Drops. If you see this exception, it is most\nlikely a bug in the library. Please file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106"

    .line 266
    .line 267
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/paging/PageStore;->dataCount:I

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroidx/paging/PageStore;->getItem(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v5, 0x0

    .line 22
    const/16 v6, 0x3f

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "[("

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v2, p0, Landroidx/paging/PageStore;->placeholdersBefore:I

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " placeholders), "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", ("

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget p0, p0, Landroidx/paging/PageStore;->placeholdersAfter:I

    .line 57
    .line 58
    const-string v0, " placeholders)]"

    .line 59
    .line 60
    invoke-static {v1, p0, v0}, Landroidx/compose/ui/Modifier$-CC;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method
