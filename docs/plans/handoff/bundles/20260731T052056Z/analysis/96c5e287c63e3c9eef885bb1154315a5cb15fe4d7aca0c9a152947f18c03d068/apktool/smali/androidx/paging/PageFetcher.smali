.class public final Landroidx/paging/PageFetcher;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final config:Landroidx/paging/PagingConfig;

.field public final flow:Lkotlinx/coroutines/flow/Flow;

.field public final loadRequests:Lcoil3/svg/internal/AndroidSvg;

.field public final pagingSourceFactory:Landroidx/paging/Pager$pageFetcher$2;

.field public final retryEvents:Lcoil3/svg/internal/AndroidSvg;


# direct methods
.method public constructor <init>(Landroidx/paging/Pager$pageFetcher$2;Landroidx/paging/PagingConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/PageFetcher;->pagingSourceFactory:Landroidx/paging/Pager$pageFetcher$2;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/paging/PageFetcher;->config:Landroidx/paging/PagingConfig;

    .line 7
    .line 8
    new-instance p1, Lcoil3/svg/internal/AndroidSvg;

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    invoke-direct {p1, p2}, Lcoil3/svg/internal/AndroidSvg;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/paging/PageFetcher;->loadRequests:Lcoil3/svg/internal/AndroidSvg;

    .line 15
    .line 16
    new-instance p1, Lcoil3/svg/internal/AndroidSvg;

    .line 17
    .line 18
    invoke-direct {p1, p2}, Lcoil3/svg/internal/AndroidSvg;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/paging/PageFetcher;->retryEvents:Lcoil3/svg/internal/AndroidSvg;

    .line 22
    .line 23
    new-instance p1, Landroidx/paging/PageFetcher$flow$1;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {p1, p2, p0, v0}, Landroidx/paging/PageFetcher$flow$1;-><init>(ILjava/lang/Object;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Landroidx/paging/FlowExtKt;->simpleChannelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/paging/PageFetcher;->flow:Lkotlinx/coroutines/flow/Flow;

    .line 35
    .line 36
    return-void
.end method

.method public static refresh$default(Landroidx/paging/PageFetcher;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/paging/PageFetcher$RefreshType$All;->INSTANCE$1:Landroidx/paging/PageFetcher$RefreshType$All;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/paging/PageFetcher;->loadRequests:Lcoil3/svg/internal/AndroidSvg;

    .line 4
    .line 5
    new-instance v1, Landroidx/paging/PageFetcher$LoadRequest$Refresh;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, v2, v0}, Landroidx/paging/PageFetcher$LoadRequest$Refresh;-><init>(ZLandroidx/paging/FlowExtKt;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcoil3/svg/internal/AndroidSvg;->send(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final generateNewPagingSource(Landroidx/paging/PagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v1, p2, Landroidx/paging/PageFetcher$generateNewPagingSource$1;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    check-cast v1, Landroidx/paging/PageFetcher$generateNewPagingSource$1;

    .line 7
    .line 8
    iget v3, v1, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->label:I

    .line 9
    .line 10
    const/high16 v4, -0x80000000

    .line 11
    .line 12
    and-int v5, v3, v4

    .line 13
    .line 14
    if-eqz v5, :cond_0

    .line 15
    .line 16
    sub-int/2addr v3, v4

    .line 17
    iput v3, v1, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Landroidx/paging/PageFetcher$generateNewPagingSource$1;

    .line 21
    .line 22
    invoke-direct {v1, p0, p2}, Landroidx/paging/PageFetcher$generateNewPagingSource$1;-><init>(Landroidx/paging/PageFetcher;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v0, v1, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v4, v1, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->label:I

    .line 30
    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x1

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    if-ne v4, v9, :cond_1

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->L$0:Landroidx/paging/PagingSource;

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object v10, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v8

    .line 50
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/paging/PageFetcher;->pagingSourceFactory:Landroidx/paging/Pager$pageFetcher$2;

    .line 54
    .line 55
    iput-object p1, v1, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->L$0:Landroidx/paging/PagingSource;

    .line 56
    .line 57
    iput v9, v1, Landroidx/paging/PageFetcher$generateNewPagingSource$1;->label:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroidx/paging/Pager$pageFetcher$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-ne v0, v3, :cond_3

    .line 64
    .line 65
    return-object v3

    .line 66
    :cond_3
    move-object v10, p1

    .line 67
    :goto_1
    move-object v11, v0

    .line 68
    check-cast v11, Landroidx/paging/PagingSource;

    .line 69
    .line 70
    if-eq v11, v10, :cond_a

    .line 71
    .line 72
    new-instance v0, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 73
    .line 74
    const-class v3, Landroidx/paging/PageFetcher;

    .line 75
    .line 76
    const-string v4, "invalidate"

    .line 77
    .line 78
    const-string v5, "invalidate()V"

    .line 79
    .line 80
    const/4 v6, 0x0

    .line 81
    const/4 v7, 0x5

    .line 82
    const/4 v1, 0x0

    .line 83
    move-object v2, p0

    .line 84
    invoke-direct/range {v0 .. v7}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    iget-object v1, v11, Landroidx/paging/PagingSource;->invalidateCallbackTracker:Landroidx/compose/runtime/Latch;

    .line 91
    .line 92
    iget-boolean v2, v1, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    iget-object v1, v1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    iget-object v2, v1, Landroidx/compose/runtime/Latch;->spareList:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v2, Landroidx/work/impl/AutoMigration_14_15;

    .line 107
    .line 108
    monitor-enter v2

    .line 109
    :try_start_0
    iget-boolean v4, v1, Landroidx/compose/runtime/Latch;->_isOpen:Z

    .line 110
    .line 111
    if-eqz v4, :cond_5

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_5
    iget-object v4, v1, Landroidx/compose/runtime/Latch;->awaiters:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v4, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    :goto_2
    monitor-exit v2

    .line 123
    if-eqz v9, :cond_6

    .line 124
    .line 125
    iget-object v1, v1, Landroidx/compose/runtime/Latch;->lock:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Landroidx/paging/PagingSource$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    :cond_6
    :goto_3
    if-eqz v10, :cond_7

    .line 133
    .line 134
    new-instance v0, Landroidx/room/RoomDatabase$closeBarrier$1;

    .line 135
    .line 136
    const-string v4, "invalidate"

    .line 137
    .line 138
    const-string v5, "invalidate()V"

    .line 139
    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v7, 0x6

    .line 142
    const/4 v1, 0x0

    .line 143
    move-object v2, p0

    .line 144
    invoke-direct/range {v0 .. v7}, Landroidx/room/RoomDatabase$closeBarrier$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10, v0}, Landroidx/paging/PagingSource;->unregisterInvalidatedCallback(Landroidx/room/RoomDatabase$closeBarrier$1;)V

    .line 148
    .line 149
    .line 150
    :cond_7
    if-eqz v10, :cond_8

    .line 151
    .line 152
    invoke-virtual {v10}, Landroidx/paging/PagingSource;->invalidate()V

    .line 153
    .line 154
    .line 155
    :cond_8
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 156
    .line 157
    if-eqz v0, :cond_9

    .line 158
    .line 159
    const-string v0, "Paging"

    .line 160
    .line 161
    const/4 v1, 0x3

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_9

    .line 167
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v1, "Generated new PagingSource "

    .line 171
    .line 172
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const-string v1, "Paging"

    .line 183
    .line 184
    invoke-static {v1, v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .line 186
    .line 187
    :cond_9
    return-object v11

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    monitor-exit v2

    .line 190
    throw v0

    .line 191
    :cond_a
    const-string v0, "An instance of PagingSource was re-used when Pager expected to create a new\ninstance. Ensure that the pagingSourceFactory passed to Pager always returns a\nnew instance of PagingSource."

    .line 192
    .line 193
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return-object v8
.end method
