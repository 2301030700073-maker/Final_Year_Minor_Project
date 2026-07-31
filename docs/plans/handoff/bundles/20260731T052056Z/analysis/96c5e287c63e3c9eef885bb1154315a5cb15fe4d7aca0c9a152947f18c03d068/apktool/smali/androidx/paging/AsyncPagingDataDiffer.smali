.class public final Landroidx/paging/AsyncPagingDataDiffer;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final LoadStateListenerHandler$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final LoadStateListenerRunnable:Landroidx/core/app/ActivityRecreator$1;

.field public final childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final diffCallback:Landroidx/recyclerview/widget/DiffUtil;

.field public final inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final internalLoadStateListener:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

.field public lastAccessedIndex:I

.field public final loadStateFlow:Lkotlinx/coroutines/flow/Flow;

.field public final parentLoadStateListener:Ljava/util/concurrent/atomic/AtomicReference;

.field public final presenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

.field public final previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

.field public final submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final updateCallback:Lcoil3/memory/MemoryCacheService;

.field public final workerDispatcher:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil;Lcoil3/memory/MemoryCacheService;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->diffCallback:Landroidx/recyclerview/widget/DiffUtil;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer;->updateCallback:Lcoil3/memory/MemoryCacheService;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/paging/AsyncPagingDataDiffer;->workerDispatcher:Lkotlin/coroutines/CoroutineContext;

    .line 9
    .line 10
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->previousPresenter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    new-instance p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 27
    .line 28
    invoke-direct {p1, p0, p3}, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer;Lkotlin/coroutines/CoroutineContext;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->presenter:Landroidx/paging/AsyncPagingDataDiffer$presenter$1;

    .line 32
    .line 33
    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    .line 35
    const/4 p4, 0x0

    .line 36
    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    new-instance p3, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    iget-object p1, p1, Landroidx/paging/AsyncPagingDataDiffer$presenter$1;->loadStateFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 45
    .line 46
    invoke-direct {p3, p1, v0}, Lorg/wikipedia/settings/SettingsRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 47
    .line 48
    .line 49
    const/4 p1, -0x1

    .line 50
    invoke-static {p3, p1}, Lkotlinx/coroutines/flow/StateFlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p3, Landroidx/paging/SingleRunner$runInIsolation$2;

    .line 55
    .line 56
    invoke-direct {p3, p1, p2, p0}, Landroidx/paging/SingleRunner$runInIsolation$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;Landroidx/paging/AsyncPagingDataDiffer;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Lkotlinx/coroutines/flow/SafeFlow;

    .line 60
    .line 61
    invoke-direct {v1, p4, p3}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 65
    .line 66
    sget-object v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 67
    .line 68
    sget-object p1, Lkotlinx/coroutines/Job$Key;->$$INSTANCE:Lkotlinx/coroutines/Job$Key;

    .line 69
    .line 70
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 77
    .line 78
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/android/HandlerContext;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    instance-of p1, v1, Lkotlinx/coroutines/flow/internal/FusibleFlow;

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    check-cast v1, Lkotlinx/coroutines/flow/internal/FusibleFlow;

    .line 90
    .line 91
    const/4 p1, 0x6

    .line 92
    invoke-static {v1, v2, p4, p2, p1}, Lkotlinx/coroutines/flow/internal/CombineKt;->fuse$default(Lkotlinx/coroutines/flow/internal/FusibleFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/Flow;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    const/16 v5, 0xc

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;I)V

    .line 104
    .line 105
    .line 106
    move-object v1, v0

    .line 107
    :goto_0
    iput-object v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 108
    .line 109
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 110
    .line 111
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->parentLoadStateListener:Ljava/util/concurrent/atomic/AtomicReference;

    .line 115
    .line 116
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->childLoadStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 122
    .line 123
    new-instance p1, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    const/16 p2, 0xd

    .line 126
    .line 127
    invoke-direct {p1, p2, p0}, Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->internalLoadStateListener:Lcoil3/disk/DiskLruCache$$ExternalSyntheticLambda0;

    .line 131
    .line 132
    new-instance p1, Landroidx/work/Worker$$ExternalSyntheticLambda1;

    .line 133
    .line 134
    const/16 p2, 0x15

    .line 135
    .line 136
    invoke-direct {p1, p2}, Landroidx/work/Worker$$ExternalSyntheticLambda1;-><init>(I)V

    .line 137
    .line 138
    .line 139
    new-instance p2, Lkotlin/SynchronizedLazyImpl;

    .line 140
    .line 141
    invoke-direct {p2, p1}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 142
    .line 143
    .line 144
    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerHandler$delegate:Lkotlin/SynchronizedLazyImpl;

    .line 145
    .line 146
    new-instance p1, Landroidx/core/app/ActivityRecreator$1;

    .line 147
    .line 148
    invoke-direct {p1, p0}, Landroidx/core/app/ActivityRecreator$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer;)V

    .line 149
    .line 150
    .line 151
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->LoadStateListenerRunnable:Landroidx/core/app/ActivityRecreator$1;

    .line 152
    .line 153
    return-void

    .line 154
    :cond_2
    const-string p0, "Flow context cannot contain job in it. Had "

    .line 155
    .line 156
    invoke-static {p0, v2}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    throw p2
.end method
