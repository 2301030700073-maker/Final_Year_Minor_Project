.class public Landroidx/navigation/NavGraph;
.super Landroidx/navigation/NavDestination;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final impl:Lokhttp3/Dispatcher;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavGraphNavigator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lokhttp3/Dispatcher;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lokhttp3/Dispatcher;-><init>(Landroidx/navigation/NavGraph;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    if-eqz p1, :cond_4

    .line 6
    .line 7
    instance-of v1, p1, Landroidx/navigation/NavGraph;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_4

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 19
    .line 20
    iget-object v1, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Landroidx/collection/SparseArrayCompat;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    check-cast p1, Landroidx/navigation/NavGraph;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 31
    .line 32
    iget-object v2, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Landroidx/collection/SparseArrayCompat;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-ne v1, v2, :cond_4

    .line 41
    .line 42
    iget v1, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 43
    .line 44
    iget v2, p1, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 45
    .line 46
    if-ne v1, v2, :cond_4

    .line 47
    .line 48
    iget-object p0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Landroidx/collection/SparseArrayCompat;

    .line 51
    .line 52
    new-instance v1, Lkotlin/UIntArray$Iterator;

    .line 53
    .line 54
    invoke-direct {v1, v0, p0}, Lkotlin/UIntArray$Iterator;-><init>(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lkotlin/sequences/ConstrainedOnceSequence;

    .line 62
    .line 63
    invoke-virtual {p0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 78
    .line 79
    iget-object v2, p1, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Landroidx/collection/SparseArrayCompat;

    .line 82
    .line 83
    iget-object v3, v1, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 84
    .line 85
    iget v3, v3, Landroidx/compose/ui/node/RulerTrackingMap;->size:I

    .line 86
    .line 87
    invoke-static {v2, v3}, Landroidx/collection/ArraySetKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    :goto_0
    return v0

    .line 99
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 100
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 2
    .line 3
    iget v0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 4
    .line 5
    iget-object p0, p0, Lokhttp3/Dispatcher;->readyAsyncCalls:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Landroidx/collection/SparseArrayCompat;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroidx/navigation/NavDestination;

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    add-int/2addr v0, v3

    .line 29
    mul-int/lit8 v0, v0, 0x1f

    .line 30
    .line 31
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/2addr v0, v3

    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/navigation/internal/NavGraphImpl$iterator$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;-><init>(Lokhttp3/Dispatcher;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final matchDeepLink(Lcom/caverock/androidsvg/SVG;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Lcom/caverock/androidsvg/SVG;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroidx/navigation/NavGraph;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v0, p1, v2, v1}, Lokhttp3/Dispatcher;->matchDeepLinkComprehensive$navigation_common_release(Landroidx/navigation/NavDestination$DeepLinkMatch;Lcom/caverock/androidsvg/SVG;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public final matchDeepLinkComprehensive(Lcom/caverock/androidsvg/SVG;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Lcom/caverock/androidsvg/SVG;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, p1, v1, p2}, Lokhttp3/Dispatcher;->matchDeepLinkComprehensive$navigation_common_release(Landroidx/navigation/NavDestination$DeepLinkMatch;Lcom/caverock/androidsvg/SVG;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final matchRouteComprehensive(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 7

    .line 1
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/RulerTrackingMap;->matchRoute$navigation_common_release(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :cond_0
    :goto_0
    move-object v3, v2

    .line 26
    check-cast v3, Landroidx/navigation/internal/NavGraphImpl$iterator$1;

    .line 27
    .line 28
    invoke-virtual {v3}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {v3}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroidx/navigation/NavDestination;

    .line 41
    .line 42
    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    instance-of v4, v3, Landroidx/navigation/NavGraph;

    .line 50
    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    check-cast v3, Landroidx/navigation/NavGraph;

    .line 54
    .line 55
    invoke-virtual {v3, p1, v5, p0}, Landroidx/navigation/NavGraph;->matchRouteComprehensive(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    iget-object v3, v3, Landroidx/navigation/NavDestination;->impl:Landroidx/compose/ui/node/RulerTrackingMap;

    .line 64
    .line 65
    invoke-virtual {v3, p1}, Landroidx/compose/ui/node/RulerTrackingMap;->matchRoute$navigation_common_release(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    :goto_1
    if-eqz v6, :cond_0

    .line 70
    .line 71
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/util/List;)Ljava/lang/Comparable;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 80
    .line 81
    iget-object v2, p0, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2, p3}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_4

    .line 93
    .line 94
    invoke-virtual {v2, p1, v3, p0}, Landroidx/navigation/NavGraph;->matchRouteComprehensive(Ljava/lang/String;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    :cond_4
    const/4 p0, 0x3

    .line 99
    new-array p0, p0, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 100
    .line 101
    aput-object v0, p0, v5

    .line 102
    .line 103
    aput-object v1, p0, v3

    .line 104
    .line 105
    const/4 p1, 0x2

    .line 106
    aput-object v6, p0, p1

    .line 107
    .line 108
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->maxOrNull(Ljava/util/List;)Ljava/lang/Comparable;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    check-cast p0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    .line 117
    .line 118
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-super {p0}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/navigation/NavGraph;->impl:Lokhttp3/Dispatcher;

    .line 11
    .line 12
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p0, v1, v2}, Lokhttp3/Dispatcher;->findNode$navigation_common_release(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 35
    :goto_1
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget v1, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lokhttp3/Dispatcher;->findNode$navigation_common_release(I)Landroidx/navigation/NavDestination;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :cond_2
    const-string v2, " startDestination="

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    if-nez v1, :cond_5

    .line 49
    .line 50
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningSyncCalls:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget-object v1, p0, Lokhttp3/Dispatcher;->runningAsyncCalls:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v2, "0x"

    .line 73
    .line 74
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget p0, p0, Lokhttp3/Dispatcher;->maxRequestsPerHost:I

    .line 78
    .line 79
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    const-string/jumbo p0, "{"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string/jumbo p0, "}"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0
.end method
