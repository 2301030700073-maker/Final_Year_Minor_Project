.class public final Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;
.super Landroidx/paging/PagingSource;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final countsPerLanguageCode:Ljava/util/List;

.field public final invokeSource:Lorg/wikipedia/Constants$InvokeSource;

.field public final languageCode:Ljava/lang/String;

.field public final onFirstPageLoaded:Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

.field public final repository:Lokio/ByteString$Companion;

.field public final searchTerm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/wikipedia/Constants$InvokeSource;Lokio/ByteString$Companion;Lcoil3/network/okhttp/internal/CallsKt$await$2$1;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/paging/PagingSource;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->searchTerm:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->languageCode:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->countsPerLanguageCode:Ljava/util/List;

    .line 12
    .line 13
    iput-object p4, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 14
    .line 15
    iput-object p5, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->repository:Lokio/ByteString$Companion;

    .line 16
    .line 17
    iput-object p6, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->onFirstPageLoaded:Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getRefreshKey(Landroidx/paging/PagingState;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p2, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p2

    .line 8
    check-cast v0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;

    .line 9
    .line 10
    iget v2, v0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;->label:I

    .line 11
    .line 12
    and-int v3, v2, v1

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v2, v1

    .line 17
    iput v2, v0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v10, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;-><init>(Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v10, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, v10, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p1, v10, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;->L$0:Landroidx/paging/PagingSource$LoadParams;

    .line 40
    .line 41
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v3

    .line 51
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :try_start_1
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->searchTerm:Ljava/lang/String;

    .line 55
    .line 56
    if-eqz p2, :cond_8

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    if-nez p2, :cond_3

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_3
    iget-object p2, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->languageCode:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz p2, :cond_8

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-nez p2, :cond_4

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    iget-object v2, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->repository:Lokio/ByteString$Companion;

    .line 77
    .line 78
    iget-object v3, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->searchTerm:Ljava/lang/String;

    .line 79
    .line 80
    move p2, v4

    .line 81
    iget-object v4, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->languageCode:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v5, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->invokeSource:Lorg/wikipedia/Constants$InvokeSource;

    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Ljava/lang/Integer;

    .line 90
    .line 91
    iget v7, p1, Landroidx/paging/PagingSource$LoadParams;->loadSize:I

    .line 92
    .line 93
    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    if-nez v8, :cond_5

    .line 98
    .line 99
    move v8, p2

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    const/4 v8, 0x0

    .line 102
    :goto_2
    iget-object v9, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->countsPerLanguageCode:Ljava/util/List;

    .line 103
    .line 104
    iput-object p1, v10, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;->L$0:Landroidx/paging/PagingSource$LoadParams;

    .line 105
    .line 106
    iput p2, v10, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource$load$1;->label:I

    .line 107
    .line 108
    invoke-virtual/range {v2 .. v10}, Lokio/ByteString$Companion;->search(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/Constants$InvokeSource;Ljava/lang/Integer;IZLjava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-ne p2, v0, :cond_6

    .line 113
    .line 114
    return-object v0

    .line 115
    :cond_6
    :goto_3
    check-cast p2, Lorg/wikipedia/search/StandardSearchResults;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroidx/paging/PagingSource$LoadParams;->getKey()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-nez p1, :cond_7

    .line 122
    .line 123
    iget-object p0, p0, Lorg/wikipedia/search/SearchResultsViewModel$SearchResultsPagingSource;->onFirstPageLoaded:Lcoil3/network/okhttp/internal/CallsKt$await$2$1;

    .line 124
    .line 125
    invoke-virtual {p0, p2}, Lcoil3/network/okhttp/internal/CallsKt$await$2$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    :cond_7
    new-instance p0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 129
    .line 130
    iget-object p1, p2, Lorg/wikipedia/search/StandardSearchResults;->results:Ljava/util/ArrayList;

    .line 131
    .line 132
    iget-object p2, p2, Lorg/wikipedia/search/StandardSearchResults;->continuation:Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    return-object p0

    .line 138
    :cond_8
    :goto_4
    new-instance p0, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 139
    .line 140
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 141
    .line 142
    invoke-direct {p0, p1, v3, v1, v1}, Landroidx/paging/PagingSource$LoadResult$Page;-><init>(Ljava/util/List;Ljava/lang/Object;II)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    .line 144
    .line 145
    return-object p0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    move-object p0, v0

    .line 148
    new-instance p1, Landroidx/paging/PagingSource$LoadResult$Error;

    .line 149
    .line 150
    invoke-direct {p1, p0}, Landroidx/paging/PagingSource$LoadResult$Error;-><init>(Ljava/lang/Exception;)V

    .line 151
    .line 152
    .line 153
    return-object p1

    .line 154
    :catch_1
    move-exception v0

    .line 155
    move-object p0, v0

    .line 156
    throw p0
.end method
