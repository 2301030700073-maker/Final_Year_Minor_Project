.class public final Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/notification/api/NotificationRegistry;


# instance fields
.field public final internalRegistrar:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final mutex:Lkotlinx/coroutines/sync/MutexImpl;

.field public final rawId:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final registrar:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 2
    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/JobKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1, v0}, Lkotlin/uuid/UuidKt;->plus(Lkotlin/coroutines/CoroutineContext$Element;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/JobKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lkotlinx/coroutines/sync/MutexImpl;

    .line 24
    .line 25
    invoke-direct {v1}, Lkotlinx/coroutines/sync/MutexImpl;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 29
    .line 30
    new-instance v1, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 31
    .line 32
    sget-object v2, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 33
    .line 34
    invoke-direct {v1, v2, v2}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->internalRegistrar:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 42
    .line 43
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 47
    .line 48
    .line 49
    iput-object v3, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->rawId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    .line 51
    new-instance v3, Lkotlinx/coroutines/flow/SafeFlow;

    .line 52
    .line 53
    const/16 v4, 0xa

    .line 54
    .line 55
    invoke-direct {v3, v4, v1}, Lkotlinx/coroutines/flow/SafeFlow;-><init>(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 59
    .line 60
    const-wide v4, 0x7fffffffffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v4, v5}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(J)V

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->registrar:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final get-RiqCqwk(I)Lnet/thunderbird/feature/notification/api/content/Notification;
    .locals 1

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->internalRegistrar:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 8
    .line 9
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;->byId:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lnet/thunderbird/feature/notification/api/NotificationId;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 21
    .line 22
    return-object p0
.end method

.method public final get-_qXnNqc(Lnet/thunderbird/feature/notification/api/content/Notification;)Lnet/thunderbird/feature/notification/api/NotificationId;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->internalRegistrar:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;->byNotification:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 22
    .line 23
    return-object p0
.end method

.method public final register-MQcfKRA(Lnet/thunderbird/feature/notification/api/content/Notification;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Comparable;
    .locals 7

    .line 1
    instance-of v0, p2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;-><init>(Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    iget v1, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;->label:I

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    iget-object p1, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 36
    .line 37
    iget-object v0, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;->L$0:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 38
    .line 39
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    move-object p2, p1

    .line 43
    move-object p1, v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

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
    iput-object p1, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;->L$0:Lnet/thunderbird/feature/notification/api/content/Notification;

    .line 55
    .line 56
    iget-object p2, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->mutex:Lkotlinx/coroutines/sync/MutexImpl;

    .line 57
    .line 58
    iput-object p2, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;->L$1:Lkotlinx/coroutines/sync/MutexImpl;

    .line 59
    .line 60
    iput v2, v0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$register$1;->label:I

    .line 61
    .line 62
    invoke-virtual {p2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->lock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 67
    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->get-_qXnNqc(Lnet/thunderbird/feature/notification/api/content/Notification;)Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    iget p0, v0, Lnet/thunderbird/feature/notification/api/NotificationId;->value:I

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_5

    .line 82
    :cond_4
    iget-object v0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->rawId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget-object p0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->internalRegistrar:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 92
    .line 93
    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    move-object v2, v1

    .line 98
    check-cast v2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 99
    .line 100
    new-instance v4, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 101
    .line 102
    invoke-direct {v4, v0}, Lnet/thunderbird/feature/notification/api/NotificationId;-><init>(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget-object v5, v2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;->byNotification:Ljava/util/Map;

    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_6

    .line 118
    .line 119
    invoke-static {p1, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_6
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 128
    .line 129
    invoke-direct {v6, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, p1, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-object v5, v6

    .line 136
    :goto_2
    iget-object v2, v2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;->byId:Ljava/util/Map;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_7

    .line 146
    .line 147
    invoke-static {v4, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_7
    new-instance v6, Ljava/util/LinkedHashMap;

    .line 156
    .line 157
    invoke-direct {v6, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v4, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-object v2, v6

    .line 164
    :goto_3
    new-instance v4, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 165
    .line 166
    invoke-direct {v4, v5, v2}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v1, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_5

    .line 174
    .line 175
    move p0, v0

    .line 176
    :goto_4
    new-instance p1, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 177
    .line 178
    invoke-direct {p1, p0}, Lnet/thunderbird/feature/notification/api/NotificationId;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .line 180
    .line 181
    invoke-interface {p2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    return-object p1

    .line 185
    :goto_5
    invoke-interface {p2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    throw p0
.end method

.method public final unregister(Lnet/thunderbird/feature/notification/api/content/Notification;)V
    .locals 8

    .line 1
    :cond_0
    iget-object v0, p0, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry;->internalRegistrar:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v3, v2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;->byNotification:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 20
    .line 21
    if-eqz v4, :cond_5

    .line 22
    .line 23
    iget v4, v4, Lnet/thunderbird/feature/notification/api/NotificationId;->value:I

    .line 24
    .line 25
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-interface {v5}, Ljava/util/Map;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget-object v6, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-eq v3, v7, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {v5, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object v5, v6

    .line 76
    :goto_0
    iget-object v2, v2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;->byId:Ljava/util/Map;

    .line 77
    .line 78
    new-instance v3, Lnet/thunderbird/feature/notification/api/NotificationId;

    .line 79
    .line 80
    invoke-direct {v3, v4}, Lnet/thunderbird/feature/notification/api/NotificationId;-><init>(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    if-eq v2, v7, :cond_3

    .line 101
    .line 102
    move-object v6, v4

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/util/Map$Entry;

    .line 117
    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_1
    new-instance v2, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;

    .line 134
    .line 135
    invoke-direct {v2, v5, v6}, Lnet/thunderbird/feature/notification/impl/DefaultNotificationRegistry$Registrar;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 136
    .line 137
    .line 138
    :cond_5
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    .line 144
    return-void
.end method
