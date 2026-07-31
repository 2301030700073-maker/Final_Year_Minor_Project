.class public final Landroidx/camera/camera2/pipe/internal/FrameImpl;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final closed:Lkotlinx/atomicfu/AtomicBoolean;

.field public final frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

.field public final imageStreams:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/internal/FrameState;)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/camera/camera2/pipe/internal/FrameState;->imageOutputs:Lkotlin/collections/builders/ListBuilder;

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v3}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    :goto_0
    move-object v5, v4

    .line 20
    check-cast v5, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 21
    .line 22
    invoke-virtual {v5}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_0

    .line 27
    .line 28
    invoke-virtual {v5}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    .line 33
    .line 34
    iget v5, v5, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    .line 35
    .line 36
    new-instance v6, Landroidx/camera/camera2/pipe/StreamId;

    .line 37
    .line 38
    invoke-direct {v6, v5}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    .line 53
    .line 54
    iput-object v1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->imageStreams:Ljava/util/Set;

    .line 55
    .line 56
    new-instance p1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_1
    move-object v1, v0

    .line 70
    check-cast v1, Lkotlin/collections/builders/ListBuilder$Itr;

    .line 71
    .line 72
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1}, Lkotlin/collections/builders/ListBuilder$Itr;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    .line 83
    .line 84
    iget v1, v1, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->outputId:I

    .line 85
    .line 86
    new-instance v2, Landroidx/camera/camera2/pipe/OutputId;

    .line 87
    .line 88
    invoke-direct {v2, v1}, Landroidx/camera/camera2/pipe/OutputId;-><init>(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    invoke-static {v3}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->release()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final finalize()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameImpl;->release()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "Failed to close "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p0, "! This indicates a memory leak and could cause the camera to stall, or images to be lost."

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "CXCP"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final release()Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->closed:Lkotlinx/atomicfu/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicBoolean;->compareAndSet()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_6

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/camera/camera2/pipe/internal/FrameState;->frameInfoOutput:Landroidx/camera/camera2/pipe/internal/FrameState$FrameInfoOutput;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/camera/camera2/pipe/internal/FrameState;->imageOutputs:Lkotlin/collections/builders/ListBuilder;

    .line 15
    .line 16
    iget-object v3, v2, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lkotlinx/atomicfu/AtomicInt;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object v4, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x2

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    iget-object v2, v2, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 35
    .line 36
    new-instance v3, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 37
    .line 38
    invoke-direct {v3, v4}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 42
    .line 43
    invoke-direct {v5, v3}, Landroidx/camera/camera2/pipe/internal/OutputResult;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v5}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->getSize()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    :goto_0
    if-ge v1, v2, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;

    .line 60
    .line 61
    iget v5, v3, Landroidx/camera/camera2/pipe/internal/FrameState$ImageOutput;->streamId:I

    .line 62
    .line 63
    new-instance v6, Landroidx/camera/camera2/pipe/StreamId;

    .line 64
    .line 65
    invoke-direct {v6, v5}, Landroidx/camera/camera2/pipe/StreamId;-><init>(I)V

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->imageStreams:Ljava/util/Set;

    .line 69
    .line 70
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_4

    .line 75
    .line 76
    iget-object v5, v3, Lnet/openid/appauth/JsonUtil$Field;->key:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v5, Lkotlinx/atomicfu/AtomicInt;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    sget-object v6, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 84
    .line 85
    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_4

    .line 90
    .line 91
    iget-object v5, v3, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v5, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 94
    .line 95
    new-instance v6, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 96
    .line 97
    invoke-direct {v6, v4}, Landroidx/camera/camera2/pipe/OutputStatus;-><init>(I)V

    .line 98
    .line 99
    .line 100
    new-instance v7, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 101
    .line 102
    invoke-direct {v7, v6}, Landroidx/camera/camera2/pipe/internal/OutputResult;-><init>(Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v7}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object v3, v3, Lnet/openid/appauth/JsonUtil$Field;->defaultValue:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v3, Lkotlinx/coroutines/CompletableDeferredImpl;

    .line 111
    .line 112
    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport;->isCompleted()Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    const/4 v6, 0x0

    .line 117
    if-eqz v5, :cond_1

    .line 118
    .line 119
    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_1

    .line 124
    .line 125
    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport;->getCompletedInternal$kotlinx_coroutines_core()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Landroidx/camera/camera2/pipe/internal/OutputResult;

    .line 130
    .line 131
    iget-object v3, v3, Landroidx/camera/camera2/pipe/internal/OutputResult;->result:Ljava/lang/Object;

    .line 132
    .line 133
    instance-of v5, v3, Landroidx/camera/camera2/pipe/OutputStatus;

    .line 134
    .line 135
    if-nez v5, :cond_1

    .line 136
    .line 137
    if-eqz v3, :cond_1

    .line 138
    .line 139
    move-object v6, v3

    .line 140
    :cond_1
    check-cast v6, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    .line 141
    .line 142
    if-eqz v6, :cond_4

    .line 143
    .line 144
    instance-of v3, v6, Ljava/lang/AutoCloseable;

    .line 145
    .line 146
    if-eqz v3, :cond_2

    .line 147
    .line 148
    invoke-virtual {v6}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->close()V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    instance-of v3, v6, Ljava/util/concurrent/ExecutorService;

    .line 153
    .line 154
    if-eqz v3, :cond_3

    .line 155
    .line 156
    check-cast v6, Ljava/util/concurrent/ExecutorService;

    .line 157
    .line 158
    invoke-static {v6}, Landroidx/activity/OnBackPressedCallback$$ExternalSyntheticAutoCloseableForwarder0;->m(Ljava/util/concurrent/ExecutorService;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_3
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 163
    .line 164
    .line 165
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_5
    const/4 p0, 0x1

    .line 169
    return p0

    .line 170
    :cond_6
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/FrameImpl;->frameState:Landroidx/camera/camera2/pipe/internal/FrameState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/FrameState;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
