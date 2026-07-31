.class public final Landroidx/paging/PageFetcherSnapshotState;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final _pages:Ljava/util/ArrayList;

.field public _placeholdersAfter:I

.field public _placeholdersBefore:I

.field public final appendGenerationIdCh:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final config:Landroidx/paging/PagingConfig;

.field public final failedHintsByLoadType:Ljava/util/LinkedHashMap;

.field public initialPageIndex:I

.field public final pageKeys:Ljava/util/LinkedHashMap;

.field public final pages:Ljava/util/ArrayList;

.field public final prependGenerationIdCh:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final sourceLoadStates:Lcom/caverock/androidsvg/SVG;


# direct methods
.method public constructor <init>(Landroidx/paging/PagingConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->_pages:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->pageKeys:Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    const/4 p1, -0x1

    .line 23
    const/4 v0, 0x6

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Landroidx/paging/PageFetcherSnapshotState;->prependGenerationIdCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Landroidx/compose/ui/unit/DpKt;->Channel$default(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->appendGenerationIdCh:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 36
    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/LinkedHashMap;

    .line 43
    .line 44
    new-instance p1, Lcom/caverock/androidsvg/SVG;

    .line 45
    .line 46
    const/16 v0, 0x17

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/caverock/androidsvg/SVG;-><init>(I)V

    .line 49
    .line 50
    .line 51
    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 52
    .line 53
    sget-object v1, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Lcom/caverock/androidsvg/SVG;->set(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final currentPagingState$paging_common(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->config:Landroidx/paging/PagingConfig;

    .line 2
    .line 3
    iget v1, v0, Landroidx/paging/PagingConfig;->pageSize:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz p1, :cond_3

    .line 12
    .line 13
    iget v4, p1, Landroidx/paging/ViewportHint$Access;->pageOffset:I

    .line 14
    .line 15
    iget v5, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersBefore:I

    .line 16
    .line 17
    iget v6, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 18
    .line 19
    neg-int v6, v6

    .line 20
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    add-int/lit8 v7, v7, -0x1

    .line 25
    .line 26
    iget v8, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 27
    .line 28
    sub-int/2addr v7, v8

    .line 29
    move v8, v6

    .line 30
    :goto_0
    if-ge v8, v4, :cond_1

    .line 31
    .line 32
    if-le v8, v7, :cond_0

    .line 33
    .line 34
    move v9, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget v9, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 37
    .line 38
    add-int/2addr v9, v8

    .line 39
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    check-cast v9, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 44
    .line 45
    iget-object v9, v9, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    :goto_1
    add-int/2addr v5, v9

    .line 52
    add-int/lit8 v8, v8, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget p1, p1, Landroidx/paging/ViewportHint$Access;->indexInPage:I

    .line 56
    .line 57
    add-int/2addr v5, p1

    .line 58
    if-ge v4, v6, :cond_2

    .line 59
    .line 60
    sub-int/2addr v5, v1

    .line 61
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 p1, 0x0

    .line 67
    :goto_2
    iget p0, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersBefore:I

    .line 68
    .line 69
    new-instance v1, Landroidx/paging/PagingState;

    .line 70
    .line 71
    invoke-direct {v1, v3, p1, v0, p0}, Landroidx/paging/PagingState;-><init>(Ljava/util/List;Ljava/lang/Integer;Landroidx/paging/PagingConfig;I)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method

.method public final getStorageCount$paging_common()I
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 19
    .line 20
    iget-object v1, v1, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return v0
.end method

.method public final insert(ILandroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;Ljava/lang/Object;)Z
    .locals 11

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget v0, p3, Landroidx/paging/PagingSource$LoadResult$Page;->itemsBefore:I

    .line 8
    .line 9
    iget-object v1, p3, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 10
    .line 11
    iget v2, p3, Landroidx/paging/PagingSource$LoadResult$Page;->itemsAfter:I

    .line 12
    .line 13
    sget-object v3, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    aget p2, v3, p2

    .line 20
    .line 21
    const/high16 v3, -0x80000000

    .line 22
    .line 23
    iget-object v4, p0, Landroidx/paging/PageFetcherSnapshotState;->pageKeys:Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    iget-object v5, p0, Landroidx/paging/PageFetcherSnapshotState;->_pages:Ljava/util/ArrayList;

    .line 26
    .line 27
    iget-object v6, p0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x1

    .line 31
    if-eq p2, v8, :cond_c

    .line 32
    .line 33
    const/4 v9, 0x2

    .line 34
    iget-object v10, p0, Landroidx/paging/PageFetcherSnapshotState;->failedHintsByLoadType:Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    if-eq p2, v9, :cond_6

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    if-ne p2, v0, :cond_5

    .line 40
    .line 41
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_4

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {v4, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    if-ne v2, v3, :cond_2

    .line 65
    .line 66
    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersAfter:I

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    sub-int/2addr p1, p2

    .line 73
    if-gez p1, :cond_1

    .line 74
    .line 75
    move v2, v7

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    move v2, p1

    .line 78
    :cond_2
    :goto_0
    if-ne v2, v3, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v7, v2

    .line 82
    :goto_1
    iput v7, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersAfter:I

    .line 83
    .line 84
    sget-object p0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 85
    .line 86
    invoke-interface {v10, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    return v8

    .line 90
    :cond_4
    const-string p0, "should\'ve received an init before append"

    .line 91
    .line 92
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v7

    .line 96
    :cond_5
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 97
    .line 98
    .line 99
    return v7

    .line 100
    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-nez p2, :cond_b

    .line 105
    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    :goto_2
    return v7

    .line 109
    :cond_7
    invoke-virtual {v5, v7, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-interface {v4, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 124
    .line 125
    add-int/2addr p1, v8

    .line 126
    iput p1, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 127
    .line 128
    if-ne v0, v3, :cond_9

    .line 129
    .line 130
    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersBefore:I

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    sub-int/2addr p1, p2

    .line 137
    if-gez p1, :cond_8

    .line 138
    .line 139
    move v0, v7

    .line 140
    goto :goto_3

    .line 141
    :cond_8
    move v0, p1

    .line 142
    :cond_9
    :goto_3
    if-ne v0, v3, :cond_a

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_a
    move v7, v0

    .line 146
    :goto_4
    iput v7, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersBefore:I

    .line 147
    .line 148
    sget-object p0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 149
    .line 150
    invoke-interface {v10, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    return v8

    .line 154
    :cond_b
    const-string p0, "should\'ve received an init before prepend"

    .line 155
    .line 156
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return v7

    .line 160
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-eqz p2, :cond_10

    .line 165
    .line 166
    if-nez p1, :cond_f

    .line 167
    .line 168
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    invoke-virtual {p3}, Landroidx/paging/PagingSource$LoadResult$Page;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-interface {v4, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    iput v7, p0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 183
    .line 184
    if-ne v2, v3, :cond_d

    .line 185
    .line 186
    move v2, v7

    .line 187
    :cond_d
    iput v2, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersAfter:I

    .line 188
    .line 189
    if-ne v0, v3, :cond_e

    .line 190
    .line 191
    move v0, v7

    .line 192
    :cond_e
    iput v0, p0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersBefore:I

    .line 193
    .line 194
    return v8

    .line 195
    :cond_f
    const-string p0, "init loadId must be the initial value, 0"

    .line 196
    .line 197
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return v7

    .line 201
    :cond_10
    const-string p0, "cannot receive multiple init calls"

    .line 202
    .line 203
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return v7
.end method

.method public final toPageEvent$paging_common(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/LoadType;)Landroidx/paging/PageEvent$Insert;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    sget-object v1, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aget v2, v1, v2

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x2

    .line 21
    const/4 v7, 0x1

    .line 22
    if-eq v2, v7, :cond_2

    .line 23
    .line 24
    if-eq v2, v6, :cond_1

    .line 25
    .line 26
    if-ne v2, v5, :cond_0

    .line 27
    .line 28
    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshotState;->pages:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v4, v0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 35
    .line 36
    sub-int/2addr v2, v4

    .line 37
    add-int/lit8 v4, v2, -0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 41
    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_1
    iget v2, v0, Landroidx/paging/PageFetcherSnapshotState;->initialPageIndex:I

    .line 45
    .line 46
    sub-int/2addr v4, v2

    .line 47
    :cond_2
    :goto_0
    new-instance v2, Landroidx/paging/TransformablePage;

    .line 48
    .line 49
    move-object/from16 v8, p1

    .line 50
    .line 51
    iget-object v8, v8, Landroidx/paging/PagingSource$LoadResult$Page;->data:Ljava/util/List;

    .line 52
    .line 53
    invoke-direct {v2, v8, v4}, Landroidx/paging/TransformablePage;-><init>(Ljava/util/List;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Landroidx/room/Room;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    aget v1, v1, v2

    .line 65
    .line 66
    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshotState;->sourceLoadStates:Lcom/caverock/androidsvg/SVG;

    .line 67
    .line 68
    if-eq v1, v7, :cond_5

    .line 69
    .line 70
    if-eq v1, v6, :cond_4

    .line 71
    .line 72
    if-ne v1, v5, :cond_3

    .line 73
    .line 74
    iget v13, v0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersAfter:I

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->snapshot()Landroidx/paging/LoadStates;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    new-instance v9, Landroidx/paging/PageEvent$Insert;

    .line 81
    .line 82
    sget-object v10, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    .line 83
    .line 84
    const/4 v12, -0x1

    .line 85
    const/4 v15, 0x0

    .line 86
    invoke-direct/range {v9 .. v15}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 87
    .line 88
    .line 89
    return-object v9

    .line 90
    :cond_3
    invoke-static {}, Lcoil3/util/ContextsKt$$ExternalSyntheticBUOutline0;->m()V

    .line 91
    .line 92
    .line 93
    return-object v3

    .line 94
    :cond_4
    iget v12, v0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersBefore:I

    .line 95
    .line 96
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->snapshot()Landroidx/paging/LoadStates;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    new-instance v9, Landroidx/paging/PageEvent$Insert;

    .line 101
    .line 102
    sget-object v10, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    .line 103
    .line 104
    const/4 v13, -0x1

    .line 105
    const/4 v15, 0x0

    .line 106
    invoke-direct/range {v9 .. v15}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 107
    .line 108
    .line 109
    return-object v9

    .line 110
    :cond_5
    iget v12, v0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersBefore:I

    .line 111
    .line 112
    iget v13, v0, Landroidx/paging/PageFetcherSnapshotState;->_placeholdersAfter:I

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG;->snapshot()Landroidx/paging/LoadStates;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    new-instance v9, Landroidx/paging/PageEvent$Insert;

    .line 119
    .line 120
    sget-object v10, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 121
    .line 122
    const/4 v15, 0x0

    .line 123
    invoke-direct/range {v9 .. v15}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    .line 124
    .line 125
    .line 126
    return-object v9
.end method
